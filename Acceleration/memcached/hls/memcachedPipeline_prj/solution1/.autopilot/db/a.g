#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/pratik0509/Projects/HLx_Examples/Acceleration/memcached/hls/memcachedPipeline_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
