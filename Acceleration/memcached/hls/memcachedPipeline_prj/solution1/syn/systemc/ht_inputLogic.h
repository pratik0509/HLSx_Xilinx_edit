// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ht_inputLogic_HH_
#define _ht_inputLogic_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct ht_inputLogic : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<256> > requestParser2hashTa_1_dout;
    sc_in< sc_logic > requestParser2hashTa_1_empty_n;
    sc_out< sc_logic > requestParser2hashTa_1_read;
    sc_out< sc_lv<8> > in2hashKeyLength_V_V_din;
    sc_in< sc_logic > in2hashKeyLength_V_V_full_n;
    sc_out< sc_logic > in2hashKeyLength_V_V_write;
    sc_out< sc_lv<64> > hashValueBuffer_V_V_din;
    sc_in< sc_logic > hashValueBuffer_V_V_full_n;
    sc_out< sc_logic > hashValueBuffer_V_V_write;
    sc_out< sc_lv<64> > hashKeyBuffer_V_V_din;
    sc_in< sc_logic > hashKeyBuffer_V_V_full_n;
    sc_out< sc_logic > hashKeyBuffer_V_V_write;
    sc_out< sc_lv<130> > in2cc_V_din;
    sc_in< sc_logic > in2cc_V_full_n;
    sc_out< sc_logic > in2cc_V_write;
    sc_out< sc_lv<64> > in2ccMd_V_din;
    sc_in< sc_logic > in2ccMd_V_full_n;
    sc_out< sc_logic > in2ccMd_V_write;
    sc_out< sc_lv<130> > in2hash_V_din;
    sc_in< sc_logic > in2hash_V_full_n;
    sc_out< sc_logic > in2hash_V_write;
    sc_out< sc_lv<128> > hashMdBuffer_V_V_din;
    sc_in< sc_logic > hashMdBuffer_V_V_full_n;
    sc_out< sc_logic > hashMdBuffer_V_V_write;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;


    // Module declarations
    ht_inputLogic(sc_module_name name);
    SC_HAS_PROCESS(ht_inputLogic);

    ~ht_inputLogic();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_lv<2> > ap_CS_iter2_fsm;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state0;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_252_p3;
    sc_signal< bool > ap_predicate_op8_read_state1;
    sc_signal< bool > ap_predicate_op31_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<1> > iState_load_reg_1236;
    sc_signal< sc_lv<1> > tmp_reg_1240;
    sc_signal< sc_lv<1> > tmp_360_reg_1249;
    sc_signal< sc_lv<1> > tmp_360_reg_1249_pp0_iter0_reg;
    sc_signal< sc_lv<1> > tmp_163_i_reg_1283;
    sc_signal< bool > ap_predicate_op46_write_state2;
    sc_signal< sc_lv<1> > tmp_361_reg_1253;
    sc_signal< bool > ap_predicate_op55_write_state2;
    sc_signal< sc_lv<1> > tmp_357_reg_1301;
    sc_signal< bool > ap_predicate_op61_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_lv<1> > iState_load_reg_1236_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_reg_1240_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_360_reg_1249_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_163_i_reg_1283_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_i_reg_1269;
    sc_signal< sc_lv<1> > tmp_i_reg_1269_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op125_write_state3;
    sc_signal< sc_lv<1> > tmp_170_i_reg_1287;
    sc_signal< sc_lv<1> > tmp_170_i_reg_1287_pp0_iter1_reg;
    sc_signal< bool > ap_predicate_op142_write_state3;
    sc_signal< bool > ap_predicate_op148_write_state3;
    sc_signal< sc_lv<1> > tmp_362_reg_1319;
    sc_signal< bool > ap_predicate_op152_write_state3;
    sc_signal< sc_lv<1> > tmp_160_i_reg_1328;
    sc_signal< bool > ap_predicate_op153_write_state3;
    sc_signal< sc_lv<1> > tmp_161_i_reg_1332;
    sc_signal< sc_lv<1> > tmp_167_i_reg_1361;
    sc_signal< bool > ap_predicate_op172_write_state3;
    sc_signal< bool > ap_predicate_op192_write_state3;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< sc_logic > ap_CS_iter2_fsm_state3;
    sc_signal< sc_lv<1> > iState;
    sc_signal< sc_lv<8> > bufferWordMd_keyLeng;
    sc_signal< sc_lv<2> > wordCounter_V_1;
    sc_signal< sc_lv<8> > keyLength_V;
    sc_signal< sc_lv<2> > keyWordCounter_V;
    sc_signal< sc_lv<128> > bufferWord_data_V;
    sc_signal< sc_lv<8> > bufferWordMd_operati;
    sc_signal< sc_lv<16> > bufferWordMd_valueLe;
    sc_signal< sc_logic > requestParser2hashTa_1_blk_n;
    sc_signal< sc_logic > hashKeyBuffer_V_V_blk_n;
    sc_signal< sc_logic > in2hashKeyLength_V_V_blk_n;
    sc_signal< sc_logic > in2cc_V_blk_n;
    sc_signal< sc_logic > in2ccMd_V_blk_n;
    sc_signal< sc_logic > in2hash_V_blk_n;
    sc_signal< sc_logic > hashValueBuffer_V_V_blk_n;
    sc_signal< sc_logic > hashMdBuffer_V_V_blk_n;
    sc_signal< sc_lv<64> > reg_527;
    sc_signal< sc_lv<64> > reg_532;
    sc_signal< sc_lv<64> > reg_532_pp0_iter1_reg;
    sc_signal< sc_lv<8> > grp_fu_522_p2;
    sc_signal< sc_lv<8> > reg_537;
    sc_signal< sc_lv<1> > tmp_160_i_fu_727_p2;
    sc_signal< sc_lv<1> > tmp_161_i_fu_733_p2;
    sc_signal< sc_lv<124> > p_Val2_s_fu_545_p1;
    sc_signal< sc_lv<124> > p_Val2_s_reg_1244;
    sc_signal< sc_lv<124> > p_Val2_s_reg_1244_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_360_fu_549_p3;
    sc_signal< sc_lv<8> > tmp_operation_V_1_fu_557_p4;
    sc_signal< sc_lv<8> > tmp_operation_V_1_reg_1257;
    sc_signal< sc_lv<8> > tmp_operation_V_1_reg_1257_pp0_iter1_reg;
    sc_signal< sc_lv<16> > tmp_valueLength_V_1_reg_1263;
    sc_signal< sc_lv<16> > tmp_valueLength_V_1_reg_1263_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_i_fu_577_p2;
    sc_signal< sc_lv<8> > tmp_V_43_fu_587_p3;
    sc_signal< sc_lv<8> > tmp_V_43_reg_1273;
    sc_signal< sc_lv<8> > tmp_V_43_reg_1273_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_163_i_fu_595_p2;
    sc_signal< sc_lv<1> > tmp_170_i_fu_601_p2;
    sc_signal< sc_lv<1> > tmp_170_i_reg_1287_pp0_iter0_reg;
    sc_signal< sc_lv<3> > tmp_47_i_reg_1291;
    sc_signal< sc_lv<3> > tmp_47_i_reg_1291_pp0_iter1_reg;
    sc_signal< sc_lv<256> > tmp_4_reg_1296;
    sc_signal< sc_lv<1> > tmp_358_fu_623_p3;
    sc_signal< sc_lv<7> > tmp_172_i_fu_680_p3;
    sc_signal< sc_lv<7> > tmp_172_i_reg_1309;
    sc_signal< sc_lv<8> > tmp_409_fu_698_p2;
    sc_signal< sc_lv<8> > tmp_409_reg_1314;
    sc_signal< sc_lv<1> > tmp_362_fu_709_p3;
    sc_signal< sc_lv<128> > p_Result_35_fu_717_p1;
    sc_signal< sc_lv<128> > p_Result_35_reg_1323;
    sc_signal< sc_lv<8> > Lo_assign_fu_739_p3;
    sc_signal< sc_lv<8> > Lo_assign_reg_1336;
    sc_signal< sc_lv<8> > Hi_assign_1_fu_756_p2;
    sc_signal< sc_lv<8> > Hi_assign_1_reg_1344;
    sc_signal< sc_lv<1> > tmp_385_fu_762_p2;
    sc_signal< sc_lv<1> > tmp_385_reg_1349;
    sc_signal< sc_lv<8> > tmp_390_fu_776_p2;
    sc_signal< sc_lv<8> > tmp_390_reg_1356;
    sc_signal< sc_lv<1> > tmp_167_i_fu_782_p2;
    sc_signal< sc_lv<1> > tmp_366_fu_840_p2;
    sc_signal< sc_lv<1> > tmp_366_reg_1365;
    sc_signal< sc_lv<8> > tmp_367_fu_846_p1;
    sc_signal< sc_lv<8> > tmp_367_reg_1372;
    sc_signal< sc_lv<8> > tmp_372_fu_858_p2;
    sc_signal< sc_lv<8> > tmp_372_reg_1377;
    sc_signal< sc_lv<8> > ap_phi_mux_keyLength_V_new_i_phi_fu_319_p6;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_keyLength_V_new_i_reg_315;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_keyLength_V_new_i_reg_315;
    sc_signal< sc_lv<8> > tmp_173_i_fu_671_p2;
    sc_signal< sc_lv<1> > ap_phi_mux_wordCounter_V_1_new_2_phi_fu_332_p4;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_wordCounter_V_1_new_2_reg_328;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_wordCounter_V_1_new_2_reg_328;
    sc_signal< sc_lv<8> > ap_phi_mux_keyLength_V_new_1_i_phi_fu_344_p4;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_keyLength_V_new_1_i_reg_340;
    sc_signal< sc_lv<1> > ap_phi_mux_wordCounter_V_1_flag_phi_fu_355_p4;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_wordCounter_V_1_flag_reg_352;
    sc_signal< sc_lv<2> > ap_phi_mux_wordCounter_V_1_new_s_phi_fu_366_p4;
    sc_signal< sc_lv<2> > tmp_159_i_fu_720_p2;
    sc_signal< sc_lv<2> > ap_phi_reg_pp0_iter1_wordCounter_V_1_new_s_reg_363;
    sc_signal< sc_lv<2> > ap_phi_mux_storemerge_i_phi_fu_376_p4;
    sc_signal< sc_lv<2> > tmp_168_i_fu_788_p2;
    sc_signal< sc_lv<2> > ap_phi_reg_pp0_iter1_storemerge_i_reg_373;
    sc_signal< sc_lv<1> > ap_phi_mux_keyLength_V_flag_4_i_phi_fu_386_p6;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_keyLength_V_flag_4_i_reg_383;
    sc_signal< sc_lv<8> > ap_phi_mux_keyLength_V_new_4_i_phi_fu_400_p6;
    sc_signal< sc_lv<8> > tmp_169_i_fu_801_p2;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_keyLength_V_new_4_i_reg_397;
    sc_signal< sc_lv<1> > ap_phi_mux_wordCounter_V_1_flag_1_phi_fu_414_p8;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_wordCounter_V_1_flag_1_reg_410;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_wordCounter_V_1_flag_1_reg_410;
    sc_signal< sc_lv<2> > ap_phi_mux_wordCounter_V_1_new_1_phi_fu_433_p8;
    sc_signal< sc_lv<2> > wordCounter_V_1_new_3_fu_704_p1;
    sc_signal< sc_lv<2> > ap_phi_reg_pp0_iter1_wordCounter_V_1_new_1_reg_429;
    sc_signal< sc_lv<1> > ap_phi_mux_keyLength_V_flag_6_i_phi_fu_450_p8;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter1_keyLength_V_flag_6_i_reg_446;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_keyLength_V_flag_6_i_reg_446;
    sc_signal< sc_lv<8> > ap_phi_mux_keyLength_V_new_6_i_phi_fu_469_p8;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_keyLength_V_new_6_i_reg_465;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_bufferWordMd_keyLeng_1_reg_483;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_bufferWordMd_keyLeng_1_reg_483;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter2_bufferWordMd_keyLeng_1_reg_483;
    sc_signal< sc_lv<130> > tmp_1_fu_966_p3;
    sc_signal< sc_lv<130> > tmp_8_fu_1098_p3;
    sc_signal< sc_lv<130> > tmp_5_fu_1205_p3;
    sc_signal< sc_lv<64> > tmp_2_fu_976_p5;
    sc_signal< sc_lv<64> > tmp_6_fu_1223_p5;
    sc_signal< sc_lv<128> > p_Result_34_fu_986_p4;
    sc_signal< sc_lv<128> > p_Result_s_fu_884_p5;
    sc_signal< sc_lv<128> > p_Result_33_fu_954_p2;
    sc_signal< sc_lv<128> > p_Result_37_fu_1086_p2;
    sc_signal< sc_lv<128> > p_Result_36_fu_1193_p2;
    sc_signal< sc_lv<8> > tmp_363_fu_583_p1;
    sc_signal< sc_lv<4> > tmp_403_fu_677_p1;
    sc_signal< sc_lv<7> > Hi_assign_fu_688_p2;
    sc_signal< sc_lv<8> > tmp_408_fu_694_p1;
    sc_signal< sc_lv<8> > tmp_387_fu_768_p3;
    sc_signal< sc_lv<4> > tmp_365_fu_808_p1;
    sc_signal< sc_lv<7> > tmp_165_i_fu_812_p3;
    sc_signal< sc_lv<7> > tmp_166_i_fu_820_p2;
    sc_signal< sc_lv<9> > tmp_166_cast_i_fu_826_p1;
    sc_signal< sc_lv<9> > Lo_assign_cast312_i_fu_748_p1;
    sc_signal< sc_lv<9> > Hi_assign_s_fu_830_p2;
    sc_signal< sc_lv<32> > Lo_assign_cast_i_fu_752_p1;
    sc_signal< sc_lv<32> > Hi_assign_16_cast_i_fu_836_p1;
    sc_signal< sc_lv<8> > tmp_369_fu_850_p3;
    sc_signal< sc_lv<7> > tmp_404_fu_902_p2;
    sc_signal< sc_lv<64> > tmp_405_fu_907_p1;
    sc_signal< sc_lv<64> > tmp_406_fu_911_p2;
    sc_signal< sc_lv<64> > p_Result_32_fu_917_p2;
    sc_signal< sc_lv<128> > tmp_410_fu_927_p1;
    sc_signal< sc_lv<128> > tmp_411_fu_930_p2;
    sc_signal< sc_lv<128> > tmp_412_fu_936_p2;
    sc_signal< sc_lv<128> > loc_V_fu_923_p1;
    sc_signal< sc_lv<128> > tmp_413_fu_942_p2;
    sc_signal< sc_lv<128> > tmp_414_fu_948_p2;
    sc_signal< sc_lv<8> > tmp_389_fu_1010_p3;
    sc_signal< sc_lv<8> > tmp_388_fu_1005_p3;
    sc_signal< sc_lv<128> > loc_V_9_fu_1001_p1;
    sc_signal< sc_lv<128> > tmp_391_fu_1016_p1;
    sc_signal< sc_lv<128> > tmp_394_fu_1027_p2;
    sc_signal< sc_lv<128> > tmp_395_fu_1033_p4;
    sc_signal< sc_lv<128> > tmp_392_fu_1020_p1;
    sc_signal< sc_lv<128> > tmp_393_fu_1024_p1;
    sc_signal< sc_lv<128> > tmp_397_fu_1050_p2;
    sc_signal< sc_lv<128> > tmp_398_fu_1056_p2;
    sc_signal< sc_lv<128> > p_demorgan_fu_1062_p2;
    sc_signal< sc_lv<128> > tmp_399_fu_1068_p2;
    sc_signal< sc_lv<128> > tmp_396_fu_1043_p3;
    sc_signal< sc_lv<128> > tmp_400_fu_1074_p2;
    sc_signal< sc_lv<128> > tmp_401_fu_1080_p2;
    sc_signal< sc_lv<8> > tmp_371_fu_1117_p3;
    sc_signal< sc_lv<8> > tmp_370_fu_1112_p3;
    sc_signal< sc_lv<128> > loc_V_8_fu_1108_p1;
    sc_signal< sc_lv<128> > tmp_373_fu_1123_p1;
    sc_signal< sc_lv<128> > tmp_376_fu_1134_p2;
    sc_signal< sc_lv<128> > tmp_377_fu_1140_p4;
    sc_signal< sc_lv<128> > tmp_374_fu_1127_p1;
    sc_signal< sc_lv<128> > tmp_375_fu_1131_p1;
    sc_signal< sc_lv<128> > tmp_379_fu_1157_p2;
    sc_signal< sc_lv<128> > tmp_380_fu_1163_p2;
    sc_signal< sc_lv<128> > p_demorgan2_fu_1169_p2;
    sc_signal< sc_lv<128> > tmp_381_fu_1175_p2;
    sc_signal< sc_lv<128> > tmp_378_fu_1150_p3;
    sc_signal< sc_lv<128> > tmp_382_fu_1181_p2;
    sc_signal< sc_lv<128> > tmp_383_fu_1187_p2;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter2_fsm;
    sc_signal< bool > ap_condition_1009;
    sc_signal< bool > ap_condition_511;
    sc_signal< bool > ap_condition_525;
    sc_signal< bool > ap_condition_478;
    sc_signal< bool > ap_condition_236;
    sc_signal< bool > ap_condition_462;
    sc_signal< bool > ap_condition_470;
    sc_signal< bool > ap_condition_88;
    sc_signal< bool > ap_condition_329;
    sc_signal< bool > ap_condition_589;
    sc_signal< bool > ap_condition_207;
    sc_signal< bool > ap_condition_543;
    sc_signal< bool > ap_condition_1035;
    sc_signal< bool > ap_condition_1044;
    sc_signal< bool > ap_condition_1040;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter2_fsm_state3;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const sc_lv<2> ap_ST_iter2_fsm_state0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_BF;
    static const sc_lv<32> ap_const_lv32_C0;
    static const sc_lv<32> ap_const_lv32_FF;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_68;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<32> ap_const_lv32_7D;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<8> ap_const_lv8_F8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_7F;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<8> ap_const_lv8_3F;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<124> ap_const_lv124_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<256> ap_const_lv256_lc_1;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_Hi_assign_16_cast_i_fu_836_p1();
    void thread_Hi_assign_1_fu_756_p2();
    void thread_Hi_assign_fu_688_p2();
    void thread_Hi_assign_s_fu_830_p2();
    void thread_Lo_assign_cast312_i_fu_748_p1();
    void thread_Lo_assign_cast_i_fu_752_p1();
    void thread_Lo_assign_fu_739_p3();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_CS_iter2_fsm_state0();
    void thread_ap_CS_iter2_fsm_state3();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_condition_1009();
    void thread_ap_condition_1035();
    void thread_ap_condition_1040();
    void thread_ap_condition_1044();
    void thread_ap_condition_207();
    void thread_ap_condition_236();
    void thread_ap_condition_329();
    void thread_ap_condition_462();
    void thread_ap_condition_470();
    void thread_ap_condition_478();
    void thread_ap_condition_511();
    void thread_ap_condition_525();
    void thread_ap_condition_543();
    void thread_ap_condition_589();
    void thread_ap_condition_88();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_keyLength_V_flag_4_i_phi_fu_386_p6();
    void thread_ap_phi_mux_keyLength_V_flag_6_i_phi_fu_450_p8();
    void thread_ap_phi_mux_keyLength_V_new_1_i_phi_fu_344_p4();
    void thread_ap_phi_mux_keyLength_V_new_4_i_phi_fu_400_p6();
    void thread_ap_phi_mux_keyLength_V_new_6_i_phi_fu_469_p8();
    void thread_ap_phi_mux_keyLength_V_new_i_phi_fu_319_p6();
    void thread_ap_phi_mux_storemerge_i_phi_fu_376_p4();
    void thread_ap_phi_mux_wordCounter_V_1_flag_1_phi_fu_414_p8();
    void thread_ap_phi_mux_wordCounter_V_1_flag_phi_fu_355_p4();
    void thread_ap_phi_mux_wordCounter_V_1_new_1_phi_fu_433_p8();
    void thread_ap_phi_mux_wordCounter_V_1_new_2_phi_fu_332_p4();
    void thread_ap_phi_mux_wordCounter_V_1_new_s_phi_fu_366_p4();
    void thread_ap_phi_reg_pp0_iter0_bufferWordMd_keyLeng_1_reg_483();
    void thread_ap_phi_reg_pp0_iter0_keyLength_V_flag_6_i_reg_446();
    void thread_ap_phi_reg_pp0_iter0_keyLength_V_new_i_reg_315();
    void thread_ap_phi_reg_pp0_iter0_wordCounter_V_1_flag_1_reg_410();
    void thread_ap_phi_reg_pp0_iter0_wordCounter_V_1_new_2_reg_328();
    void thread_ap_phi_reg_pp0_iter1_keyLength_V_flag_4_i_reg_383();
    void thread_ap_phi_reg_pp0_iter1_keyLength_V_new_1_i_reg_340();
    void thread_ap_phi_reg_pp0_iter1_keyLength_V_new_4_i_reg_397();
    void thread_ap_phi_reg_pp0_iter1_keyLength_V_new_6_i_reg_465();
    void thread_ap_phi_reg_pp0_iter1_storemerge_i_reg_373();
    void thread_ap_phi_reg_pp0_iter1_wordCounter_V_1_flag_reg_352();
    void thread_ap_phi_reg_pp0_iter1_wordCounter_V_1_new_1_reg_429();
    void thread_ap_phi_reg_pp0_iter1_wordCounter_V_1_new_s_reg_363();
    void thread_ap_predicate_op125_write_state3();
    void thread_ap_predicate_op142_write_state3();
    void thread_ap_predicate_op148_write_state3();
    void thread_ap_predicate_op152_write_state3();
    void thread_ap_predicate_op153_write_state3();
    void thread_ap_predicate_op172_write_state3();
    void thread_ap_predicate_op192_write_state3();
    void thread_ap_predicate_op31_read_state1();
    void thread_ap_predicate_op46_write_state2();
    void thread_ap_predicate_op55_write_state2();
    void thread_ap_predicate_op61_write_state2();
    void thread_ap_predicate_op8_read_state1();
    void thread_ap_ready();
    void thread_grp_fu_522_p2();
    void thread_hashKeyBuffer_V_V_blk_n();
    void thread_hashKeyBuffer_V_V_din();
    void thread_hashKeyBuffer_V_V_write();
    void thread_hashMdBuffer_V_V_blk_n();
    void thread_hashMdBuffer_V_V_din();
    void thread_hashMdBuffer_V_V_write();
    void thread_hashValueBuffer_V_V_blk_n();
    void thread_hashValueBuffer_V_V_din();
    void thread_hashValueBuffer_V_V_write();
    void thread_in2ccMd_V_blk_n();
    void thread_in2ccMd_V_din();
    void thread_in2ccMd_V_write();
    void thread_in2cc_V_blk_n();
    void thread_in2cc_V_din();
    void thread_in2cc_V_write();
    void thread_in2hashKeyLength_V_V_blk_n();
    void thread_in2hashKeyLength_V_V_din();
    void thread_in2hashKeyLength_V_V_write();
    void thread_in2hash_V_blk_n();
    void thread_in2hash_V_din();
    void thread_in2hash_V_write();
    void thread_internal_ap_ready();
    void thread_loc_V_8_fu_1108_p1();
    void thread_loc_V_9_fu_1001_p1();
    void thread_loc_V_fu_923_p1();
    void thread_p_Result_32_fu_917_p2();
    void thread_p_Result_33_fu_954_p2();
    void thread_p_Result_34_fu_986_p4();
    void thread_p_Result_35_fu_717_p1();
    void thread_p_Result_36_fu_1193_p2();
    void thread_p_Result_37_fu_1086_p2();
    void thread_p_Result_s_fu_884_p5();
    void thread_p_Val2_s_fu_545_p1();
    void thread_p_demorgan2_fu_1169_p2();
    void thread_p_demorgan_fu_1062_p2();
    void thread_real_start();
    void thread_requestParser2hashTa_1_blk_n();
    void thread_requestParser2hashTa_1_read();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_159_i_fu_720_p2();
    void thread_tmp_160_i_fu_727_p2();
    void thread_tmp_161_i_fu_733_p2();
    void thread_tmp_163_i_fu_595_p2();
    void thread_tmp_165_i_fu_812_p3();
    void thread_tmp_166_cast_i_fu_826_p1();
    void thread_tmp_166_i_fu_820_p2();
    void thread_tmp_167_i_fu_782_p2();
    void thread_tmp_168_i_fu_788_p2();
    void thread_tmp_169_i_fu_801_p2();
    void thread_tmp_170_i_fu_601_p2();
    void thread_tmp_170_i_reg_1287_pp0_iter0_reg();
    void thread_tmp_172_i_fu_680_p3();
    void thread_tmp_173_i_fu_671_p2();
    void thread_tmp_1_fu_966_p3();
    void thread_tmp_2_fu_976_p5();
    void thread_tmp_358_fu_623_p3();
    void thread_tmp_360_fu_549_p3();
    void thread_tmp_360_reg_1249_pp0_iter0_reg();
    void thread_tmp_362_fu_709_p3();
    void thread_tmp_363_fu_583_p1();
    void thread_tmp_365_fu_808_p1();
    void thread_tmp_366_fu_840_p2();
    void thread_tmp_367_fu_846_p1();
    void thread_tmp_369_fu_850_p3();
    void thread_tmp_370_fu_1112_p3();
    void thread_tmp_371_fu_1117_p3();
    void thread_tmp_372_fu_858_p2();
    void thread_tmp_373_fu_1123_p1();
    void thread_tmp_374_fu_1127_p1();
    void thread_tmp_375_fu_1131_p1();
    void thread_tmp_376_fu_1134_p2();
    void thread_tmp_377_fu_1140_p4();
    void thread_tmp_378_fu_1150_p3();
    void thread_tmp_379_fu_1157_p2();
    void thread_tmp_380_fu_1163_p2();
    void thread_tmp_381_fu_1175_p2();
    void thread_tmp_382_fu_1181_p2();
    void thread_tmp_383_fu_1187_p2();
    void thread_tmp_385_fu_762_p2();
    void thread_tmp_387_fu_768_p3();
    void thread_tmp_388_fu_1005_p3();
    void thread_tmp_389_fu_1010_p3();
    void thread_tmp_390_fu_776_p2();
    void thread_tmp_391_fu_1016_p1();
    void thread_tmp_392_fu_1020_p1();
    void thread_tmp_393_fu_1024_p1();
    void thread_tmp_394_fu_1027_p2();
    void thread_tmp_395_fu_1033_p4();
    void thread_tmp_396_fu_1043_p3();
    void thread_tmp_397_fu_1050_p2();
    void thread_tmp_398_fu_1056_p2();
    void thread_tmp_399_fu_1068_p2();
    void thread_tmp_400_fu_1074_p2();
    void thread_tmp_401_fu_1080_p2();
    void thread_tmp_403_fu_677_p1();
    void thread_tmp_404_fu_902_p2();
    void thread_tmp_405_fu_907_p1();
    void thread_tmp_406_fu_911_p2();
    void thread_tmp_408_fu_694_p1();
    void thread_tmp_409_fu_698_p2();
    void thread_tmp_410_fu_927_p1();
    void thread_tmp_411_fu_930_p2();
    void thread_tmp_412_fu_936_p2();
    void thread_tmp_413_fu_942_p2();
    void thread_tmp_414_fu_948_p2();
    void thread_tmp_5_fu_1205_p3();
    void thread_tmp_6_fu_1223_p5();
    void thread_tmp_8_fu_1098_p3();
    void thread_tmp_V_43_fu_587_p3();
    void thread_tmp_i_fu_577_p2();
    void thread_tmp_nbreadreq_fu_252_p3();
    void thread_tmp_operation_V_1_fu_557_p4();
    void thread_wordCounter_V_1_new_3_fu_704_p1();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
    void thread_ap_NS_iter2_fsm();
};

}

using namespace ap_rtl;

#endif
