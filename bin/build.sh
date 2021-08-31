#!/usr/bin/env bash
CHROME=$(mdfind kMDItemCFBundleIdentifier == 'com.google.Chrome' | head -n 1)
SKETCH=$(mdfind kMDItemCFBundleIdentifier == 'com.bohemiancoding.sketch3' | head -n 1)
CHROME_CLI="$CHROME/Contents/MacOS/Google Chrome"
SKETCH_TOOL="$SKETCH/Contents/Resources/sketchtool/bin/sketchtool"

# Export SVGs via Sketch
$SKETCH_TOOL export slices "Icons.sketch" --output=svg/ --formats=svg

# Generate fonts and preview
fantasticon --font-height 1000 --prefix pp --name pughpugh --output build/ svg/

# Screenshot for README.md
"$CHROME_CLI" --headless --disable-gpu --hide-scrollbars --window-size=850,600 --crash-dumps-dir=/tmp --screenshot=./icons.png ./build/pughpugh.html
