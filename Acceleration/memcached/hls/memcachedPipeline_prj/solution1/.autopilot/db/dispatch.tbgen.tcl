set moduleName dispatch
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
set C_modelName {dispatch}
set C_modelType { void 0 }
set C_modelArgList {
	{ memRdCmd_V int 40 regular {axi_s 1 volatile  { memRdCmd_V Data } }  }
	{ demux2getPath_V int 45 regular {fifo 0 volatile } {global 0}  }
	{ disp2rec_V_V int 12 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memRdCmd_V", "interface" : "axis", "bitwidth" : 40, "direction" : "WRITEONLY"} , 
 	{ "Name" : "demux2getPath_V", "interface" : "fifo", "bitwidth" : 45, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "disp2rec_V_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ demux2getPath_V_dout sc_in sc_lv 45 signal 1 } 
	{ demux2getPath_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ demux2getPath_V_read sc_out sc_logic 1 signal 1 } 
	{ disp2rec_V_V_din sc_out sc_lv 12 signal 2 } 
	{ disp2rec_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ disp2rec_V_V_write sc_out sc_logic 1 signal 2 } 
	{ memRdCmd_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memRdCmd_V_TDATA sc_out sc_lv 40 signal 0 } 
	{ memRdCmd_V_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "demux2getPath_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":45, "type": "signal", "bundle":{"name": "demux2getPath_V", "role": "dout" }} , 
 	{ "name": "demux2getPath_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "demux2getPath_V", "role": "empty_n" }} , 
 	{ "name": "demux2getPath_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "demux2getPath_V", "role": "read" }} , 
 	{ "name": "disp2rec_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "disp2rec_V_V", "role": "din" }} , 
 	{ "name": "disp2rec_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "disp2rec_V_V", "role": "full_n" }} , 
 	{ "name": "disp2rec_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "disp2rec_V_V", "role": "write" }} , 
 	{ "name": "memRdCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memRdCmd_V", "role": "TREADY" }} , 
 	{ "name": "memRdCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memRdCmd_V", "role": "TDATA" }} , 
 	{ "name": "memRdCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memRdCmd_V", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "dispatch",
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
			{"Name" : "memRdCmd_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memRdCmd_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "demux2getPath_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "demux2getPath_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "disp2rec_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "disp2rec_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	dispatch {
		memRdCmd_V {Type O LastRead -1 FirstWrite 1}
		demux2getPath_V {Type I LastRead 0 FirstWrite -1}
		disp2rec_V_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	memRdCmd_V { axis {  { memRdCmd_V_TREADY out_acc 0 1 }  { memRdCmd_V_TDATA out_data 1 40 }  { memRdCmd_V_TVALID out_vld 1 1 } } }
	demux2getPath_V { ap_fifo {  { demux2getPath_V_dout fifo_data 0 45 }  { demux2getPath_V_empty_n fifo_status 0 1 }  { demux2getPath_V_read fifo_update 1 1 } } }
	disp2rec_V_V { ap_fifo {  { disp2rec_V_V_din fifo_data 1 12 }  { disp2rec_V_V_full_n fifo_status 0 1 }  { disp2rec_V_V_write fifo_update 1 1 } } }
}
