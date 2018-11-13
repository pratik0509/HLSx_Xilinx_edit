set moduleName concurrencyControl
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {concurrencyControl}
set C_modelType { void 0 }
set C_modelArgList {
	{ dec2cc_V_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ in2ccMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ in2cc_V int 130 regular {fifo 0 volatile } {global 0}  }
	{ hash2cc_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ cc2memReadMd_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ cc2memRead_V int 130 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dec2cc_V_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "in2ccMd_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "in2cc_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "hash2cc_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "cc2memReadMd_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "cc2memRead_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ dec2cc_V_V_dout sc_in sc_lv 1 signal 0 } 
	{ dec2cc_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ dec2cc_V_V_read sc_out sc_logic 1 signal 0 } 
	{ in2cc_V_dout sc_in sc_lv 130 signal 2 } 
	{ in2cc_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ in2cc_V_read sc_out sc_logic 1 signal 2 } 
	{ in2ccMd_V_dout sc_in sc_lv 64 signal 1 } 
	{ in2ccMd_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in2ccMd_V_read sc_out sc_logic 1 signal 1 } 
	{ hash2cc_V_V_dout sc_in sc_lv 32 signal 3 } 
	{ hash2cc_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ hash2cc_V_V_read sc_out sc_logic 1 signal 3 } 
	{ cc2memRead_V_din sc_out sc_lv 130 signal 5 } 
	{ cc2memRead_V_full_n sc_in sc_logic 1 signal 5 } 
	{ cc2memRead_V_write sc_out sc_logic 1 signal 5 } 
	{ cc2memReadMd_V_din sc_out sc_lv 64 signal 4 } 
	{ cc2memReadMd_V_full_n sc_in sc_logic 1 signal 4 } 
	{ cc2memReadMd_V_write sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "dec2cc_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "dout" }} , 
 	{ "name": "dec2cc_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "empty_n" }} , 
 	{ "name": "dec2cc_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "read" }} , 
 	{ "name": "in2cc_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2cc_V", "role": "dout" }} , 
 	{ "name": "in2cc_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "empty_n" }} , 
 	{ "name": "in2cc_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "read" }} , 
 	{ "name": "in2ccMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "dout" }} , 
 	{ "name": "in2ccMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "empty_n" }} , 
 	{ "name": "in2ccMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "read" }} , 
 	{ "name": "hash2cc_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash2cc_V_V", "role": "dout" }} , 
 	{ "name": "hash2cc_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash2cc_V_V", "role": "empty_n" }} , 
 	{ "name": "hash2cc_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash2cc_V_V", "role": "read" }} , 
 	{ "name": "cc2memRead_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "din" }} , 
 	{ "name": "cc2memRead_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "full_n" }} , 
 	{ "name": "cc2memRead_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "write" }} , 
 	{ "name": "cc2memReadMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "din" }} , 
 	{ "name": "cc2memReadMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "full_n" }} , 
 	{ "name": "cc2memReadMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "concurrencyControl",
		"Protocol" : "ap_ctrl_hs",
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
			{"Name" : "ccState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccInputWord_EOP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccCompareElement_add", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_filterEnt_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_level", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_rdPtr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccCompareElement_ope", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dec2cc_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dec2cc_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2ccMd_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2ccMd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2cc_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2cc_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hash2cc_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hash2cc_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ccInputWordMd_operat", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccInputWordMd_keyLen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccInputWordMd_valueL", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccInputWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccInputWord_SOP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ccInputWordMd_metada", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashFilter_wrPtr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cc2memReadMd_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cc2memReadMd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cc2memRead_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cc2memRead_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	concurrencyControl {
		ccState {Type IO LastRead -1 FirstWrite -1}
		ccInputWord_EOP_V {Type IO LastRead -1 FirstWrite -1}
		ccCompareElement_add {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_7 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_23 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_15 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_14 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_6 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_22 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_13 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_5 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_21 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_12 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_4 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_20 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_11 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_3 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_19 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_10 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_2 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_18 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_9 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_1 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_17 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_8 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt {Type IO LastRead -1 FirstWrite -1}
		hashFilter_filterEnt_16 {Type IO LastRead -1 FirstWrite -1}
		hashFilter_level {Type IO LastRead -1 FirstWrite -1}
		hashFilter_rdPtr {Type IO LastRead -1 FirstWrite -1}
		ccCompareElement_ope {Type IO LastRead -1 FirstWrite -1}
		dec2cc_V_V {Type I LastRead 0 FirstWrite -1}
		in2ccMd_V {Type I LastRead 0 FirstWrite -1}
		in2cc_V {Type I LastRead 0 FirstWrite -1}
		hash2cc_V_V {Type I LastRead 0 FirstWrite -1}
		ccInputWordMd_operat {Type IO LastRead -1 FirstWrite -1}
		ccInputWordMd_keyLen {Type IO LastRead -1 FirstWrite -1}
		ccInputWordMd_valueL {Type IO LastRead -1 FirstWrite -1}
		ccInputWord_data_V {Type IO LastRead -1 FirstWrite -1}
		ccInputWord_SOP_V {Type IO LastRead -1 FirstWrite -1}
		ccInputWordMd_metada {Type IO LastRead -1 FirstWrite -1}
		hashFilter_wrPtr {Type IO LastRead -1 FirstWrite -1}
		cc2memReadMd_V {Type O LastRead -1 FirstWrite 1}
		cc2memRead_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dec2cc_V_V { ap_fifo {  { dec2cc_V_V_dout fifo_data 0 1 }  { dec2cc_V_V_empty_n fifo_status 0 1 }  { dec2cc_V_V_read fifo_update 1 1 } } }
	in2ccMd_V { ap_fifo {  { in2ccMd_V_dout fifo_data 0 64 }  { in2ccMd_V_empty_n fifo_status 0 1 }  { in2ccMd_V_read fifo_update 1 1 } } }
	in2cc_V { ap_fifo {  { in2cc_V_dout fifo_data 0 130 }  { in2cc_V_empty_n fifo_status 0 1 }  { in2cc_V_read fifo_update 1 1 } } }
	hash2cc_V_V { ap_fifo {  { hash2cc_V_V_dout fifo_data 0 32 }  { hash2cc_V_V_empty_n fifo_status 0 1 }  { hash2cc_V_V_read fifo_update 1 1 } } }
	cc2memReadMd_V { ap_fifo {  { cc2memReadMd_V_din fifo_data 1 64 }  { cc2memReadMd_V_full_n fifo_status 0 1 }  { cc2memReadMd_V_write fifo_update 1 1 } } }
	cc2memRead_V { ap_fifo {  { cc2memRead_V_din fifo_data 1 130 }  { cc2memRead_V_full_n fifo_status 0 1 }  { cc2memRead_V_write fifo_update 1 1 } } }
}
