set moduleName ht_inputLogic
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
set C_modelName {ht_inputLogic}
set C_modelType { void 0 }
set C_modelArgList {
	{ requestParser2hashTa_1 int 256 regular {fifo 0 volatile } {global 0}  }
	{ hashKeyBuffer_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ in2hashKeyLength_V_V int 8 regular {fifo 1 volatile } {global 1}  }
	{ in2cc_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ in2ccMd_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ in2hash_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ hashValueBuffer_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ hashMdBuffer_V_V int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "requestParser2hashTa_1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "hashKeyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "in2hashKeyLength_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "in2cc_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "in2ccMd_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "in2hash_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "hashValueBuffer_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "hashMdBuffer_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ requestParser2hashTa_1_dout sc_in sc_lv 256 signal 0 } 
	{ requestParser2hashTa_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ requestParser2hashTa_1_read sc_out sc_logic 1 signal 0 } 
	{ in2hashKeyLength_V_V_din sc_out sc_lv 8 signal 2 } 
	{ in2hashKeyLength_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ in2hashKeyLength_V_V_write sc_out sc_logic 1 signal 2 } 
	{ hashValueBuffer_V_V_din sc_out sc_lv 64 signal 6 } 
	{ hashValueBuffer_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ hashValueBuffer_V_V_write sc_out sc_logic 1 signal 6 } 
	{ hashKeyBuffer_V_V_din sc_out sc_lv 64 signal 1 } 
	{ hashKeyBuffer_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ hashKeyBuffer_V_V_write sc_out sc_logic 1 signal 1 } 
	{ in2cc_V_din sc_out sc_lv 130 signal 3 } 
	{ in2cc_V_full_n sc_in sc_logic 1 signal 3 } 
	{ in2cc_V_write sc_out sc_logic 1 signal 3 } 
	{ in2ccMd_V_din sc_out sc_lv 64 signal 4 } 
	{ in2ccMd_V_full_n sc_in sc_logic 1 signal 4 } 
	{ in2ccMd_V_write sc_out sc_logic 1 signal 4 } 
	{ in2hash_V_din sc_out sc_lv 130 signal 5 } 
	{ in2hash_V_full_n sc_in sc_logic 1 signal 5 } 
	{ in2hash_V_write sc_out sc_logic 1 signal 5 } 
	{ hashMdBuffer_V_V_din sc_out sc_lv 128 signal 7 } 
	{ hashMdBuffer_V_V_full_n sc_in sc_logic 1 signal 7 } 
	{ hashMdBuffer_V_V_write sc_out sc_logic 1 signal 7 } 
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
 	{ "name": "requestParser2hashTa_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "requestParser2hashTa_1", "role": "dout" }} , 
 	{ "name": "requestParser2hashTa_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "requestParser2hashTa_1", "role": "empty_n" }} , 
 	{ "name": "requestParser2hashTa_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "requestParser2hashTa_1", "role": "read" }} , 
 	{ "name": "in2hashKeyLength_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "din" }} , 
 	{ "name": "in2hashKeyLength_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "full_n" }} , 
 	{ "name": "in2hashKeyLength_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "write" }} , 
 	{ "name": "hashValueBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "din" }} , 
 	{ "name": "hashValueBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "hashValueBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "write" }} , 
 	{ "name": "hashKeyBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "din" }} , 
 	{ "name": "hashKeyBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "hashKeyBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "write" }} , 
 	{ "name": "in2cc_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2cc_V", "role": "din" }} , 
 	{ "name": "in2cc_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "full_n" }} , 
 	{ "name": "in2cc_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "write" }} , 
 	{ "name": "in2ccMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "din" }} , 
 	{ "name": "in2ccMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "full_n" }} , 
 	{ "name": "in2ccMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "write" }} , 
 	{ "name": "in2hash_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2hash_V", "role": "din" }} , 
 	{ "name": "in2hash_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hash_V", "role": "full_n" }} , 
 	{ "name": "in2hash_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hash_V", "role": "write" }} , 
 	{ "name": "hashMdBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "din" }} , 
 	{ "name": "hashMdBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "hashMdBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ht_inputLogic",
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
			{"Name" : "iState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "requestParser2hashTa_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "requestParser2hashTa_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bufferWordMd_keyLeng", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wordCounter_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "keyLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "keyWordCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bufferWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bufferWordMd_operati", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bufferWordMd_valueLe", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "hashKeyBuffer_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashKeyBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2hashKeyLength_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2hashKeyLength_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2cc_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2cc_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2ccMd_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2ccMd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2hash_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2hash_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hashValueBuffer_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashValueBuffer_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hashMdBuffer_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hashMdBuffer_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ht_inputLogic {
		iState {Type IO LastRead -1 FirstWrite -1}
		requestParser2hashTa_1 {Type I LastRead 0 FirstWrite -1}
		bufferWordMd_keyLeng {Type IO LastRead -1 FirstWrite -1}
		wordCounter_V_1 {Type IO LastRead -1 FirstWrite -1}
		keyLength_V {Type IO LastRead -1 FirstWrite -1}
		keyWordCounter_V {Type IO LastRead -1 FirstWrite -1}
		bufferWord_data_V {Type IO LastRead -1 FirstWrite -1}
		bufferWordMd_operati {Type IO LastRead -1 FirstWrite -1}
		bufferWordMd_valueLe {Type IO LastRead -1 FirstWrite -1}
		hashKeyBuffer_V_V {Type O LastRead -1 FirstWrite 2}
		in2hashKeyLength_V_V {Type O LastRead -1 FirstWrite 1}
		in2cc_V {Type O LastRead -1 FirstWrite 2}
		in2ccMd_V {Type O LastRead -1 FirstWrite 2}
		in2hash_V {Type O LastRead -1 FirstWrite 2}
		hashValueBuffer_V_V {Type O LastRead -1 FirstWrite 1}
		hashMdBuffer_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	requestParser2hashTa_1 { ap_fifo {  { requestParser2hashTa_1_dout fifo_data 0 256 }  { requestParser2hashTa_1_empty_n fifo_status 0 1 }  { requestParser2hashTa_1_read fifo_update 1 1 } } }
	hashKeyBuffer_V_V { ap_fifo {  { hashKeyBuffer_V_V_din fifo_data 1 64 }  { hashKeyBuffer_V_V_full_n fifo_status 0 1 }  { hashKeyBuffer_V_V_write fifo_update 1 1 } } }
	in2hashKeyLength_V_V { ap_fifo {  { in2hashKeyLength_V_V_din fifo_data 1 8 }  { in2hashKeyLength_V_V_full_n fifo_status 0 1 }  { in2hashKeyLength_V_V_write fifo_update 1 1 } } }
	in2cc_V { ap_fifo {  { in2cc_V_din fifo_data 1 130 }  { in2cc_V_full_n fifo_status 0 1 }  { in2cc_V_write fifo_update 1 1 } } }
	in2ccMd_V { ap_fifo {  { in2ccMd_V_din fifo_data 1 64 }  { in2ccMd_V_full_n fifo_status 0 1 }  { in2ccMd_V_write fifo_update 1 1 } } }
	in2hash_V { ap_fifo {  { in2hash_V_din fifo_data 1 130 }  { in2hash_V_full_n fifo_status 0 1 }  { in2hash_V_write fifo_update 1 1 } } }
	hashValueBuffer_V_V { ap_fifo {  { hashValueBuffer_V_V_din fifo_data 1 64 }  { hashValueBuffer_V_V_full_n fifo_status 0 1 }  { hashValueBuffer_V_V_write fifo_update 1 1 } } }
	hashMdBuffer_V_V { ap_fifo {  { hashMdBuffer_V_V_din fifo_data 1 128 }  { hashMdBuffer_V_V_full_n fifo_status 0 1 }  { hashMdBuffer_V_V_write fifo_update 1 1 } } }
}
