#!/bin/bash

echo 5 > /proc/sys/vm/dirty_background_ratio
echo 20 > /proc/sys/vm/dirty_ratio
echo 50 > /proc/sys/vm/vfs_cache_pressure
echo 262144 > /proc/sys/vm/min_free_kbytes
echo 1 > /proc/sys/vm/zone_reclaim_mode

echo always > /sys/kernel/mm/transparent_hugepage/enabled
echo always > /sys/kernel/mm/transparent_hugepage/defrag

devices=(vda vdb)
for dev in "${devices[@]}"
do
  echo deadline > /sys/block/${dev}/queue/scheduler
  echo 2048 > /sys/block/${dev}/queue/nr_requests
  echo 4096 > /sys/block/${dev}/queue/read_ahead_kb
  echo 256 > /sys/block/${dev}/queue/max_sectors_kb
done