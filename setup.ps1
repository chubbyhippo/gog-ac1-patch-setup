$AsiLoaderUrl = "https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases/download/v4.68/Ultimate-ASI-Loader.zip"
$ZipPath = Join-Path $PWD "EaglePatchAC1.zip"

Invoke-WebRequest -Uri $AsiLoaderUrl -OutFile $ZipPath
Expand-Archive -Path $ZipPath -DestinationPath . -Force

$EaglePatchUrl = "https://github.com/Sergeanur/EaglePatch/releases/download/v1.1/EaglePatchAC1.zip"
$ScriptsDir = Join-Path $PWD "scripts"
$ZipPath = Join-Path $PWD "EaglePatchAC1.zip"

New-Item -ItemType Directory -Path $ScriptsDir -Force | Out-Null
Invoke-WebRequest -Uri $EaglePatchUrl -OutFile $ZipPath
Expand-Archive -Path $ZipPath -DestinationPath $ScriptsDir -Force
Remove-Item $ZipPath
