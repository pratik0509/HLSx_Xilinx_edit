export PATH=/home/pratik0509/xillinx/Vivado/2018.2/tps/lnx64/binutils-2.26/bin:/home/pratik0509/xillinx/Vivado/2018.2/tps/lnx64/gcc-6.2.0/bin:/home/pratik0509/xillinx/Vivado/2018.2/msys64/usr/bin:/home/pratik0509/xillinx/Vivado/2018.2/msys64/mingw64/bin:/home/pratik0509/xillinx/Vivado/2018.2/bin:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/bin:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/bin:/home/pratik0509/xillinx/Vivado/2018.2/bin:/home/pratik0509/xillinx/Vivado/2018.2/tps/lnx64/jre/bin:/home/pratik0509/xillinx/SDK/2018.2/bin:/home/pratik0509/xillinx/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/pratik0509/.gem/ruby/2.5.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/android-sdk/tools/bin:/usr/share/java/basex/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export LD_LIBRARY_PATH=/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/gdb_v7_2:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/graphviz/lib:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/bin:/home/pratik0509/xillinx/Vivado/2018.2/lib/lnx64.o/Default:/home/pratik0509/xillinx/Vivado/2018.2/lib/lnx64.o:/home/pratik0509/xillinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64:/home/pratik0509/xillinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64/server:/home/pratik0509/xillinx/Vivado/2018.2/bin/../lnx64/tools/dot/lib:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/fpo_v7_0:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/fft_v9_1:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/opencv:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/fir_v7_0:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/dds_v6_0:/home/pratik0509/xillinx/Vivado/2018.2/lnx64/lib/csim
export HDI_APPROOT=/home/pratik0509/xillinx/Vivado/2018.2
export XILINX_OPENCL_CLANG=/home/pratik0509/xillinx/Vivado/2018.2/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -bitwidth -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -dead-allocation-elimination  /home/pratik0509/Projects/HLx_Examples/Acceleration/memcached/hls/dramModel_prj/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
