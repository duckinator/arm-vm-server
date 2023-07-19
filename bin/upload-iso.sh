#!/bin/sh

set -ex

export LIBVIRT_DEFAULT_URI="qemu+ssh://puppy@rockpro64/system"

if [ -z "$1" ]; then
        echo "Usage: $0 DEST_VOL [SRC_FILE]"
        echo "Where:"
        echo "  DEST_VOL  is the name of the volume being created"
        echo "  SRC_FILE  is the name of the file being copied (default: same as DEST_VOL)"
        exit 1
fi

DEST_VOL="$1"
SRC_FILE="$2"

[ -z "$SRC_FILE" ] && SRC_FILE="$DEST_VOL"

#size=$(stat -Lc%s "$SRC_FILE")
size=$(du -A -B 1 "$SRC_FILE" | awk '{ print $1 }')
virsh vol-create-as isos "$SRC_FILE" $size --format raw
virsh vol-upload --pool isos "$DEST_VOL" "$SRC_FILE"
