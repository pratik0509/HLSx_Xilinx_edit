// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _demux_HH_
#define _demux_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct demux : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<256> > accCtrl2demux_V_dout;
    sc_in< sc_logic > accCtrl2demux_V_empty_n;
    sc_out< sc_logic > accCtrl2demux_V_read;
    sc_out< sc_lv<128> > metadataBuffer_V_din;
    sc_in< sc_logic > metadataBuffer_V_full_n;
    sc_out< sc_logic > metadataBuffer_V_write;
    sc_out< sc_lv<64> > keyBuffer_V_V_din;
    sc_in< sc_logic > keyBuffer_V_V_full_n;
    sc_out< sc_logic > keyBuffer_V_V_write;
    sc_out< sc_lv<66> > demux2setPathValue_V_din;
    sc_in< sc_logic > demux2setPathValue_V_full_n;
    sc_out< sc_logic > demux2setPathValue_V_write;
    sc_out< sc_lv<45> > demux2setPathMetadat_1_din;
    sc_in< sc_logic > demux2setPathMetadat_1_full_n;
    sc_out< sc_logic > demux2setPathMetadat_1_write;
    sc_out< sc_lv<45> > demux2getPath_V_din;
    sc_in< sc_logic > demux2getPath_V_full_n;
    sc_out< sc_logic > demux2getPath_V_write;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;


    // Module declarations
    demux(sc_module_name name);
    SC_HAS_PROCESS(demux);

    ~demux();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_206_p3;
    sc_signal< bool > ap_predicate_op28_read_state1;
    sc_signal< bool > ap_predicate_op41_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<2> > demuxState_load_reg_624;
    sc_signal< sc_lv<1> > tmp_445_reg_640;
    sc_signal< bool > ap_predicate_op90_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_keyVa_2_reg_628;
    sc_signal< bool > ap_predicate_op92_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_value_reg_632;
    sc_signal< bool > ap_predicate_op96_write_state2;
    sc_signal< sc_lv<1> > tmp_441_reg_652;
    sc_signal< sc_lv<1> > tmp_451_reg_664;
    sc_signal< bool > ap_predicate_op101_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_keyVa_1_reg_656;
    sc_signal< bool > ap_predicate_op103_write_state2;
    sc_signal< sc_lv<1> > tmp_reg_673;
    sc_signal< sc_lv<1> > metadataWrWord_SOP_V_reg_684;
    sc_signal< sc_lv<1> > tmp_453_reg_692;
    sc_signal< sc_lv<1> > tmp_457_reg_696;
    sc_signal< sc_lv<1> > tmp_205_i_reg_700;
    sc_signal< sc_lv<1> > tmp_206_i_reg_704;
    sc_signal< bool > ap_predicate_op110_write_state2;
    sc_signal< sc_lv<1> > metadataWrWord_keyVa_reg_688;
    sc_signal< bool > ap_predicate_op115_write_state2;
    sc_signal< bool > ap_predicate_op120_write_state2;
    sc_signal< bool > ap_predicate_op123_write_state2;
    sc_signal< bool > ap_predicate_op128_write_state2;
    sc_signal< sc_lv<1> > tmp_207_i_reg_713;
    sc_signal< bool > ap_predicate_op129_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_lv<2> > demuxState;
    sc_signal< sc_lv<2> > wordCounter_V;
    sc_signal< sc_lv<16> > valueLength_V;
    sc_signal< sc_logic > accCtrl2demux_V_blk_n;
    sc_signal< sc_logic > metadataBuffer_V_blk_n;
    sc_signal< sc_logic > keyBuffer_V_V_blk_n;
    sc_signal< sc_logic > demux2getPath_V_blk_n;
    sc_signal< sc_logic > demux2setPathMetadat_1_blk_n;
    sc_signal< sc_logic > demux2setPathValue_V_blk_n;
    sc_signal< sc_lv<64> > reg_358;
    sc_signal< sc_lv<64> > reg_362;
    sc_signal< sc_lv<3> > reg_367;
    sc_signal< sc_lv<1> > metadataWrWord_SOP_V_fu_431_p3;
    sc_signal< sc_lv<1> > tmp_453_fu_445_p3;
    sc_signal< sc_lv<1> > tmp_457_fu_475_p2;
    sc_signal< sc_lv<1> > tmp_205_i_fu_481_p2;
    sc_signal< sc_lv<1> > tmp_206_i_fu_487_p2;
    sc_signal< sc_lv<32> > reg_371;
    sc_signal< sc_lv<13> > reg_375;
    sc_signal< sc_lv<1> > grp_fu_262_p3;
    sc_signal< sc_lv<1> > grp_fu_270_p3;
    sc_signal< sc_lv<1> > grp_fu_298_p3;
    sc_signal< sc_lv<128> > tmp_10_fu_401_p1;
    sc_signal< sc_lv<128> > tmp_10_reg_644;
    sc_signal< sc_lv<128> > tmp_8_fu_423_p1;
    sc_signal< sc_lv<128> > tmp_8_reg_668;
    sc_signal< sc_lv<124> > p_Val2_s_fu_427_p1;
    sc_signal< sc_lv<124> > p_Val2_s_reg_677;
    sc_signal< sc_lv<1> > tmp_EOP_V_8_fu_503_p2;
    sc_signal< sc_lv<1> > tmp_EOP_V_8_reg_708;
    sc_signal< sc_lv<1> > tmp_207_i_fu_549_p2;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_tmp_EOP_V_7_reg_249;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_tmp_EOP_V_7_reg_249;
    sc_signal< sc_lv<1> > tmp_203_i_fu_405_p2;
    sc_signal< sc_lv<128> > tmp_4_fu_566_p4;
    sc_signal< sc_lv<128> > tmp_2_fu_595_p4;
    sc_signal< sc_lv<128> > tmp_1_fu_614_p4;
    sc_signal< sc_lv<66> > tmp_11_fu_555_p4;
    sc_signal< sc_lv<66> > tmp_6_fu_585_p4;
    sc_signal< sc_lv<2> > grp_fu_305_p2;
    sc_signal< sc_lv<16> > tmp_204_i_fu_411_p2;
    sc_signal< sc_lv<16> > storemerge_cast_i_fu_523_p1;
    sc_signal< sc_lv<8> > p_Result_i_fu_453_p4;
    sc_signal< sc_lv<1> > tmp_456_fu_469_p2;
    sc_signal< sc_lv<1> > tmp_455_fu_463_p2;
    sc_signal< sc_lv<12> > p_Result_55_i_fu_493_p4;
    sc_signal< sc_lv<12> > tmp_209_i_fu_509_p2;
    sc_signal< sc_lv<12> > storemerge_i_fu_515_p3;
    sc_signal< sc_lv<8> > p_Result_53_i_fu_539_p4;
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
    static const sc_lv<32> ap_const_lv32_14;
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
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<12> ap_const_lv12_9;
    static const sc_lv<12> ap_const_lv12_FF8;
    static const sc_lv<124> ap_const_lv124_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_accCtrl2demux_V_blk_n();
    void thread_accCtrl2demux_V_read();
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
    void thread_ap_phi_reg_pp0_iter0_tmp_EOP_V_7_reg_249();
    void thread_ap_predicate_op101_write_state2();
    void thread_ap_predicate_op103_write_state2();
    void thread_ap_predicate_op110_write_state2();
    void thread_ap_predicate_op115_write_state2();
    void thread_ap_predicate_op120_write_state2();
    void thread_ap_predicate_op123_write_state2();
    void thread_ap_predicate_op128_write_state2();
    void thread_ap_predicate_op129_write_state2();
    void thread_ap_predicate_op28_read_state1();
    void thread_ap_predicate_op41_read_state1();
    void thread_ap_predicate_op90_write_state2();
    void thread_ap_predicate_op92_write_state2();
    void thread_ap_predicate_op96_write_state2();
    void thread_ap_ready();
    void thread_demux2getPath_V_blk_n();
    void thread_demux2getPath_V_din();
    void thread_demux2getPath_V_write();
    void thread_demux2setPathMetadat_1_blk_n();
    void thread_demux2setPathMetadat_1_din();
    void thread_demux2setPathMetadat_1_write();
    void thread_demux2setPathValue_V_blk_n();
    void thread_demux2setPathValue_V_din();
    void thread_demux2setPathValue_V_write();
    void thread_grp_fu_262_p3();
    void thread_grp_fu_270_p3();
    void thread_grp_fu_298_p3();
    void thread_grp_fu_305_p2();
    void thread_grp_nbreadreq_fu_206_p3();
    void thread_internal_ap_ready();
    void thread_keyBuffer_V_V_blk_n();
    void thread_keyBuffer_V_V_din();
    void thread_keyBuffer_V_V_write();
    void thread_metadataBuffer_V_blk_n();
    void thread_metadataBuffer_V_din();
    void thread_metadataBuffer_V_write();
    void thread_metadataWrWord_SOP_V_fu_431_p3();
    void thread_p_Result_53_i_fu_539_p4();
    void thread_p_Result_55_i_fu_493_p4();
    void thread_p_Result_i_fu_453_p4();
    void thread_p_Val2_s_fu_427_p1();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_storemerge_cast_i_fu_523_p1();
    void thread_storemerge_i_fu_515_p3();
    void thread_tmp_10_fu_401_p1();
    void thread_tmp_11_fu_555_p4();
    void thread_tmp_1_fu_614_p4();
    void thread_tmp_203_i_fu_405_p2();
    void thread_tmp_204_i_fu_411_p2();
    void thread_tmp_205_i_fu_481_p2();
    void thread_tmp_206_i_fu_487_p2();
    void thread_tmp_207_i_fu_549_p2();
    void thread_tmp_209_i_fu_509_p2();
    void thread_tmp_2_fu_595_p4();
    void thread_tmp_453_fu_445_p3();
    void thread_tmp_455_fu_463_p2();
    void thread_tmp_456_fu_469_p2();
    void thread_tmp_457_fu_475_p2();
    void thread_tmp_4_fu_566_p4();
    void thread_tmp_6_fu_585_p4();
    void thread_tmp_8_fu_423_p1();
    void thread_tmp_EOP_V_8_fu_503_p2();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
};

}

using namespace ap_rtl;

#endif