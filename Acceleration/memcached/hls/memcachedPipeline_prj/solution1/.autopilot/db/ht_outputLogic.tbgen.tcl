set moduleName ht_outputLogic
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
set C_modelName {ht_outputLogic}
set C_modelType { void 0 }
set C_modelArgList {
	{ memWr2out_V int 57 regular {fifo 0 volatile } {global 0}  }
	{ hashMdBuffer_V_V int 128 regular {fifo 0 volatile } {global 0}  }
	{ hashKeyBuffer_V_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ hashValueBuffer_V_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ hashTable2Dram_V int 256 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWr2out_V", "interface" : "fifo", "bitwidth" : 57, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "hashMdBuffer_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "hashKeyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "hashValueBuffer_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "hashTable2Dram_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ hashKeyBuffer_V_V_dout sc_in sc_lv 64 signal 2 } 
	{ hashKeyBuffer_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ hashKeyBuffer_V_V_read sc_out sc_logic 1 signal 2 } 
	{ hashValueBuffer_V_V_dout sc_in sc_lv 64 signal 3 } 
	{ hashValueBuffer_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ hashValueBuffer_V_V_read sc_out sc_logic 1 signal 3 } 
	{ hashMdBuffer_V_V_dout sc_in sc_lv 128 signal 1 } 
	{ hashMdBuffer_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ hashMdBuffer_V_V_read sc_out sc_logic 1 signal 1 } 
	{ memWr2out_V_dout sc_in sc_lv 57 signal 0 } 
	{ memWr2out_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ memWr2out_V_read sc_out sc_logic 1 signal 0 } 
	{ hashTable2Dram_V_din sc_out sc_lv 256 signal 4 } 
	{ hashTable2Dram_V_full_n sc_in sc_logic 1 signal 4 } 
	{ hashTable2Dram_V_write sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "hashKeyBuffer_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "dout" }} , 
 	{ "name": "hashKeyBuffer_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "empty_n" }} , 
 	{ "name": "hashKeyBuffer_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "read" }} , 
 	{ "name": "hashValueBuffer_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "dout" }} , 
 	{ "name": "hashValueBuffer_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "empty_n" }} , 
 	{ "name": "hashValueBuffer_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "read" }} , 
 	{ "name": "hashMdBuffer_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "dout" }} , 
 	{ "name": "hashMdBuffer_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "empty_n" }} , 
 	{ "name": "hashMdBuffer_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "read" }} , 
 	{ "name": "memWr2out_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "dout" }} , 
 	{ "name": "memWr2out_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "empty_n" }} , 
 	{ "name": "memWr2out_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "read" }} , 
 	{ "name": "hashTable2Dram_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hashTable2Dram_V", "role": "din" }} , 
 	{ "name": "hashTable2Dram_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashTable2Dram_V", "role": "full_n" }} , 
 	{ "name": "hashTable2Dram_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashTable2Dram_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ht_outputLogic",
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
			{"Name" : "olState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ol_keyLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ol_valueLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWr2out_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "memWr2out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hashMdBuffer_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashMdBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hashKeyBuffer_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashKeyBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hashValueBuffer_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashValueBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hashTable2Dram_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashTable2Dram_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ht_outputLogic {
		olState {Type IO LastRead -1 FirstWrite -1}
		ol_keyLength_V {Type IO LastRead -1 FirstWrite -1}
		ol_valueLength_V {Type IO LastRead -1 FirstWrite -1}
		memWr2out_V {Type I LastRead 0 FirstWrite -1}
		hashMdBuffer_V_V {Type I LastRead 0 FirstWrite -1}
		hashKeyBuffer_V_V {Type I LastRead 0 FirstWrite -1}
		hashValueBuffer_V_V {Type I LastRead 0 FirstWrite -1}
		hashTable2Dram_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	memWr2out_V { ap_fifo {  { memWr2out_V_dout fifo_data 0 57 }  { memWr2out_V_empty_n fifo_status 0 1 }  { memWr2out_V_read fifo_update 1 1 } } }
	hashMdBuffer_V_V { ap_fifo {  { hashMdBuffer_V_V_dout fifo_data 0 128 }  { hashMdBuffer_V_V_empty_n fifo_status 0 1 }  { hashMdBuffer_V_V_read fifo_update 1 1 } } }
	hashKeyBuffer_V_V { ap_fifo {  { hashKeyBuffer_V_V_dout fifo_data 0 64 }  { hashKeyBuffer_V_V_empty_n fifo_status 0 1 }  { hashKeyBuffer_V_V_read fifo_update 1 1 } } }
	hashValueBuffer_V_V { ap_fifo {  { hashValueBuffer_V_V_dout fifo_data 0 64 }  { hashValueBuffer_V_V_empty_n fifo_status 0 1 }  { hashValueBuffer_V_V_read fifo_update 1 1 } } }
	hashTable2Dram_V { ap_fifo {  { hashTable2Dram_V_din fifo_data 1 256 }  { hashTable2Dram_V_full_n fifo_status 0 1 }  { hashTable2Dram_V_write fifo_update 1 1 } } }
}
