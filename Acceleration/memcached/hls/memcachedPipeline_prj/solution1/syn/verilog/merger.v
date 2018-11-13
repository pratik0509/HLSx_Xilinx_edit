// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module merger (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        valueStoreDram2merge_1_dout,
        valueStoreDram2merge_1_empty_n,
        valueStoreDram2merge_1_read,
        valueStoreFlash2merg_1_dout,
        valueStoreFlash2merg_1_empty_n,
        valueStoreFlash2merg_1_read,
        merger2responseForma_1_din,
        merger2responseForma_1_full_n,
        merger2responseForma_1_write,
        start_out,
        start_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] valueStoreDram2merge_1_dout;
input   valueStoreDram2merge_1_empty_n;
output   valueStoreDram2merge_1_read;
input  [255:0] valueStoreFlash2merg_1_dout;
input   valueStoreFlash2merg_1_empty_n;
output   valueStoreFlash2merg_1_read;
output  [255:0] merger2responseForma_1_din;
input   merger2responseForma_1_full_n;
output   merger2responseForma_1_write;
output   start_out;
output   start_write;

reg ap_done;
reg ap_idle;
reg valueStoreDram2merge_1_read;
reg valueStoreFlash2merg_1_read;
reg[255:0] merger2responseForma_1_din;
reg merger2responseForma_1_write;
reg start_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    internal_ap_ready;
wire   [0:0] grp_nbreadreq_fu_44_p3;
wire   [0:0] grp_nbreadreq_fu_52_p3;
reg    ap_predicate_op8_read_state1;
reg    ap_predicate_op11_read_state1;
reg    ap_predicate_op16_read_state1;
reg    ap_predicate_op21_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] mergerState_load_reg_137;
reg   [0:0] tmp_reg_145;
reg   [0:0] tmp_136_reg_149;
reg    ap_predicate_op32_write_state2;
reg    ap_predicate_op35_write_state2;
reg   [0:0] dramOrFlash_V_load_reg_141;
reg   [0:0] tmp_135_reg_153;
reg    ap_predicate_op39_write_state2;
reg   [0:0] tmp_134_reg_161;
reg    ap_predicate_op43_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] mergerState;
reg   [0:0] dramOrFlash_V;
reg    valueStoreFlash2merg_1_blk_n;
wire    ap_block_pp0_stage0;
reg    merger2responseForma_1_blk_n;
reg    valueStoreDram2merge_1_blk_n;
reg   [255:0] reg_91;
reg   [255:0] reg_96;
wire   [0:0] tmp_EOP_V_4_fu_121_p3;
wire   [0:0] tmp_EOP_V_fu_129_p3;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_141;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 mergerState_load_reg_137 = 1'd0;
#0 tmp_reg_145 = 1'd0;
#0 tmp_136_reg_149 = 1'd0;
#0 dramOrFlash_V_load_reg_141 = 1'd0;
#0 tmp_135_reg_153 = 1'd0;
#0 tmp_134_reg_161 = 1'd0;
#0 mergerState = 1'd0;
#0 dramOrFlash_V = 1'd0;
#0 reg_91 = 256'd0;
#0 reg_96 = 256'd0;
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= real_start;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dramOrFlash_V <= 1'd0;
    end else begin
        if ((1'b1 == ap_condition_141)) begin
            if ((ap_predicate_op11_read_state1 == 1'b1)) begin
                dramOrFlash_V <= 1'd0;
            end else if ((ap_predicate_op8_read_state1 == 1'b1)) begin
                dramOrFlash_V <= 1'd1;
            end
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dramOrFlash_V_load_reg_141 <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            dramOrFlash_V_load_reg_141 <= dramOrFlash_V;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        mergerState <= 1'd0;
    end else begin
        if ((((tmp_EOP_V_4_fu_121_p3 == 1'd1) & (grp_nbreadreq_fu_44_p3 == 1'd1) & (dramOrFlash_V == 1'd0) & (mergerState == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((dramOrFlash_V == 1'd1) & (tmp_EOP_V_fu_129_p3 == 1'd1) & (grp_nbreadreq_fu_52_p3 == 1'd1) & (mergerState == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
            mergerState <= 1'd0;
        end else if ((((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op11_read_state1 == 1'b1)) | ((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op8_read_state1 == 1'b1)))) begin
            mergerState <= 1'd1;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        mergerState_load_reg_137 <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            mergerState_load_reg_137 <= mergerState;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        reg_91 <= 256'd0;
    end else begin
        if ((((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op21_read_state1 == 1'b1)) | ((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op8_read_state1 == 1'b1)))) begin
            reg_91 <= valueStoreDram2merge_1_dout;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        reg_96 <= 256'd0;
    end else begin
        if ((((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op16_read_state1 == 1'b1)) | ((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op11_read_state1 == 1'b1)))) begin
            reg_96 <= valueStoreFlash2merg_1_dout;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
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

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_134_reg_161 <= 1'd0;
    end else begin
        if (((dramOrFlash_V == 1'd1) & (mergerState == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            tmp_134_reg_161 <= valueStoreDram2merge_1_empty_n;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_135_reg_153 <= 1'd0;
    end else begin
        if (((dramOrFlash_V == 1'd0) & (mergerState == 1'd1) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            tmp_135_reg_153 <= valueStoreFlash2merg_1_empty_n;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_136_reg_149 <= 1'd0;
    end else begin
        if (((grp_nbreadreq_fu_44_p3 == 1'd0) & (mergerState == 1'd0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            tmp_136_reg_149 <= valueStoreDram2merge_1_empty_n;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_reg_145 <= 1'd0;
    end else begin
        if (((mergerState == 1'd0) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            tmp_reg_145 <= valueStoreFlash2merg_1_empty_n;
        end
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op43_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op32_write_state2 == 1'b1)))) begin
        merger2responseForma_1_blk_n = merger2responseForma_1_full_n;
    end else begin
        merger2responseForma_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op35_write_state2 == 1'b1)))) begin
        merger2responseForma_1_din = reg_96;
    end else if ((((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op43_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op32_write_state2 == 1'b1)))) begin
        merger2responseForma_1_din = reg_91;
    end else begin
        merger2responseForma_1_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op43_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op39_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op35_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op32_write_state2 == 1'b1)))) begin
        merger2responseForma_1_write = 1'b1;
    end else begin
        merger2responseForma_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
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
    if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op21_read_state1 == 1'b1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op8_read_state1 == 1'b1)))) begin
        valueStoreDram2merge_1_blk_n = valueStoreDram2merge_1_empty_n;
    end else begin
        valueStoreDram2merge_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op21_read_state1 == 1'b1)) | ((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op8_read_state1 == 1'b1)))) begin
        valueStoreDram2merge_1_read = 1'b1;
    end else begin
        valueStoreDram2merge_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op16_read_state1 == 1'b1)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op11_read_state1 == 1'b1)))) begin
        valueStoreFlash2merg_1_blk_n = valueStoreFlash2merg_1_empty_n;
    end else begin
        valueStoreFlash2merg_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op16_read_state1 == 1'b1)) | ((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op11_read_state1 == 1'b1)))) begin
        valueStoreFlash2merg_1_read = 1'b1;
    end else begin
        valueStoreFlash2merg_1_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((real_start == 1'b1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op16_read_state1 == 1'b1)) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op43_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op32_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((real_start == 1'b1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op16_read_state1 == 1'b1)) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op43_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op32_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((real_start == 1'b1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op16_read_state1 == 1'b1)) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op43_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op32_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op16_read_state1 == 1'b1)) | ((valueStoreFlash2merg_1_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((valueStoreDram2merge_1_empty_n == 1'b0) & (ap_predicate_op8_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op43_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((merger2responseForma_1_full_n == 1'b0) & (ap_predicate_op32_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_141 = ((real_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = real_start;

always @ (*) begin
    ap_predicate_op11_read_state1 = ((grp_nbreadreq_fu_44_p3 == 1'd1) & (mergerState == 1'd0));
end

always @ (*) begin
    ap_predicate_op16_read_state1 = ((grp_nbreadreq_fu_44_p3 == 1'd1) & (dramOrFlash_V == 1'd0) & (mergerState == 1'd1));
end

always @ (*) begin
    ap_predicate_op21_read_state1 = ((dramOrFlash_V == 1'd1) & (grp_nbreadreq_fu_52_p3 == 1'd1) & (mergerState == 1'd1));
end

always @ (*) begin
    ap_predicate_op32_write_state2 = ((tmp_136_reg_149 == 1'd1) & (tmp_reg_145 == 1'd0) & (mergerState_load_reg_137 == 1'd0));
end

always @ (*) begin
    ap_predicate_op35_write_state2 = ((tmp_reg_145 == 1'd1) & (mergerState_load_reg_137 == 1'd0));
end

always @ (*) begin
    ap_predicate_op39_write_state2 = ((mergerState_load_reg_137 == 1'd1) & (tmp_135_reg_153 == 1'd1) & (dramOrFlash_V_load_reg_141 == 1'd0));
end

always @ (*) begin
    ap_predicate_op43_write_state2 = ((mergerState_load_reg_137 == 1'd1) & (tmp_134_reg_161 == 1'd1) & (dramOrFlash_V_load_reg_141 == 1'd1));
end

always @ (*) begin
    ap_predicate_op8_read_state1 = ((grp_nbreadreq_fu_52_p3 == 1'd1) & (grp_nbreadreq_fu_44_p3 == 1'd0) & (mergerState == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign grp_nbreadreq_fu_44_p3 = valueStoreFlash2merg_1_empty_n;

assign grp_nbreadreq_fu_52_p3 = valueStoreDram2merge_1_empty_n;

assign start_out = real_start;

assign tmp_EOP_V_4_fu_121_p3 = valueStoreFlash2merg_1_dout[32'd127];

assign tmp_EOP_V_fu_129_p3 = valueStoreDram2merge_1_dout[32'd127];

endmodule //merger
