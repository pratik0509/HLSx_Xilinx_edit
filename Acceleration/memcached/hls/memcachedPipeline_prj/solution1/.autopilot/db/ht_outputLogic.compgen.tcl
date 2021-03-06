# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name memWr2out_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_memWr2out_V \
    op interface \
    ports { memWr2out_V_dout { I 57 vector } memWr2out_V_empty_n { I 1 bit } memWr2out_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name hashMdBuffer_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_hashMdBuffer_V_V \
    op interface \
    ports { hashMdBuffer_V_V_dout { I 128 vector } hashMdBuffer_V_V_empty_n { I 1 bit } hashMdBuffer_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name hashKeyBuffer_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_hashKeyBuffer_V_V \
    op interface \
    ports { hashKeyBuffer_V_V_dout { I 64 vector } hashKeyBuffer_V_V_empty_n { I 1 bit } hashKeyBuffer_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name hashValueBuffer_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_hashValueBuffer_V_V \
    op interface \
    ports { hashValueBuffer_V_V_dout { I 64 vector } hashValueBuffer_V_V_empty_n { I 1 bit } hashValueBuffer_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name hashTable2Dram_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_hashTable2Dram_V \
    op interface \
    ports { hashTable2Dram_V_din { O 256 vector } hashTable2Dram_V_full_n { I 1 bit } hashTable2Dram_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst false \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst false \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst false \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


