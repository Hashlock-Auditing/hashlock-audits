# Baixa PDFs apenas dos 16 clientes recém-adicionados
$slugs = @(
  "loadout","celo","kadena","lilypad","openzk","shezmu",
  "immersve","algem","beamable-network","avail","dreambay",
  "cerebree","ewe-technology","lazymog","mint-matrix","spiral-stake"
)

$base = "https://hashlock.com/audits/"

foreach ($slug in $slugs) {
    $dest = Join-Path "clients\$slug" ""
    if (-not (Test-Path $dest)) {
        Write-Host "[$slug] pasta nao existe, pulando" -ForegroundColor Yellow
        continue
    }

    try {
        $page = Invoke-WebRequest -Uri "$base$slug" -UseBasicParsing -ErrorAction Stop
        # Acha links que terminam em .pdf
        $pdfLinks = $page.Links.href | Where-Object { $_ -match '\.pdf($|\?)' } | Select-Object -Unique

        if (-not $pdfLinks) {
            Write-Host "[$slug] nenhum PDF encontrado na pagina" -ForegroundColor Yellow
            continue
        }

        foreach ($link in $pdfLinks) {
            # Resolve URL relativa
            if ($link -notmatch '^https?://') {
                if ($link.StartsWith("/")) { $link = "https://hashlock.com$link" }
                else { $link = "https://hashlock.com/$link" }
            }
            $fileName = [System.IO.Path]::GetFileName(($link -split '\?')[0])
            $outPath = Join-Path "clients\$slug" $fileName
            Invoke-WebRequest -Uri $link -OutFile $outPath -UseBasicParsing -ErrorAction Stop
            Write-Host "[$slug] OK -> $fileName" -ForegroundColor Green
        }
    }
    catch {
        Write-Host "[$slug] ERRO: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "`nConcluido. Confira os PDFs em clients\<slug>\" -ForegroundColor Cyan