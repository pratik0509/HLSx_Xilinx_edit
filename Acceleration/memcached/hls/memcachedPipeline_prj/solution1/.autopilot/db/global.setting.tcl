
set TopModule "memcachedPipeline"
set ClockPeriod "6.660000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle "all"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7vx690t:ffg1761:-2"
set SourceFiles {sc {} c {../../sources/hashTable/cc.cpp ../../sources/hashTable/compare.cpp ../../sources/hashTable/hash.cpp ../../sources/hashTable/hashTable.cpp ../../sources/hashTable/memRead.cpp ../../sources/hashTable/memWrite.cpp ../../sources/requestParser/requestParser.cpp ../../sources/responseFormatter/binResponse.cpp ../../sources/valueStore/valueStore.cpp ../../sources/valueStore/flashValueStore.cpp ../../sources/globals.cpp ../../sources/merger.cpp ../../sources/splitter.cpp ../../sources/memcachedPipeline.cpp}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile {/home/pratik0509/Projects/HLx_Examples/Acceleration/memcached/hls/memcachedPipeline_prj/solution1/solution1.directive}
set TBFiles {verilog ../../sources/memcachedPipeline_tb.cpp bc ../../sources/memcachedPipeline_tb.cpp vhdl ../../sources/memcachedPipeline_tb.cpp sc ../../sources/memcachedPipeline_tb.cpp cas ../../sources/memcachedPipeline_tb.cpp c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/virtex7/virtex7 xilinx/virtex7/virtex7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."
set HPFPO "0"
