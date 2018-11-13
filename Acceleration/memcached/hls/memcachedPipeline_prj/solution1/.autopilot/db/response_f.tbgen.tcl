set moduleName response_f
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {response_f}
set C_modelType { void 0 }
set C_modelArgList {
	{ valueBuffer_rf_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ metadataBuffer_rf_V_s int 248 regular {fifo 1 volatile } {global 1}  }
	{ merger2responseForma_1 int 256 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "valueBuffer_rf_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "metadataBuffer_rf_V_s", "interface" : "fifo", "bitwidth" : 248, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "merger2responseForma_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} ]}
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
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ valueBuffer_rf_V_V_din sc_out sc_lv 64 signal 0 } 
	{ valueBuffer_rf_V_V_full_n sc_in sc_logic 1 signal 0 } 
	{ valueBuffer_rf_V_V_write sc_out sc_logic 1 signal 0 } 
	{ metadataBuffer_rf_V_s_din sc_out sc_lv 248 signal 1 } 
	{ metadataBuffer_rf_V_s_full_n sc_in sc_logic 1 signal 1 } 
	{ metadataBuffer_rf_V_s_write sc_out sc_logic 1 signal 1 } 
	{ merger2responseForma_1_dout sc_in sc_lv 256 signal 2 } 
	{ merger2responseForma_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ merger2responseForma_1_read sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "valueBuffer_rf_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "valueBuffer_rf_V_V", "role": "din" }} , 
 	{ "name": "valueBuffer_rf_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rf_V_V", "role": "full_n" }} , 
 	{ "name": "valueBuffer_rf_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rf_V_V", "role": "write" }} , 
 	{ "name": "metadataBuffer_rf_V_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":248, "type": "signal", "bundle":{"name": "metadataBuffer_rf_V_s", "role": "din" }} , 
 	{ "name": "metadataBuffer_rf_V_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rf_V_s", "role": "full_n" }} , 
 	{ "name": "metadataBuffer_rf_V_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rf_V_s", "role": "write" }} , 
 	{ "name": "merger2responseForma_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "merger2responseForma_1", "role": "dout" }} , 
 	{ "name": "merger2responseForma_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merger2responseForma_1", "role": "empty_n" }} , 
 	{ "name": "merger2responseForma_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merger2responseForma_1", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "response_f",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "valueBuffer_rf_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "valueBuffer_rf_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "metadataBuffer_rf_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "metadataBuffer_rf_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "merger2responseForma_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "merger2responseForma_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inWordCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bf_metadataTempBuffe", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	response_f {
		valueBuffer_rf_V_V {Type O LastRead 0 FirstWrite 0}
		metadataBuffer_rf_V_s {Type O LastRead 0 FirstWrite 0}
		merger2responseForma_1 {Type I LastRead 0 FirstWrite -1}
		inWordCounter_V {Type IO LastRead -1 FirstWrite -1}
		bf_metadataTempBuffe {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	valueBuffer_rf_V_V { ap_fifo {  { valueBuffer_rf_V_V_din fifo_data 1 64 }  { valueBuffer_rf_V_V_full_n fifo_status 0 1 }  { valueBuffer_rf_V_V_write fifo_update 1 1 } } }
	metadataBuffer_rf_V_s { ap_fifo {  { metadataBuffer_rf_V_s_din fifo_data 1 248 }  { metadataBuffer_rf_V_s_full_n fifo_status 0 1 }  { metadataBuffer_rf_V_s_write fifo_update 1 1 } } }
	merger2responseForma_1 { ap_fifo {  { merger2responseForma_1_dout fifo_data 0 256 }  { merger2responseForma_1_empty_n fifo_status 0 1 }  { merger2responseForma_1_read fifo_update 1 1 } } }
}
