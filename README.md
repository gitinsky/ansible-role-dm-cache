# lvm-cache

## Warnings

This role is currently designed for pretty custom lvm setup, please apply it carefully or just use as a reference.

Role is Ubuntu oriented and as dm-cache is not available in 14.04 it performs upgrade to 16.04 and reboots your server.

## Details

Some usefull info [here](http://blog-vpodzime.rhcloud.com/?p=45) and [here](https://bugs.launchpad.net/ubuntu/+source/lvm2/+bug/1423796)

[Issue](http://askubuntu.com/questions/736532/lvmcache-failed-to-boot-device-mapper-cache-policy-unknown-policy-type) about boot failures.

Convert cache type:

```bash
lvconvert --cachemode writethrough|writeback VG/ssd_cache
```

Show some stats:

```bash
lvs -o lv_metadata_size,data_lv,data_lv_uuid,metadata_lv,metadata_lv_uuid,cache_total_blocks,cache_used_blocks,cache_dirty_blocks,cache_read_hits,cache_read_misses,cache_write_hits,cache_write_misses,cachemode,cache_policy,cache_settings
```

Remove cache:
```
lvremove {{VG}}/ssd_cache
````
