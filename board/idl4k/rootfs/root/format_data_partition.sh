#!/bin/sh

# backup data
/etc/init.d/S55oscam stop
/etc/init.d/S60minisatip stop
cd /tmp
tar czf data.tar.gz /mnt/data

# format data partition
umount /dev/mtdblock4
flash_erase /dev/mtd4 0 0
mount -t jffs2 /dev/mtdblock4 /mnt/data

# restore data
cd /
tar xf /tmp/data.tar.gz
/etc/init.d/S55oscam start
/etc/init.d/S60minisatip start

