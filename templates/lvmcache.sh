#!/bin/sh

PREREQ="lvm2"

prereqs()
{
    echo "$PREREQ"
}

case $1 in
prereqs)
    prereqs
    exit 0
    ;;
esac

if [ ! -x /usr/sbin/cache_check ]; then
    exit 0
fi

. /usr/share/initramfs-tools/hook-functions

copy_exec /usr/sbin/cache_check

manual_add_modules dm_cache dm_cache_mq dm_cache_smq dm_persistent_data dm_bufio
