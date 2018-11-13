// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _flashDemux_HH_
#define _flashDemux_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct flashDemux : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<256> > splitter2valueStoreF_1_dout;
    sc_in< sc_logic > splitter2valueStoreF_1_empty_n;
    sc_out< sc_logic > splitter2valueStoreF_1_read;
    sc_out< sc_lv<128> > flashMetadataBuffer_s_0_din;
    sc_in< sc_logic > flashMetadataBuffer_s_0_full_n;
    sc_out< sc_logic > flashMetadataBuffer_s_0_write;
    sc_out< sc_lv<64> > flashKeyBuffer_V_V_din;
    sc_in< sc_logic > flashKeyBuffer_V_V_full_n;
    sc_out< sc_logic > flashKeyBuffer_V_V_write;
    sc_out< sc_lv<66> > flashDemux2setPathVa_1_din;
    sc_in< sc_logic > flashDemux2setPathVa_1_full_n;
    sc_out< sc_logic > flashDemux2setPathVa_1_write;
    sc_out< sc_lv<48> > flashDemux2setPathMe_1_din;
    sc_in< sc_logic > flashDemux2setPathMe_1_full_n;
    sc_out< sc_logic > flashDemux2setPathMe_1_write;
    sc_out< sc_lv<48> > flashDemux2getPath_V_din;
    sc_in< sc_logic > flashDemux2getPath_V_full_n;
    sc_out< sc_logic > flashDemux2getPath_V_write;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;


    // Module declarations
    flashDemux(sc_module_name name);
    SC_HAS_PROCESS(flashDemux);

    ~flashDemux();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_128_p3;
    sc_signal< bool > ap_predicate_op28_read_state1;
    sc_signal< bool > ap_predicate_op41_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<2> > flashDemuxState_load_reg_532;
    sc_signal< sc_lv<1> > tmp_476_reg_548;
    sc_signal< bool > ap_predicate_op88_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_keyVa_2_reg_536;
    sc_signal< bool > ap_predicate_op90_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_value_reg_540;
    sc_signal< bool > ap_predicate_op94_write_state2;
    sc_signal< sc_lv<1> > tmp_472_reg_560;
    sc_signal< sc_lv<1> > tmp_482_reg_572;
    sc_signal< bool > ap_predicate_op99_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_keyVa_1_reg_564;
    sc_signal< bool > ap_predicate_op101_write_state2;
    sc_signal< sc_lv<1> > tmp_reg_581;
    sc_signal< sc_lv<1> > metadataWrWord_SOP_V_reg_592;
    sc_signal< sc_lv<1> > tmp_484_reg_600;
    sc_signal< sc_lv<1> > tmp_488_reg_604;
    sc_signal< sc_lv<1> > tmp_250_i_reg_608;
    sc_signal< sc_lv<1> > tmp_251_i_reg_612;
    sc_signal< bool > ap_predicate_op108_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_keyVa_reg_596;
    sc_signal< bool > ap_predicate_op113_write_state2;
    sc_signal< bool > ap_predicate_op118_write_state2;
    sc_signal< bool > ap_predicate_op121_write_state2;
    sc_signal< bool > ap_predicate_op126_write_state2;
    sc_signal< sc_lv<1> > tmp_252_i_reg_621;
    sc_signal< bool > ap_predicate_op127_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_lv<2> > flashDemuxState;
    sc_signal< sc_lv<2> > flashWordCounter_V;
    sc_signal< sc_lv<16> > flashDemuxValueLengt;
    sc_signal< sc_logic > splitter2valueStoreF_1_blk_n;
    sc_signal< sc_logic > flashMetadataBuffer_s_0_blk_n;
    sc_signal< sc_logic > flashKeyBuffer_V_V_blk_n;
    sc_signal< sc_logic > flashDemux2getPath_V_blk_n;
    sc_signal< sc_logic > flashDemux2setPathMe_1_blk_n;
    sc_signal< sc_logic > flashDemux2setPathVa_1_blk_n;
    sc_signal< sc_lv<64> > reg_280;
    sc_signal< sc_lv<64> > reg_284;
    sc_signal< sc_lv<3> > reg_289;
    sc_signal< sc_lv<1> > metadataWrWord_SOP_V_fu_353_p3;
    sc_signal< sc_lv<1> > tmp_484_fu_367_p3;
    sc_signal< sc_lv<1> > tmp_488_fu_397_p2;
    sc_signal< sc_lv<1> > tmp_250_i_fu_403_p2;
    sc_signal< sc_lv<1> > tmp_251_i_fu_409_p2;
    sc_signal< sc_lv<32> > reg_293;
    sc_signal< sc_lv<16> > grp_fu_264_p4;
    sc_signal< sc_lv<16> > reg_297;
    sc_signal< sc_lv<1> > grp_fu_184_p3;
    sc_signal< sc_lv<1> > grp_fu_192_p3;
    sc_signal< sc_lv<1> > grp_fu_220_p3;
    sc_signal< sc_lv<128> > tmp_10_fu_323_p1;
    sc_signal< sc_lv<128> > tmp_10_reg_552;
    sc_signal< sc_lv<128> > tmp_8_fu_345_p1;
    sc_signal< sc_lv<128> > tmp_8_reg_576;
    sc_signal< sc_lv<124> > p_Val2_s_fu_349_p1;
    sc_signal< sc_lv<124> > p_Val2_s_reg_585;
    sc_signal< sc_lv<1> > tmp_EOP_V_1_fu_415_p2;
    sc_signal< sc_lv<1> > tmp_EOP_V_1_reg_616;
    sc_signal< sc_lv<1> > tmp_252_i_fu_457_p2;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_tmp_EOP_V_11_reg_171;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_tmp_EOP_V_11_reg_171;
    sc_signal< sc_lv<1> > tmp_248_i_fu_327_p2;
    sc_signal< sc_lv<128> > tmp_4_fu_474_p4;
    sc_signal< sc_lv<128> > tmp_2_fu_503_p4;
    sc_signal< sc_lv<128> > tmp_1_fu_522_p4;
    sc_signal< sc_lv<66> > tmp_11_fu_463_p4;
    sc_signal< sc_lv<66> > tmp_6_fu_493_p4;
    sc_signal< sc_lv<2> > grp_fu_227_p2;
    sc_signal< sc_lv<16> > tmp_249_i_fu_333_p2;
    sc_signal< sc_lv<16> > tmp_length_V_2_fu_427_p3;
    sc_signal< sc_lv<8> > p_Result_i_fu_375_p4;
    sc_signal< sc_lv<1> > tmp_487_fu_391_p2;
    sc_signal< sc_lv<1> > tmp_486_fu_385_p2;
    sc_signal< sc_lv<16> > tmp_254_i_fu_421_p2;
    sc_signal< sc_lv<8> > p_Result_55_i_fu_447_p4;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< bool > ap_condition_226;
    sc_signal< bool > ap_condition_396;
    sc_signal< bool > ap_condition_306;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_7D;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_BF;
    static const sc_lv<32> ap_const_lv32_C0;
    static const sc_lv<32> ap_const_lv32_FF;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<32> ap_const_lv32_67;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<16> ap_const_lv16_9;
    static const sc_lv<16> ap_const_lv16_FFF8;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_70;
    static const sc_lv<32> ap_const_lv32_68;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<124> ap_const_lv124_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_condition_226();
    void thread_ap_condition_306();
    void thread_ap_condition_396();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_reg_pp0_iter0_tmp_EOP_V_11_reg_171();
    void thread_ap_predicate_op101_write_state2();
    void thread_ap_predicate_op108_write_state2();
    void thread_ap_predicate_op113_write_state2();
    void thread_ap_predicate_op118_write_state2();
    void thread_ap_predicate_op121_write_state2();
    void thread_ap_predicate_op126_write_state2();
    void thread_ap_predicate_op127_write_state2();
    void thread_ap_predicate_op28_read_state1();
    void thread_ap_predicate_op41_read_state1();
    void thread_ap_predicate_op88_write_state2();
    void thread_ap_predicate_op90_write_state2();
    void thread_ap_predicate_op94_write_state2();
    void thread_ap_predicate_op99_write_state2();
    void thread_ap_ready();
    void thread_flashDemux2getPath_V_blk_n();
    void thread_flashDemux2getPath_V_din();
    void thread_flashDemux2getPath_V_write();
    void thread_flashDemux2setPathMe_1_blk_n();
    void thread_flashDemux2setPathMe_1_din();
    void thread_flashDemux2setPathMe_1_write();
    void thread_flashDemux2setPathVa_1_blk_n();
    void thread_flashDemux2setPathVa_1_din();
    void thread_flashDemux2setPathVa_1_write();
    void thread_flashKeyBuffer_V_V_blk_n();
    void thread_flashKeyBuffer_V_V_din();
    void thread_flashKeyBuffer_V_V_write();
    void thread_flashMetadataBuffer_s_0_blk_n();
    void thread_flashMetadataBuffer_s_0_din();
    void thread_flashMetadataBuffer_s_0_write();
    void thread_grp_fu_184_p3();
    void thread_grp_fu_192_p3();
    void thread_grp_fu_220_p3();
    void thread_grp_fu_227_p2();
    void thread_grp_fu_264_p4();
    void thread_grp_nbreadreq_fu_128_p3();
    void thread_internal_ap_ready();
    void thread_metadataWrWord_SOP_V_fu_353_p3();
    void thread_p_Result_55_i_fu_447_p4();
    void thread_p_Result_i_fu_375_p4();
    void thread_p_Val2_s_fu_349_p1();
    void thread_real_start();
    void thread_splitter2valueStoreF_1_blk_n();
    void thread_splitter2valueStoreF_1_read();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_10_fu_323_p1();
    void thread_tmp_11_fu_463_p4();
    void thread_tmp_1_fu_522_p4();
    void thread_tmp_248_i_fu_327_p2();
    void thread_tmp_249_i_fu_333_p2();
    void thread_tmp_250_i_fu_403_p2();
    void thread_tmp_251_i_fu_409_p2();
    void thread_tmp_252_i_fu_457_p2();
    void thread_tmp_254_i_fu_421_p2();
    void thread_tmp_2_fu_503_p4();
    void thread_tmp_484_fu_367_p3();
    void thread_tmp_486_fu_385_p2();
    void thread_tmp_487_fu_391_p2();
    void thread_tmp_488_fu_397_p2();
    void thread_tmp_4_fu_474_p4();
    void thread_tmp_6_fu_493_p4();
    void thread_tmp_8_fu_345_p1();
    void thread_tmp_EOP_V_1_fu_415_p2();
    void thread_tmp_length_V_2_fu_427_p3();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
};

}

using namespace ap_rtl;

#endif
