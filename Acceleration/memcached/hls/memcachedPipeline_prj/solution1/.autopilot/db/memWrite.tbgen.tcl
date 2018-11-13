set moduleName memWrite
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
set C_modelName {memWrite}
set C_modelType { void 0 }
set C_modelArgList {
	{ memWrCtrl_V int 40 regular {axi_s 1 volatile  { memWrCtrl_V Data } }  }
	{ memWrData_V_V int 512 regular {axi_s 1 volatile  { memWrData_V_V Data } }  }
	{ addressReturnOut_V_V int 32 regular {axi_s 1 volatile  { addressReturnOut_V_V Data } }  }
	{ addressAssignDramIn_s int 32 regular {axi_s 0 volatile  { addressAssignDramIn_s Data } }  }
	{ addressAssignFlashIn int 32 regular {axi_s 0 volatile  { addressAssignFlashIn Data } }  }
	{ flushReq_V int 1 regular {pointer 1}  }
	{ flushAck_V int 1 regular {fifo 0}  }
	{ flushDone_V int 1 regular {pointer 1}  }
	{ comp2memWrMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrStatus_V_b int 8 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrMemData_V_s int 512 regular {fifo 0 volatile } {global 0}  }
	{ memWr2out_V int 57 regular {fifo 1 volatile } {global 1}  }
	{ dec2cc_V_V int 1 regular {fifo 1 volatile } {global 1}  }
	{ comp2memWrKey_V int 130 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWrCtrl_V", "interface" : "axis", "bitwidth" : 40, "direction" : "WRITEONLY"} , 
 	{ "Name" : "memWrData_V_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "addressReturnOut_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "addressAssignDramIn_s", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "addressAssignFlashIn", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flushReq_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "flushAck_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "flushDone_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "comp2memWrMd_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrStatus_V_b", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrMemData_V_s", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "memWr2out_V", "interface" : "fifo", "bitwidth" : 57, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "dec2cc_V_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "comp2memWrKey_V", "interface" : "fifo", "bitwidth" : 130, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flushAck_V_dout sc_in sc_lv 1 signal 6 } 
	{ flushAck_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ flushAck_V_read sc_out sc_logic 1 signal 6 } 
	{ comp2memWrKey_V_dout sc_in sc_lv 130 signal 13 } 
	{ comp2memWrKey_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ comp2memWrKey_V_read sc_out sc_logic 1 signal 13 } 
	{ comp2memWrMemData_V_s_dout sc_in sc_lv 512 signal 10 } 
	{ comp2memWrMemData_V_s_empty_n sc_in sc_logic 1 signal 10 } 
	{ comp2memWrMemData_V_s_read sc_out sc_logic 1 signal 10 } 
	{ addressAssignFlashIn_TVALID sc_in sc_logic 1 invld 4 } 
	{ addressAssignDramIn_s_TVALID sc_in sc_logic 1 invld 3 } 
	{ comp2memWrStatus_V_b_dout sc_in sc_lv 8 signal 9 } 
	{ comp2memWrStatus_V_b_empty_n sc_in sc_logic 1 signal 9 } 
	{ comp2memWrStatus_V_b_read sc_out sc_logic 1 signal 9 } 
	{ comp2memWrMd_V_dout sc_in sc_lv 64 signal 8 } 
	{ comp2memWrMd_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ comp2memWrMd_V_read sc_out sc_logic 1 signal 8 } 
	{ memWrCtrl_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memWrData_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ addressReturnOut_V_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ dec2cc_V_V_din sc_out sc_lv 1 signal 12 } 
	{ dec2cc_V_V_full_n sc_in sc_logic 1 signal 12 } 
	{ dec2cc_V_V_write sc_out sc_logic 1 signal 12 } 
	{ memWr2out_V_din sc_out sc_lv 57 signal 11 } 
	{ memWr2out_V_full_n sc_in sc_logic 1 signal 11 } 
	{ memWr2out_V_write sc_out sc_logic 1 signal 11 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ memWrCtrl_V_TDATA sc_out sc_lv 40 signal 0 } 
	{ memWrCtrl_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ memWrData_V_V_TDATA sc_out sc_lv 512 signal 1 } 
	{ memWrData_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ addressReturnOut_V_V_TDATA sc_out sc_lv 32 signal 2 } 
	{ addressReturnOut_V_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ addressAssignDramIn_s_TDATA sc_in sc_lv 32 signal 3 } 
	{ addressAssignDramIn_s_TREADY sc_out sc_logic 1 inacc 3 } 
	{ addressAssignFlashIn_TDATA sc_in sc_lv 32 signal 4 } 
	{ addressAssignFlashIn_TREADY sc_out sc_logic 1 inacc 4 } 
	{ flushReq_V sc_out sc_lv 1 signal 5 } 
	{ flushReq_V_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ flushDone_V sc_out sc_lv 1 signal 7 } 
	{ flushDone_V_ap_vld sc_out sc_logic 1 outvld 7 } 
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
 	{ "name": "flushAck_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "dout" }} , 
 	{ "name": "flushAck_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "empty_n" }} , 
 	{ "name": "flushAck_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "read" }} , 
 	{ "name": "comp2memWrKey_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "dout" }} , 
 	{ "name": "comp2memWrKey_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "empty_n" }} , 
 	{ "name": "comp2memWrKey_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "read" }} , 
 	{ "name": "comp2memWrMemData_V_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_s", "role": "dout" }} , 
 	{ "name": "comp2memWrMemData_V_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_s", "role": "empty_n" }} , 
 	{ "name": "comp2memWrMemData_V_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_s", "role": "read" }} , 
 	{ "name": "addressAssignFlashIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "addressAssignFlashIn", "role": "TVALID" }} , 
 	{ "name": "addressAssignDramIn_s_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "addressAssignDramIn_s", "role": "TVALID" }} , 
 	{ "name": "comp2memWrStatus_V_b_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_b", "role": "dout" }} , 
 	{ "name": "comp2memWrStatus_V_b_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_b", "role": "empty_n" }} , 
 	{ "name": "comp2memWrStatus_V_b_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_b", "role": "read" }} , 
 	{ "name": "comp2memWrMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "dout" }} , 
 	{ "name": "comp2memWrMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "empty_n" }} , 
 	{ "name": "comp2memWrMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "read" }} , 
 	{ "name": "memWrCtrl_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrCtrl_V", "role": "TREADY" }} , 
 	{ "name": "memWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "addressReturnOut_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "addressReturnOut_V_V", "role": "TREADY" }} , 
 	{ "name": "dec2cc_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "din" }} , 
 	{ "name": "dec2cc_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "full_n" }} , 
 	{ "name": "dec2cc_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "write" }} , 
 	{ "name": "memWr2out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "din" }} , 
 	{ "name": "memWr2out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "full_n" }} , 
 	{ "name": "memWr2out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "memWrCtrl_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memWrCtrl_V", "role": "TDATA" }} , 
 	{ "name": "memWrCtrl_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrCtrl_V", "role": "TVALID" }} , 
 	{ "name": "memWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "memWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrData_V_V", "role": "TVALID" }} , 
 	{ "name": "addressReturnOut_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressReturnOut_V_V", "role": "TDATA" }} , 
 	{ "name": "addressReturnOut_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "addressReturnOut_V_V", "role": "TVALID" }} , 
 	{ "name": "addressAssignDramIn_s_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressAssignDramIn_s", "role": "TDATA" }} , 
 	{ "name": "addressAssignDramIn_s_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "addressAssignDramIn_s", "role": "TREADY" }} , 
 	{ "name": "addressAssignFlashIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressAssignFlashIn", "role": "TDATA" }} , 
 	{ "name": "addressAssignFlashIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "addressAssignFlashIn", "role": "TREADY" }} , 
 	{ "name": "flushReq_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushReq_V", "role": "default" }} , 
 	{ "name": "flushReq_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flushReq_V", "role": "ap_vld" }} , 
 	{ "name": "flushDone_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushDone_V", "role": "default" }} , 
 	{ "name": "flushDone_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flushDone_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "memWrite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "memWrCtrl_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memWrCtrl_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memWrData_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memWrData_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addressReturnOut_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "addressReturnOut_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addressAssignDramIn_s", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "addressAssignDramIn_s_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addressAssignFlashIn", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "addressAssignFlashIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flushReq_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "flushAck_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flushAck_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flushDone_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "guard_variable_for_m", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputStatu", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWrState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWriteAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputWordM_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputWordM_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "htMemWriteInputWordM", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWr_location_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWr_memInitialized", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "comp2memWrMd_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrMd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "comp2memWrStatus_V_b", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrStatus_V_b_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "htMemWriteInputWordM_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWr_flushReq_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWr_flushDone_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "comp2memWrMemData_V_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrMemData_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memWr2out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "memWr2out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dec2cc_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dec2cc_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memWr_replaceLocatio", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "comp2memWrKey_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "comp2memWrKey_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	memWrite {
		memWrCtrl_V {Type O LastRead -1 FirstWrite 3}
		memWrData_V_V {Type O LastRead -1 FirstWrite 3}
		addressReturnOut_V_V {Type O LastRead -1 FirstWrite 3}
		addressAssignDramIn_s {Type I LastRead 0 FirstWrite -1}
		addressAssignFlashIn {Type I LastRead 0 FirstWrite -1}
		flushReq_V {Type O LastRead -1 FirstWrite 4}
		flushAck_V {Type I LastRead 0 FirstWrite -1}
		flushDone_V {Type O LastRead -1 FirstWrite 4}
		guard_variable_for_m {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_7 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_3 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_6 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_2 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_5 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_1 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu_4 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputStatu {Type IO LastRead -1 FirstWrite -1}
		memWrState {Type IO LastRead -1 FirstWrite -1}
		memWriteAddress_V {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputWordM_4 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputWordM_3 {Type IO LastRead -1 FirstWrite -1}
		htMemWriteInputWordM {Type IO LastRead -1 FirstWrite -1}
		memWr_location_V {Type IO LastRead -1 FirstWrite -1}
		memWr_memInitialized {Type IO LastRead -1 FirstWrite -1}
		comp2memWrMd_V {Type I LastRead 0 FirstWrite -1}
		comp2memWrStatus_V_b {Type I LastRead 0 FirstWrite -1}
		htMemWriteInputWordM_1 {Type IO LastRead -1 FirstWrite -1}
		memWr_flushReq_V {Type IO LastRead -1 FirstWrite -1}
		memWr_flushDone_V {Type IO LastRead -1 FirstWrite -1}
		comp2memWrMemData_V_s {Type I LastRead 0 FirstWrite -1}
		memWr2out_V {Type O LastRead -1 FirstWrite 4}
		dec2cc_V_V {Type O LastRead -1 FirstWrite 4}
		memWr_replaceLocatio {Type IO LastRead -1 FirstWrite -1}
		comp2memWrKey_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	memWrCtrl_V { axis {  { memWrCtrl_V_TREADY out_acc 0 1 }  { memWrCtrl_V_TDATA out_data 1 40 }  { memWrCtrl_V_TVALID out_vld 1 1 } } }
	memWrData_V_V { axis {  { memWrData_V_V_TREADY out_acc 0 1 }  { memWrData_V_V_TDATA out_data 1 512 }  { memWrData_V_V_TVALID out_vld 1 1 } } }
	addressReturnOut_V_V { axis {  { addressReturnOut_V_V_TREADY out_acc 0 1 }  { addressReturnOut_V_V_TDATA out_data 1 32 }  { addressReturnOut_V_V_TVALID out_vld 1 1 } } }
	addressAssignDramIn_s { axis {  { addressAssignDramIn_s_TVALID in_vld 0 1 }  { addressAssignDramIn_s_TDATA in_data 0 32 }  { addressAssignDramIn_s_TREADY in_acc 1 1 } } }
	addressAssignFlashIn { axis {  { addressAssignFlashIn_TVALID in_vld 0 1 }  { addressAssignFlashIn_TDATA in_data 0 32 }  { addressAssignFlashIn_TREADY in_acc 1 1 } } }
	flushReq_V { ap_vld {  { flushReq_V out_data 1 1 }  { flushReq_V_ap_vld out_vld 1 1 } } }
	flushAck_V { ap_fifo {  { flushAck_V_dout fifo_data 0 1 }  { flushAck_V_empty_n fifo_status 0 1 }  { flushAck_V_read fifo_update 1 1 } } }
	flushDone_V { ap_vld {  { flushDone_V out_data 1 1 }  { flushDone_V_ap_vld out_vld 1 1 } } }
	comp2memWrMd_V { ap_fifo {  { comp2memWrMd_V_dout fifo_data 0 64 }  { comp2memWrMd_V_empty_n fifo_status 0 1 }  { comp2memWrMd_V_read fifo_update 1 1 } } }
	comp2memWrStatus_V_b { ap_fifo {  { comp2memWrStatus_V_b_dout fifo_data 0 8 }  { comp2memWrStatus_V_b_empty_n fifo_status 0 1 }  { comp2memWrStatus_V_b_read fifo_update 1 1 } } }
	comp2memWrMemData_V_s { ap_fifo {  { comp2memWrMemData_V_s_dout fifo_data 0 512 }  { comp2memWrMemData_V_s_empty_n fifo_status 0 1 }  { comp2memWrMemData_V_s_read fifo_update 1 1 } } }
	memWr2out_V { ap_fifo {  { memWr2out_V_din fifo_data 1 57 }  { memWr2out_V_full_n fifo_status 0 1 }  { memWr2out_V_write fifo_update 1 1 } } }
	dec2cc_V_V { ap_fifo {  { dec2cc_V_V_din fifo_data 1 1 }  { dec2cc_V_V_full_n fifo_status 0 1 }  { dec2cc_V_V_write fifo_update 1 1 } } }
	comp2memWrKey_V { ap_fifo {  { comp2memWrKey_V_dout fifo_data 0 130 }  { comp2memWrKey_V_empty_n fifo_status 0 1 }  { comp2memWrKey_V_read fifo_update 1 1 } } }
}
