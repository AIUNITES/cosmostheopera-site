# Download Hubble Images for COSMOS the OPERA
# Images from ESA/Hubble CDN - Public Domain (NASA)

$imagesDir = "C:\Users\Tom\Documents\GitHub\cosmostheopera-site\images"

$images = @(
    @{Name="01-helix-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0707a.jpg"; Character="The Observer / Soul"},
    @{Name="02-butterfly-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0910h.jpg"; Character="The Light / Universe"},
    @{Name="03-v838-monocerotis.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0617a.jpg"; Character="The Sun / Seeker"},
    @{Name="04-arp-madore-twins.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/potw2149a.jpg"; Character="The Twin / Mirror"},
    @{Name="05-pillars-creation.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic1501a.jpg"; Character="The Cosmos / We Come"},
    @{Name="06-whirlpool-galaxy.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0506a.jpg"; Character="The Waves"},
    @{Name="07-horsehead-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic1307a.jpg"; Character="The Dark"},
    @{Name="08-orion-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0601a.jpg"; Character="The Colors"},
    @{Name="09-mystic-mountain.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic1007a.jpg"; Character="The Journey"},
    @{Name="10-hubble-deep-field.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0611a.jpg"; Character="Infinity / Stars"},
    @{Name="11-cats-eye-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/opo0432d.jpg"; Character="The Window / Face"},
    @{Name="12-antennae-galaxies.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic0615a.jpg"; Character="We Are One"},
    @{Name="13-southern-ring-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/opo9838a.jpg"; Character="Feeling Again"},
    @{Name="14-eta-carinae.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic1904a.jpg"; Character="You're A Star"},
    @{Name="15-ring-nebula.jpg"; Url="https://cdn.esahubble.org/archives/images/screen/heic1310a.jpg"; Character="Eternal Return"}
)

Write-Host "Downloading Hubble images for COSMOS the OPERA..." -ForegroundColor Cyan
Write-Host ""

foreach ($img in $images) {
    $outPath = Join-Path $imagesDir $img.Name
    Write-Host "[$($img.Character)]" -ForegroundColor Yellow -NoNewline
    Write-Host " Downloading $($img.Name)..." -NoNewline
    
    try {
        Invoke-WebRequest -Uri $img.Url -OutFile $outPath -UseBasicParsing
        Write-Host " Done!" -ForegroundColor Green
    } catch {
        Write-Host " FAILED: $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Download complete! Images saved to: $imagesDir" -ForegroundColor Cyan
