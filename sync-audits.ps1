# Hashlock Audits - Portfolio Sync v4 (replaces download_pdfs.ps1)
# ================================================================
#
# ONE command that answers: "is the repo in sync with hashlock.com?"
# The website is the source of truth. This script:
#
#   1. Enumerates every audit from the site's own sitemap (so brand-new clients
#      are found even before they are in audits.json), plus audits.json + clients/.
#   2. Checks each audit page: public "View Report" PDFs vs "Confidential" rows.
#   3. Reconciles against the repo and reports, per client:
#        NEW_ON_SITE       audit page exists, no local folder      -> create README
#        MISSING_PDF       public PDF on site not in the folder    -> run -Apply
#        TAKEDOWN_SUSPECT  local PDF no longer public on the site  -> URGENT: remove + downgrade README
#        MISSING_README    folder exists but has no README.md      -> write README
#        ORPHAN_LOCAL      folder exists but the site 404s         -> investigate
#        OK                everything matches
#   4. With -Apply, downloads missing public PDFs into clients/<slug>/.
#   5. With -UpdateAuditsJson, appends new slugs to audits.json (tier derived
#      from the site: public PDF -> TIER 1, confidential only -> TIER 2 (NDA)).
#
# Default is CHECK-ONLY (downloads nothing, changes nothing). Safe to run anytime.
#
# Usage:
#   .\sync-audits.ps1                        # full check, writes manifest + TODO list
#   .\sync-audits.ps1 -Apply                 # also download missing public PDFs
#   .\sync-audits.ps1 -Apply -UpdateAuditsJson
#   .\sync-audits.ps1 -Client gala           # single client
#
# Outputs: manifest.csv, manifest.json (repo root; gitignored)
# It NEVER runs git commands. Review and commit yourself.

param(
    [string]$Client = "",
    [switch]$Apply = $false,
    [switch]$UpdateAuditsJson = $false,
    [string]$AuditsJson = ".\audits.json"
)

$ErrorActionPreference = "Continue"
$base = "https://hashlock.com/audits/"
$headers = @{
    "User-Agent" = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    "Accept"     = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
}

if (-not (Test-Path ".\clients")) { Write-Host "Run from the hashlock-audits repo root." -ForegroundColor Red; exit 1 }

# ---------- 1. Enumerate slugs: sitemap UNION audits.json UNION clients/ ----------
$siteSlugs = @()
try {
    $sm = Invoke-WebRequest -Uri "https://hashlock.com/audit-sitemap.xml" -Headers $headers -UseBasicParsing -ErrorAction Stop
    $siteSlugs = [regex]::Matches($sm.Content, 'https://hashlock\.com/audits/([a-z0-9-]+)') |
                 ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique
    Write-Host "Sitemap: $($siteSlugs.Count) audit pages on the site" -ForegroundColor Cyan
} catch { Write-Host "WARN: could not fetch audit-sitemap.xml ($($_.Exception.Message))" -ForegroundColor Yellow }

$ajSlugs = @(); $aj = @()
if (Test-Path $AuditsJson) {
    try { $aj = Get-Content $AuditsJson -Raw | ConvertFrom-Json; $ajSlugs = $aj | ForEach-Object { $_.slug } }
    catch { Write-Host "WARN: could not parse audits.json" -ForegroundColor Yellow }
}
$localSlugs = (Get-ChildItem .\clients -Directory).Name

$slugs = @($siteSlugs) + @($ajSlugs) + @($localSlugs) | Where-Object { $_ } | Sort-Object -Unique
if ($Client) { $slugs = $slugs | Where-Object { $_ -eq $Client } }
$siteSet = @{}; foreach ($s in $siteSlugs) { $siteSet[$s] = $true }

Write-Host "Checking $($slugs.Count) client(s)  |  mode: $(if($Apply){'APPLY (download missing PDFs)'}else{'CHECK ONLY'})`n" -ForegroundColor White

# ---------- 2/3. Check each page and reconcile ----------
$manifest = @(); $i = 0
$newOnSite=@(); $missingPdf=@(); $takedown=@(); $missingReadme=@(); $orphan=@(); $confNeedsReadme=@(); $downloaded=0

foreach ($slug in $slugs) {
    $i++
    Write-Host "[$i/$($slugs.Count)] $slug" -ForegroundColor White
    $folder = ".\clients\$slug"
    $hasFolder = Test-Path $folder
    $localPdfs = @(); if ($hasFolder) { $localPdfs = (Get-ChildItem $folder -Filter *.pdf -ErrorAction SilentlyContinue).Name }
    $hasReadme = Test-Path "$folder\README.md"

    $status="?"; $sitePdfNames=@(); $confCount=0; $title=""; $p404=$false
    try {
        $resp = Invoke-WebRequest -Uri "$base$slug" -Headers $headers -UseBasicParsing -ErrorAction Stop
        $html = $resp.Content
        $p404 = $html -match 'Page\s*not\s*found'
        if (-not $p404) {
            $m = [regex]::Match($html, '<h1[^>]*>\s*([^<]+?)\s*</h1>'); if ($m.Success) { $title = $m.Groups[1].Value.Trim() }
            $pdfUrls = [regex]::Matches($html, 'https://hashlock\.com/wp-content/uploads/[^"\s''<>]+\.pdf') |
                       ForEach-Object { $_.Value } | Sort-Object -Unique
            $sitePdfNames = $pdfUrls | ForEach-Object { [System.IO.Path]::GetFileName([uri]::UnescapeDataString($_)) }
            # Anchored: only counts "Confidential" inside the audit-report table cell (validated against live DOM)
            $confCount = ([regex]::Matches($html, '(?i)audit-report"[^>]*>\s*<span[^>]*>Report</span>\s*Confidential')).Count
            $status = if ($pdfUrls.Count -gt 0) { "PUBLIC" } elseif ($confCount -gt 0) { "CONFIDENTIAL_ONLY" } else { "NO_REPORTS_LISTED" }

            if ($Apply -and $pdfUrls.Count -gt 0) {
                if (-not $hasFolder) { New-Item -ItemType Directory -Path $folder | Out-Null; $hasFolder = $true }
                foreach ($url in $pdfUrls) {
                    $name = [System.IO.Path]::GetFileName([uri]::UnescapeDataString($url)) -replace '[<>:"|?* ]', '-'
                    $path = Join-Path $folder $name
                    if (Test-Path $path) { continue }
                    try {
                        Invoke-WebRequest -Uri $url -Headers $headers -OutFile $path -UseBasicParsing -ErrorAction Stop
                        Write-Host "      + downloaded $name" -ForegroundColor Green
                        $downloaded++; $localPdfs += $name; Start-Sleep -Milliseconds 700
                    } catch { Write-Host "      ! download failed: $name" -ForegroundColor Red }
                }
            }
        }
    } catch { $status = "PAGE_ERROR"; Write-Host "      page error: $($_.Exception.Message)" -ForegroundColor Red }

    # ---------- Reconcile ----------
    $flags = @()
    # Tier drift: audits.json says NDA but the site now links a public PDF (or vice versa)
    $ajEntry = $aj | Where-Object { $_.slug -eq $slug } | Select-Object -First 1
    if ($ajEntry) {
        if ($ajEntry.tier -like 'TIER 2*' -and $status -eq 'PUBLIC') { $flags += "TIER_MISMATCH(json=NDA,site=PUBLIC)" }
        if ($ajEntry.tier -like 'TIER 1*' -and $status -eq 'CONFIDENTIAL_ONLY') { $flags += "TIER_MISMATCH(json=PUBLIC,site=CONF)" }
    }
    if ($p404) {
        if ($hasFolder) { $flags += "ORPHAN_LOCAL"; $orphan += $slug } else { $status = "P404" }
    } else {
        if (-not $hasFolder) { $flags += "NEW_ON_SITE"; $newOnSite += $slug }
        else {
            if (-not $hasReadme) { $flags += "MISSING_README"; $missingReadme += $slug }
            $missing = @($sitePdfNames | Where-Object { $localPdfs -notcontains ($_ -replace '[<>:"|?* ]','-') -and $localPdfs -notcontains $_ })
            if ($missing.Count -gt 0) { $flags += "MISSING_PDF"; $missingPdf += $slug }
            $gone = @($localPdfs | Where-Object { $sitePdfNames -notcontains $_ -and ($sitePdfNames | ForEach-Object { $_ -replace '[<>:"|?* ]','-' }) -notcontains $_ })
            if ($gone.Count -gt 0) { $flags += "TAKEDOWN_SUSPECT($($gone -join ','))"; $takedown += $slug }
            if ($status -eq "CONFIDENTIAL_ONLY" -and -not $hasReadme) { $confNeedsReadme += $slug }
        }
    }
    if ($flags.Count -eq 0 -and -not $p404) { $flags = @("OK") }
    $fl = $flags -join "; "
    if ($fl -ne "OK") { Write-Host "      -> $fl" -ForegroundColor $(if($fl -match 'TAKEDOWN'){'Red'}else{'Yellow'}) }

    $manifest += [PSCustomObject]@{
        slug=$slug; title=$title; status=$status; sitePublicPdfs=($sitePdfNames -join "; ")
        siteConfidentialCount=$confCount; localPdfs=($localPdfs -join "; "); hasReadme=$hasReadme; flags=$fl
    }
    Start-Sleep -Milliseconds 500
}

# ---------- 4. audits.json update (optional) ----------
if ($UpdateAuditsJson -and -not $Client) {
    $known = @{}; foreach ($s in $ajSlugs) { $known[$s] = $true }
    $added = 0
    foreach ($row in $manifest) {
        if ($known.ContainsKey($row.slug) -or $row.status -in @("P404","PAGE_ERROR")) { continue }
        if (-not $siteSet.ContainsKey($row.slug)) { continue }
        $tier = if ($row.status -eq "PUBLIC") { "TIER 1 (public PDF)" } else { "TIER 2 (NDA)" }
        $name = if ($row.title) { $row.title } else { ($row.slug -split '-' | ForEach-Object { $_.Substring(0,1).ToUpper()+$_.Substring(1) }) -join ' ' }
        $aj += [PSCustomObject]@{ client=$name; slug=$row.slug; tier=$tier; hasBugBounty=$false }
        $added++
        Write-Host "audits.json + $($row.slug) [$tier]" -ForegroundColor Cyan
    }
    if ($added -gt 0) { $aj | ConvertTo-Json -Depth 4 -Compress | Out-File $AuditsJson -Encoding UTF8 }
    Write-Host "audits.json: $added new entr$(if($added -eq 1){'y'}else{'ies'}) added`n" -ForegroundColor Cyan
}

# ---------- 5. Outputs ----------
$manifest | Export-Csv -Path .\manifest.csv -NoTypeInformation -Encoding UTF8
$manifest | ConvertTo-Json -Depth 4 | Out-File .\manifest.json -Encoding UTF8

Write-Host "`n==================== TODO SUMMARY ====================" -ForegroundColor Cyan
if ($takedown.Count)      { Write-Host "URGENT TAKEDOWN_SUSPECT ($($takedown.Count)): $($takedown -join ', ')" -ForegroundColor Red
                            Write-Host "  local PDF is no longer public on the site. Remove PDF, downgrade README, tier to NDA." -ForegroundColor Red }
if ($newOnSite.Count)     { Write-Host "NEW_ON_SITE ($($newOnSite.Count)): $($newOnSite -join ', ')" -ForegroundColor Yellow }
if ($missingPdf.Count)    { Write-Host "MISSING_PDF ($($missingPdf.Count)): $($missingPdf -join ', ')  (run with -Apply)" -ForegroundColor Yellow }
if ($missingReadme.Count) { Write-Host "MISSING_README ($($missingReadme.Count)): $($missingReadme -join ', ')" -ForegroundColor Yellow }
if ($orphan.Count)        { Write-Host "ORPHAN_LOCAL ($($orphan.Count)): $($orphan -join ', ')  (folder exists, site 404s)" -ForegroundColor Yellow }
$okCount = @($manifest | Where-Object { $_.flags -eq 'OK' }).Count
Write-Host "OK: $okCount / $($manifest.Count)   |   PDFs downloaded this run: $downloaded" -ForegroundColor Green
Write-Host "Manifest written: manifest.csv / manifest.json" -ForegroundColor Cyan
Write-Host "Nothing was committed. Review with git status, then commit what you approve." -ForegroundColor Cyan
