set -e

ASSETS_DIR="./assets"
SOURCE_DIR="./src"
BUILD_DIR="./build"
TEMP_DIR="$BUILD_DIR/temp"
APP_DIR="$BUILD_DIR/GUID.app"
CONTENTS_DIR="$APP_DIR/Contents"
MACOS_DIR="$CONTENTS_DIR/MacOS"
RESOURCES_DIR="$CONTENTS_DIR/Resources"

mkdir -p "$BUILD_DIR"
mkdir -p "$TEMP_DIR"
mkdir -p "$APP_DIR"
mkdir -p "$CONTENTS_DIR"
mkdir -p "$MACOS_DIR"
mkdir -p "$RESOURCES_DIR"

xcrun actool "$ASSETS_DIR/AppIcon.icon" \
  --compile "$TEMP_DIR" \
  --app-icon AppIcon \
  --platform macosx \
  --target-device mac \
  --minimum-deployment-target 14.0 \
  --output-partial-info-plist /dev/null > /dev/null

cp "$SOURCE_DIR/Info.plist" "$CONTENTS_DIR/Info.plist"
cp "$SOURCE_DIR/run.sh" "$MACOS_DIR/run.sh"
cp -r "$TEMP_DIR/AppIcon.icns" "$RESOURCES_DIR/AppIcon.icns"
cp -r "$TEMP_DIR/Assets.car" "$RESOURCES_DIR/Assets.car"

ECHO "successfully generated $APP_DIR"
