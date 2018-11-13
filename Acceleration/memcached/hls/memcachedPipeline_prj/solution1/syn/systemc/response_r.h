// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _response_r_HH_
#define _response_r_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "memcachedPipelinebkb.h"

namespace ap_rtl {

struct response_r : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > valueBuffer_rf_V_V_dout;
    sc_in< sc_logic > valueBuffer_rf_V_V_empty_n;
    sc_out< sc_logic > valueBuffer_rf_V_V_read;
    sc_in< sc_lv<248> > metadataBuffer_rf_V_s_dout;
    sc_in< sc_logic > metadataBuffer_rf_V_s_empty_n;
    sc_out< sc_logic > metadataBuffer_rf_V_s_read;
    sc_in< sc_logic > outData_TREADY;
    sc_out< sc_lv<64> > outData_TDATA;
    sc_out< sc_logic > outData_TVALID;
    sc_out< sc_lv<112> > outData_TUSER;
    sc_out< sc_lv<8> > outData_TKEEP;
    sc_out< sc_lv<1> > outData_TLAST;
    sc_signal< sc_lv<8> > ap_var_for_const0;
    sc_signal< sc_lv<8> > ap_var_for_const1;
    sc_signal< sc_lv<8> > ap_var_for_const2;
    sc_signal< sc_lv<8> > ap_var_for_const3;
    sc_signal< sc_lv<8> > ap_var_for_const4;
    sc_signal< sc_lv<8> > ap_var_for_const5;
    sc_signal< sc_lv<8> > ap_var_for_const6;
    sc_signal< sc_lv<8> > ap_var_for_const7;


    // Module declarations
    response_r(sc_module_name name);
    SC_HAS_PROCESS(response_r);

    ~response_r();

    sc_trace_file* mVcdFile;

    memcachedPipelinebkb<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8>* memcachedPipelinebkb_U126;
    memcachedPipelinebkb<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8>* memcachedPipelinebkb_U127;
    memcachedPipelinebkb<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8>* memcachedPipelinebkb_U128;
    memcachedPipelinebkb<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8>* memcachedPipelinebkb_U129;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_lv<2> > ap_CS_iter2_fsm;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state0;
    sc_signal< sc_lv<1> > tmp_i_fu_519_p2;
    sc_signal< sc_lv<1> > tmp_i_87_fu_537_p2;
    sc_signal< sc_lv<1> > tmp_18_i_fu_548_p2;
    sc_signal< sc_lv<1> > tmp_24_i_fu_554_p2;
    sc_signal< sc_lv<1> > tmp_29_i_fu_560_p2;
    sc_signal< sc_lv<1> > tmp_31_i_fu_566_p2;
    sc_signal< sc_lv<1> > tmp_34_i_fu_584_p2;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_234_p3;
    sc_signal< bool > ap_predicate_op37_read_state1;
    sc_signal< bool > ap_predicate_op56_read_state1;
    sc_signal< sc_lv<1> > or_cond2_i_fu_1880_p2;
    sc_signal< sc_lv<1> > or_cond5_i_fu_1982_p2;
    sc_signal< bool > ap_predicate_op134_read_state1;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_248_p3;
    sc_signal< bool > ap_predicate_op142_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > respOutput_V_data_V_1_ack_in;
    sc_signal< sc_lv<1> > tmp_i_reg_3346;
    sc_signal< sc_lv<1> > tmp_i_87_reg_3350;
    sc_signal< sc_lv<1> > tmp_18_i_reg_3361;
    sc_signal< sc_lv<1> > tmp_24_i_reg_3365;
    sc_signal< sc_lv<1> > tmp_29_i_reg_3369;
    sc_signal< sc_lv<1> > tmp_31_i_reg_3373;
    sc_signal< sc_lv<1> > tmp_35_i_reg_3377;
    sc_signal< sc_lv<1> > tmp_41_i_reg_3381;
    sc_signal< bool > ap_predicate_op150_write_state2;
    sc_signal< bool > ap_predicate_op155_write_state2;
    sc_signal< sc_lv<1> > tmp_34_i_reg_3385;
    sc_signal< sc_lv<1> > tmp_39_i_reg_3393;
    sc_signal< sc_lv<1> > tmp_6_reg_3389;
    sc_signal< bool > ap_predicate_op185_write_state2;
    sc_signal< bool > ap_predicate_op190_write_state2;
    sc_signal< sc_lv<1> > tmp_5_reg_3415;
    sc_signal< bool > ap_predicate_op195_write_state2;
    sc_signal< bool > ap_predicate_op197_write_state2;
    sc_signal< bool > ap_predicate_op200_write_state2;
    sc_signal< sc_lv<1> > or_cond2_i_reg_3457;
    sc_signal< bool > ap_predicate_op208_write_state2;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_logic > respOutput_V_user_V_1_ack_in;
    sc_signal< sc_logic > respOutput_V_keep_V_1_ack_in;
    sc_signal< sc_logic > respOutput_V_last_V_1_ack_in;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< sc_lv<1> > tmp_i_reg_3346_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_i_87_reg_3350_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_18_i_reg_3361_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_24_i_reg_3365_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_29_i_reg_3369_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_31_i_reg_3373_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_35_i_reg_3377_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_41_i_reg_3381_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op218_write_state3;
    sc_signal< bool > ap_predicate_op221_write_state3;
    sc_signal< sc_lv<1> > tmp_34_i_reg_3385_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_39_i_reg_3393_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_6_reg_3389_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op223_write_state3;
    sc_signal< bool > ap_predicate_op226_write_state3;
    sc_signal< sc_lv<1> > tmp_5_reg_3415_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op227_write_state3;
    sc_signal< bool > ap_predicate_op229_write_state3;
    sc_signal< bool > ap_predicate_op230_write_state3;
    sc_signal< sc_lv<1> > or_cond2_i_reg_3457_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op231_write_state3;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state3;
    sc_signal< sc_lv<64> > respOutput_V_data_V_1_data_in;
    sc_signal< sc_lv<64> > respOutput_V_data_V_1_data_out;
    sc_signal< sc_logic > respOutput_V_data_V_1_vld_in;
    sc_signal< sc_logic > respOutput_V_data_V_1_vld_out;
    sc_signal< sc_logic > respOutput_V_data_V_1_ack_out;
    sc_signal< sc_lv<64> > respOutput_V_data_V_1_payload_A;
    sc_signal< sc_lv<64> > respOutput_V_data_V_1_payload_B;
    sc_signal< sc_logic > respOutput_V_data_V_1_sel_rd;
    sc_signal< sc_logic > respOutput_V_data_V_1_sel_wr;
    sc_signal< sc_logic > respOutput_V_data_V_1_sel;
    sc_signal< sc_logic > respOutput_V_data_V_1_load_A;
    sc_signal< sc_logic > respOutput_V_data_V_1_load_B;
    sc_signal< sc_lv<2> > respOutput_V_data_V_1_state;
    sc_signal< sc_logic > respOutput_V_data_V_1_state_cmp_full;
    sc_signal< sc_lv<112> > respOutput_V_user_V_1_data_in;
    sc_signal< sc_lv<112> > respOutput_V_user_V_1_data_out;
    sc_signal< sc_logic > respOutput_V_user_V_1_vld_in;
    sc_signal< sc_logic > respOutput_V_user_V_1_vld_out;
    sc_signal< sc_logic > respOutput_V_user_V_1_ack_out;
    sc_signal< sc_lv<112> > respOutput_V_user_V_1_payload_A;
    sc_signal< sc_lv<112> > respOutput_V_user_V_1_payload_B;
    sc_signal< sc_logic > respOutput_V_user_V_1_sel_rd;
    sc_signal< sc_logic > respOutput_V_user_V_1_sel_wr;
    sc_signal< sc_logic > respOutput_V_user_V_1_sel;
    sc_signal< sc_logic > respOutput_V_user_V_1_load_A;
    sc_signal< sc_logic > respOutput_V_user_V_1_load_B;
    sc_signal< sc_lv<2> > respOutput_V_user_V_1_state;
    sc_signal< sc_logic > respOutput_V_user_V_1_state_cmp_full;
    sc_signal< sc_lv<8> > respOutput_V_keep_V_1_data_in;
    sc_signal< sc_lv<8> > respOutput_V_keep_V_1_data_out;
    sc_signal< sc_logic > respOutput_V_keep_V_1_vld_in;
    sc_signal< sc_logic > respOutput_V_keep_V_1_vld_out;
    sc_signal< sc_logic > respOutput_V_keep_V_1_ack_out;
    sc_signal< sc_lv<8> > respOutput_V_keep_V_1_payload_A;
    sc_signal< sc_lv<8> > respOutput_V_keep_V_1_payload_B;
    sc_signal< sc_logic > respOutput_V_keep_V_1_sel_rd;
    sc_signal< sc_logic > respOutput_V_keep_V_1_sel_wr;
    sc_signal< sc_logic > respOutput_V_keep_V_1_sel;
    sc_signal< sc_logic > respOutput_V_keep_V_1_load_A;
    sc_signal< sc_logic > respOutput_V_keep_V_1_load_B;
    sc_signal< sc_lv<2> > respOutput_V_keep_V_1_state;
    sc_signal< sc_logic > respOutput_V_keep_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > respOutput_V_last_V_1_data_in;
    sc_signal< sc_lv<1> > respOutput_V_last_V_1_data_out;
    sc_signal< sc_logic > respOutput_V_last_V_1_vld_in;
    sc_signal< sc_logic > respOutput_V_last_V_1_vld_out;
    sc_signal< sc_logic > respOutput_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > respOutput_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > respOutput_V_last_V_1_payload_B;
    sc_signal< sc_logic > respOutput_V_last_V_1_sel_rd;
    sc_signal< sc_logic > respOutput_V_last_V_1_sel_wr;
    sc_signal< sc_logic > respOutput_V_last_V_1_sel;
    sc_signal< sc_logic > respOutput_V_last_V_1_load_A;
    sc_signal< sc_logic > respOutput_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > respOutput_V_last_V_1_state;
    sc_signal< sc_logic > respOutput_V_last_V_1_state_cmp_full;
    sc_signal< sc_lv<5> > br_outWordCounter;
    sc_signal< sc_lv<8> > outOpCode;
    sc_signal< sc_lv<8> > errorCode;
    sc_signal< sc_lv<248> > outMetadataTempBuffe;
    sc_signal< sc_lv<16> > valueLength;
    sc_signal< sc_lv<64> > xtrasBuffer_V;
    sc_signal< sc_lv<32> > resp_ValueConvertTem;
    sc_signal< sc_logic > outData_TDATA_blk_n;
    sc_signal< sc_logic > metadataBuffer_rf_V_s_blk_n;
    sc_signal< sc_logic > valueBuffer_rf_V_V_blk_n;
    sc_signal< sc_lv<16> > valueLength_load_reg_3354;
    sc_signal< sc_lv<1> > tmp_35_i_fu_572_p2;
    sc_signal< sc_lv<1> > tmp_41_i_fu_578_p2;
    sc_signal< sc_lv<1> > grp_fu_470_p2;
    sc_signal< sc_lv<32> > tmp_69_fu_590_p1;
    sc_signal< sc_lv<32> > tmp_69_reg_3397;
    sc_signal< sc_lv<8> > tempKeep_V_fu_598_p258;
    sc_signal< sc_lv<1> > tmp_46_i_fu_1142_p2;
    sc_signal< sc_lv<1> > tmp_50_i_fu_1148_p2;
    sc_signal< sc_lv<32> > tmp_66_fu_1160_p1;
    sc_signal< sc_lv<32> > tmp_66_reg_3419;
    sc_signal< sc_lv<8> > tempOutput_keep_V_fu_1196_p258;
    sc_signal< sc_lv<1> > tmp_28_i_fu_475_p2;
    sc_signal< sc_lv<1> > tmp_64_fu_1732_p2;
    sc_signal< sc_lv<1> > grp_fu_490_p2;
    sc_signal< sc_lv<32> > p_1_cast_i_cast_cast_fu_1774_p3;
    sc_signal< sc_lv<1> > tmp_23_i_fu_1756_p2;
    sc_signal< sc_lv<32> > tmp_i_i_fu_1832_p5;
    sc_signal< sc_lv<96> > p_Result_1_i_reg_3461;
    sc_signal< sc_lv<8> > p_Result_2_i_reg_3466;
    sc_signal< sc_lv<1> > tmp_8_fu_1960_p2;
    sc_signal< sc_lv<1> > tmp_8_reg_3472;
    sc_signal< sc_lv<8> > p_Result_8_i_reg_3477;
    sc_signal< sc_lv<16> > br_valueLengthTemp_V_fu_1988_p2;
    sc_signal< sc_lv<16> > p_cast_i_cast_cast_fu_1994_p3;
    sc_signal< sc_lv<64> > p_Result_10_fu_2057_p1;
    sc_signal< sc_lv<8> > tempOutput_keep_V_5_fu_2065_p258;
    sc_signal< sc_lv<64> > p_Result_9_fu_2741_p2;
    sc_signal< sc_lv<8> > tempOutput_keep_V_4_fu_2751_p258;
    sc_signal< sc_lv<64> > p_Result_7_fu_3270_p3;
    sc_signal< sc_lv<64> > p_Result_6_fu_3282_p3;
    sc_signal< sc_lv<64> > tmp_data_V_2_fu_3290_p1;
    sc_signal< sc_lv<64> > p_Result_4_fu_3320_p5;
    sc_signal< sc_lv<112> > p_Result_5_fu_3332_p3;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_tmp_last_V_2_reg_284;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_tmp_last_V_2_reg_284;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_tmp_keep_V_3_reg_300;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_tmp_keep_V_3_reg_300;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_tmp_last_V_1_reg_314;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_tmp_last_V_1_reg_314;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_tmp_keep_V_1_reg_330;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_tmp_keep_V_1_reg_330;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_tmp_last_V_reg_344;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_tmp_last_V_reg_344;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_tmp_data_V_1_reg_363;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_tmp_data_V_1_reg_363;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter0_xtrasBuffer_V_new_i_reg_372;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter1_xtrasBuffer_V_new_i_reg_372;
    sc_signal< sc_lv<16> > ap_phi_reg_pp0_iter0_p_0492_1_i_reg_383;
    sc_signal< sc_lv<16> > ap_phi_reg_pp0_iter1_p_0492_1_i_reg_383;
    sc_signal< sc_lv<1> > ap_phi_mux_xtrasBuffer_V_flag_8_phi_fu_397_p18;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_xtrasBuffer_V_flag_8_reg_392;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_xtrasBuffer_V_flag_8_reg_392;
    sc_signal< sc_lv<64> > ap_phi_mux_xtrasBuffer_V_new_8_s_phi_fu_431_p18;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter1_xtrasBuffer_V_new_8_s_reg_427;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter0_xtrasBuffer_V_new_8_s_reg_427;
    sc_signal< sc_lv<16> > tmp_45_i_fu_1128_p3;
    sc_signal< sc_lv<16> > tmp_38_i_fu_1170_p2;
    sc_signal< sc_lv<16> > tmp_20_i_fu_1922_p2;
    sc_signal< sc_lv<32> > p_Val2_4_fu_1786_p2;
    sc_signal< sc_lv<32> > tmp_19_i_fu_1910_p2;
    sc_signal< sc_lv<4> > tmp_58_fu_515_p1;
    sc_signal< sc_lv<8> > tempKeep_V_fu_598_p257;
    sc_signal< sc_lv<1> > tmp_43_i_fu_1116_p2;
    sc_signal< sc_lv<16> > tmp_44_i_fu_1122_p2;
    sc_signal< sc_lv<4> > tmp_67_fu_1182_p1;
    sc_signal< sc_lv<4> > lengthValue_assign_fu_1186_p2;
    sc_signal< sc_lv<8> > tempOutput_keep_V_fu_1196_p257;
    sc_signal< sc_lv<1> > grp_fu_485_p2;
    sc_signal< sc_lv<1> > tmp_60_fu_1714_p2;
    sc_signal< sc_lv<1> > tmp_63_fu_1726_p2;
    sc_signal< sc_lv<1> > tmp_62_fu_1720_p2;
    sc_signal< sc_lv<8> > tmp_22_i_fu_1750_p2;
    sc_signal< sc_lv<1> > or_cond3_i_fu_1762_p2;
    sc_signal< sc_lv<1> > grp_fu_480_p2;
    sc_signal< sc_lv<1> > or_cond4_i_fu_1768_p2;
    sc_signal< sc_lv<8> > tmp_59_fu_1828_p1;
    sc_signal< sc_lv<8> > p_Result_61_i_i_fu_1818_p4;
    sc_signal< sc_lv<8> > p_Result_i_i_89_fu_1808_p4;
    sc_signal< sc_lv<8> > p_Result_i_i_fu_1798_p4;
    sc_signal< sc_lv<1> > p_not_i_fu_1850_p2;
    sc_signal< sc_lv<1> > tmp1_fu_1856_p2;
    sc_signal< sc_lv<1> > or_cond913_not_i_fu_1862_p1;
    sc_signal< sc_lv<1> > or_cond913_not_i_fu_1862_p2;
    sc_signal< sc_lv<1> > or_cond1_i_fu_1868_p2;
    sc_signal< sc_lv<1> > or_cond915_not_i_fu_1874_p2;
    sc_signal< sc_lv<32> > p_Result_i_88_fu_1890_p4;
    sc_signal< sc_lv<16> > tempVar_V_fu_1900_p4;
    sc_signal< sc_lv<8> > tmp_7_fu_1954_p2;
    sc_signal< sc_lv<1> > tmp_30_i_fu_1976_p2;
    sc_signal< sc_lv<32> > grp_fu_495_p4;
    sc_signal< sc_lv<8> > tempOutput_keep_V_5_fu_2065_p257;
    sc_signal< sc_lv<3> > tmp_71_fu_2584_p1;
    sc_signal< sc_lv<6> > tmp_48_i_fu_2587_p3;
    sc_signal< sc_lv<6> > Hi_assign_2_fu_2601_p2;
    sc_signal< sc_lv<1> > tmp_72_fu_2607_p3;
    sc_signal< sc_lv<7> > tmp_73_fu_2621_p1;
    sc_signal< sc_lv<1> > rev_fu_2615_p2;
    sc_signal< sc_lv<7> > tmp_75_fu_2635_p2;
    sc_signal< sc_lv<7> > tmp_76_fu_2641_p2;
    sc_signal< sc_lv<64> > tmp_74_fu_2625_p4;
    sc_signal< sc_lv<7> > tmp_77_fu_2647_p3;
    sc_signal< sc_lv<7> > tmp_79_fu_2663_p2;
    sc_signal< sc_lv<64> > tmp_78_fu_2655_p3;
    sc_signal< sc_lv<33> > st_fu_2673_p4;
    sc_signal< sc_lv<32> > sf_fu_2687_p4;
    sc_signal< sc_lv<64> > tmp_81_fu_2683_p1;
    sc_signal< sc_lv<64> > tmp_82_fu_2697_p1;
    sc_signal< sc_lv<64> > tmp_80_fu_2669_p1;
    sc_signal< sc_lv<64> > tmp_83_fu_2701_p3;
    sc_signal< sc_lv<64> > tmp_84_fu_2709_p2;
    sc_signal< sc_lv<6> > Hi_assign_fu_2595_p2;
    sc_signal< sc_lv<7> > tmp_86_fu_2721_p1;
    sc_signal< sc_lv<7> > tmp_87_fu_2725_p2;
    sc_signal< sc_lv<64> > tmp_88_fu_2731_p1;
    sc_signal< sc_lv<64> > p_Result_8_fu_2715_p2;
    sc_signal< sc_lv<64> > tmp_89_fu_2735_p2;
    sc_signal< sc_lv<8> > tempOutput_keep_V_4_fu_2751_p257;
    sc_signal< sc_lv<32> > tmp_65_fu_3278_p1;
    sc_signal< sc_lv<64> > p_Result_3_fu_3304_p4;
    sc_signal< sc_lv<64> > p_Result_s_fu_3295_p4;
    sc_signal< sc_lv<64> > tempOutput_data_V_fu_3313_p3;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter2_fsm;
    sc_signal< bool > ap_condition_785;
    sc_signal< bool > ap_condition_88;
    sc_signal< bool > ap_condition_334;
    sc_signal< bool > ap_condition_759;
    sc_signal< bool > ap_condition_754;
    sc_signal< bool > ap_condition_722;
    sc_signal< bool > ap_condition_849;
    sc_signal< bool > ap_condition_839;
    sc_signal< bool > ap_condition_708;
    sc_signal< bool > ap_condition_962;
    sc_signal< bool > ap_condition_2601;
    sc_signal< bool > ap_condition_658;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter2_fsm_state3;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const sc_lv<2> ap_ST_iter2_fsm_state0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<248> ap_const_lv248_lc_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<5> ap_const_lv5_6;
    static const sc_lv<5> ap_const_lv5_5;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<64> ap_const_lv64_313020524F525245;
    static const sc_lv<112> ap_const_lv112_0;
    static const sc_lv<16> ap_const_lv16_5;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<16> ap_const_lv16_4;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<8> ap_const_lv8_F;
    static const sc_lv<8> ap_const_lv8_1F;
    static const sc_lv<8> ap_const_lv8_3F;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<16> ap_const_lv16_8;
    static const sc_lv<16> ap_const_lv16_FFF8;
    static const sc_lv<16> ap_const_lv16_FFFC;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<32> ap_const_lv32_8000000;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_FFFFFFF8;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_DB;
    static const sc_lv<32> ap_const_lv32_68;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_70;
    static const sc_lv<32> ap_const_lv32_77;
    static const sc_lv<16> ap_const_lv16_14;
    static const sc_lv<16> ap_const_lv16_20;
    static const sc_lv<16> ap_const_lv16_18;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_3F;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<7> ap_const_lv7_20;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_3F;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const sc_lv<48> ap_const_lv48_0;
    static const sc_lv<8> ap_const_lv8_81;
    static const sc_lv<48> ap_const_lv48_40000;
    static const sc_lv<32> ap_const_lv32_38;
    static const bool ap_const_boolean_0;
    static const sc_lv<96> ap_const_lv96_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const7();
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_2_fu_2601_p2();
    void thread_Hi_assign_fu_2595_p2();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_CS_iter2_fsm_state0();
    void thread_ap_CS_iter2_fsm_state3();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_io();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_io();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_condition_2601();
    void thread_ap_condition_334();
    void thread_ap_condition_658();
    void thread_ap_condition_708();
    void thread_ap_condition_722();
    void thread_ap_condition_754();
    void thread_ap_condition_759();
    void thread_ap_condition_785();
    void thread_ap_condition_839();
    void thread_ap_condition_849();
    void thread_ap_condition_88();
    void thread_ap_condition_962();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_xtrasBuffer_V_flag_8_phi_fu_397_p18();
    void thread_ap_phi_mux_xtrasBuffer_V_new_8_s_phi_fu_431_p18();
    void thread_ap_phi_reg_pp0_iter0_p_0492_1_i_reg_383();
    void thread_ap_phi_reg_pp0_iter0_tmp_data_V_1_reg_363();
    void thread_ap_phi_reg_pp0_iter0_tmp_keep_V_1_reg_330();
    void thread_ap_phi_reg_pp0_iter0_tmp_keep_V_3_reg_300();
    void thread_ap_phi_reg_pp0_iter0_tmp_last_V_1_reg_314();
    void thread_ap_phi_reg_pp0_iter0_tmp_last_V_2_reg_284();
    void thread_ap_phi_reg_pp0_iter0_tmp_last_V_reg_344();
    void thread_ap_phi_reg_pp0_iter0_xtrasBuffer_V_flag_8_reg_392();
    void thread_ap_phi_reg_pp0_iter0_xtrasBuffer_V_new_8_s_reg_427();
    void thread_ap_phi_reg_pp0_iter0_xtrasBuffer_V_new_i_reg_372();
    void thread_ap_predicate_op134_read_state1();
    void thread_ap_predicate_op142_read_state1();
    void thread_ap_predicate_op150_write_state2();
    void thread_ap_predicate_op155_write_state2();
    void thread_ap_predicate_op185_write_state2();
    void thread_ap_predicate_op190_write_state2();
    void thread_ap_predicate_op195_write_state2();
    void thread_ap_predicate_op197_write_state2();
    void thread_ap_predicate_op200_write_state2();
    void thread_ap_predicate_op208_write_state2();
    void thread_ap_predicate_op218_write_state3();
    void thread_ap_predicate_op221_write_state3();
    void thread_ap_predicate_op223_write_state3();
    void thread_ap_predicate_op226_write_state3();
    void thread_ap_predicate_op227_write_state3();
    void thread_ap_predicate_op229_write_state3();
    void thread_ap_predicate_op230_write_state3();
    void thread_ap_predicate_op231_write_state3();
    void thread_ap_predicate_op37_read_state1();
    void thread_ap_predicate_op56_read_state1();
    void thread_ap_ready();
    void thread_br_valueLengthTemp_V_fu_1988_p2();
    void thread_grp_fu_470_p2();
    void thread_grp_fu_480_p2();
    void thread_grp_fu_485_p2();
    void thread_grp_fu_490_p2();
    void thread_grp_fu_495_p4();
    void thread_grp_nbreadreq_fu_234_p3();
    void thread_lengthValue_assign_fu_1186_p2();
    void thread_metadataBuffer_rf_V_s_blk_n();
    void thread_metadataBuffer_rf_V_s_read();
    void thread_or_cond1_i_fu_1868_p2();
    void thread_or_cond2_i_fu_1880_p2();
    void thread_or_cond3_i_fu_1762_p2();
    void thread_or_cond4_i_fu_1768_p2();
    void thread_or_cond5_i_fu_1982_p2();
    void thread_or_cond913_not_i_fu_1862_p1();
    void thread_or_cond913_not_i_fu_1862_p2();
    void thread_or_cond915_not_i_fu_1874_p2();
    void thread_outData_TDATA();
    void thread_outData_TDATA_blk_n();
    void thread_outData_TKEEP();
    void thread_outData_TLAST();
    void thread_outData_TUSER();
    void thread_outData_TVALID();
    void thread_p_1_cast_i_cast_cast_fu_1774_p3();
    void thread_p_Result_10_fu_2057_p1();
    void thread_p_Result_3_fu_3304_p4();
    void thread_p_Result_4_fu_3320_p5();
    void thread_p_Result_5_fu_3332_p3();
    void thread_p_Result_61_i_i_fu_1818_p4();
    void thread_p_Result_6_fu_3282_p3();
    void thread_p_Result_7_fu_3270_p3();
    void thread_p_Result_8_fu_2715_p2();
    void thread_p_Result_9_fu_2741_p2();
    void thread_p_Result_i_88_fu_1890_p4();
    void thread_p_Result_i_i_89_fu_1808_p4();
    void thread_p_Result_i_i_fu_1798_p4();
    void thread_p_Result_s_fu_3295_p4();
    void thread_p_Val2_4_fu_1786_p2();
    void thread_p_cast_i_cast_cast_fu_1994_p3();
    void thread_p_not_i_fu_1850_p2();
    void thread_respOutput_V_data_V_1_ack_in();
    void thread_respOutput_V_data_V_1_ack_out();
    void thread_respOutput_V_data_V_1_data_in();
    void thread_respOutput_V_data_V_1_data_out();
    void thread_respOutput_V_data_V_1_load_A();
    void thread_respOutput_V_data_V_1_load_B();
    void thread_respOutput_V_data_V_1_sel();
    void thread_respOutput_V_data_V_1_state_cmp_full();
    void thread_respOutput_V_data_V_1_vld_in();
    void thread_respOutput_V_data_V_1_vld_out();
    void thread_respOutput_V_keep_V_1_ack_in();
    void thread_respOutput_V_keep_V_1_ack_out();
    void thread_respOutput_V_keep_V_1_data_in();
    void thread_respOutput_V_keep_V_1_data_out();
    void thread_respOutput_V_keep_V_1_load_A();
    void thread_respOutput_V_keep_V_1_load_B();
    void thread_respOutput_V_keep_V_1_sel();
    void thread_respOutput_V_keep_V_1_state_cmp_full();
    void thread_respOutput_V_keep_V_1_vld_in();
    void thread_respOutput_V_keep_V_1_vld_out();
    void thread_respOutput_V_last_V_1_ack_in();
    void thread_respOutput_V_last_V_1_ack_out();
    void thread_respOutput_V_last_V_1_data_in();
    void thread_respOutput_V_last_V_1_data_out();
    void thread_respOutput_V_last_V_1_load_A();
    void thread_respOutput_V_last_V_1_load_B();
    void thread_respOutput_V_last_V_1_sel();
    void thread_respOutput_V_last_V_1_state_cmp_full();
    void thread_respOutput_V_last_V_1_vld_in();
    void thread_respOutput_V_last_V_1_vld_out();
    void thread_respOutput_V_user_V_1_ack_in();
    void thread_respOutput_V_user_V_1_ack_out();
    void thread_respOutput_V_user_V_1_data_in();
    void thread_respOutput_V_user_V_1_data_out();
    void thread_respOutput_V_user_V_1_load_A();
    void thread_respOutput_V_user_V_1_load_B();
    void thread_respOutput_V_user_V_1_sel();
    void thread_respOutput_V_user_V_1_state_cmp_full();
    void thread_respOutput_V_user_V_1_vld_in();
    void thread_respOutput_V_user_V_1_vld_out();
    void thread_rev_fu_2615_p2();
    void thread_sf_fu_2687_p4();
    void thread_st_fu_2673_p4();
    void thread_tempKeep_V_fu_598_p257();
    void thread_tempOutput_data_V_fu_3313_p3();
    void thread_tempOutput_keep_V_4_fu_2751_p257();
    void thread_tempOutput_keep_V_5_fu_2065_p257();
    void thread_tempOutput_keep_V_fu_1196_p257();
    void thread_tempVar_V_fu_1900_p4();
    void thread_tmp1_fu_1856_p2();
    void thread_tmp_18_i_fu_548_p2();
    void thread_tmp_19_i_fu_1910_p2();
    void thread_tmp_20_i_fu_1922_p2();
    void thread_tmp_22_i_fu_1750_p2();
    void thread_tmp_23_i_fu_1756_p2();
    void thread_tmp_24_i_fu_554_p2();
    void thread_tmp_28_i_fu_475_p2();
    void thread_tmp_29_i_fu_560_p2();
    void thread_tmp_30_i_fu_1976_p2();
    void thread_tmp_31_i_fu_566_p2();
    void thread_tmp_34_i_fu_584_p2();
    void thread_tmp_35_i_fu_572_p2();
    void thread_tmp_38_i_fu_1170_p2();
    void thread_tmp_41_i_fu_578_p2();
    void thread_tmp_43_i_fu_1116_p2();
    void thread_tmp_44_i_fu_1122_p2();
    void thread_tmp_45_i_fu_1128_p3();
    void thread_tmp_46_i_fu_1142_p2();
    void thread_tmp_48_i_fu_2587_p3();
    void thread_tmp_50_i_fu_1148_p2();
    void thread_tmp_58_fu_515_p1();
    void thread_tmp_59_fu_1828_p1();
    void thread_tmp_60_fu_1714_p2();
    void thread_tmp_62_fu_1720_p2();
    void thread_tmp_63_fu_1726_p2();
    void thread_tmp_64_fu_1732_p2();
    void thread_tmp_65_fu_3278_p1();
    void thread_tmp_66_fu_1160_p1();
    void thread_tmp_67_fu_1182_p1();
    void thread_tmp_69_fu_590_p1();
    void thread_tmp_71_fu_2584_p1();
    void thread_tmp_72_fu_2607_p3();
    void thread_tmp_73_fu_2621_p1();
    void thread_tmp_74_fu_2625_p4();
    void thread_tmp_75_fu_2635_p2();
    void thread_tmp_76_fu_2641_p2();
    void thread_tmp_77_fu_2647_p3();
    void thread_tmp_78_fu_2655_p3();
    void thread_tmp_79_fu_2663_p2();
    void thread_tmp_7_fu_1954_p2();
    void thread_tmp_80_fu_2669_p1();
    void thread_tmp_81_fu_2683_p1();
    void thread_tmp_82_fu_2697_p1();
    void thread_tmp_83_fu_2701_p3();
    void thread_tmp_84_fu_2709_p2();
    void thread_tmp_86_fu_2721_p1();
    void thread_tmp_87_fu_2725_p2();
    void thread_tmp_88_fu_2731_p1();
    void thread_tmp_89_fu_2735_p2();
    void thread_tmp_8_fu_1960_p2();
    void thread_tmp_data_V_2_fu_3290_p1();
    void thread_tmp_i_87_fu_537_p2();
    void thread_tmp_i_fu_519_p2();
    void thread_tmp_i_i_fu_1832_p5();
    void thread_tmp_nbreadreq_fu_248_p3();
    void thread_valueBuffer_rf_V_V_blk_n();
    void thread_valueBuffer_rf_V_V_read();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
    void thread_ap_NS_iter2_fsm();
};

}

using namespace ap_rtl;

#endif
