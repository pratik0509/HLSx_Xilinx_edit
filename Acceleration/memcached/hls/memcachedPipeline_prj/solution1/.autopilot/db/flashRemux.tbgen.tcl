set moduleName flashRemux
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
set C_modelName {flashRemux}
set C_modelType { void 0 }
set C_modelArgList {
	{ flashMetadataBuffer_s_0 int 128 regular {fifo 0 volatile } {global 0}  }
	{ flashKeyBuffer_V_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ valueStoreFlash2merg_1 int 256 regular {fifo 1 volatile } {global 1}  }
	{ flashGetPath2remux_V int 64 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "flashMetadataBuffer_s_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "flashKeyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "valueStoreFlash2merg_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "flashGetPath2remux_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flashKeyBuffer_V_V_dout sc_in sc_lv 64 signal 1 } 
	{ flashKeyBuffer_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ flashKeyBuffer_V_V_read sc_out sc_logic 1 signal 1 } 
	{ flashGetPath2remux_V_dout sc_in sc_lv 64 signal 3 } 
	{ flashGetPath2remux_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ flashGetPath2remux_V_read sc_out sc_logic 1 signal 3 } 
	{ flashMetadataBuffer_s_0_dout sc_in sc_lv 128 signal 0 } 
	{ flashMetadataBuffer_s_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ flashMetadataBuffer_s_0_read sc_out sc_logic 1 signal 0 } 
	{ valueStoreFlash2merg_1_din sc_out sc_lv 256 signal 2 } 
	{ valueStoreFlash2merg_1_full_n sc_in sc_logic 1 signal 2 } 
	{ valueStoreFlash2merg_1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flashKeyBuffer_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "dout" }} , 
 	{ "name": "flashKeyBuffer_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "empty_n" }} , 
 	{ "name": "flashKeyBuffer_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "read" }} , 
 	{ "name": "flashGetPath2remux_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashGetPath2remux_V", "role": "dout" }} , 
 	{ "name": "flashGetPath2remux_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashGetPath2remux_V", "role": "empty_n" }} , 
 	{ "name": "flashGetPath2remux_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashGetPath2remux_V", "role": "read" }} , 
 	{ "name": "flashMetadataBuffer_s_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "flashMetadataBuffer_s_0", "role": "dout" }} , 
 	{ "name": "flashMetadataBuffer_s_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashMetadataBuffer_s_0", "role": "empty_n" }} , 
 	{ "name": "flashMetadataBuffer_s_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashMetadataBuffer_s_0", "role": "read" }} , 
 	{ "name": "valueStoreFlash2merg_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "valueStoreFlash2merg_1", "role": "din" }} , 
 	{ "name": "valueStoreFlash2merg_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreFlash2merg_1", "role": "full_n" }} , 
 	{ "name": "valueStoreFlash2merg_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreFlash2merg_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "flashRemux",
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
			{"Name" : "flashRemuxState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashRmMdBuffer_meta", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashRmKeyLength", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashRmValueLength", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashMetadataBuffer_s_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashMetadataBuffer_s_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashKeyBuffer_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashKeyBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "valueStoreFlash2merg_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "valueStoreFlash2merg_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashGetPath2remux_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashGetPath2remux_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	flashRemux {
		flashRemuxState {Type IO LastRead -1 FirstWrite -1}
		flashRmMdBuffer_meta {Type IO LastRead -1 FirstWrite -1}
		flashRmKeyLength {Type IO LastRead -1 FirstWrite -1}
		flashRmValueLength {Type IO LastRead -1 FirstWrite -1}
		flashMetadataBuffer_s_0 {Type I LastRead 0 FirstWrite -1}
		flashKeyBuffer_V_V {Type I LastRead 0 FirstWrite -1}
		valueStoreFlash2merg_1 {Type O LastRead -1 FirstWrite 1}
		flashGetPath2remux_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	flashMetadataBuffer_s_0 { ap_fifo {  { flashMetadataBuffer_s_0_dout fifo_data 0 128 }  { flashMetadataBuffer_s_0_empty_n fifo_status 0 1 }  { flashMetadataBuffer_s_0_read fifo_update 1 1 } } }
	flashKeyBuffer_V_V { ap_fifo {  { flashKeyBuffer_V_V_dout fifo_data 0 64 }  { flashKeyBuffer_V_V_empty_n fifo_status 0 1 }  { flashKeyBuffer_V_V_read fifo_update 1 1 } } }
	valueStoreFlash2merg_1 { ap_fifo {  { valueStoreFlash2merg_1_din fifo_data 1 256 }  { valueStoreFlash2merg_1_full_n fifo_status 0 1 }  { valueStoreFlash2merg_1_write fifo_update 1 1 } } }
	flashGetPath2remux_V { ap_fifo {  { flashGetPath2remux_V_dout fifo_data 0 64 }  { flashGetPath2remux_V_empty_n fifo_status 0 1 }  { flashGetPath2remux_V_read fifo_update 1 1 } } }
}
