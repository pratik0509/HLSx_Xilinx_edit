set moduleName flashDemux
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {flashDemux}
set C_modelType { void 0 }
set C_modelArgList {
	{ splitter2valueStoreF_1 int 256 regular {fifo 0 volatile } {global 0}  }
	{ flashMetadataBuffer_s_0 int 128 regular {fifo 1 volatile } {global 1}  }
	{ flashKeyBuffer_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ flashDemux2getPath_V int 48 regular {fifo 1 volatile } {global 1}  }
	{ flashDemux2setPathMe_1 int 48 regular {fifo 1 volatile } {global 1}  }
	{ flashDemux2setPathVa_1 int 66 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "splitter2valueStoreF_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "flashMetadataBuffer_s_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "flashKeyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "flashDemux2getPath_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "flashDemux2setPathMe_1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "flashDemux2setPathVa_1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ splitter2valueStoreF_1_dout sc_in sc_lv 256 signal 0 } 
	{ splitter2valueStoreF_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ splitter2valueStoreF_1_read sc_out sc_logic 1 signal 0 } 
	{ flashMetadataBuffer_s_0_din sc_out sc_lv 128 signal 1 } 
	{ flashMetadataBuffer_s_0_full_n sc_in sc_logic 1 signal 1 } 
	{ flashMetadataBuffer_s_0_write sc_out sc_logic 1 signal 1 } 
	{ flashKeyBuffer_V_V_din sc_out sc_lv 64 signal 2 } 
	{ flashKeyBuffer_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ flashKeyBuffer_V_V_write sc_out sc_logic 1 signal 2 } 
	{ flashDemux2setPathVa_1_din sc_out sc_lv 66 signal 5 } 
	{ flashDemux2setPathVa_1_full_n sc_in sc_logic 1 signal 5 } 
	{ flashDemux2setPathVa_1_write sc_out sc_logic 1 signal 5 } 
	{ flashDemux2setPathMe_1_din sc_out sc_lv 48 signal 4 } 
	{ flashDemux2setPathMe_1_full_n sc_in sc_logic 1 signal 4 } 
	{ flashDemux2setPathMe_1_write sc_out sc_logic 1 signal 4 } 
	{ flashDemux2getPath_V_din sc_out sc_lv 48 signal 3 } 
	{ flashDemux2getPath_V_full_n sc_in sc_logic 1 signal 3 } 
	{ flashDemux2getPath_V_write sc_out sc_logic 1 signal 3 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "splitter2valueStoreF_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreF_1", "role": "dout" }} , 
 	{ "name": "splitter2valueStoreF_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreF_1", "role": "empty_n" }} , 
 	{ "name": "splitter2valueStoreF_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreF_1", "role": "read" }} , 
 	{ "name": "flashMetadataBuffer_s_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "flashMetadataBuffer_s_0", "role": "din" }} , 
 	{ "name": "flashMetadataBuffer_s_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashMetadataBuffer_s_0", "role": "full_n" }} , 
 	{ "name": "flashMetadataBuffer_s_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashMetadataBuffer_s_0", "role": "write" }} , 
 	{ "name": "flashKeyBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "din" }} , 
 	{ "name": "flashKeyBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "flashKeyBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "write" }} , 
 	{ "name": "flashDemux2setPathVa_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "flashDemux2setPathVa_1", "role": "din" }} , 
 	{ "name": "flashDemux2setPathVa_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathVa_1", "role": "full_n" }} , 
 	{ "name": "flashDemux2setPathVa_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathVa_1", "role": "write" }} , 
 	{ "name": "flashDemux2setPathMe_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2setPathMe_1", "role": "din" }} , 
 	{ "name": "flashDemux2setPathMe_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMe_1", "role": "full_n" }} , 
 	{ "name": "flashDemux2setPathMe_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMe_1", "role": "write" }} , 
 	{ "name": "flashDemux2getPath_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "din" }} , 
 	{ "name": "flashDemux2getPath_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "full_n" }} , 
 	{ "name": "flashDemux2getPath_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "flashDemux",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "flashDemuxState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashWordCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashDemuxValueLengt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "splitter2valueStoreF_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "splitter2valueStoreF_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashMetadataBuffer_s_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashMetadataBuffer_s_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashKeyBuffer_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashKeyBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashDemux2getPath_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashDemux2getPath_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashDemux2setPathMe_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashDemux2setPathMe_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashDemux2setPathVa_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashDemux2setPathVa_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	flashDemux {
		flashDemuxState {Type IO LastRead -1 FirstWrite -1}
		flashWordCounter_V {Type IO LastRead -1 FirstWrite -1}
		flashDemuxValueLengt {Type IO LastRead -1 FirstWrite -1}
		splitter2valueStoreF_1 {Type I LastRead 0 FirstWrite -1}
		flashMetadataBuffer_s_0 {Type O LastRead -1 FirstWrite 1}
		flashKeyBuffer_V_V {Type O LastRead -1 FirstWrite 1}
		flashDemux2getPath_V {Type O LastRead -1 FirstWrite 1}
		flashDemux2setPathMe_1 {Type O LastRead -1 FirstWrite 1}
		flashDemux2setPathVa_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	splitter2valueStoreF_1 { ap_fifo {  { splitter2valueStoreF_1_dout fifo_data 0 256 }  { splitter2valueStoreF_1_empty_n fifo_status 0 1 }  { splitter2valueStoreF_1_read fifo_update 1 1 } } }
	flashMetadataBuffer_s_0 { ap_fifo {  { flashMetadataBuffer_s_0_din fifo_data 1 128 }  { flashMetadataBuffer_s_0_full_n fifo_status 0 1 }  { flashMetadataBuffer_s_0_write fifo_update 1 1 } } }
	flashKeyBuffer_V_V { ap_fifo {  { flashKeyBuffer_V_V_din fifo_data 1 64 }  { flashKeyBuffer_V_V_full_n fifo_status 0 1 }  { flashKeyBuffer_V_V_write fifo_update 1 1 } } }
	flashDemux2getPath_V { ap_fifo {  { flashDemux2getPath_V_din fifo_data 1 48 }  { flashDemux2getPath_V_full_n fifo_status 0 1 }  { flashDemux2getPath_V_write fifo_update 1 1 } } }
	flashDemux2setPathMe_1 { ap_fifo {  { flashDemux2setPathMe_1_din fifo_data 1 48 }  { flashDemux2setPathMe_1_full_n fifo_status 0 1 }  { flashDemux2setPathMe_1_write fifo_update 1 1 } } }
	flashDemux2setPathVa_1 { ap_fifo {  { flashDemux2setPathVa_1_din fifo_data 1 66 }  { flashDemux2setPathVa_1_full_n fifo_status 0 1 }  { flashDemux2setPathVa_1_write fifo_update 1 1 } } }
}
