set moduleName flashSetPathNoFilter
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
set C_modelName {flashSetPathNoFilter}
set C_modelType { void 0 }
set C_modelArgList {
	{ memWrCmd_V int 48 regular {axi_s 1 volatile  { memWrCmd_V Data } }  }
	{ memWrData_V_V int 64 regular {axi_s 1 volatile  { memWrData_V_V Data } }  }
	{ flashDemux2setPathMe_1 int 48 regular {fifo 0 volatile } {global 0}  }
	{ flashDemux2setPathVa_1 int 66 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWrCmd_V", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "memWrData_V_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "flashDemux2setPathMe_1", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "flashDemux2setPathVa_1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY", "extern" : 0} ]}
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
	{ flashDemux2setPathMe_1_dout sc_in sc_lv 48 signal 2 } 
	{ flashDemux2setPathMe_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ flashDemux2setPathMe_1_read sc_out sc_logic 1 signal 2 } 
	{ flashDemux2setPathVa_1_dout sc_in sc_lv 66 signal 3 } 
	{ flashDemux2setPathVa_1_empty_n sc_in sc_logic 1 signal 3 } 
	{ flashDemux2setPathVa_1_read sc_out sc_logic 1 signal 3 } 
	{ memWrCmd_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memWrData_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ memWrCmd_V_TDATA sc_out sc_lv 48 signal 0 } 
	{ memWrCmd_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ memWrData_V_V_TDATA sc_out sc_lv 64 signal 1 } 
	{ memWrData_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flashDemux2setPathMe_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2setPathMe_1", "role": "dout" }} , 
 	{ "name": "flashDemux2setPathMe_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMe_1", "role": "empty_n" }} , 
 	{ "name": "flashDemux2setPathMe_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMe_1", "role": "read" }} , 
 	{ "name": "flashDemux2setPathVa_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "flashDemux2setPathVa_1", "role": "dout" }} , 
 	{ "name": "flashDemux2setPathVa_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathVa_1", "role": "empty_n" }} , 
 	{ "name": "flashDemux2setPathVa_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathVa_1", "role": "read" }} , 
 	{ "name": "memWrCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrCmd_V", "role": "TREADY" }} , 
 	{ "name": "memWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "memWrCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "memWrCmd_V", "role": "TDATA" }} , 
 	{ "name": "memWrCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrCmd_V", "role": "TVALID" }} , 
 	{ "name": "memWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "memWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrData_V_V", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "flashSetPathNoFilter",
		"Protocol" : "ap_ctrl_none",
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
			{"Name" : "memWrCmd_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memWrCmd_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memWrData_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memWrData_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashSetState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashDemux2setPathMe_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashDemux2setPathMe_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashDemux2setPathVa_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashDemux2setPathVa_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	flashSetPathNoFilter {
		memWrCmd_V {Type O LastRead -1 FirstWrite 1}
		memWrData_V_V {Type O LastRead -1 FirstWrite 1}
		flashSetState {Type IO LastRead -1 FirstWrite -1}
		flashDemux2setPathMe_1 {Type I LastRead 0 FirstWrite -1}
		flashDemux2setPathVa_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	memWrCmd_V { axis {  { memWrCmd_V_TREADY out_acc 0 1 }  { memWrCmd_V_TDATA out_data 1 48 }  { memWrCmd_V_TVALID out_vld 1 1 } } }
	memWrData_V_V { axis {  { memWrData_V_V_TREADY out_acc 0 1 }  { memWrData_V_V_TDATA out_data 1 64 }  { memWrData_V_V_TVALID out_vld 1 1 } } }
	flashDemux2setPathMe_1 { ap_fifo {  { flashDemux2setPathMe_1_dout fifo_data 0 48 }  { flashDemux2setPathMe_1_empty_n fifo_status 0 1 }  { flashDemux2setPathMe_1_read fifo_update 1 1 } } }
	flashDemux2setPathVa_1 { ap_fifo {  { flashDemux2setPathVa_1_dout fifo_data 0 66 }  { flashDemux2setPathVa_1_empty_n fifo_status 0 1 }  { flashDemux2setPathVa_1_read fifo_update 1 1 } } }
}
