set moduleName accessControl
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
set C_modelName {accessControl}
set C_modelType { void 0 }
set C_modelArgList {
	{ filterPopSet_V_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ filterPopGet_V_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ splitter2valueStoreD_1 int 256 regular {fifo 0 volatile } {global 0}  }
	{ accCtrl2demux_V int 256 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "filterPopSet_V_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "filterPopGet_V_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "splitter2valueStoreD_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "accCtrl2demux_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ filterPopGet_V_V_dout sc_in sc_lv 1 signal 1 } 
	{ filterPopGet_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ filterPopGet_V_V_read sc_out sc_logic 1 signal 1 } 
	{ filterPopSet_V_V_dout sc_in sc_lv 1 signal 0 } 
	{ filterPopSet_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ filterPopSet_V_V_read sc_out sc_logic 1 signal 0 } 
	{ splitter2valueStoreD_1_dout sc_in sc_lv 256 signal 2 } 
	{ splitter2valueStoreD_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ splitter2valueStoreD_1_read sc_out sc_logic 1 signal 2 } 
	{ accCtrl2demux_V_din sc_out sc_lv 256 signal 3 } 
	{ accCtrl2demux_V_full_n sc_in sc_logic 1 signal 3 } 
	{ accCtrl2demux_V_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "filterPopGet_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopGet_V_V", "role": "dout" }} , 
 	{ "name": "filterPopGet_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopGet_V_V", "role": "empty_n" }} , 
 	{ "name": "filterPopGet_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopGet_V_V", "role": "read" }} , 
 	{ "name": "filterPopSet_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "dout" }} , 
 	{ "name": "filterPopSet_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "empty_n" }} , 
 	{ "name": "filterPopSet_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "read" }} , 
 	{ "name": "splitter2valueStoreD_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreD_1", "role": "dout" }} , 
 	{ "name": "splitter2valueStoreD_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreD_1", "role": "empty_n" }} , 
 	{ "name": "splitter2valueStoreD_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreD_1", "role": "read" }} , 
 	{ "name": "accCtrl2demux_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "accCtrl2demux_V", "role": "din" }} , 
 	{ "name": "accCtrl2demux_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accCtrl2demux_V", "role": "full_n" }} , 
 	{ "name": "accCtrl2demux_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accCtrl2demux_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "accessControl",
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
			{"Name" : "accState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "streamToPop_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pushWord_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pushWord_operation_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_filterEnt_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_level", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accessCtrl_rdPtr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "filterPopSet_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "filterPopSet_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filterPopGet_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "filterPopGet_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "splitter2valueStoreD_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "splitter2valueStoreD_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filterSeq_V_V", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "inputWord_metadata_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_SOP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_keyValid_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_valueValid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_EOP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_value_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_key_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "accCtrl2demux_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "accCtrl2demux_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "accessCtrl_wrPtr", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.filterSeq_V_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accessControl {
		accState {Type IO LastRead -1 FirstWrite -1}
		streamToPop_V {Type IO LastRead -1 FirstWrite -1}
		pushWord_address_V {Type IO LastRead -1 FirstWrite -1}
		pushWord_operation_V {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_7 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_23 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_15 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_6 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_22 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_14 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_5 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_21 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_13 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_4 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_20 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_12 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_3 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_19 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_11 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_2 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_18 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_10 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_1 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_17 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_9 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_16 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_filterEnt_8 {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_level {Type IO LastRead -1 FirstWrite -1}
		accessCtrl_rdPtr {Type IO LastRead -1 FirstWrite -1}
		filterPopSet_V_V {Type I LastRead 0 FirstWrite -1}
		filterPopGet_V_V {Type I LastRead 0 FirstWrite -1}
		splitter2valueStoreD_1 {Type I LastRead 0 FirstWrite -1}
		filterSeq_V_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_metadata_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_SOP_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_keyValid_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_valueValid {Type IO LastRead -1 FirstWrite -1}
		inputWord_EOP_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_value_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_key_V {Type IO LastRead -1 FirstWrite -1}
		accCtrl2demux_V {Type O LastRead -1 FirstWrite 1}
		accessCtrl_wrPtr {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	filterPopSet_V_V { ap_fifo {  { filterPopSet_V_V_dout fifo_data 0 1 }  { filterPopSet_V_V_empty_n fifo_status 0 1 }  { filterPopSet_V_V_read fifo_update 1 1 } } }
	filterPopGet_V_V { ap_fifo {  { filterPopGet_V_V_dout fifo_data 0 1 }  { filterPopGet_V_V_empty_n fifo_status 0 1 }  { filterPopGet_V_V_read fifo_update 1 1 } } }
	splitter2valueStoreD_1 { ap_fifo {  { splitter2valueStoreD_1_dout fifo_data 0 256 }  { splitter2valueStoreD_1_empty_n fifo_status 0 1 }  { splitter2valueStoreD_1_read fifo_update 1 1 } } }
	accCtrl2demux_V { ap_fifo {  { accCtrl2demux_V_din fifo_data 1 256 }  { accCtrl2demux_V_full_n fifo_status 0 1 }  { accCtrl2demux_V_write fifo_update 1 1 } } }
}
