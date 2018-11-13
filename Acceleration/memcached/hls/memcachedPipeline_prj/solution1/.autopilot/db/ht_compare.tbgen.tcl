set moduleName ht_compare
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
set C_modelName {ht_compare}
set C_modelType { void 0 }
set C_modelArgList {
	{ memRdData_V_V int 512 regular {axi_s 0 volatile  { memRdData_V_V Data } }  }
	{ memRd2compMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrMemData_V_s int 512 regular {fifo 1 volatile } {global 1}  }
	{ memRd2comp_V int 130 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrKey_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ comp2memWrMd_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ comp2memWrStatus_V_b int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memRdData_V_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "memRd2compMd_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrMemData_V_s", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "memRd2comp_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrKey_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrMd_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrStatus_V_b", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ memRd2comp_V_dout sc_in sc_lv 130 signal 3 } 
	{ memRd2comp_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ memRd2comp_V_read sc_out sc_logic 1 signal 3 } 
	{ memRdData_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ memRd2compMd_V_dout sc_in sc_lv 64 signal 1 } 
	{ memRd2compMd_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ memRd2compMd_V_read sc_out sc_logic 1 signal 1 } 
	{ comp2memWrKey_V_din sc_out sc_lv 130 signal 4 } 
	{ comp2memWrKey_V_full_n sc_in sc_logic 1 signal 4 } 
	{ comp2memWrKey_V_write sc_out sc_logic 1 signal 4 } 
	{ comp2memWrMd_V_din sc_out sc_lv 64 signal 5 } 
	{ comp2memWrMd_V_full_n sc_in sc_logic 1 signal 5 } 
	{ comp2memWrMd_V_write sc_out sc_logic 1 signal 5 } 
	{ comp2memWrStatus_V_b_din sc_out sc_lv 8 signal 6 } 
	{ comp2memWrStatus_V_b_full_n sc_in sc_logic 1 signal 6 } 
	{ comp2memWrStatus_V_b_write sc_out sc_logic 1 signal 6 } 
	{ comp2memWrMemData_V_s_din sc_out sc_lv 512 signal 2 } 
	{ comp2memWrMemData_V_s_full_n sc_in sc_logic 1 signal 2 } 
	{ comp2memWrMemData_V_s_write sc_out sc_logic 1 signal 2 } 
	{ memRdData_V_V_TDATA sc_in sc_lv 512 signal 0 } 
	{ memRdData_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "memRd2comp_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "dout" }} , 
 	{ "name": "memRd2comp_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "empty_n" }} , 
 	{ "name": "memRd2comp_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "read" }} , 
 	{ "name": "memRdData_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "memRdData_V_V", "role": "TVALID" }} , 
 	{ "name": "memRd2compMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "dout" }} , 
 	{ "name": "memRd2compMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "empty_n" }} , 
 	{ "name": "memRd2compMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "read" }} , 
 	{ "name": "comp2memWrKey_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "din" }} , 
 	{ "name": "comp2memWrKey_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "full_n" }} , 
 	{ "name": "comp2memWrKey_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "write" }} , 
 	{ "name": "comp2memWrMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "din" }} , 
 	{ "name": "comp2memWrMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "full_n" }} , 
 	{ "name": "comp2memWrMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "write" }} , 
 	{ "name": "comp2memWrStatus_V_b_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_b", "role": "din" }} , 
 	{ "name": "comp2memWrStatus_V_b_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_b", "role": "full_n" }} , 
 	{ "name": "comp2memWrStatus_V_b_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_b", "role": "write" }} , 
 	{ "name": "comp2memWrMemData_V_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_s", "role": "din" }} , 
 	{ "name": "comp2memWrMemData_V_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_s", "role": "full_n" }} , 
 	{ "name": "comp2memWrMemData_V_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_s", "role": "write" }} , 
 	{ "name": "memRdData_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memRdData_V_V", "role": "TDATA" }} , 
 	{ "name": "memRdData_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "memRdData_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ht_compare",
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
			{"Name" : "memRdData_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "memRdData_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "guard_variable_for_h", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_fre_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_mat_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_fre_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_mat_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_fre_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_mat_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_fre", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "statusOutput_bin_mat", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmpState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmp_inDataMd_operati", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmp_inDataMd_metadat", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmp_inDataMd_keyLeng", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmp_inDataMd_valueLe", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cmp_keyLength", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memRd2compMd_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "memRd2compMd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "comp2memWrMemData_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrMemData_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memRd2comp_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "memRd2comp_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "comp2memWrKey_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrKey_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "comp2memWrMd_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrMd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "comp2memWrStatus_V_b", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrStatus_V_b_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ht_compare {
		memRdData_V_V {Type I LastRead 0 FirstWrite -1}
		guard_variable_for_h {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_fre_3 {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_mat_3 {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_fre_2 {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_mat_2 {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_fre_1 {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_mat_1 {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_fre {Type IO LastRead -1 FirstWrite -1}
		statusOutput_bin_mat {Type IO LastRead -1 FirstWrite -1}
		cmpState {Type IO LastRead -1 FirstWrite -1}
		cmp_inDataMd_operati {Type IO LastRead -1 FirstWrite -1}
		cmp_inDataMd_metadat {Type IO LastRead -1 FirstWrite -1}
		cmp_inDataMd_keyLeng {Type IO LastRead -1 FirstWrite -1}
		cmp_inDataMd_valueLe {Type IO LastRead -1 FirstWrite -1}
		cmp_keyLength {Type IO LastRead -1 FirstWrite -1}
		memRd2compMd_V {Type I LastRead 0 FirstWrite -1}
		comp2memWrMemData_V_s {Type O LastRead -1 FirstWrite 1}
		memRd2comp_V {Type I LastRead 0 FirstWrite -1}
		comp2memWrKey_V {Type O LastRead -1 FirstWrite 1}
		comp2memWrMd_V {Type O LastRead -1 FirstWrite 1}
		comp2memWrStatus_V_b {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	memRdData_V_V { axis {  { memRdData_V_V_TVALID in_vld 0 1 }  { memRdData_V_V_TDATA in_data 0 512 }  { memRdData_V_V_TREADY in_acc 1 1 } } }
	memRd2compMd_V { ap_fifo {  { memRd2compMd_V_dout fifo_data 0 64 }  { memRd2compMd_V_empty_n fifo_status 0 1 }  { memRd2compMd_V_read fifo_update 1 1 } } }
	comp2memWrMemData_V_s { ap_fifo {  { comp2memWrMemData_V_s_din fifo_data 1 512 }  { comp2memWrMemData_V_s_full_n fifo_status 0 1 }  { comp2memWrMemData_V_s_write fifo_update 1 1 } } }
	memRd2comp_V { ap_fifo {  { memRd2comp_V_dout fifo_data 0 130 }  { memRd2comp_V_empty_n fifo_status 0 1 }  { memRd2comp_V_read fifo_update 1 1 } } }
	comp2memWrKey_V { ap_fifo {  { comp2memWrKey_V_din fifo_data 1 130 }  { comp2memWrKey_V_full_n fifo_status 0 1 }  { comp2memWrKey_V_write fifo_update 1 1 } } }
	comp2memWrMd_V { ap_fifo {  { comp2memWrMd_V_din fifo_data 1 64 }  { comp2memWrMd_V_full_n fifo_status 0 1 }  { comp2memWrMd_V_write fifo_update 1 1 } } }
	comp2memWrStatus_V_b { ap_fifo {  { comp2memWrStatus_V_b_din fifo_data 1 8 }  { comp2memWrStatus_V_b_full_n fifo_status 0 1 }  { comp2memWrStatus_V_b_write fifo_update 1 1 } } }
}
