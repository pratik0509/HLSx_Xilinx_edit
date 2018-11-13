// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dramModel_HH_
#define _dramModel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cmdAggregator.h"
#include "memAccess.h"
#include "fifo_w21_d16_A.h"

namespace ap_rtl {

struct dramModel : public sc_module {
    // Port declarations 14
    sc_in< sc_lv<40> > rdCmdIn_V_TDATA;
    sc_out< sc_lv<512> > rdDataOut_V_V_TDATA;
    sc_in< sc_lv<40> > wrCmdIn_V_TDATA;
    sc_in< sc_lv<512> > wrDataIn_V_V_TDATA;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > rdCmdIn_V_TVALID;
    sc_out< sc_logic > rdCmdIn_V_TREADY;
    sc_in< sc_logic > wrCmdIn_V_TVALID;
    sc_out< sc_logic > wrCmdIn_V_TREADY;
    sc_out< sc_logic > rdDataOut_V_V_TVALID;
    sc_in< sc_logic > rdDataOut_V_V_TREADY;
    sc_in< sc_logic > wrDataIn_V_V_TVALID;
    sc_out< sc_logic > wrDataIn_V_V_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dramModel(sc_module_name name);
    SC_HAS_PROCESS(dramModel);

    ~dramModel();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cmdAggregator* cmdAggregator_U0;
    memAccess* memAccess_U0;
    fifo_w21_d16_A* aggregateMemCmd_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > cmdAggregator_U0_ap_start;
    sc_signal< sc_logic > cmdAggregator_U0_ap_done;
    sc_signal< sc_logic > cmdAggregator_U0_ap_continue;
    sc_signal< sc_logic > cmdAggregator_U0_ap_idle;
    sc_signal< sc_logic > cmdAggregator_U0_ap_ready;
    sc_signal< sc_lv<21> > cmdAggregator_U0_aggregateMemCmd_V_din;
    sc_signal< sc_logic > cmdAggregator_U0_aggregateMemCmd_V_write;
    sc_signal< sc_logic > cmdAggregator_U0_rdCmdIn_V_TREADY;
    sc_signal< sc_logic > cmdAggregator_U0_wrCmdIn_V_TREADY;
    sc_signal< sc_logic > memAccess_U0_ap_start;
    sc_signal< sc_logic > memAccess_U0_ap_done;
    sc_signal< sc_logic > memAccess_U0_ap_continue;
    sc_signal< sc_logic > memAccess_U0_ap_idle;
    sc_signal< sc_logic > memAccess_U0_ap_ready;
    sc_signal< sc_logic > memAccess_U0_aggregateMemCmd_V_read;
    sc_signal< sc_lv<512> > memAccess_U0_rdDataOut_V_V_TDATA;
    sc_signal< sc_logic > memAccess_U0_rdDataOut_V_V_TVALID;
    sc_signal< sc_logic > memAccess_U0_wrDataIn_V_V_TREADY;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > aggregateMemCmd_V_full_n;
    sc_signal< sc_lv<21> > aggregateMemCmd_V_dout;
    sc_signal< sc_logic > aggregateMemCmd_V_empty_n;
    sc_signal< sc_logic > cmdAggregator_U0_start_full_n;
    sc_signal< sc_logic > cmdAggregator_U0_start_write;
    sc_signal< sc_logic > memAccess_U0_start_full_n;
    sc_signal< sc_logic > memAccess_U0_start_write;
    static const sc_lv<512> ap_const_lv512_lc_1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_cmdAggregator_U0_ap_continue();
    void thread_cmdAggregator_U0_ap_start();
    void thread_cmdAggregator_U0_start_full_n();
    void thread_cmdAggregator_U0_start_write();
    void thread_memAccess_U0_ap_continue();
    void thread_memAccess_U0_ap_start();
    void thread_memAccess_U0_start_full_n();
    void thread_memAccess_U0_start_write();
    void thread_rdCmdIn_V_TREADY();
    void thread_rdDataOut_V_V_TDATA();
    void thread_rdDataOut_V_V_TVALID();
    void thread_wrCmdIn_V_TREADY();
    void thread_wrDataIn_V_V_TREADY();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif