# Hashlock Audits - Index Generator
# =================================
# Regenerates the client lists in README.md and docs/categories/nda.md from
# audits.json (the tier field). Anyone whose tier changes (e.g. a takedown moves
# a client from TIER 1 to TIER 2 NDA) is automatically moved between lists.
#
# It only rewrites the content BETWEEN the AUTO markers:
#   <!-- AUTO:PUBLIC:BEGIN --> ... <!-- AUTO:PUBLIC:END -->   (README.md)
#   <!-- AUTO:NDA:BEGIN -->    ... <!-- AUTO:NDA:END -->      (README.md and nda.md)
# Everything outside the markers is untouched. Run after sync-audits.ps1.
#
# Usage:  .\update-index.ps1

$ErrorActionPreference = "Stop"
if (-not (Test-Path ".\audits.json")) { Write-Host "Run from the repo root." -ForegroundColor Red; exit 1 }

$aj = Get-Content .\audits.json -Raw -Encoding UTF8 | ConvertFrom-Json
$t1 = $aj | Where-Object { $_.tier -like 'TIER 1*' } | Sort-Object { $_.client.ToLower() }
$t2 = $aj | Where-Object { $_.tier -like 'TIER 2*' } | Sort-Object { $_.client.ToLower() }

function Build-List($items, $rel, $ndaTag) {
    ($items | ForEach-Object {
        $bb = if ($_.hasBugBounty) { " $([char]::ConvertFromUtf32(0x1F41B))" } else { "" }
        $tag = if ($ndaTag) { " _NDA_" } else { "" }
        "- [**$($_.client)**]($rel" + "clients/$($_.slug)/)$bb$tag"
    }) -join "`n"
}

function Replace-Marked([string]$text, [string]$name, [string]$newContent) {
    $pattern = "(?s)(<!-- AUTO:${name}:BEGIN[^>]*-->).*?(<!-- AUTO:${name}:END -->)"
    if ($text -notmatch $pattern) { Write-Host "WARN: markers AUTO:$name not found" -ForegroundColor Yellow; return $text }
    return [regex]::Replace($text, $pattern, { param($m) $m.Groups[1].Value + "`n" + $newContent + "`n" + $m.Groups[2].Value })
}

# README.md
$md = Get-Content .\README.md -Raw -Encoding UTF8
$pubBlock = (Build-List $t1 './' $false) + "`n`n_$($t1.Count) public audit engagements._"
$ndaBlock = (Build-List $t2 './' $false) + "`n`n_$($t2.Count) NDA engagements._"
$md = Replace-Marked $md 'PUBLIC' $pubBlock
$md = Replace-Marked $md 'NDA' $ndaBlock
[System.IO.File]::WriteAllText((Resolve-Path .\README.md), $md, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "README.md: $($t1.Count) public, $($t2.Count) NDA" -ForegroundColor Green

# docs/categories/nda.md (also refresh the count in the heading)
$cat = Get-Content .\docs\categories\nda.md -Raw -Encoding UTF8
$cat = [regex]::Replace($cat, '## Audits \(\d+\)', "## Audits ($($t2.Count))")
$cat = Replace-Marked $cat 'NDA' (Build-List $t2 '../../' $true)
[System.IO.File]::WriteAllText((Resolve-Path .\docs\categories\nda.md), $cat, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "docs/categories/nda.md: $($t2.Count) NDA entries" -ForegroundColor Green
Write-Host "Done. Review with git diff, then commit." -ForegroundColor Cyan
