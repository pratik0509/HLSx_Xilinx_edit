// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _setPath_HH_
#define _setPath_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct setPath : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<66> > demux2setPathValue_V_dout;
    sc_in< sc_logic > demux2setPathValue_V_empty_n;
    sc_out< sc_logic > demux2setPathValue_V_read;
    sc_in< sc_lv<45> > demux2setPathMetadat_1_dout;
    sc_in< sc_logic > demux2setPathMetadat_1_empty_n;
    sc_out< sc_logic > demux2setPathMetadat_1_read;
    sc_out< sc_lv<1> > filterPopSet_V_V_din;
    sc_in< sc_logic > filterPopSet_V_V_full_n;
    sc_out< sc_logic > filterPopSet_V_V_write;
    sc_in< sc_logic > memWrData_V_V_TREADY;
    sc_in< sc_logic > memWrCmd_V_TREADY;
    sc_out< sc_lv<40> > memWrCmd_V_TDATA;
    sc_out< sc_logic > memWrCmd_V_TVALID;
    sc_out< sc_lv<512> > memWrData_V_V_TDATA;
    sc_out< sc_logic > memWrData_V_V_TVALID;


    // Module declarations
    setPath(sc_module_name name);
    SC_HAS_PROCESS(setPath);

    ~setPath();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_lv<2> > ap_CS_iter2_fsm;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state0;
    sc_signal< sc_lv<3> > setState_load_load_fu_305_p1;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_124_p3;
    sc_signal< bool > ap_predicate_op15_read_state1;
    sc_signal< bool > ap_predicate_op39_read_state1;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_138_p3;
    sc_signal< bool > ap_predicate_op55_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<3> > setState_load_reg_810;
    sc_signal< sc_lv<3> > setState_load_reg_810_pp0_iter0_reg;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > memWrData_V_V_1_ack_in;
    sc_signal< sc_logic > memWrCmd_V_1_ack_in;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< sc_lv<3> > setState_load_reg_810_pp0_iter1_reg;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state3;
    sc_signal< sc_lv<40> > memWrCmd_V_1_data_in;
    sc_signal< sc_lv<40> > memWrCmd_V_1_data_out;
    sc_signal< sc_logic > memWrCmd_V_1_vld_in;
    sc_signal< sc_logic > memWrCmd_V_1_vld_out;
    sc_signal< sc_logic > memWrCmd_V_1_ack_out;
    sc_signal< sc_lv<40> > memWrCmd_V_1_payload_A;
    sc_signal< sc_lv<40> > memWrCmd_V_1_payload_B;
    sc_signal< sc_logic > memWrCmd_V_1_sel_rd;
    sc_signal< sc_logic > memWrCmd_V_1_sel_wr;
    sc_signal< sc_logic > memWrCmd_V_1_sel;
    sc_signal< sc_logic > memWrCmd_V_1_load_A;
    sc_signal< sc_logic > memWrCmd_V_1_load_B;
    sc_signal< sc_lv<2> > memWrCmd_V_1_state;
    sc_signal< sc_logic > memWrCmd_V_1_state_cmp_full;
    sc_signal< sc_lv<512> > memWrData_V_V_1_data_out;
    sc_signal< sc_logic > memWrData_V_V_1_vld_in;
    sc_signal< sc_logic > memWrData_V_V_1_vld_out;
    sc_signal< sc_logic > memWrData_V_V_1_ack_out;
    sc_signal< sc_lv<512> > memWrData_V_V_1_payload_A;
    sc_signal< sc_lv<512> > memWrData_V_V_1_payload_B;
    sc_signal< sc_logic > memWrData_V_V_1_sel_rd;
    sc_signal< sc_logic > memWrData_V_V_1_sel_wr;
    sc_signal< sc_logic > memWrData_V_V_1_sel;
    sc_signal< sc_logic > memWrData_V_V_1_load_A;
    sc_signal< sc_logic > memWrData_V_V_1_load_B;
    sc_signal< sc_lv<2> > memWrData_V_V_1_state;
    sc_signal< sc_logic > memWrData_V_V_1_state_cmp_full;
    sc_signal< sc_lv<3> > setState;
    sc_signal< sc_lv<512> > setValueBuffer_V;
    sc_signal< sc_lv<32> > setMdBuffer_address_s;
    sc_signal< sc_lv<8> > setNumOfWords;
    sc_signal< sc_lv<8> > counter;
    sc_signal< sc_logic > memWrCmd_V_TDATA_blk_n;
    sc_signal< sc_logic > memWrData_V_V_TDATA_blk_n;
    sc_signal< sc_logic > demux2setPathMetadat_1_blk_n;
    sc_signal< sc_logic > demux2setPathValue_V_blk_n;
    sc_signal< sc_logic > filterPopSet_V_V_blk_n;
    sc_signal< sc_lv<66> > reg_301;
    sc_signal< sc_lv<1> > tmp_2_reg_814;
    sc_signal< sc_lv<1> > tmp_2_reg_814_pp0_iter0_reg;
    sc_signal< sc_lv<4> > tmp_33_fu_314_p1;
    sc_signal< sc_lv<4> > tmp_33_reg_818;
    sc_signal< sc_lv<1> > tmp_34_fu_332_p2;
    sc_signal< sc_lv<1> > tmp_34_reg_823;
    sc_signal< sc_lv<10> > tmp_37_fu_338_p1;
    sc_signal< sc_lv<10> > tmp_37_reg_831;
    sc_signal< sc_lv<1> > tmp_1_reg_837;
    sc_signal< sc_lv<1> > tmp_1_reg_837_pp0_iter0_reg;
    sc_signal< sc_lv<4> > tmp_9_fu_376_p1;
    sc_signal< sc_lv<4> > tmp_9_reg_841;
    sc_signal< sc_lv<1> > tmp_10_fu_394_p2;
    sc_signal< sc_lv<1> > tmp_10_reg_846;
    sc_signal< sc_lv<10> > tmp_12_fu_400_p1;
    sc_signal< sc_lv<10> > tmp_12_reg_854;
    sc_signal< sc_lv<1> > tmp_reg_860;
    sc_signal< sc_lv<1> > tmp_reg_860_pp0_iter0_reg;
    sc_signal< sc_lv<1> > tmp_3_reg_864;
    sc_signal< sc_lv<1> > tmp_3_reg_864_pp0_iter0_reg;
    sc_signal< sc_lv<32> > tmp_55_fu_438_p1;
    sc_signal< sc_lv<32> > tmp_55_reg_868;
    sc_signal< sc_lv<7> > tmp_6_fu_452_p4;
    sc_signal< sc_lv<7> > tmp_6_reg_873;
    sc_signal< sc_lv<1> > tmp_11_i_fu_470_p2;
    sc_signal< sc_lv<1> > tmp_11_i_reg_878;
    sc_signal< sc_lv<512> > p_Result_2_fu_488_p1;
    sc_signal< sc_lv<1> > tmp_56_fu_476_p3;
    sc_signal< sc_lv<40> > tmp_429_fu_635_p3;
    sc_signal< sc_lv<40> > tmp_35_fu_644_p3;
    sc_signal< sc_lv<1> > ap_phi_mux_setValueBuffer_V_fla_phi_fu_179_p26;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_setValueBuffer_V_fla_reg_174;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_setValueBuffer_V_fla_reg_174;
    sc_signal< sc_lv<512> > ap_phi_mux_setValueBuffer_V_new_phi_fu_226_p26;
    sc_signal< sc_lv<512> > ap_phi_reg_pp0_iter0_setValueBuffer_V_new_reg_221;
    sc_signal< sc_lv<512> > ap_phi_reg_pp0_iter1_setValueBuffer_V_new_reg_221;
    sc_signal< sc_lv<512> > p_Result_s_fu_770_p2;
    sc_signal< sc_lv<512> > p_Result_1_fu_628_p2;
    sc_signal< sc_lv<3> > storemerge3_i_fu_362_p3;
    sc_signal< sc_lv<3> > storemerge2_i_fu_424_p3;
    sc_signal< sc_lv<8> > storemerge4_i_fu_791_p3;
    sc_signal< sc_lv<8> > grp_fu_290_p2;
    sc_signal< sc_lv<14> > Lo_assign_1_fu_318_p3;
    sc_signal< sc_lv<14> > Hi_assign_1_fu_326_p2;
    sc_signal< sc_lv<1> > grp_fu_282_p3;
    sc_signal< sc_lv<1> > tmp_13_i_fu_342_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_356_p2;
    sc_signal< sc_lv<3> > storemerge_i_fu_348_p3;
    sc_signal< sc_lv<14> > Lo_assign_fu_380_p3;
    sc_signal< sc_lv<14> > Hi_assign_fu_388_p2;
    sc_signal< sc_lv<1> > tmp_12_i_fu_404_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_418_p2;
    sc_signal< sc_lv<3> > storemerge1_i_fu_410_p3;
    sc_signal< sc_lv<13> > tmp_length_V_load_ne_fu_442_p4;
    sc_signal< sc_lv<13> > op2_assign_fu_462_p3;
    sc_signal< sc_lv<64> > tmp_57_fu_484_p1;
    sc_signal< sc_lv<64> > tmp_31_fu_511_p1;
    sc_signal< sc_lv<10> > tmp_36_fu_519_p3;
    sc_signal< sc_lv<10> > tmp_38_fu_526_p2;
    sc_signal< sc_lv<10> > tmp_39_fu_532_p3;
    sc_signal< sc_lv<10> > tmp_41_fu_544_p3;
    sc_signal< sc_lv<10> > tmp_40_fu_538_p3;
    sc_signal< sc_lv<10> > tmp_42_fu_551_p2;
    sc_signal< sc_lv<512> > loc_V_1_fu_515_p1;
    sc_signal< sc_lv<512> > tmp_43_fu_557_p1;
    sc_signal< sc_lv<512> > tmp_46_fu_569_p2;
    sc_signal< sc_lv<512> > tmp_47_fu_575_p4;
    sc_signal< sc_lv<512> > tmp_44_fu_561_p1;
    sc_signal< sc_lv<512> > tmp_45_fu_565_p1;
    sc_signal< sc_lv<512> > tmp_49_fu_592_p2;
    sc_signal< sc_lv<512> > tmp_50_fu_598_p2;
    sc_signal< sc_lv<512> > p_demorgan_fu_604_p2;
    sc_signal< sc_lv<512> > tmp_51_fu_610_p2;
    sc_signal< sc_lv<512> > tmp_48_fu_585_p3;
    sc_signal< sc_lv<512> > tmp_52_fu_616_p2;
    sc_signal< sc_lv<512> > tmp_53_fu_622_p2;
    sc_signal< sc_lv<64> > tmp_7_fu_653_p1;
    sc_signal< sc_lv<10> > tmp_11_fu_661_p3;
    sc_signal< sc_lv<10> > tmp_13_fu_668_p2;
    sc_signal< sc_lv<10> > tmp_14_fu_674_p3;
    sc_signal< sc_lv<10> > tmp_16_fu_686_p3;
    sc_signal< sc_lv<10> > tmp_15_fu_680_p3;
    sc_signal< sc_lv<10> > tmp_17_fu_693_p2;
    sc_signal< sc_lv<512> > loc_V_fu_657_p1;
    sc_signal< sc_lv<512> > tmp_18_fu_699_p1;
    sc_signal< sc_lv<512> > tmp_21_fu_711_p2;
    sc_signal< sc_lv<512> > tmp_22_fu_717_p4;
    sc_signal< sc_lv<512> > tmp_19_fu_703_p1;
    sc_signal< sc_lv<512> > tmp_20_fu_707_p1;
    sc_signal< sc_lv<512> > tmp_24_fu_734_p2;
    sc_signal< sc_lv<512> > tmp_25_fu_740_p2;
    sc_signal< sc_lv<512> > p_demorgan1_fu_746_p2;
    sc_signal< sc_lv<512> > tmp_26_fu_752_p2;
    sc_signal< sc_lv<512> > tmp_23_fu_727_p3;
    sc_signal< sc_lv<512> > tmp_27_fu_758_p2;
    sc_signal< sc_lv<512> > tmp_28_fu_764_p2;
    sc_signal< sc_lv<8> > tmp_8_i_fu_782_p1;
    sc_signal< sc_lv<8> > tmp_14_i_fu_785_p2;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter2_fsm;
    sc_signal< bool > ap_condition_474;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter2_fsm_state3;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const sc_lv<2> ap_ST_iter2_fsm_state0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<512> ap_const_lv512_lc_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<14> ap_const_lv14_3F;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<10> ap_const_lv10_1FF;
    static const sc_lv<32> ap_const_lv32_1FF;
    static const sc_lv<512> ap_const_lv512_lc_3;
    static const sc_lv<40> ap_const_lv40_0;
    static const sc_lv<66> ap_const_lv66_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_1_fu_326_p2();
    void thread_Hi_assign_fu_388_p2();
    void thread_Lo_assign_1_fu_318_p3();
    void thread_Lo_assign_fu_380_p3();
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
    void thread_ap_condition_474();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_setValueBuffer_V_fla_phi_fu_179_p26();
    void thread_ap_phi_mux_setValueBuffer_V_new_phi_fu_226_p26();
    void thread_ap_phi_reg_pp0_iter0_setValueBuffer_V_fla_reg_174();
    void thread_ap_phi_reg_pp0_iter0_setValueBuffer_V_new_reg_221();
    void thread_ap_predicate_op15_read_state1();
    void thread_ap_predicate_op39_read_state1();
    void thread_ap_predicate_op55_read_state1();
    void thread_ap_ready();
    void thread_demux2setPathMetadat_1_blk_n();
    void thread_demux2setPathMetadat_1_read();
    void thread_demux2setPathValue_V_blk_n();
    void thread_demux2setPathValue_V_read();
    void thread_filterPopSet_V_V_blk_n();
    void thread_filterPopSet_V_V_din();
    void thread_filterPopSet_V_V_write();
    void thread_grp_fu_282_p3();
    void thread_grp_fu_290_p2();
    void thread_grp_nbreadreq_fu_124_p3();
    void thread_loc_V_1_fu_515_p1();
    void thread_loc_V_fu_657_p1();
    void thread_memWrCmd_V_1_ack_in();
    void thread_memWrCmd_V_1_ack_out();
    void thread_memWrCmd_V_1_data_in();
    void thread_memWrCmd_V_1_data_out();
    void thread_memWrCmd_V_1_load_A();
    void thread_memWrCmd_V_1_load_B();
    void thread_memWrCmd_V_1_sel();
    void thread_memWrCmd_V_1_state_cmp_full();
    void thread_memWrCmd_V_1_vld_in();
    void thread_memWrCmd_V_1_vld_out();
    void thread_memWrCmd_V_TDATA();
    void thread_memWrCmd_V_TDATA_blk_n();
    void thread_memWrCmd_V_TVALID();
    void thread_memWrData_V_V_1_ack_in();
    void thread_memWrData_V_V_1_ack_out();
    void thread_memWrData_V_V_1_data_out();
    void thread_memWrData_V_V_1_load_A();
    void thread_memWrData_V_V_1_load_B();
    void thread_memWrData_V_V_1_sel();
    void thread_memWrData_V_V_1_state_cmp_full();
    void thread_memWrData_V_V_1_vld_in();
    void thread_memWrData_V_V_1_vld_out();
    void thread_memWrData_V_V_TDATA();
    void thread_memWrData_V_V_TDATA_blk_n();
    void thread_memWrData_V_V_TVALID();
    void thread_op2_assign_fu_462_p3();
    void thread_p_Result_1_fu_628_p2();
    void thread_p_Result_2_fu_488_p1();
    void thread_p_Result_s_fu_770_p2();
    void thread_p_demorgan1_fu_746_p2();
    void thread_p_demorgan_fu_604_p2();
    void thread_setState_load_load_fu_305_p1();
    void thread_setState_load_reg_810_pp0_iter0_reg();
    void thread_storemerge1_i_fu_410_p3();
    void thread_storemerge2_i_fu_424_p3();
    void thread_storemerge3_i_fu_362_p3();
    void thread_storemerge4_i_fu_791_p3();
    void thread_storemerge_i_fu_348_p3();
    void thread_tmp_10_fu_394_p2();
    void thread_tmp_11_fu_661_p3();
    void thread_tmp_11_i_fu_470_p2();
    void thread_tmp_12_fu_400_p1();
    void thread_tmp_12_i_fu_404_p2();
    void thread_tmp_13_fu_668_p2();
    void thread_tmp_13_i_fu_342_p2();
    void thread_tmp_14_fu_674_p3();
    void thread_tmp_14_i_fu_785_p2();
    void thread_tmp_15_fu_680_p3();
    void thread_tmp_16_fu_686_p3();
    void thread_tmp_17_fu_693_p2();
    void thread_tmp_18_fu_699_p1();
    void thread_tmp_19_fu_703_p1();
    void thread_tmp_1_reg_837_pp0_iter0_reg();
    void thread_tmp_20_fu_707_p1();
    void thread_tmp_21_fu_711_p2();
    void thread_tmp_22_fu_717_p4();
    void thread_tmp_23_fu_727_p3();
    void thread_tmp_24_fu_734_p2();
    void thread_tmp_25_fu_740_p2();
    void thread_tmp_26_fu_752_p2();
    void thread_tmp_27_fu_758_p2();
    void thread_tmp_28_fu_764_p2();
    void thread_tmp_2_reg_814_pp0_iter0_reg();
    void thread_tmp_31_fu_511_p1();
    void thread_tmp_33_fu_314_p1();
    void thread_tmp_34_fu_332_p2();
    void thread_tmp_35_fu_644_p3();
    void thread_tmp_36_fu_519_p3();
    void thread_tmp_37_fu_338_p1();
    void thread_tmp_38_fu_526_p2();
    void thread_tmp_39_fu_532_p3();
    void thread_tmp_3_reg_864_pp0_iter0_reg();
    void thread_tmp_40_fu_538_p3();
    void thread_tmp_41_fu_544_p3();
    void thread_tmp_429_fu_635_p3();
    void thread_tmp_42_fu_551_p2();
    void thread_tmp_43_fu_557_p1();
    void thread_tmp_44_fu_561_p1();
    void thread_tmp_45_fu_565_p1();
    void thread_tmp_46_fu_569_p2();
    void thread_tmp_47_fu_575_p4();
    void thread_tmp_48_fu_585_p3();
    void thread_tmp_49_fu_592_p2();
    void thread_tmp_4_fu_418_p2();
    void thread_tmp_50_fu_598_p2();
    void thread_tmp_51_fu_610_p2();
    void thread_tmp_52_fu_616_p2();
    void thread_tmp_53_fu_622_p2();
    void thread_tmp_55_fu_438_p1();
    void thread_tmp_56_fu_476_p3();
    void thread_tmp_57_fu_484_p1();
    void thread_tmp_5_fu_356_p2();
    void thread_tmp_6_fu_452_p4();
    void thread_tmp_7_fu_653_p1();
    void thread_tmp_8_i_fu_782_p1();
    void thread_tmp_9_fu_376_p1();
    void thread_tmp_length_V_load_ne_fu_442_p4();
    void thread_tmp_nbreadreq_fu_138_p3();
    void thread_tmp_reg_860_pp0_iter0_reg();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
    void thread_ap_NS_iter2_fsm();
};

}

using namespace ap_rtl;

#endif
