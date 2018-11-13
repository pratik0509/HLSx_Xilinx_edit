// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _memAccess_HH_
#define _memAccess_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "memAccess_memArrabkb.h"

namespace ap_rtl {

struct memAccess : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<21> > aggregateMemCmd_V_dout;
    sc_in< sc_logic > aggregateMemCmd_V_empty_n;
    sc_out< sc_logic > aggregateMemCmd_V_read;
    sc_in< sc_logic > wrDataIn_V_V_TVALID;
    sc_in< sc_logic > rdDataOut_V_V_TREADY;
    sc_out< sc_lv<512> > rdDataOut_V_V_TDATA;
    sc_out< sc_logic > rdDataOut_V_V_TVALID;
    sc_in< sc_lv<512> > wrDataIn_V_V_TDATA;
    sc_out< sc_logic > wrDataIn_V_V_TREADY;


    // Module declarations
    memAccess(sc_module_name name);
    SC_HAS_PROCESS(memAccess);

    ~memAccess();

    sc_trace_file* mVcdFile;

    memAccess_memArrabkb* memArray_V_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_lv<2> > ap_CS_iter2_fsm;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state0;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_70_p3;
    sc_signal< bool > ap_predicate_op11_read_state1;
    sc_signal< sc_lv<1> > inputWord_rdOrWr_V_l_load_fu_176_p1;
    sc_signal< sc_lv<1> > tmp_1_nbreadreq_fu_84_p3;
    sc_signal< bool > ap_predicate_op33_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > rdDataOut_V_V_1_ack_in;
    sc_signal< sc_lv<1> > memState_load_reg_236;
    sc_signal< sc_lv<1> > inputWord_rdOrWr_V_l_reg_240;
    sc_signal< bool > ap_predicate_op44_write_state2;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< sc_lv<1> > memState_load_reg_236_pp0_iter1_reg;
    sc_signal< sc_lv<1> > inputWord_rdOrWr_V_l_reg_240_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op53_write_state3;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state3;
    sc_signal< sc_lv<512> > rdDataOut_V_V_1_data_out;
    sc_signal< sc_logic > rdDataOut_V_V_1_vld_in;
    sc_signal< sc_logic > rdDataOut_V_V_1_vld_out;
    sc_signal< sc_logic > rdDataOut_V_V_1_ack_out;
    sc_signal< sc_lv<512> > rdDataOut_V_V_1_payload_A;
    sc_signal< sc_lv<512> > rdDataOut_V_V_1_payload_B;
    sc_signal< sc_logic > rdDataOut_V_V_1_sel_rd;
    sc_signal< sc_logic > rdDataOut_V_V_1_sel_wr;
    sc_signal< sc_logic > rdDataOut_V_V_1_sel;
    sc_signal< sc_logic > rdDataOut_V_V_1_load_A;
    sc_signal< sc_logic > rdDataOut_V_V_1_load_B;
    sc_signal< sc_lv<2> > rdDataOut_V_V_1_state;
    sc_signal< sc_logic > rdDataOut_V_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > memState;
    sc_signal< sc_lv<12> > inputWord_address_V;
    sc_signal< sc_lv<8> > inputWord_count_V;
    sc_signal< sc_lv<1> > inputWord_rdOrWr_V;
    sc_signal< sc_lv<12> > memArray_V_address0;
    sc_signal< sc_logic > memArray_V_ce0;
    sc_signal< sc_logic > memArray_V_we0;
    sc_signal< sc_lv<512> > memArray_V_q0;
    sc_signal< sc_logic > rdDataOut_V_V_TDATA_blk_n;
    sc_signal< sc_logic > wrDataIn_V_V_TDATA_blk_n;
    sc_signal< sc_logic > aggregateMemCmd_V_blk_n;
    sc_signal< sc_lv<1> > grp_fu_128_p2;
    sc_signal< sc_lv<64> > tmp_6_i_fu_226_p1;
    sc_signal< sc_lv<64> > tmp_9_i_fu_231_p1;
    sc_signal< sc_lv<12> > tmp_3_fu_180_p1;
    sc_signal< sc_lv<12> > grp_fu_144_p2;
    sc_signal< sc_lv<8> > grp_fu_133_p2;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter2_fsm;
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
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_aggregateMemCmd_V_blk_n();
    void thread_aggregateMemCmd_V_read();
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
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op11_read_state1();
    void thread_ap_predicate_op33_read_state1();
    void thread_ap_predicate_op44_write_state2();
    void thread_ap_predicate_op53_write_state3();
    void thread_ap_ready();
    void thread_grp_fu_128_p2();
    void thread_grp_fu_133_p2();
    void thread_grp_fu_144_p2();
    void thread_inputWord_rdOrWr_V_l_load_fu_176_p1();
    void thread_memArray_V_address0();
    void thread_memArray_V_ce0();
    void thread_memArray_V_we0();
    void thread_rdDataOut_V_V_1_ack_in();
    void thread_rdDataOut_V_V_1_ack_out();
    void thread_rdDataOut_V_V_1_data_out();
    void thread_rdDataOut_V_V_1_load_A();
    void thread_rdDataOut_V_V_1_load_B();
    void thread_rdDataOut_V_V_1_sel();
    void thread_rdDataOut_V_V_1_state_cmp_full();
    void thread_rdDataOut_V_V_1_vld_in();
    void thread_rdDataOut_V_V_1_vld_out();
    void thread_rdDataOut_V_V_TDATA();
    void thread_rdDataOut_V_V_TDATA_blk_n();
    void thread_rdDataOut_V_V_TVALID();
    void thread_tmp_1_nbreadreq_fu_84_p3();
    void thread_tmp_3_fu_180_p1();
    void thread_tmp_6_i_fu_226_p1();
    void thread_tmp_9_i_fu_231_p1();
    void thread_tmp_nbreadreq_fu_70_p3();
    void thread_wrDataIn_V_V_TDATA_blk_n();
    void thread_wrDataIn_V_V_TREADY();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
    void thread_ap_NS_iter2_fsm();
};

}

using namespace ap_rtl;

#endif