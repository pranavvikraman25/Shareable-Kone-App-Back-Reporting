#!/bin/bash
set -e
echo "=== EAS Post-Install: Installing lightningcss Linux binary ==="

# Find the lightningcss version used by react-native-css-interop
LIGHTNINGCSS_DIR="node_modules/react-native-css-interop/node_modules/lightningcss"
if [ -d "$LIGHTNINGCSS_DIR" ]; then
    VERSION=$(node -e "console.log(require('./$LIGHTNINGCSS_DIR/package.json').version)")
    echo "Found lightningcss version: $VERSION"
    cd "$LIGHTNINGCSS_DIR"
    npm install "lightningcss-linux-x64-gnu@$VERSION" --no-save --legacy-peer-deps
    echo "Installed lightningcss-linux-x64-gnu@$VERSION"
    cd -
else
    echo "lightningcss directory not found, trying top-level install"
    npm install lightningcss-linux-x64-gnu@1.27.0 --no-save --legacy-peer-deps
fi

echo "=== Done ==="
