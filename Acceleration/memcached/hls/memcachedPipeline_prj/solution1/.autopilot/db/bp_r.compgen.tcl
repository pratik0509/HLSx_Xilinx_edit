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
    id 12 \
    name metadataBuffer_rp_V_s \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_metadataBuffer_rp_V_s \
    op interface \
    ports { metadataBuffer_rp_V_s_dout { I 248 vector } metadataBuffer_rp_V_s_empty_n { I 1 bit } metadataBuffer_rp_V_s_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name keyBuffer_rp_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_keyBuffer_rp_V_V \
    op interface \
    ports { keyBuffer_rp_V_V_dout { I 64 vector } keyBuffer_rp_V_V_empty_n { I 1 bit } keyBuffer_rp_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name valueBuffer_rp_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_valueBuffer_rp_V_V \
    op interface \
    ports { valueBuffer_rp_V_V_dout { I 64 vector } valueBuffer_rp_V_V_empty_n { I 1 bit } valueBuffer_rp_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name requestParser2hashTa_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_requestParser2hashTa_1 \
    op interface \
    ports { requestParser2hashTa_1_din { O 256 vector } requestParser2hashTa_1_full_n { I 1 bit } requestParser2hashTa_1_write { O 1 bit } } \
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

