#!/usr/bin/env sh

set -eu

ASI_LOADER_URL='https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases/download/v4.68/Ultimate-ASI-Loader.zip'
ZIP_PATH="$(pwd)/Ultimate-ASI-Loader.zip"

curl -L "$ASI_LOADER_URL" -o "$ZIP_PATH"
unzip -o "$ZIP_PATH" -d .

EAGLE_PATCH_URL='https://github.com/Sergeanur/EaglePatch/releases/download/v1.1/EaglePatchAC1.zip'
SCRIPTS_DIR="$(pwd)/scripts"
ZIP_PATH="$(pwd)/EaglePatchAC1.zip"

mkdir -p "$SCRIPTS_DIR"
curl -L "$EAGLE_PATCH_URL" -o "$ZIP_PATH"
unzip -o "$ZIP_PATH" -d "$SCRIPTS_DIR"
rm -f "$ZIP_PATH"
