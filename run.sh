#!/bin/sh
set -e

# Expects one or more directories containing bricks to be pooled at /mnt/bricksets
# Pools and mounts them with the same name /mnt/pools

find /mnt/bricksets -mindepth 1 -maxdepth 1 | tee /tmp/bricksets \
    | sed s/bricksets/pools/ | tee /tmp/pools \
    | xargs mkdir -p

# line-buffer: since we're long-running in the foreground, we want each
#   mergerfs job's output without waiting for the first to finish.
paste /tmp/bricksets /tmp/pools \
    | parallel --colsep='\t' --line-buffer mergerfs -d -o defaults,allow_other,use_ino,func.getattr=newest '{1}/*' '{2}'
