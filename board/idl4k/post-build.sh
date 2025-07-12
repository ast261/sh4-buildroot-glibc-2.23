#!/bin/sh

rm -f $BINARIES_DIR/rootfs.cpio
mv $BINARIES_DIR/uImage.gz $BINARIES_DIR/idl4k.bin

BOARD_DIR="$(dirname "$0")"
mkimage -T script -C none -n 'boot usb' -d $BOARD_DIR/u-boot/uboot.script $BINARIES_DIR/idl4k.scr
mkimage -T script -C none -n 'flash usb' -d $BOARD_DIR/u-boot/uboot-flash.script $BINARIES_DIR/idl4k-flash.scr

