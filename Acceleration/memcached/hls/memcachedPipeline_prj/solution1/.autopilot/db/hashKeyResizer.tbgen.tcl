set moduleName hashKeyResizer
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
set C_modelName {hashKeyResizer}
set C_modelType { void 0 }
set C_modelArgList {
	{ in2hashKeyLength_V_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ in2hash_V int 130 regular {fifo 0 volatile } {global 0}  }
	{ resizedKeyLength_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ resizedInitValue_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ resizedKey_V_V int 96 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in2hashKeyLength_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "in2hash_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "resizedKeyLength_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "resizedInitValue_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "resizedKey_V_V", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in2hash_V_dout sc_in sc_lv 130 signal 1 } 
	{ in2hash_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in2hash_V_read sc_out sc_logic 1 signal 1 } 
	{ in2hashKeyLength_V_V_dout sc_in sc_lv 8 signal 0 } 
	{ in2hashKeyLength_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in2hashKeyLength_V_V_read sc_out sc_logic 1 signal 0 } 
	{ resizedKey_V_V_din sc_out sc_lv 96 signal 4 } 
	{ resizedKey_V_V_full_n sc_in sc_logic 1 signal 4 } 
	{ resizedKey_V_V_write sc_out sc_logic 1 signal 4 } 
	{ resizedKeyLength_V_din sc_out sc_lv 32 signal 2 } 
	{ resizedKeyLength_V_full_n sc_in sc_logic 1 signal 2 } 
	{ resizedKeyLength_V_write sc_out sc_logic 1 signal 2 } 
	{ resizedInitValue_V_din sc_out sc_lv 32 signal 3 } 
	{ resizedInitValue_V_full_n sc_in sc_logic 1 signal 3 } 
	{ resizedInitValue_V_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "in2hash_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2hash_V", "role": "dout" }} , 
 	{ "name": "in2hash_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hash_V", "role": "empty_n" }} , 
 	{ "name": "in2hash_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hash_V", "role": "read" }} , 
 	{ "name": "in2hashKeyLength_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "dout" }} , 
 	{ "name": "in2hashKeyLength_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "empty_n" }} , 
 	{ "name": "in2hashKeyLength_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "read" }} , 
 	{ "name": "resizedKey_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "resizedKey_V_V", "role": "din" }} , 
 	{ "name": "resizedKey_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resizedKey_V_V", "role": "full_n" }} , 
 	{ "name": "resizedKey_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resizedKey_V_V", "role": "write" }} , 
 	{ "name": "resizedKeyLength_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "resizedKeyLength_V", "role": "din" }} , 
 	{ "name": "resizedKeyLength_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resizedKeyLength_V", "role": "full_n" }} , 
 	{ "name": "resizedKeyLength_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resizedKeyLength_V", "role": "write" }} , 
 	{ "name": "resizedInitValue_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "resizedInitValue_V", "role": "din" }} , 
 	{ "name": "resizedInitValue_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resizedInitValue_V", "role": "full_n" }} , 
 	{ "name": "resizedInitValue_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resizedInitValue_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "hashKeyResizer",
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
			{"Name" : "keyResizerState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "keyResizerLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempInput_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "resizedKeyOutput_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "in2hashKeyLength_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2hashKeyLength_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2hash_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2hash_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resizedKeyLength_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resizedKeyLength_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resizedInitValue_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resizedInitValue_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resizedKey_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resizedKey_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	hashKeyResizer {
		keyResizerState {Type IO LastRead -1 FirstWrite -1}
		keyResizerLength_V {Type IO LastRead -1 FirstWrite -1}
		tempInput_data_V {Type IO LastRead -1 FirstWrite -1}
		resizedKeyOutput_V {Type IO LastRead -1 FirstWrite -1}
		in2hashKeyLength_V_V {Type I LastRead 0 FirstWrite -1}
		in2hash_V {Type I LastRead 0 FirstWrite -1}
		resizedKeyLength_V {Type O LastRead -1 FirstWrite 1}
		resizedInitValue_V {Type O LastRead -1 FirstWrite 1}
		resizedKey_V_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in2hashKeyLength_V_V { ap_fifo {  { in2hashKeyLength_V_V_dout fifo_data 0 8 }  { in2hashKeyLength_V_V_empty_n fifo_status 0 1 }  { in2hashKeyLength_V_V_read fifo_update 1 1 } } }
	in2hash_V { ap_fifo {  { in2hash_V_dout fifo_data 0 130 }  { in2hash_V_empty_n fifo_status 0 1 }  { in2hash_V_read fifo_update 1 1 } } }
	resizedKeyLength_V { ap_fifo {  { resizedKeyLength_V_din fifo_data 1 32 }  { resizedKeyLength_V_full_n fifo_status 0 1 }  { resizedKeyLength_V_write fifo_update 1 1 } } }
	resizedInitValue_V { ap_fifo {  { resizedInitValue_V_din fifo_data 1 32 }  { resizedInitValue_V_full_n fifo_status 0 1 }  { resizedInitValue_V_write fifo_update 1 1 } } }
	resizedKey_V_V { ap_fifo {  { resizedKey_V_V_din fifo_data 1 96 }  { resizedKey_V_V_full_n fifo_status 0 1 }  { resizedKey_V_V_write fifo_update 1 1 } } }
}
