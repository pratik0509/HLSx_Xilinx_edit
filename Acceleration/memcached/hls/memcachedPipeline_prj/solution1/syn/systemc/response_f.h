// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _response_f_HH_
#define _response_f_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct response_f : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_out< sc_lv<64> > valueBuffer_rf_V_V_din;
    sc_in< sc_logic > valueBuffer_rf_V_V_full_n;
    sc_out< sc_logic > valueBuffer_rf_V_V_write;
    sc_out< sc_lv<248> > metadataBuffer_rf_V_s_din;
    sc_in< sc_logic > metadataBuffer_rf_V_s_full_n;
    sc_out< sc_logic > metadataBuffer_rf_V_s_write;
    sc_in< sc_lv<256> > merger2responseForma_1_dout;
    sc_in< sc_logic > merger2responseForma_1_empty_n;
    sc_out< sc_logic > merger2responseForma_1_read;


    // Module declarations
    response_f(sc_module_name name);
    SC_HAS_PROCESS(response_f);

    ~response_f();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<2> > inWordCounter_V;
    sc_signal< sc_lv<248> > bf_metadataTempBuffe;
    sc_signal< sc_logic > valueBuffer_rf_V_V_blk_n;
    sc_signal< sc_lv<1> > tmp_nbwritereq_fu_72_p3;
    sc_signal< sc_lv<1> > tmp_7_nbwritereq_fu_80_p3;
    sc_signal< sc_lv<1> > tmp_8_nbreadreq_fu_88_p3;
    sc_signal< sc_lv<1> > or_cond_i_fu_212_p2;
    sc_signal< sc_lv<1> > tmp_94_fu_175_p3;
    sc_signal< sc_lv<1> > tmp_i_fu_206_p2;
    sc_signal< sc_logic > metadataBuffer_rf_V_s_blk_n;
    sc_signal< sc_lv<1> > tmp_96_fu_222_p3;
    sc_signal< sc_lv<1> > tmp_53_i_fu_249_p2;
    sc_signal< sc_logic > merger2responseForma_1_blk_n;
    sc_signal< sc_lv<1> > ap_phi_mux_inWordCounter_V_flag_phi_fu_119_p4;
    sc_signal< bool > ap_predicate_op12_read_state1;
    sc_signal< bool > ap_predicate_op30_write_state1;
    sc_signal< bool > ap_predicate_op37_write_state1;
    sc_signal< bool > ap_predicate_op45_write_state1;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<2> > tmp_54_i_fu_255_p2;
    sc_signal< sc_lv<1> > ap_phi_mux_inWordCounter_V_flag_1_phi_fu_140_p6;
    sc_signal< sc_lv<1> > p_inWordCounter_V_fla_fu_262_p2;
    sc_signal< sc_lv<2> > ap_phi_mux_inWordCounter_V_new_1_phi_fu_153_p6;
    sc_signal< sc_lv<2> > p_inWordCounter_V_new_fu_269_p3;
    sc_signal< sc_lv<248> > p_Result_12_fu_230_p5;
    sc_signal< sc_lv<248> > p_Result_s_fu_278_p5;
    sc_signal< sc_lv<1> > tmp_93_fu_167_p3;
    sc_signal< sc_lv<124> > tmp_92_fu_163_p1;
    sc_signal< sc_lv<1> > tmp_95_fu_183_p3;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< bool > ap_condition_88;
    sc_signal< bool > ap_condition_141;
    sc_signal< bool > ap_condition_239;
    sc_signal< bool > ap_condition_238;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<248> ap_const_lv248_lc_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_BF;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_F7;
    static const sc_lv<32> ap_const_lv32_7B;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_condition_141();
    void thread_ap_condition_238();
    void thread_ap_condition_239();
    void thread_ap_condition_88();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_inWordCounter_V_flag_1_phi_fu_140_p6();
    void thread_ap_phi_mux_inWordCounter_V_flag_phi_fu_119_p4();
    void thread_ap_phi_mux_inWordCounter_V_new_1_phi_fu_153_p6();
    void thread_ap_predicate_op12_read_state1();
    void thread_ap_predicate_op30_write_state1();
    void thread_ap_predicate_op37_write_state1();
    void thread_ap_predicate_op45_write_state1();
    void thread_ap_ready();
    void thread_internal_ap_ready();
    void thread_merger2responseForma_1_blk_n();
    void thread_merger2responseForma_1_read();
    void thread_metadataBuffer_rf_V_s_blk_n();
    void thread_metadataBuffer_rf_V_s_din();
    void thread_metadataBuffer_rf_V_s_write();
    void thread_or_cond_i_fu_212_p2();
    void thread_p_Result_12_fu_230_p5();
    void thread_p_Result_s_fu_278_p5();
    void thread_p_inWordCounter_V_fla_fu_262_p2();
    void thread_p_inWordCounter_V_new_fu_269_p3();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_53_i_fu_249_p2();
    void thread_tmp_54_i_fu_255_p2();
    void thread_tmp_7_nbwritereq_fu_80_p3();
    void thread_tmp_8_nbreadreq_fu_88_p3();
    void thread_tmp_92_fu_163_p1();
    void thread_tmp_93_fu_167_p3();
    void thread_tmp_94_fu_175_p3();
    void thread_tmp_95_fu_183_p3();
    void thread_tmp_96_fu_222_p3();
    void thread_tmp_i_fu_206_p2();
    void thread_tmp_nbwritereq_fu_72_p3();
    void thread_valueBuffer_rf_V_V_blk_n();
    void thread_valueBuffer_rf_V_V_din();
    void thread_valueBuffer_rf_V_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
