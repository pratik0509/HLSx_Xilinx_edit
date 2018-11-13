############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project memcachedPipeline_prj
set_top memcachedPipeline
add_files sources/memcachedPipeline.cpp
add_files sources/splitter.cpp
add_files sources/merger.cpp
add_files sources/globals.cpp
add_files sources/valueStore/flashValueStore.cpp
add_files sources/valueStore/valueStore.cpp
add_files sources/responseFormatter/binResponse.cpp
add_files sources/requestParser/requestParser.cpp
add_files sources/hashTable/memWrite.cpp
add_files sources/hashTable/memRead.cpp
add_files sources/hashTable/hashTable.cpp
add_files sources/hashTable/hash.cpp
add_files sources/hashTable/compare.cpp
add_files sources/hashTable/cc.cpp
add_files -tb sources/memcachedPipeline_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7vx690tffg1761-2}
create_clock -period 6.66 -name default
config_rtl  -encoding onehot -reset all -reset_async -reset_level high  -vivado_phys_opt place
#source "./memcachedPipeline_prj/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design
export_design -format ip_catalog -description "A 4 stage memcached pipeline with SSD & DRAM value stores supporting only the binary protocol" -vendor "xilinx.labs" -version "1.07" -display_name "Combined Binary Flash/DRAM Memcached Pipeline"
