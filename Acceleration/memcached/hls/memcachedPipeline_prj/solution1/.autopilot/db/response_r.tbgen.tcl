set moduleName response_r
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
set C_modelName {response_r}
set C_modelType { void 0 }
set C_modelArgList {
	{ respOutput_V_data_V int 64 regular {axi_s 1 volatile  { outData Data } }  }
	{ respOutput_V_user_V int 112 regular {axi_s 1 volatile  { outData User } }  }
	{ respOutput_V_keep_V int 8 regular {axi_s 1 volatile  { outData Keep } }  }
	{ respOutput_V_last_V int 1 regular {axi_s 1 volatile  { outData Last } }  }
	{ metadataBuffer_rf_V_s int 248 regular {fifo 0 volatile } {global 0}  }
	{ valueBuffer_rf_V_V int 64 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "respOutput_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "respOutput_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY"} , 
 	{ "Name" : "respOutput_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "respOutput_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "metadataBuffer_rf_V_s", "interface" : "fifo", "bitwidth" : 248, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "valueBuffer_rf_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ valueBuffer_rf_V_V_dout sc_in sc_lv 64 signal 5 } 
	{ valueBuffer_rf_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ valueBuffer_rf_V_V_read sc_out sc_logic 1 signal 5 } 
	{ metadataBuffer_rf_V_s_dout sc_in sc_lv 248 signal 4 } 
	{ metadataBuffer_rf_V_s_empty_n sc_in sc_logic 1 signal 4 } 
	{ metadataBuffer_rf_V_s_read sc_out sc_logic 1 signal 4 } 
	{ outData_TREADY sc_in sc_logic 1 outacc 3 } 
	{ outData_TDATA sc_out sc_lv 64 signal 0 } 
	{ outData_TVALID sc_out sc_logic 1 outvld 3 } 
	{ outData_TUSER sc_out sc_lv 112 signal 1 } 
	{ outData_TKEEP sc_out sc_lv 8 signal 2 } 
	{ outData_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "valueBuffer_rf_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "valueBuffer_rf_V_V", "role": "dout" }} , 
 	{ "name": "valueBuffer_rf_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rf_V_V", "role": "empty_n" }} , 
 	{ "name": "valueBuffer_rf_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rf_V_V", "role": "read" }} , 
 	{ "name": "metadataBuffer_rf_V_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":248, "type": "signal", "bundle":{"name": "metadataBuffer_rf_V_s", "role": "dout" }} , 
 	{ "name": "metadataBuffer_rf_V_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rf_V_s", "role": "empty_n" }} , 
 	{ "name": "metadataBuffer_rf_V_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rf_V_s", "role": "read" }} , 
 	{ "name": "outData_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "respOutput_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "respOutput_V_data_V", "role": "default" }} , 
 	{ "name": "outData_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "respOutput_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "respOutput_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "respOutput_V_keep_V", "role": "default" }} , 
 	{ "name": "outData_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "respOutput_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "response_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "respOutput_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outData_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "respOutput_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "respOutput_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "respOutput_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "br_outWordCounter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outOpCode", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "errorCode", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "metadataBuffer_rf_V_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "metadataBuffer_rf_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outMetadataTempBuffe", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "valueLength", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "xtrasBuffer_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "valueBuffer_rf_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "valueBuffer_rf_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resp_ValueConvertTem", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memcachedPipelinebkb_U126", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memcachedPipelinebkb_U127", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memcachedPipelinebkb_U128", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memcachedPipelinebkb_U129", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	response_r {
		respOutput_V_data_V {Type O LastRead -1 FirstWrite 1}
		respOutput_V_user_V {Type O LastRead -1 FirstWrite 1}
		respOutput_V_keep_V {Type O LastRead -1 FirstWrite 1}
		respOutput_V_last_V {Type O LastRead -1 FirstWrite 1}
		br_outWordCounter {Type IO LastRead -1 FirstWrite -1}
		outOpCode {Type IO LastRead -1 FirstWrite -1}
		errorCode {Type IO LastRead -1 FirstWrite -1}
		metadataBuffer_rf_V_s {Type I LastRead 0 FirstWrite -1}
		outMetadataTempBuffe {Type IO LastRead -1 FirstWrite -1}
		valueLength {Type IO LastRead -1 FirstWrite -1}
		xtrasBuffer_V {Type IO LastRead -1 FirstWrite -1}
		valueBuffer_rf_V_V {Type I LastRead 0 FirstWrite -1}
		resp_ValueConvertTem {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	respOutput_V_data_V { axis {  { outData_TDATA out_data 1 64 } } }
	respOutput_V_user_V { axis {  { outData_TUSER out_data 1 112 } } }
	respOutput_V_keep_V { axis {  { outData_TKEEP out_data 1 8 } } }
	respOutput_V_last_V { axis {  { outData_TREADY out_acc 0 1 }  { outData_TVALID out_vld 1 1 }  { outData_TLAST out_data 1 1 } } }
	metadataBuffer_rf_V_s { ap_fifo {  { metadataBuffer_rf_V_s_dout fifo_data 0 248 }  { metadataBuffer_rf_V_s_empty_n fifo_status 0 1 }  { metadataBuffer_rf_V_s_read fifo_update 1 1 } } }
	valueBuffer_rf_V_V { ap_fifo {  { valueBuffer_rf_V_V_dout fifo_data 0 64 }  { valueBuffer_rf_V_V_empty_n fifo_status 0 1 }  { valueBuffer_rf_V_V_read fifo_update 1 1 } } }
}
