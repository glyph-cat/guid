# GUID
A macOS app wrapper for `uuidgen`.

## How to Install
1. Download `GUID.zip` from the [Releases page](https://github.com/glyph-cat/guid/releases/latest).
2. Extract the contents and move `GUID.app` into the Applications folder.
3. To manually build the application, see [How to Build](#how-to-build).

## How to Use
1. Launch the app.
2. One new GUID will be generated and copied to the clipboard.
3. The app gracefully quits itself.

## How to Build
1. Clone and `cd` into the repository.
2. Run `sh ./scripts/build.sh`
3. The app is generated as `./build/GUID.app` and it can be manually copied to the Applications folder.
