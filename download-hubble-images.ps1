# COSMOS the OPERA - Hubble Image Downloader
# Downloads all 15 character images from ESA Hubble CDN
# Run this script in PowerShell

$imagePath = "C:\Users\Tom\Documents\GitHub\cosmostheopera-site\images"

# Create images directory if not exists
if (!(Test-Path $imagePath)) {
    New-Item -ItemType Directory -Path $imagePath -Force
}

# Image definitions: filename (matching gallery.html), ESA CDN URL
$images = @(
    @{ name = "01-helix-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0707a.jpg" },
    @{ name = "02-butterfly-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0910h.jpg" },
    @{ name = "03-v838-monocerotis.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0617a.jpg" },
    @{ name = "04-arp-madore-twins.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/potw2149a.jpg" },
    @{ name = "05-pillars-creation.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic1501a.jpg" },
    @{ name = "06-whirlpool-galaxy.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0506a.jpg" },
    @{ name = "07-horsehead-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic1307a.jpg" },
    @{ name = "08-orion-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0601a.jpg" },
    @{ name = "09-mystic-mountain.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic1007a.jpg" },
    @{ name = "10-hubble-deep-field.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0406a.jpg" },
    @{ name = "11-cats-eye-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/opo0432d.jpg" },
    @{ name = "12-antennae-galaxies.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic0615a.jpg" },
    @{ name = "13-southern-ring-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/opo9838a.jpg" },
    @{ name = "14-eta-carinae.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic1904a.jpg" },
    @{ name = "15-ring-nebula.jpg"; url = "https://cdn.esahubble.org/archives/images/screen/heic1310a.jpg" }
)

Write-Host "`n=== COSMOS the OPERA - Hubble Image Downloader ===" -ForegroundColor Cyan
Write-Host "Downloading 15 images from ESA Hubble CDN...`n" -ForegroundColor White

$downloaded = 0
$failed = 0

foreach ($img in $images) {
    $outFile = Join-Path $imagePath $img.name
    Write-Host "Downloading: $($img.name)..." -NoNewline
    
    try {
        Invoke-WebRequest -Uri $img.url -OutFile $outFile -UseBasicParsing
        Write-Host " Done" -ForegroundColor Green
        $downloaded++
    } catch {
        Write-Host " FAILED" -ForegroundColor Red
        Write-Host "  Error: $($_.Exception.Message)" -ForegroundColor Yellow
        $failed++
    }
}

Write-Host "`n=== Download Complete ===" -ForegroundColor Cyan
Write-Host "Downloaded: $downloaded / 15 images" -ForegroundColor Green
if ($failed -gt 0) {
    Write-Host "Failed: $failed images" -ForegroundColor Red
}
Write-Host "Location: $imagePath`n" -ForegroundColor White

# List downloaded files
Write-Host "Files:" -ForegroundColor Cyan
Get-ChildItem $imagePath -Filter "*.jpg" | ForEach-Object {
    $size = [math]::Round($_.Length / 1KB, 1)
    Write-Host "  $($_.Name) ($size KB)"
}
