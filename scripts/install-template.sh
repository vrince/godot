#!/bin/bash
VERSION=$(python3 -c "import version; version.dump()")
DEST="${HOME}/.local/share/godot/templates/${VERSION}"

echo "dest:${DEST}"

mkdir -p ${DEST}
cp bin/switch_release.nro ${DEST}/switch_release.nro
cp platform/switch/romfs/applet_splash.rgba.gz ${DEST}/switch_applet_splash.rgba.gz
echo ${VERSION} -c "import version; version.dump()" > ${DEST}/version.txt