set moduleName bp_f1244
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
set C_modelName {bp_f1244}
set C_modelType { void 0 }
set C_modelArgList {
	{ feInput_V_data_V int 64 regular {axi_s 0 volatile  { inData Data } }  }
	{ feInput_V_user_V int 112 regular {axi_s 0 volatile  { inData User } }  }
	{ feInput_V_keep_V int 8 regular {axi_s 0 volatile  { inData Keep } }  }
	{ feInput_V_last_V int 1 regular {axi_s 0 volatile  { inData Last } }  }
	{ flushAck_V int 1 regular {fifo 0}  }
	{ flushAck_V_out int 1 regular {fifo 1}  }
	{ metadataBuffer_rp_V_s int 248 regular {fifo 1 volatile } {global 1}  }
	{ valueBuffer_rp_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ keyBuffer_rp_V_V int 64 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "feInput_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "feInput_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY"} , 
 	{ "Name" : "feInput_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "feInput_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "flushAck_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "flushAck_V_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "metadataBuffer_rp_V_s", "interface" : "fifo", "bitwidth" : 248, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "valueBuffer_rp_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "keyBuffer_rp_V_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inData_TVALID sc_in sc_logic 1 invld 3 } 
	{ flushAck_V_dout sc_in sc_lv 1 signal 4 } 
	{ flushAck_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ flushAck_V_read sc_out sc_logic 1 signal 4 } 
	{ flushAck_V_out_din sc_out sc_lv 1 signal 5 } 
	{ flushAck_V_out_full_n sc_in sc_logic 1 signal 5 } 
	{ flushAck_V_out_write sc_out sc_logic 1 signal 5 } 
	{ valueBuffer_rp_V_V_din sc_out sc_lv 64 signal 7 } 
	{ valueBuffer_rp_V_V_full_n sc_in sc_logic 1 signal 7 } 
	{ valueBuffer_rp_V_V_write sc_out sc_logic 1 signal 7 } 
	{ keyBuffer_rp_V_V_din sc_out sc_lv 64 signal 8 } 
	{ keyBuffer_rp_V_V_full_n sc_in sc_logic 1 signal 8 } 
	{ keyBuffer_rp_V_V_write sc_out sc_logic 1 signal 8 } 
	{ metadataBuffer_rp_V_s_din sc_out sc_lv 248 signal 6 } 
	{ metadataBuffer_rp_V_s_full_n sc_in sc_logic 1 signal 6 } 
	{ metadataBuffer_rp_V_s_write sc_out sc_logic 1 signal 6 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ inData_TDATA sc_in sc_lv 64 signal 0 } 
	{ inData_TREADY sc_out sc_logic 1 inacc 3 } 
	{ inData_TUSER sc_in sc_lv 112 signal 1 } 
	{ inData_TKEEP sc_in sc_lv 8 signal 2 } 
	{ inData_TLAST sc_in sc_lv 1 signal 3 } 
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
 	{ "name": "inData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "feInput_V_last_V", "role": "default" }} , 
 	{ "name": "flushAck_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "dout" }} , 
 	{ "name": "flushAck_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "empty_n" }} , 
 	{ "name": "flushAck_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "read" }} , 
 	{ "name": "flushAck_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V_out", "role": "din" }} , 
 	{ "name": "flushAck_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V_out", "role": "full_n" }} , 
 	{ "name": "flushAck_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V_out", "role": "write" }} , 
 	{ "name": "valueBuffer_rp_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "valueBuffer_rp_V_V", "role": "din" }} , 
 	{ "name": "valueBuffer_rp_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rp_V_V", "role": "full_n" }} , 
 	{ "name": "valueBuffer_rp_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rp_V_V", "role": "write" }} , 
 	{ "name": "keyBuffer_rp_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keyBuffer_rp_V_V", "role": "din" }} , 
 	{ "name": "keyBuffer_rp_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyBuffer_rp_V_V", "role": "full_n" }} , 
 	{ "name": "keyBuffer_rp_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyBuffer_rp_V_V", "role": "write" }} , 
 	{ "name": "metadataBuffer_rp_V_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":248, "type": "signal", "bundle":{"name": "metadataBuffer_rp_V_s", "role": "din" }} , 
 	{ "name": "metadataBuffer_rp_V_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rp_V_s", "role": "full_n" }} , 
 	{ "name": "metadataBuffer_rp_V_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rp_V_s", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "inData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feInput_V_data_V", "role": "default" }} , 
 	{ "name": "inData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "feInput_V_last_V", "role": "default" }} , 
 	{ "name": "inData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "feInput_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feInput_V_keep_V", "role": "default" }} , 
 	{ "name": "inData_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feInput_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "bp_f1244",
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
			{"Name" : "feInput_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inData_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "feInput_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feInput_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feInput_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "flushAck_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flushAck_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flushAck_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flushAck_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lastValueWord", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bpf_wordCounter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "valueTempBuffer_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "metadataTempBuffer_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bpf_keyLength_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "keyLengthBuffer", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bpf_opCode_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "protocol_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bpf_valueLengthBuffe", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "metadataBuffer_rp_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "metadataBuffer_rp_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "valueBuffer_rp_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "valueBuffer_rp_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "valueShift", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "keyBuffer_rp_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "keyBuffer_rp_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	bp_f1244 {
		feInput_V_data_V {Type I LastRead 0 FirstWrite -1}
		feInput_V_user_V {Type I LastRead 0 FirstWrite -1}
		feInput_V_keep_V {Type I LastRead 0 FirstWrite -1}
		feInput_V_last_V {Type I LastRead 0 FirstWrite -1}
		flushAck_V {Type I LastRead 1 FirstWrite -1}
		flushAck_V_out {Type O LastRead -1 FirstWrite 1}
		lastValueWord {Type IO LastRead -1 FirstWrite -1}
		bpf_wordCounter {Type IO LastRead -1 FirstWrite -1}
		valueTempBuffer_V {Type IO LastRead -1 FirstWrite -1}
		metadataTempBuffer_V {Type IO LastRead -1 FirstWrite -1}
		bpf_keyLength_V {Type IO LastRead -1 FirstWrite -1}
		keyLengthBuffer {Type IO LastRead -1 FirstWrite -1}
		bpf_opCode_V {Type IO LastRead -1 FirstWrite -1}
		protocol_V {Type IO LastRead -1 FirstWrite -1}
		bpf_valueLengthBuffe {Type IO LastRead -1 FirstWrite -1}
		metadataBuffer_rp_V_s {Type O LastRead -1 FirstWrite 1}
		valueBuffer_rp_V_V {Type O LastRead -1 FirstWrite 1}
		valueShift {Type IO LastRead -1 FirstWrite -1}
		keyBuffer_rp_V_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	feInput_V_data_V { axis {  { inData_TDATA in_data 0 64 } } }
	feInput_V_user_V { axis {  { inData_TUSER in_data 0 112 } } }
	feInput_V_keep_V { axis {  { inData_TKEEP in_data 0 8 } } }
	feInput_V_last_V { axis {  { inData_TVALID in_vld 0 1 }  { inData_TREADY in_acc 1 1 }  { inData_TLAST in_data 0 1 } } }
	flushAck_V { ap_fifo {  { flushAck_V_dout fifo_data 0 1 }  { flushAck_V_empty_n fifo_status 0 1 }  { flushAck_V_read fifo_update 1 1 } } }
	flushAck_V_out { ap_fifo {  { flushAck_V_out_din fifo_data 1 1 }  { flushAck_V_out_full_n fifo_status 0 1 }  { flushAck_V_out_write fifo_update 1 1 } } }
	metadataBuffer_rp_V_s { ap_fifo {  { metadataBuffer_rp_V_s_din fifo_data 1 248 }  { metadataBuffer_rp_V_s_full_n fifo_status 0 1 }  { metadataBuffer_rp_V_s_write fifo_update 1 1 } } }
	valueBuffer_rp_V_V { ap_fifo {  { valueBuffer_rp_V_V_din fifo_data 1 64 }  { valueBuffer_rp_V_V_full_n fifo_status 0 1 }  { valueBuffer_rp_V_V_write fifo_update 1 1 } } }
	keyBuffer_rp_V_V { ap_fifo {  { keyBuffer_rp_V_V_din fifo_data 1 64 }  { keyBuffer_rp_V_V_full_n fifo_status 0 1 }  { keyBuffer_rp_V_V_write fifo_update 1 1 } } }
}
