set moduleName splitter
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {splitter}
set C_modelType { void 0 }
set C_modelArgList {
	{ hashTable2splitter_V int 256 regular {fifo 0 volatile } {global 0}  }
	{ splitter2valueStoreF_1 int 256 regular {fifo 1 volatile } {global 1}  }
	{ splitter2valueStoreD_1 int 256 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hashTable2splitter_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "splitter2valueStoreF_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "splitter2valueStoreD_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ hashTable2splitter_V_dout sc_in sc_lv 256 signal 0 } 
	{ hashTable2splitter_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ hashTable2splitter_V_read sc_out sc_logic 1 signal 0 } 
	{ splitter2valueStoreF_1_din sc_out sc_lv 256 signal 1 } 
	{ splitter2valueStoreF_1_full_n sc_in sc_logic 1 signal 1 } 
	{ splitter2valueStoreF_1_write sc_out sc_logic 1 signal 1 } 
	{ splitter2valueStoreD_1_din sc_out sc_lv 256 signal 2 } 
	{ splitter2valueStoreD_1_full_n sc_in sc_logic 1 signal 2 } 
	{ splitter2valueStoreD_1_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "hashTable2splitter_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hashTable2splitter_V", "role": "dout" }} , 
 	{ "name": "hashTable2splitter_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashTable2splitter_V", "role": "empty_n" }} , 
 	{ "name": "hashTable2splitter_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashTable2splitter_V", "role": "read" }} , 
 	{ "name": "splitter2valueStoreF_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreF_1", "role": "din" }} , 
 	{ "name": "splitter2valueStoreF_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreF_1", "role": "full_n" }} , 
 	{ "name": "splitter2valueStoreF_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreF_1", "role": "write" }} , 
 	{ "name": "splitter2valueStoreD_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreD_1", "role": "din" }} , 
 	{ "name": "splitter2valueStoreD_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreD_1", "role": "full_n" }} , 
 	{ "name": "splitter2valueStoreD_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreD_1", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "splitter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "hashTable2splitter_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashTable2splitter_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "is_validFlag", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dramOrFlash_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "splitter2valueStoreF_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "splitter2valueStoreF_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "splitter2valueStoreD_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "splitter2valueStoreD_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	splitter {
		hashTable2splitter_V {Type I LastRead 0 FirstWrite -1}
		is_validFlag {Type IO LastRead -1 FirstWrite -1}
		dramOrFlash_V_1 {Type IO LastRead -1 FirstWrite -1}
		splitter2valueStoreF_1 {Type O LastRead -1 FirstWrite 2}
		splitter2valueStoreD_1 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hashTable2splitter_V { ap_fifo {  { hashTable2splitter_V_dout fifo_data 0 256 }  { hashTable2splitter_V_empty_n fifo_status 0 1 }  { hashTable2splitter_V_read fifo_update 1 1 } } }
	splitter2valueStoreF_1 { ap_fifo {  { splitter2valueStoreF_1_din fifo_data 1 256 }  { splitter2valueStoreF_1_full_n fifo_status 0 1 }  { splitter2valueStoreF_1_write fifo_update 1 1 } } }
	splitter2valueStoreD_1 { ap_fifo {  { splitter2valueStoreD_1_din fifo_data 1 256 }  { splitter2valueStoreD_1_full_n fifo_status 0 1 }  { splitter2valueStoreD_1_write fifo_update 1 1 } } }
}
