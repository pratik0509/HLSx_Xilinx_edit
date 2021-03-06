// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module receive (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        disp2rec_V_V_dout,
        disp2rec_V_V_empty_n,
        disp2rec_V_V_read,
        memRdData_V_V_TVALID,
        getPath2remux_V_V_din,
        getPath2remux_V_V_full_n,
        getPath2remux_V_V_write,
        filterPopGet_V_V_din,
        filterPopGet_V_V_full_n,
        filterPopGet_V_V_write,
        start_out,
        start_write,
        memRdData_V_V_TDATA,
        memRdData_V_V_TREADY
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] disp2rec_V_V_dout;
input   disp2rec_V_V_empty_n;
output   disp2rec_V_V_read;
input   memRdData_V_V_TVALID;
output  [63:0] getPath2remux_V_V_din;
input   getPath2remux_V_V_full_n;
output   getPath2remux_V_V_write;
output  [0:0] filterPopGet_V_V_din;
input   filterPopGet_V_V_full_n;
output   filterPopGet_V_V_write;
output   start_out;
output   start_write;
input  [511:0] memRdData_V_V_TDATA;
output   memRdData_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg disp2rec_V_V_read;
reg[63:0] getPath2remux_V_V_din;
reg getPath2remux_V_V_write;
reg filterPopGet_V_V_write;
reg start_write;
reg memRdData_V_V_TREADY;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
reg   [1:0] ap_CS_iter1_fsm;
wire    ap_CS_iter1_fsm_state0;
reg    internal_ap_ready;
wire   [0:0] tmp_nbreadreq_fu_124_p3;
wire   [0:0] tmp_132_nbreadreq_fu_132_p3;
reg    ap_predicate_op10_read_state1;
wire   [0:0] tmp_96_i_fu_376_p2;
wire   [0:0] tmp_97_i_fu_382_p2;
reg    ap_predicate_op47_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] getState_load_reg_426;
reg   [0:0] tmp_reg_430;
reg   [0:0] tmp_132_reg_434;
reg    ap_predicate_op60_write_state2;
reg   [0:0] tmp_96_i_reg_453;
reg    ap_predicate_op68_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_CS_iter1_fsm_state2;
reg   [0:0] getState;
reg   [11:0] getValueLength_V;
reg   [7:0] getCounter;
reg   [511:0] memInputWord_V;
reg    memRdData_V_V_TDATA_blk_n;
reg    disp2rec_V_V_blk_n;
reg    getPath2remux_V_V_blk_n;
reg    filterPopGet_V_V_blk_n;
wire   [63:0] tmp_V_18_fu_198_p1;
reg   [63:0] tmp_V_18_reg_438;
wire   [9:0] tmp_124_fu_324_p2;
reg   [9:0] tmp_124_reg_443;
wire   [511:0] tmp_127_fu_334_p2;
reg   [511:0] tmp_127_reg_448;
reg   [7:0] ap_phi_mux_storemerge11_i_phi_fu_170_p6;
wire   [7:0] ap_phi_reg_pp0_iter0_storemerge11_i_reg_167;
wire   [7:0] tmp_98_i_fu_388_p2;
wire   [63:0] tmp_V_fu_421_p1;
wire   [11:0] tmp_99_i_fu_202_p2;
wire   [11:0] storemerge_i_fu_362_p3;
wire   [7:0] tmp_100_i_fu_214_p2;
wire   [13:0] Lo_assign_fu_236_p3;
wire   [13:0] Hi_assign_fu_244_p2;
wire   [3:0] tmp_113_fu_232_p1;
wire   [9:0] tmp_115_fu_260_p3;
wire   [9:0] tmp_116_fu_268_p1;
wire   [0:0] tmp_114_fu_254_p2;
wire   [9:0] tmp_118_fu_282_p2;
wire   [9:0] tmp_120_fu_294_p2;
reg   [511:0] tmp_117_fu_272_p4;
wire   [9:0] tmp_119_fu_288_p2;
wire   [9:0] tmp_121_fu_300_p3;
wire   [9:0] tmp_123_fu_316_p3;
wire   [511:0] tmp_122_fu_308_p3;
wire   [511:0] tmp_125_fu_330_p1;
wire   [8:0] tmp_131_fu_340_p4;
wire   [0:0] icmp_fu_350_p2;
wire   [11:0] tmp_95_i_fu_356_p2;
wire   [511:0] tmp_126_fu_407_p1;
wire   [511:0] tmp_128_fu_410_p2;
wire   [511:0] p_Result_s_fu_416_p2;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg    ap_condition_120;
reg    ap_condition_192;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 getState_load_reg_426 = 1'd0;
#0 tmp_reg_430 = 1'd0;
#0 tmp_132_reg_434 = 1'd0;
#0 tmp_96_i_reg_453 = 1'd0;
#0 getState = 1'd0;
#0 getValueLength_V = 12'd0;
#0 getCounter = 8'd0;
#0 memInputWord_V = 512'd0;
#0 tmp_V_18_reg_438 = 64'd0;
#0 tmp_124_reg_443 = 10'd0;
#0 tmp_127_reg_448 = 512'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        getCounter <= 8'd0;
    end else begin
        if ((1'b1 == ap_condition_120)) begin
            if ((getState == 1'd1)) begin
                getCounter <= ap_phi_mux_storemerge11_i_phi_fu_170_p6;
            end else if ((ap_predicate_op10_read_state1 == 1'b1)) begin
                getCounter <= tmp_100_i_fu_214_p2;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        getState <= 1'd0;
    end else begin
        if ((1'b1 == ap_condition_120)) begin
            if (((tmp_96_i_fu_376_p2 == 1'd1) & (getState == 1'd1))) begin
                getState <= 1'd0;
            end else if ((ap_predicate_op10_read_state1 == 1'b1)) begin
                getState <= 1'd1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        getState_load_reg_426 <= 1'd0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
            getState_load_reg_426 <= getState;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        getValueLength_V <= 12'd0;
    end else begin
        if ((1'b1 == ap_condition_120)) begin
            if ((getState == 1'd1)) begin
                getValueLength_V <= storemerge_i_fu_362_p3;
            end else if ((ap_predicate_op10_read_state1 == 1'b1)) begin
                getValueLength_V <= tmp_99_i_fu_202_p2;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        memInputWord_V <= 512'd0;
    end else begin
        if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op47_read_state1 == 1'b1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op10_read_state1 == 1'b1)))) begin
            memInputWord_V <= memRdData_V_V_TDATA;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                tmp_124_reg_443[1] <= 1'b0;
        tmp_124_reg_443[2] <= 1'b0;
        tmp_124_reg_443[3] <= 1'b0;
        tmp_124_reg_443[4] <= 1'b0;
        tmp_124_reg_443[5] <= 1'b0;
        tmp_124_reg_443[6] <= 1'b0;
        tmp_124_reg_443[7] <= 1'b0;
        tmp_124_reg_443[8] <= 1'b0;
        tmp_124_reg_443[9] <= 1'b0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (getState == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                        tmp_124_reg_443[9 : 1] <= tmp_124_fu_324_p2[9 : 1];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_127_reg_448 <= 512'd0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (getState == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
            tmp_127_reg_448 <= tmp_127_fu_334_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_132_reg_434 <= 1'd0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (tmp_nbreadreq_fu_124_p3 == 1'd1) & (getState == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
            tmp_132_reg_434 <= memRdData_V_V_TVALID;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_96_i_reg_453 <= 1'd0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (getState == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
            tmp_96_i_reg_453 <= tmp_96_i_fu_376_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_V_18_reg_438 <= 64'd0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op10_read_state1 == 1'b1))) begin
            tmp_V_18_reg_438 <= tmp_V_18_fu_198_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_reg_430 <= 1'd0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (getState == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
            tmp_reg_430 <= disp2rec_V_V_empty_n;
        end
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_97_i_fu_382_p2 == 1'd0) & (tmp_96_i_fu_376_p2 == 1'd0) & (getState == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1))) begin
        ap_phi_mux_storemerge11_i_phi_fu_170_p6 = tmp_98_i_fu_388_p2;
    end else if ((((tmp_97_i_fu_382_p2 == 1'd1) & (tmp_96_i_fu_376_p2 == 1'd0) & (getState == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1)) | ((tmp_96_i_fu_376_p2 == 1'd1) & (getState == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1)))) begin
        ap_phi_mux_storemerge11_i_phi_fu_170_p6 = 8'd0;
    end else begin
        ap_phi_mux_storemerge11_i_phi_fu_170_p6 = ap_phi_reg_pp0_iter0_storemerge11_i_reg_167;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1) & (ap_predicate_op10_read_state1 == 1'b1))) begin
        disp2rec_V_V_blk_n = disp2rec_V_V_empty_n;
    end else begin
        disp2rec_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op10_read_state1 == 1'b1))) begin
        disp2rec_V_V_read = 1'b1;
    end else begin
        disp2rec_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op68_write_state2 == 1'b1))) begin
        filterPopGet_V_V_blk_n = filterPopGet_V_V_full_n;
    end else begin
        filterPopGet_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op68_write_state2 == 1'b1))) begin
        filterPopGet_V_V_write = 1'b1;
    end else begin
        filterPopGet_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((getState_load_reg_426 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op60_write_state2 == 1'b1)))) begin
        getPath2remux_V_V_blk_n = getPath2remux_V_V_full_n;
    end else begin
        getPath2remux_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_192)) begin
        if ((getState_load_reg_426 == 1'd1)) begin
            getPath2remux_V_V_din = tmp_V_fu_421_p1;
        end else if ((ap_predicate_op60_write_state2 == 1'b1)) begin
            getPath2remux_V_V_din = tmp_V_18_reg_438;
        end else begin
            getPath2remux_V_V_din = 'bx;
        end
    end else begin
        getPath2remux_V_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (getState_load_reg_426 == 1'd1) & (1'b1 == ap_CS_iter1_fsm_state2)) | (~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op60_write_state2 == 1'b1)))) begin
        getPath2remux_V_V_write = 1'b1;
    end else begin
        getPath2remux_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1) & (ap_predicate_op47_read_state1 == 1'b1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1) & (ap_predicate_op10_read_state1 == 1'b1)))) begin
        memRdData_V_V_TDATA_blk_n = memRdData_V_V_TVALID;
    end else begin
        memRdData_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op47_read_state1 == 1'b1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op10_read_state1 == 1'b1)))) begin
        memRdData_V_V_TREADY = 1'b1;
    end else begin
        memRdData_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_iter0_fsm)
        ap_ST_iter0_fsm_state1 : begin
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
        end
        default : begin
            ap_NS_iter0_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter1_fsm)
        ap_ST_iter1_fsm_state2 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & ~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter1_fsm = 'bx;
        end
    endcase
end

assign Hi_assign_fu_244_p2 = (14'd63 | Lo_assign_fu_236_p3);

assign Lo_assign_fu_236_p3 = {{getCounter}, {6'd0}};

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state0 = ap_CS_iter1_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_120 = (~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op47_read_state1 == 1'b1)) | ((memRdData_V_V_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((disp2rec_V_V_empty_n == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

always @ (*) begin
    ap_condition_192 = (~((ap_done_reg == 1'b1) | ((getState_load_reg_426 == 1'd1) & (getPath2remux_V_V_full_n == 1'b0)) | ((getPath2remux_V_V_full_n == 1'b0) & (ap_predicate_op60_write_state2 == 1'b1)) | ((filterPopGet_V_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2));
end

assign ap_phi_reg_pp0_iter0_storemerge11_i_reg_167 = 'bx;

always @ (*) begin
    ap_predicate_op10_read_state1 = ((tmp_132_nbreadreq_fu_132_p3 == 1'd1) & (tmp_nbreadreq_fu_124_p3 == 1'd1) & (getState == 1'd0));
end

always @ (*) begin
    ap_predicate_op47_read_state1 = ((tmp_97_i_fu_382_p2 == 1'd1) & (tmp_96_i_fu_376_p2 == 1'd0) & (getState == 1'd1));
end

always @ (*) begin
    ap_predicate_op60_write_state2 = ((tmp_132_reg_434 == 1'd1) & (tmp_reg_430 == 1'd1) & (getState_load_reg_426 == 1'd0));
end

always @ (*) begin
    ap_predicate_op68_write_state2 = ((getState_load_reg_426 == 1'd1) & (tmp_96_i_reg_453 == 1'd1));
end

assign ap_ready = internal_ap_ready;

assign filterPopGet_V_V_din = 1'd1;

assign icmp_fu_350_p2 = ((tmp_131_fu_340_p4 != 9'd0) ? 1'b1 : 1'b0);

assign p_Result_s_fu_416_p2 = (tmp_128_fu_410_p2 & tmp_127_reg_448);

assign start_out = real_start;

assign storemerge_i_fu_362_p3 = ((icmp_fu_350_p2[0:0] === 1'b1) ? tmp_95_i_fu_356_p2 : 12'd0);

assign tmp_100_i_fu_214_p2 = (8'd1 + getCounter);

assign tmp_113_fu_232_p1 = getCounter[3:0];

assign tmp_114_fu_254_p2 = ((Lo_assign_fu_236_p3 > Hi_assign_fu_244_p2) ? 1'b1 : 1'b0);

assign tmp_115_fu_260_p3 = {{tmp_113_fu_232_p1}, {6'd0}};

assign tmp_116_fu_268_p1 = Hi_assign_fu_244_p2[9:0];

integer ap_tvar_int_0;

always @ (memInputWord_V) begin
    for (ap_tvar_int_0 = 512 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 511 - 0) begin
            tmp_117_fu_272_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_117_fu_272_p4[ap_tvar_int_0] = memInputWord_V[511 - ap_tvar_int_0];
        end
    end
end

assign tmp_118_fu_282_p2 = (tmp_115_fu_260_p3 - tmp_116_fu_268_p1);

assign tmp_119_fu_288_p2 = (10'd511 - tmp_115_fu_260_p3);

assign tmp_120_fu_294_p2 = (tmp_116_fu_268_p1 - tmp_115_fu_260_p3);

assign tmp_121_fu_300_p3 = ((tmp_114_fu_254_p2[0:0] === 1'b1) ? tmp_118_fu_282_p2 : tmp_120_fu_294_p2);

assign tmp_122_fu_308_p3 = ((tmp_114_fu_254_p2[0:0] === 1'b1) ? tmp_117_fu_272_p4 : memInputWord_V);

assign tmp_123_fu_316_p3 = ((tmp_114_fu_254_p2[0:0] === 1'b1) ? tmp_119_fu_288_p2 : tmp_115_fu_260_p3);

assign tmp_124_fu_324_p2 = (10'd511 - tmp_121_fu_300_p3);

assign tmp_125_fu_330_p1 = tmp_123_fu_316_p3;

assign tmp_126_fu_407_p1 = tmp_124_reg_443;

assign tmp_127_fu_334_p2 = tmp_122_fu_308_p3 >> tmp_125_fu_330_p1;

assign tmp_128_fu_410_p2 = 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095 >> tmp_126_fu_407_p1;

assign tmp_131_fu_340_p4 = {{getValueLength_V[11:3]}};

assign tmp_132_nbreadreq_fu_132_p3 = memRdData_V_V_TVALID;

assign tmp_95_i_fu_356_p2 = ($signed(getValueLength_V) + $signed(12'd4088));

assign tmp_96_i_fu_376_p2 = ((storemerge_i_fu_362_p3 == 12'd0) ? 1'b1 : 1'b0);

assign tmp_97_i_fu_382_p2 = ((getCounter == 8'd7) ? 1'b1 : 1'b0);

assign tmp_98_i_fu_388_p2 = (getCounter + 8'd1);

assign tmp_99_i_fu_202_p2 = ($signed(12'd4088) + $signed(disp2rec_V_V_dout));

assign tmp_V_18_fu_198_p1 = memRdData_V_V_TDATA[63:0];

assign tmp_V_fu_421_p1 = p_Result_s_fu_416_p2[63:0];

assign tmp_nbreadreq_fu_124_p3 = disp2rec_V_V_empty_n;

always @ (posedge ap_clk) begin
    tmp_124_reg_443[0] <= 1'b0;
end

endmodule //receive
