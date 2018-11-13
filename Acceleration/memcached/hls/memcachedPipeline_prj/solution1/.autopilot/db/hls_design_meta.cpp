#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("inData_TDATA", 64, hls_in, 0, "axis", "in_data", 1),
	Port_Property("inData_TUSER", 112, hls_in, 1, "axis", "in_data", 1),
	Port_Property("inData_TKEEP", 8, hls_in, 2, "axis", "in_data", 1),
	Port_Property("inData_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("outData_TDATA", 64, hls_out, 4, "axis", "out_data", 1),
	Port_Property("outData_TUSER", 112, hls_out, 5, "axis", "out_data", 1),
	Port_Property("outData_TKEEP", 8, hls_out, 6, "axis", "out_data", 1),
	Port_Property("outData_TLAST", 1, hls_out, 7, "axis", "out_data", 1),
	Port_Property("dramValueStoreMemRdCmd_V_TDATA", 40, hls_out, 8, "axis", "out_data", 1),
	Port_Property("dramValueStoreMemRdData_V_V_TDATA", 512, hls_in, 9, "axis", "in_data", 1),
	Port_Property("dramValueStoreMemWrCmd_V_TDATA", 40, hls_out, 10, "axis", "out_data", 1),
	Port_Property("dramValueStoreMemWrData_V_V_TDATA", 512, hls_out, 11, "axis", "out_data", 1),
	Port_Property("flashValueStoreMemRdCmd_V_TDATA", 48, hls_out, 12, "axis", "out_data", 1),
	Port_Property("flashValueStoreMemRdData_V_V_TDATA", 64, hls_in, 13, "axis", "in_data", 1),
	Port_Property("flashValueStoreMemWrCmd_V_TDATA", 48, hls_out, 14, "axis", "out_data", 1),
	Port_Property("flashValueStoreMemWrData_V_V_TDATA", 64, hls_out, 15, "axis", "out_data", 1),
	Port_Property("hashTableMemRdData_V_V_TDATA", 512, hls_in, 16, "axis", "in_data", 1),
	Port_Property("hashTableMemRdCmd_V_TDATA", 40, hls_out, 17, "axis", "out_data", 1),
	Port_Property("hashTableMemWrData_V_V_TDATA", 512, hls_out, 18, "axis", "out_data", 1),
	Port_Property("hashTableMemWrCmd_V_TDATA", 40, hls_out, 19, "axis", "out_data", 1),
	Port_Property("addressReturnOut_V_V_TDATA", 32, hls_out, 20, "axis", "out_data", 1),
	Port_Property("addressAssignDramIn_V_V_TDATA", 32, hls_in, 21, "axis", "in_data", 1),
	Port_Property("addressAssignFlashIn_V_V_TDATA", 32, hls_in, 22, "axis", "in_data", 1),
	Port_Property("flushReq_V", 1, hls_out, 23, "ap_none", "out_data", 1),
	Port_Property("flushAck_V", 1, hls_in, 24, "ap_none", "in_data", 1),
	Port_Property("flushDone_V", 1, hls_out, 25, "ap_none", "out_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("inData_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("inData_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("hashTableMemRdCmd_V_TVALID", 1, hls_out, 17, "axis", "out_vld", 1),
	Port_Property("hashTableMemRdCmd_V_TREADY", 1, hls_in, 17, "axis", "out_acc", 1),
	Port_Property("hashTableMemRdData_V_V_TVALID", 1, hls_in, 16, "axis", "in_vld", 1),
	Port_Property("hashTableMemRdData_V_V_TREADY", 1, hls_out, 16, "axis", "in_acc", 1),
	Port_Property("hashTableMemWrCmd_V_TVALID", 1, hls_out, 19, "axis", "out_vld", 1),
	Port_Property("hashTableMemWrCmd_V_TREADY", 1, hls_in, 19, "axis", "out_acc", 1),
	Port_Property("hashTableMemWrData_V_V_TVALID", 1, hls_out, 18, "axis", "out_vld", 1),
	Port_Property("hashTableMemWrData_V_V_TREADY", 1, hls_in, 18, "axis", "out_acc", 1),
	Port_Property("addressReturnOut_V_V_TVALID", 1, hls_out, 20, "axis", "out_vld", 1),
	Port_Property("addressReturnOut_V_V_TREADY", 1, hls_in, 20, "axis", "out_acc", 1),
	Port_Property("addressAssignDramIn_V_V_TVALID", 1, hls_in, 21, "axis", "in_vld", 1),
	Port_Property("addressAssignDramIn_V_V_TREADY", 1, hls_out, 21, "axis", "in_acc", 1),
	Port_Property("addressAssignFlashIn_V_V_TVALID", 1, hls_in, 22, "axis", "in_vld", 1),
	Port_Property("addressAssignFlashIn_V_V_TREADY", 1, hls_out, 22, "axis", "in_acc", 1),
	Port_Property("dramValueStoreMemWrCmd_V_TVALID", 1, hls_out, 10, "axis", "out_vld", 1),
	Port_Property("dramValueStoreMemWrCmd_V_TREADY", 1, hls_in, 10, "axis", "out_acc", 1),
	Port_Property("dramValueStoreMemWrData_V_V_TVALID", 1, hls_out, 11, "axis", "out_vld", 1),
	Port_Property("dramValueStoreMemWrData_V_V_TREADY", 1, hls_in, 11, "axis", "out_acc", 1),
	Port_Property("dramValueStoreMemRdCmd_V_TVALID", 1, hls_out, 8, "axis", "out_vld", 1),
	Port_Property("dramValueStoreMemRdCmd_V_TREADY", 1, hls_in, 8, "axis", "out_acc", 1),
	Port_Property("dramValueStoreMemRdData_V_V_TVALID", 1, hls_in, 9, "axis", "in_vld", 1),
	Port_Property("dramValueStoreMemRdData_V_V_TREADY", 1, hls_out, 9, "axis", "in_acc", 1),
	Port_Property("flashValueStoreMemWrCmd_V_TVALID", 1, hls_out, 14, "axis", "out_vld", 1),
	Port_Property("flashValueStoreMemWrCmd_V_TREADY", 1, hls_in, 14, "axis", "out_acc", 1),
	Port_Property("flashValueStoreMemWrData_V_V_TVALID", 1, hls_out, 15, "axis", "out_vld", 1),
	Port_Property("flashValueStoreMemWrData_V_V_TREADY", 1, hls_in, 15, "axis", "out_acc", 1),
	Port_Property("flashValueStoreMemRdCmd_V_TVALID", 1, hls_out, 12, "axis", "out_vld", 1),
	Port_Property("flashValueStoreMemRdCmd_V_TREADY", 1, hls_in, 12, "axis", "out_acc", 1),
	Port_Property("flashValueStoreMemRdData_V_V_TVALID", 1, hls_in, 13, "axis", "in_vld", 1),
	Port_Property("flashValueStoreMemRdData_V_V_TREADY", 1, hls_out, 13, "axis", "in_acc", 1),
	Port_Property("outData_TVALID", 1, hls_out, 7, "axis", "out_vld", 1),
	Port_Property("outData_TREADY", 1, hls_in, 7, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "memcachedPipeline";
