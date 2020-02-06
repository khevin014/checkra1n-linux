#!/bin/sh

set -e

. ../../common.sh

echo "Removing previous work area."
rm -rf $WORK_DIR/overlay/$BUNDLE_NAME
mkdir -p $WORK_DIR/overlay/$BUNDLE_NAME
cd $WORK_DIR/overlay/$BUNDLE_NAME

install -d -m755 "$OVERLAY_ROOTFS/etc"
install -d -m755 "$OVERLAY_ROOTFS/etc/autorun"
install -m755 "$SRC_DIR/90-checkra1n.sh" "$OVERLAY_ROOTFS/etc/autorun/90-checkra1n.sh"

echo "checkra1n scripts have been installed."
