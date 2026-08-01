#!/bin/bash
# Builds "Markdown Studio.dmg" — a native macOS wrapper app (Swift + WKWebView, see main.swift)
# that embeds Markdown-Editor.html and behaves like a real installed app (own window, dock icon,
# Cmd+Q, native fullscreen), packaged in a standard drag-to-Applications .dmg.
#
# Re-run this after every change to Markdown-Editor.html or Icons/favicon_edit-two-svgrepo-com.svg
# to keep the DMG in sync — it always re-embeds whatever the current file on disk contains, nothing
# here is cached. Requires only Xcode Command Line Tools (swiftc/codesign/hdiutil/iconutil/qlmanage),
# no third-party downloads.
#
# The resulting app is ad-hoc signed (codesign --sign -), not signed with a paid Apple Developer ID
# — macOS Gatekeeper will show an "unidentified developer" warning on first launch; right-click the
# app > "Öffnen" once to confirm. This is expected and doesn't indicate a broken build.
set -euo pipefail

cd "$(dirname "$0")"
ROOT="$(cd .. && pwd)"
BUILD="$ROOT/mac-app/.build"
APP_NAME="Markdown Studio"

rm -rf "$BUILD"
mkdir -p "$BUILD/AppIcon.iconset"

echo "==> Rasterizing app icon from Icons/favicon_edit-two-svgrepo-com.svg"
SOURCE_SVG="$ROOT/Icons/favicon_edit-two-svgrepo-com.svg"
for sz in 16 32 64 128 256 512 1024; do
  qlmanage -t -s "$sz" -o "$BUILD" "$SOURCE_SVG" > /dev/null 2>&1
  mv "$BUILD/favicon_edit-two-svgrepo-com.svg.png" "$BUILD/raw-$sz.png"
done

python3 - "$BUILD" <<'PYEOF'
import sys
from PIL import Image, ImageDraw

build = sys.argv[1]

def rounded_square(size, radius_ratio=0.22, color=(255, 255, 255, 255)):
    img = Image.new('RGBA', (size, size), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    r = int(size * radius_ratio)
    d.rounded_rectangle([0, 0, size - 1, size - 1], radius=r, fill=color)
    return img

def make_icon(source_path, canvas_size, out_path):
    bg = rounded_square(canvas_size)
    art = Image.open(source_path).convert('RGBA')
    art_size = int(canvas_size * 0.62)
    art = art.resize((art_size, art_size), Image.LANCZOS)
    offset = ((canvas_size - art_size) // 2, (canvas_size - art_size) // 2)
    bg.alpha_composite(art, offset)
    bg.save(out_path)

sizes = {
    'icon_16x16.png': 16, 'icon_16x16@2x.png': 32,
    'icon_32x32.png': 32, 'icon_32x32@2x.png': 64,
    'icon_128x128.png': 128, 'icon_128x128@2x.png': 256,
    'icon_256x256.png': 256, 'icon_256x256@2x.png': 512,
    'icon_512x512.png': 512, 'icon_512x512@2x.png': 1024,
}
for name, canvas in sizes.items():
    make_icon('%s/raw-%d.png' % (build, canvas), canvas, '%s/AppIcon.iconset/%s' % (build, name))
PYEOF

iconutil -c icns "$BUILD/AppIcon.iconset" -o "$BUILD/AppIcon.icns"

echo "==> Compiling native wrapper (Swift + WKWebView)"
swiftc -O "$ROOT/mac-app/main.swift" -o "$BUILD/MarkdownStudio" -framework Cocoa -framework WebKit

echo "==> Assembling app bundle"
APP="$BUILD/$APP_NAME.app"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources"
cp "$ROOT/mac-app/Info.plist" "$APP/Contents/Info.plist"
cp "$BUILD/MarkdownStudio" "$APP/Contents/MacOS/MarkdownStudio"
cp "$BUILD/AppIcon.icns" "$APP/Contents/Resources/AppIcon.icns"
cp "$ROOT/Markdown-Editor.html" "$APP/Contents/Resources/Markdown-Editor.html"
chmod +x "$APP/Contents/MacOS/MarkdownStudio"

echo "==> Ad-hoc code signing (required for the app to launch at all on Apple Silicon)"
# codesign refuses to sign a bundle containing files with a resource fork/Finder-info/other
# extended attributes ("resource fork, Finder information, or similar detritus not allowed") —
# a real, common failure here specifically because Markdown-Editor.html and the Icons/*.svg files
# get downloaded/edited through browsers and other tools that routinely attach xattrs like
# com.apple.quarantine. Safe to strip unconditionally: this only touches the just-assembled copies
# inside $BUILD, never the original source files in the repo.
xattr -cr "$APP"
codesign --force --deep --sign - "$APP"

echo "==> Building disk image"
DMGSTAGE="$BUILD/dmg-stage"
rm -rf "$DMGSTAGE"
mkdir -p "$DMGSTAGE"
cp -R "$APP" "$DMGSTAGE/"
ln -s /Applications "$DMGSTAGE/Applications"

OUT_DMG="$ROOT/Markdown Studio.dmg"
rm -f "$OUT_DMG"
hdiutil create -volname "$APP_NAME" -srcfolder "$DMGSTAGE" -ov -format UDZO "$OUT_DMG"

echo "==> Done: $OUT_DMG"
