// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bp_f1244_HH_
#define _bp_f1244_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct bp_f1244 : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > inData_TVALID;
    sc_in< sc_lv<1> > flushAck_V_dout;
    sc_in< sc_logic > flushAck_V_empty_n;
    sc_out< sc_logic > flushAck_V_read;
    sc_out< sc_lv<1> > flushAck_V_out_din;
    sc_in< sc_logic > flushAck_V_out_full_n;
    sc_out< sc_logic > flushAck_V_out_write;
    sc_out< sc_lv<64> > valueBuffer_rp_V_V_din;
    sc_in< sc_logic > valueBuffer_rp_V_V_full_n;
    sc_out< sc_logic > valueBuffer_rp_V_V_write;
    sc_out< sc_lv<64> > keyBuffer_rp_V_V_din;
    sc_in< sc_logic > keyBuffer_rp_V_V_full_n;
    sc_out< sc_logic > keyBuffer_rp_V_V_write;
    sc_out< sc_lv<248> > metadataBuffer_rp_V_s_din;
    sc_in< sc_logic > metadataBuffer_rp_V_s_full_n;
    sc_out< sc_logic > metadataBuffer_rp_V_s_write;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<64> > inData_TDATA;
    sc_out< sc_logic > inData_TREADY;
    sc_in< sc_lv<112> > inData_TUSER;
    sc_in< sc_lv<8> > inData_TKEEP;
    sc_in< sc_lv<1> > inData_TLAST;


    // Module declarations
    bp_f1244(sc_module_name name);
    SC_HAS_PROCESS(bp_f1244);

    ~bp_f1244();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<1> > lastValueWord_load_load_fu_495_p1;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_268_p6;
    sc_signal< bool > ap_predicate_op9_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<1> > lastValueWord_load_reg_1758;
    sc_signal< sc_lv<1> > tmp_reg_1767;
    sc_signal< sc_lv<1> > tmp_i_i_i_i_reg_1779;
    sc_signal< sc_lv<1> > tmp_i_i_i_i_reg_1779_pp0_iter0_reg;
    sc_signal< sc_lv<1> > tmp_241_i_i_i_i_reg_1788;
    sc_signal< sc_lv<1> > tmp_245_i_i_i_i_reg_1792;
    sc_signal< sc_lv<1> > tmp_247_i_i_i_i_reg_1796;
    sc_signal< sc_lv<1> > tmp_250_i_i_i_i_reg_1800;
    sc_signal< sc_lv<1> > tmp_254_i_i_i_i_reg_1804;
    sc_signal< sc_lv<1> > tmp_259_i_i_i_i_reg_1808;
    sc_signal< bool > ap_predicate_op405_write_state2;
    sc_signal< bool > ap_predicate_op407_write_state2;
    sc_signal< sc_lv<1> > tmp_258_i_i_i_i_reg_1829;
    sc_signal< sc_lv<1> > tmp_274_i_i_i_i_reg_1837;
    sc_signal< bool > ap_predicate_op409_write_state2;
    sc_signal< bool > ap_predicate_op417_write_state2;
    sc_signal< bool > ap_predicate_op422_write_state2;
    sc_signal< bool > ap_predicate_op439_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_lv<1> > lastValueWord;
    sc_signal< sc_lv<4> > bpf_wordCounter;
    sc_signal< sc_lv<64> > valueTempBuffer_V;
    sc_signal< sc_lv<248> > metadataTempBuffer_V;
    sc_signal< sc_lv<8> > bpf_keyLength_V;
    sc_signal< sc_lv<8> > keyLengthBuffer;
    sc_signal< sc_lv<8> > bpf_opCode_V;
    sc_signal< sc_lv<4> > protocol_V;
    sc_signal< sc_lv<17> > bpf_valueLengthBuffe;
    sc_signal< sc_lv<8> > valueShift;
    sc_signal< sc_logic > inData_TDATA_blk_n;
    sc_signal< sc_logic > flushAck_V_blk_n;
    sc_signal< sc_logic > flushAck_V_out_blk_n;
    sc_signal< sc_logic > metadataBuffer_rp_V_s_blk_n;
    sc_signal< sc_logic > valueBuffer_rp_V_V_blk_n;
    sc_signal< sc_logic > keyBuffer_rp_V_V_blk_n;
    sc_signal< sc_lv<64> > p_Val2_35_reg_1762;
    sc_signal< sc_lv<64> > tmp_data_V_reg_1771;
    sc_signal< sc_lv<1> > tmp_i_i_i_i_fu_516_p2;
    sc_signal< sc_lv<8> > bpf_opCode_V_load_reg_1783;
    sc_signal< sc_lv<1> > tmp_241_i_i_i_i_fu_553_p2;
    sc_signal< sc_lv<1> > tmp_245_i_i_i_i_fu_563_p2;
    sc_signal< sc_lv<1> > tmp_247_i_i_i_i_fu_569_p2;
    sc_signal< sc_lv<1> > tmp_250_i_i_i_i_fu_575_p2;
    sc_signal< sc_lv<1> > tmp_254_i_i_i_i_fu_585_p2;
    sc_signal< sc_lv<1> > tmp_259_i_i_i_i_fu_591_p2;
    sc_signal< sc_lv<1> > tmp_269_i_i_i_i_fu_629_p2;
    sc_signal< sc_lv<64> > p_Result_65_fu_787_p2;
    sc_signal< sc_lv<64> > p_Result_65_reg_1816;
    sc_signal< sc_lv<1> > tmp_275_i_i_i_i_fu_795_p2;
    sc_signal< sc_lv<1> > or_cond_i_i_i_i_fu_986_p2;
    sc_signal< sc_lv<1> > tmp_258_i_i_i_i_fu_419_p2;
    sc_signal< sc_lv<1> > tmp_522_fu_439_p2;
    sc_signal< sc_lv<1> > tmp_274_i_i_i_i_fu_1107_p2;
    sc_signal< sc_lv<64> > p_Result_63_fu_1426_p2;
    sc_signal< sc_lv<64> > p_Result_63_reg_1841;
    sc_signal< sc_lv<1> > tmp_253_i_i_i_i_fu_1453_p2;
    sc_signal< sc_lv<1> > icmp6_fu_1459_p2;
    sc_signal< sc_lv<1> > icmp9_fu_1475_p2;
    sc_signal< sc_lv<1> > tmp_246_i_i_i_i_fu_424_p2;
    sc_signal< sc_lv<1> > tmp_510_fu_445_p2;
    sc_signal< sc_lv<1> > tmp_251_i_i_i_i_fu_1539_p2;
    sc_signal< sc_lv<17> > tmp_244_i_i_i_i_fu_1583_p2;
    sc_signal< sc_lv<17> > tmp_244_i_i_i_i_reg_1870;
    sc_signal< sc_lv<108> > tmp_504_fu_1601_p1;
    sc_signal< sc_lv<108> > tmp_504_reg_1875;
    sc_signal< sc_lv<8> > grp_fu_486_p4;
    sc_signal< sc_lv<8> > p_Result_61_i_i_i_s_reg_1880;
    sc_signal< sc_lv<64> > ap_phi_mux_valueTempBuffer_V_ne_1_phi_fu_332_p4;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_1_reg_329;
    sc_signal< sc_lv<64> > p_Result_55_fu_967_p2;
    sc_signal< sc_lv<64> > ap_phi_mux_valueTempBuffer_V_ne_2_phi_fu_341_p4;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_2_reg_338;
    sc_signal< sc_lv<17> > ap_phi_mux_storemerge1_i_i_i_i_phi_fu_351_p4;
    sc_signal< sc_lv<17> > tmp_419_i_i_i_i_fu_1010_p3;
    sc_signal< sc_lv<17> > ap_phi_reg_pp0_iter0_storemerge1_i_i_i_i_reg_348;
    sc_signal< sc_lv<64> > ap_phi_mux_valueTempBuffer_V_ne_phi_fu_361_p4;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_reg_358;
    sc_signal< sc_lv<64> > p_Result_49_fu_1273_p2;
    sc_signal< sc_lv<2> > ap_phi_mux_storemerge28_i_i_i_i_phi_fu_370_p4;
    sc_signal< sc_lv<2> > ap_phi_reg_pp0_iter0_storemerge28_i_i_i_i_reg_367;
    sc_signal< sc_lv<1> > ap_phi_mux_valueTempBuffer_V_fl_phi_fu_381_p8;
    sc_signal< sc_lv<1> > ap_phi_reg_pp0_iter0_valueTempBuffer_V_fl_reg_378;
    sc_signal< sc_lv<64> > ap_phi_mux_valueTempBuffer_V_ne_3_phi_fu_399_p8;
    sc_signal< sc_lv<64> > ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_3_reg_396;
    sc_signal< sc_lv<64> > p_Result_60_fu_1654_p1;
    sc_signal< sc_lv<248> > p_Result_59_fu_1704_p5;
    sc_signal< sc_lv<4> > storemerge28_cast_ca_fu_1437_p1;
    sc_signal< sc_lv<4> > tmp_546_fu_1481_p3;
    sc_signal< sc_lv<4> > storemerge_cast_cast_fu_1495_p3;
    sc_signal< sc_lv<4> > grp_fu_472_p3;
    sc_signal< sc_lv<248> > p_Result_s_fu_1726_p5;
    sc_signal< sc_lv<8> > tmp_281_i_i_i_i_fu_1515_p2;
    sc_signal< sc_lv<4> > tmp_505_fu_1749_p1;
    sc_signal< sc_lv<17> > storemerge27_i_i_i_i_fu_1093_p3;
    sc_signal< sc_lv<17> > tmp_248_i_i_i_i_fu_1527_p2;
    sc_signal< sc_lv<8> > tmp_263_i_i_i_i_fu_1039_p3;
    sc_signal< sc_lv<1> > grp_fu_434_p2;
    sc_signal< sc_lv<1> > grp_fu_429_p2;
    sc_signal< sc_lv<5> > grp_fu_457_p4;
    sc_signal< sc_lv<1> > grp_fu_466_p2;
    sc_signal< sc_lv<1> > tmp_36_i_fu_541_p2;
    sc_signal< sc_lv<1> > tmp_i_fu_535_p2;
    sc_signal< sc_lv<5> > tmp_71_i_fu_601_p4;
    sc_signal< sc_lv<6> > tmp_267_cast_i_i_i_i_fu_611_p1;
    sc_signal< sc_lv<6> > op2_assign_1_i_fu_615_p2;
    sc_signal< sc_lv<18> > tmp_268_cast_i_i_i_i_fu_625_p1;
    sc_signal< sc_lv<18> > op2_assign_1_cast_i_s_fu_621_p1;
    sc_signal< sc_lv<7> > tmp_523_fu_635_p1;
    sc_signal< sc_lv<64> > tmp_524_fu_639_p1;
    sc_signal< sc_lv<64> > tmp_525_fu_643_p2;
    sc_signal< sc_lv<2> > tmp_527_fu_655_p4;
    sc_signal< sc_lv<26> > tmp_528_fu_665_p1;
    sc_signal< sc_lv<7> > tmp_529_fu_675_p1;
    sc_signal< sc_lv<1> > icmp4_fu_669_p2;
    sc_signal< sc_lv<7> > tmp_530_fu_679_p2;
    sc_signal< sc_lv<7> > p_op_fu_701_p2;
    sc_signal< sc_lv<7> > tmp_532_fu_693_p3;
    sc_signal< sc_lv<7> > tmp_531_fu_685_p3;
    sc_signal< sc_lv<7> > tmp_533_fu_707_p3;
    sc_signal< sc_lv<64> > p_Result_64_fu_649_p2;
    sc_signal< sc_lv<64> > tmp_534_fu_715_p1;
    sc_signal< sc_lv<64> > tmp_537_fu_727_p2;
    sc_signal< sc_lv<64> > tmp_538_fu_733_p4;
    sc_signal< sc_lv<64> > tmp_535_fu_719_p1;
    sc_signal< sc_lv<64> > tmp_536_fu_723_p1;
    sc_signal< sc_lv<64> > tmp_540_fu_751_p2;
    sc_signal< sc_lv<64> > tmp_541_fu_757_p2;
    sc_signal< sc_lv<64> > p_demorgan_fu_763_p2;
    sc_signal< sc_lv<64> > tmp_542_fu_769_p2;
    sc_signal< sc_lv<64> > tmp_539_fu_743_p3;
    sc_signal< sc_lv<64> > tmp_543_fu_775_p2;
    sc_signal< sc_lv<64> > tmp_544_fu_781_p2;
    sc_signal< sc_lv<16> > tmp_595_fu_801_p1;
    sc_signal< sc_lv<16> > tmp_278_i_i_i_i_fu_805_p1;
    sc_signal< sc_lv<9> > Lo_assign_16_cast11_s_fu_597_p1;
    sc_signal< sc_lv<9> > Lo_assign_10_i_fu_819_p2;
    sc_signal< sc_lv<3> > tmp_597_fu_825_p4;
    sc_signal< sc_lv<26> > tmp_598_fu_835_p1;
    sc_signal< sc_lv<7> > tmp_599_fu_845_p1;
    sc_signal< sc_lv<1> > icmp8_fu_839_p2;
    sc_signal< sc_lv<7> > tmp_601_fu_859_p2;
    sc_signal< sc_lv<7> > tmp_603_fu_871_p2;
    sc_signal< sc_lv<64> > tmp_600_fu_849_p4;
    sc_signal< sc_lv<7> > tmp_602_fu_865_p2;
    sc_signal< sc_lv<7> > tmp_604_fu_877_p3;
    sc_signal< sc_lv<7> > tmp_606_fu_893_p3;
    sc_signal< sc_lv<7> > tmp_607_fu_901_p2;
    sc_signal< sc_lv<64> > tmp_605_fu_885_p3;
    sc_signal< sc_lv<64> > tmp_608_fu_907_p1;
    sc_signal< sc_lv<64> > tmp_609_fu_911_p1;
    sc_signal< sc_lv<64> > tmp_610_fu_915_p2;
    sc_signal< sc_lv<64> > tmp_611_fu_921_p2;
    sc_signal< sc_lv<7> > tmp_596_fu_815_p1;
    sc_signal< sc_lv<7> > tmp_613_fu_933_p2;
    sc_signal< sc_lv<64> > tmp_614_fu_939_p1;
    sc_signal< sc_lv<64> > tmp_615_fu_943_p2;
    sc_signal< sc_lv<64> > tmp_616_fu_949_p2;
    sc_signal< sc_lv<64> > p_Result_66_fu_927_p2;
    sc_signal< sc_lv<64> > tmp_617_fu_955_p2;
    sc_signal< sc_lv<64> > tmp_618_fu_961_p2;
    sc_signal< sc_lv<16> > valueTemp_fu_809_p2;
    sc_signal< sc_lv<1> > tmp_279_i_i_i_i_fu_974_p2;
    sc_signal< sc_lv<1> > tmp_280_i_i_i_i_fu_980_p2;
    sc_signal< sc_lv<1> > tmp_282_i_i_i_i_fu_998_p2;
    sc_signal< sc_lv<17> > tmp_283_i_i_i_i_fu_1004_p2;
    sc_signal< sc_lv<5> > tmp_518_fu_1025_p1;
    sc_signal< sc_lv<5> > tmp_261_i_i_i_i_fu_1029_p2;
    sc_signal< sc_lv<9> > tmp_264_cast_i_i_i_i_fu_1053_p1;
    sc_signal< sc_lv<9> > op2_assign_i_fu_1057_p2;
    sc_signal< sc_lv<18> > tmp_265_cast_i_i_i_i_fu_1067_p1;
    sc_signal< sc_lv<18> > op2_assign_cast_i_i_s_fu_1063_p1;
    sc_signal< sc_lv<9> > p_0283_i_i_i_i_fu_1077_p2;
    sc_signal< sc_lv<17> > p_0283_cast_i_i_i_i_fu_1083_p1;
    sc_signal< sc_lv<1> > tmp_266_i_i_i_i_fu_1071_p2;
    sc_signal< sc_lv<17> > tmp_273_i_i_i_i_fu_1087_p2;
    sc_signal< sc_lv<4> > tmp_519_fu_1035_p1;
    sc_signal< sc_lv<9> > tmp_276_cast_i_i_i_i_fu_1113_p1;
    sc_signal< sc_lv<9> > Lo_assign_i_fu_1125_p2;
    sc_signal< sc_lv<3> > tmp_572_fu_1131_p4;
    sc_signal< sc_lv<26> > tmp_573_fu_1141_p1;
    sc_signal< sc_lv<7> > tmp_574_fu_1151_p1;
    sc_signal< sc_lv<1> > icmp7_fu_1145_p2;
    sc_signal< sc_lv<7> > tmp_576_fu_1165_p2;
    sc_signal< sc_lv<7> > tmp_578_fu_1177_p2;
    sc_signal< sc_lv<64> > tmp_575_fu_1155_p4;
    sc_signal< sc_lv<7> > tmp_577_fu_1171_p2;
    sc_signal< sc_lv<7> > tmp_579_fu_1183_p3;
    sc_signal< sc_lv<7> > tmp_581_fu_1199_p3;
    sc_signal< sc_lv<7> > tmp_582_fu_1207_p2;
    sc_signal< sc_lv<64> > tmp_580_fu_1191_p3;
    sc_signal< sc_lv<64> > tmp_583_fu_1213_p1;
    sc_signal< sc_lv<64> > tmp_584_fu_1217_p1;
    sc_signal< sc_lv<64> > tmp_585_fu_1221_p2;
    sc_signal< sc_lv<64> > tmp_586_fu_1227_p2;
    sc_signal< sc_lv<7> > tmp_571_fu_1117_p3;
    sc_signal< sc_lv<7> > tmp_588_fu_1239_p2;
    sc_signal< sc_lv<64> > tmp_589_fu_1245_p1;
    sc_signal< sc_lv<64> > tmp_590_fu_1249_p2;
    sc_signal< sc_lv<64> > tmp_591_fu_1255_p2;
    sc_signal< sc_lv<64> > p_Result_61_fu_1233_p2;
    sc_signal< sc_lv<64> > tmp_592_fu_1261_p2;
    sc_signal< sc_lv<64> > tmp_593_fu_1267_p2;
    sc_signal< sc_lv<4> > tmp_548_fu_1284_p1;
    sc_signal< sc_lv<26> > tmp_550_fu_1296_p1;
    sc_signal< sc_lv<4> > tmp_547_fu_1280_p1;
    sc_signal< sc_lv<7> > tmp_551_fu_1306_p3;
    sc_signal< sc_lv<1> > icmp5_fu_1300_p2;
    sc_signal< sc_lv<7> > tmp_553_fu_1324_p2;
    sc_signal< sc_lv<7> > tmp_555_fu_1336_p2;
    sc_signal< sc_lv<64> > tmp_552_fu_1314_p4;
    sc_signal< sc_lv<7> > tmp_554_fu_1330_p2;
    sc_signal< sc_lv<7> > tmp_556_fu_1342_p3;
    sc_signal< sc_lv<7> > tmp_558_fu_1358_p3;
    sc_signal< sc_lv<7> > tmp_559_fu_1366_p2;
    sc_signal< sc_lv<64> > tmp_557_fu_1350_p3;
    sc_signal< sc_lv<64> > tmp_560_fu_1372_p1;
    sc_signal< sc_lv<64> > tmp_561_fu_1376_p1;
    sc_signal< sc_lv<64> > tmp_562_fu_1380_p2;
    sc_signal< sc_lv<64> > tmp_563_fu_1386_p2;
    sc_signal< sc_lv<7> > Lo_assign_15_cast_i_s_fu_1288_p3;
    sc_signal< sc_lv<64> > tmp_565_fu_1398_p1;
    sc_signal< sc_lv<64> > tmp_566_fu_1402_p2;
    sc_signal< sc_lv<64> > tmp_567_fu_1408_p2;
    sc_signal< sc_lv<64> > p_Result_62_fu_1392_p2;
    sc_signal< sc_lv<64> > tmp_568_fu_1414_p2;
    sc_signal< sc_lv<64> > tmp_569_fu_1420_p2;
    sc_signal< sc_lv<3> > storemerge28_cast22_s_fu_1433_p1;
    sc_signal< sc_lv<4> > tmp_517_fu_1465_p4;
    sc_signal< sc_lv<1> > tmp_37_i_fu_547_p2;
    sc_signal< sc_lv<1> > tmp_506_fu_1561_p3;
    sc_signal< sc_lv<8> > p_Result_i_i_i_i_s_fu_1551_p4;
    sc_signal< sc_lv<17> > tmp_242_i_i_i_i_fu_1569_p4;
    sc_signal< sc_lv<17> > tmp_243_i_i_i_i_fu_1579_p1;
    sc_signal< sc_lv<32> > tmp_511_fu_1651_p1;
    sc_signal< sc_lv<248> > p_Result_56_fu_1659_p5;
    sc_signal< sc_lv<248> > p_Result_57_fu_1671_p5;
    sc_signal< sc_lv<30> > tmp_507_fu_1682_p1;
    sc_signal< sc_lv<248> > p_Result_58_fu_1685_p5;
    sc_signal< sc_lv<25> > tmp_71_i_i_i_i_fu_1697_p3;
    sc_signal< sc_lv<124> > loc_V_trunc_i_i_i_i_fu_1723_p1;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< bool > ap_condition_433;
    sc_signal< bool > ap_condition_430;
    sc_signal< bool > ap_condition_408;
    sc_signal< bool > ap_condition_1333;
    sc_signal< bool > ap_condition_1351;
    sc_signal< bool > ap_condition_1355;
    sc_signal< bool > ap_condition_1358;
    sc_signal< bool > ap_condition_253;
    sc_signal< bool > ap_condition_468;
    sc_signal< bool > ap_condition_168;
    sc_signal< bool > ap_condition_517;
    sc_signal< bool > ap_condition_452;
    sc_signal< bool > ap_condition_1372;
    sc_signal< bool > ap_condition_268;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<248> ap_const_lv248_lc_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<6> ap_const_lv6_8;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFFFF;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<26> ap_const_lv26_0;
    static const sc_lv<7> ap_const_lv7_3F;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<9> ap_const_lv9_40;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<7> ap_const_lv7_41;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<16> ap_const_lv16_8;
    static const sc_lv<17> ap_const_lv17_8;
    static const sc_lv<17> ap_const_lv17_1FFF8;
    static const sc_lv<5> ap_const_lv5_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<9> ap_const_lv9_8;
    static const sc_lv<9> ap_const_lv9_1F8;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<8> ap_const_lv8_F8;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_78;
    static const sc_lv<32> ap_const_lv32_7B;
    static const sc_lv<32> ap_const_lv32_68;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_55;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_F7;
    static const sc_lv<108> ap_const_lv108_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Lo_assign_10_i_fu_819_p2();
    void thread_Lo_assign_15_cast_i_s_fu_1288_p3();
    void thread_Lo_assign_16_cast11_s_fu_597_p1();
    void thread_Lo_assign_i_fu_1125_p2();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_condition_1333();
    void thread_ap_condition_1351();
    void thread_ap_condition_1355();
    void thread_ap_condition_1358();
    void thread_ap_condition_1372();
    void thread_ap_condition_168();
    void thread_ap_condition_253();
    void thread_ap_condition_268();
    void thread_ap_condition_408();
    void thread_ap_condition_430();
    void thread_ap_condition_433();
    void thread_ap_condition_452();
    void thread_ap_condition_468();
    void thread_ap_condition_517();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_storemerge1_i_i_i_i_phi_fu_351_p4();
    void thread_ap_phi_mux_storemerge28_i_i_i_i_phi_fu_370_p4();
    void thread_ap_phi_mux_valueTempBuffer_V_fl_phi_fu_381_p8();
    void thread_ap_phi_mux_valueTempBuffer_V_ne_1_phi_fu_332_p4();
    void thread_ap_phi_mux_valueTempBuffer_V_ne_2_phi_fu_341_p4();
    void thread_ap_phi_mux_valueTempBuffer_V_ne_3_phi_fu_399_p8();
    void thread_ap_phi_mux_valueTempBuffer_V_ne_phi_fu_361_p4();
    void thread_ap_phi_reg_pp0_iter0_storemerge1_i_i_i_i_reg_348();
    void thread_ap_phi_reg_pp0_iter0_storemerge28_i_i_i_i_reg_367();
    void thread_ap_phi_reg_pp0_iter0_valueTempBuffer_V_fl_reg_378();
    void thread_ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_1_reg_329();
    void thread_ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_2_reg_338();
    void thread_ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_3_reg_396();
    void thread_ap_phi_reg_pp0_iter0_valueTempBuffer_V_ne_reg_358();
    void thread_ap_predicate_op405_write_state2();
    void thread_ap_predicate_op407_write_state2();
    void thread_ap_predicate_op409_write_state2();
    void thread_ap_predicate_op417_write_state2();
    void thread_ap_predicate_op422_write_state2();
    void thread_ap_predicate_op439_write_state2();
    void thread_ap_predicate_op9_read_state1();
    void thread_ap_ready();
    void thread_flushAck_V_blk_n();
    void thread_flushAck_V_out_blk_n();
    void thread_flushAck_V_out_din();
    void thread_flushAck_V_out_write();
    void thread_flushAck_V_read();
    void thread_grp_fu_429_p2();
    void thread_grp_fu_434_p2();
    void thread_grp_fu_457_p4();
    void thread_grp_fu_466_p2();
    void thread_grp_fu_472_p3();
    void thread_grp_fu_486_p4();
    void thread_icmp4_fu_669_p2();
    void thread_icmp5_fu_1300_p2();
    void thread_icmp6_fu_1459_p2();
    void thread_icmp7_fu_1145_p2();
    void thread_icmp8_fu_839_p2();
    void thread_icmp9_fu_1475_p2();
    void thread_inData_TDATA_blk_n();
    void thread_inData_TREADY();
    void thread_internal_ap_ready();
    void thread_keyBuffer_rp_V_V_blk_n();
    void thread_keyBuffer_rp_V_V_din();
    void thread_keyBuffer_rp_V_V_write();
    void thread_lastValueWord_load_load_fu_495_p1();
    void thread_loc_V_trunc_i_i_i_i_fu_1723_p1();
    void thread_metadataBuffer_rp_V_s_blk_n();
    void thread_metadataBuffer_rp_V_s_din();
    void thread_metadataBuffer_rp_V_s_write();
    void thread_op2_assign_1_cast_i_s_fu_621_p1();
    void thread_op2_assign_1_i_fu_615_p2();
    void thread_op2_assign_cast_i_i_s_fu_1063_p1();
    void thread_op2_assign_i_fu_1057_p2();
    void thread_or_cond_i_i_i_i_fu_986_p2();
    void thread_p_0283_cast_i_i_i_i_fu_1083_p1();
    void thread_p_0283_i_i_i_i_fu_1077_p2();
    void thread_p_Result_49_fu_1273_p2();
    void thread_p_Result_55_fu_967_p2();
    void thread_p_Result_56_fu_1659_p5();
    void thread_p_Result_57_fu_1671_p5();
    void thread_p_Result_58_fu_1685_p5();
    void thread_p_Result_59_fu_1704_p5();
    void thread_p_Result_60_fu_1654_p1();
    void thread_p_Result_61_fu_1233_p2();
    void thread_p_Result_62_fu_1392_p2();
    void thread_p_Result_63_fu_1426_p2();
    void thread_p_Result_64_fu_649_p2();
    void thread_p_Result_65_fu_787_p2();
    void thread_p_Result_66_fu_927_p2();
    void thread_p_Result_i_i_i_i_s_fu_1551_p4();
    void thread_p_Result_s_fu_1726_p5();
    void thread_p_demorgan_fu_763_p2();
    void thread_p_op_fu_701_p2();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_storemerge27_i_i_i_i_fu_1093_p3();
    void thread_storemerge28_cast22_s_fu_1433_p1();
    void thread_storemerge28_cast_ca_fu_1437_p1();
    void thread_storemerge_cast_cast_fu_1495_p3();
    void thread_tmp_241_i_i_i_i_fu_553_p2();
    void thread_tmp_242_i_i_i_i_fu_1569_p4();
    void thread_tmp_243_i_i_i_i_fu_1579_p1();
    void thread_tmp_244_i_i_i_i_fu_1583_p2();
    void thread_tmp_245_i_i_i_i_fu_563_p2();
    void thread_tmp_246_i_i_i_i_fu_424_p2();
    void thread_tmp_247_i_i_i_i_fu_569_p2();
    void thread_tmp_248_i_i_i_i_fu_1527_p2();
    void thread_tmp_250_i_i_i_i_fu_575_p2();
    void thread_tmp_251_i_i_i_i_fu_1539_p2();
    void thread_tmp_253_i_i_i_i_fu_1453_p2();
    void thread_tmp_254_i_i_i_i_fu_585_p2();
    void thread_tmp_258_i_i_i_i_fu_419_p2();
    void thread_tmp_259_i_i_i_i_fu_591_p2();
    void thread_tmp_261_i_i_i_i_fu_1029_p2();
    void thread_tmp_263_i_i_i_i_fu_1039_p3();
    void thread_tmp_264_cast_i_i_i_i_fu_1053_p1();
    void thread_tmp_265_cast_i_i_i_i_fu_1067_p1();
    void thread_tmp_266_i_i_i_i_fu_1071_p2();
    void thread_tmp_267_cast_i_i_i_i_fu_611_p1();
    void thread_tmp_268_cast_i_i_i_i_fu_625_p1();
    void thread_tmp_269_i_i_i_i_fu_629_p2();
    void thread_tmp_273_i_i_i_i_fu_1087_p2();
    void thread_tmp_274_i_i_i_i_fu_1107_p2();
    void thread_tmp_275_i_i_i_i_fu_795_p2();
    void thread_tmp_276_cast_i_i_i_i_fu_1113_p1();
    void thread_tmp_278_i_i_i_i_fu_805_p1();
    void thread_tmp_279_i_i_i_i_fu_974_p2();
    void thread_tmp_280_i_i_i_i_fu_980_p2();
    void thread_tmp_281_i_i_i_i_fu_1515_p2();
    void thread_tmp_282_i_i_i_i_fu_998_p2();
    void thread_tmp_283_i_i_i_i_fu_1004_p2();
    void thread_tmp_36_i_fu_541_p2();
    void thread_tmp_37_i_fu_547_p2();
    void thread_tmp_419_i_i_i_i_fu_1010_p3();
    void thread_tmp_504_fu_1601_p1();
    void thread_tmp_505_fu_1749_p1();
    void thread_tmp_506_fu_1561_p3();
    void thread_tmp_507_fu_1682_p1();
    void thread_tmp_510_fu_445_p2();
    void thread_tmp_511_fu_1651_p1();
    void thread_tmp_517_fu_1465_p4();
    void thread_tmp_518_fu_1025_p1();
    void thread_tmp_519_fu_1035_p1();
    void thread_tmp_522_fu_439_p2();
    void thread_tmp_523_fu_635_p1();
    void thread_tmp_524_fu_639_p1();
    void thread_tmp_525_fu_643_p2();
    void thread_tmp_527_fu_655_p4();
    void thread_tmp_528_fu_665_p1();
    void thread_tmp_529_fu_675_p1();
    void thread_tmp_530_fu_679_p2();
    void thread_tmp_531_fu_685_p3();
    void thread_tmp_532_fu_693_p3();
    void thread_tmp_533_fu_707_p3();
    void thread_tmp_534_fu_715_p1();
    void thread_tmp_535_fu_719_p1();
    void thread_tmp_536_fu_723_p1();
    void thread_tmp_537_fu_727_p2();
    void thread_tmp_538_fu_733_p4();
    void thread_tmp_539_fu_743_p3();
    void thread_tmp_540_fu_751_p2();
    void thread_tmp_541_fu_757_p2();
    void thread_tmp_542_fu_769_p2();
    void thread_tmp_543_fu_775_p2();
    void thread_tmp_544_fu_781_p2();
    void thread_tmp_546_fu_1481_p3();
    void thread_tmp_547_fu_1280_p1();
    void thread_tmp_548_fu_1284_p1();
    void thread_tmp_550_fu_1296_p1();
    void thread_tmp_551_fu_1306_p3();
    void thread_tmp_552_fu_1314_p4();
    void thread_tmp_553_fu_1324_p2();
    void thread_tmp_554_fu_1330_p2();
    void thread_tmp_555_fu_1336_p2();
    void thread_tmp_556_fu_1342_p3();
    void thread_tmp_557_fu_1350_p3();
    void thread_tmp_558_fu_1358_p3();
    void thread_tmp_559_fu_1366_p2();
    void thread_tmp_560_fu_1372_p1();
    void thread_tmp_561_fu_1376_p1();
    void thread_tmp_562_fu_1380_p2();
    void thread_tmp_563_fu_1386_p2();
    void thread_tmp_565_fu_1398_p1();
    void thread_tmp_566_fu_1402_p2();
    void thread_tmp_567_fu_1408_p2();
    void thread_tmp_568_fu_1414_p2();
    void thread_tmp_569_fu_1420_p2();
    void thread_tmp_571_fu_1117_p3();
    void thread_tmp_572_fu_1131_p4();
    void thread_tmp_573_fu_1141_p1();
    void thread_tmp_574_fu_1151_p1();
    void thread_tmp_575_fu_1155_p4();
    void thread_tmp_576_fu_1165_p2();
    void thread_tmp_577_fu_1171_p2();
    void thread_tmp_578_fu_1177_p2();
    void thread_tmp_579_fu_1183_p3();
    void thread_tmp_580_fu_1191_p3();
    void thread_tmp_581_fu_1199_p3();
    void thread_tmp_582_fu_1207_p2();
    void thread_tmp_583_fu_1213_p1();
    void thread_tmp_584_fu_1217_p1();
    void thread_tmp_585_fu_1221_p2();
    void thread_tmp_586_fu_1227_p2();
    void thread_tmp_588_fu_1239_p2();
    void thread_tmp_589_fu_1245_p1();
    void thread_tmp_590_fu_1249_p2();
    void thread_tmp_591_fu_1255_p2();
    void thread_tmp_592_fu_1261_p2();
    void thread_tmp_593_fu_1267_p2();
    void thread_tmp_595_fu_801_p1();
    void thread_tmp_596_fu_815_p1();
    void thread_tmp_597_fu_825_p4();
    void thread_tmp_598_fu_835_p1();
    void thread_tmp_599_fu_845_p1();
    void thread_tmp_600_fu_849_p4();
    void thread_tmp_601_fu_859_p2();
    void thread_tmp_602_fu_865_p2();
    void thread_tmp_603_fu_871_p2();
    void thread_tmp_604_fu_877_p3();
    void thread_tmp_605_fu_885_p3();
    void thread_tmp_606_fu_893_p3();
    void thread_tmp_607_fu_901_p2();
    void thread_tmp_608_fu_907_p1();
    void thread_tmp_609_fu_911_p1();
    void thread_tmp_610_fu_915_p2();
    void thread_tmp_611_fu_921_p2();
    void thread_tmp_613_fu_933_p2();
    void thread_tmp_614_fu_939_p1();
    void thread_tmp_615_fu_943_p2();
    void thread_tmp_616_fu_949_p2();
    void thread_tmp_617_fu_955_p2();
    void thread_tmp_618_fu_961_p2();
    void thread_tmp_71_i_fu_601_p4();
    void thread_tmp_71_i_i_i_i_fu_1697_p3();
    void thread_tmp_i_fu_535_p2();
    void thread_tmp_i_i_i_i_fu_516_p2();
    void thread_tmp_i_i_i_i_reg_1779_pp0_iter0_reg();
    void thread_tmp_nbreadreq_fu_268_p6();
    void thread_valueBuffer_rp_V_V_blk_n();
    void thread_valueBuffer_rp_V_V_din();
    void thread_valueBuffer_rp_V_V_write();
    void thread_valueTemp_fu_809_p2();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
};

}

using namespace ap_rtl;

#endif
