$EaglePatchUrl = "https://github.com/Sergeanur/EaglePatch/releases/download/v1.1/EaglePatchAC1.zip"
$ZipPath = Join-Path $PWD "EaglePatchAC1.zip"

Invoke-WebRequest -Uri $EaglePatchUrl -OutFile $ZipPath
Expand-Archive -Path $ZipPath -DestinationPath . -Force
