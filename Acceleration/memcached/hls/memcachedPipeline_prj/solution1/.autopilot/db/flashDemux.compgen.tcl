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
    id 100 \
    name splitter2valueStoreF_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_splitter2valueStoreF_1 \
    op interface \
    ports { splitter2valueStoreF_1_dout { I 256 vector } splitter2valueStoreF_1_empty_n { I 1 bit } splitter2valueStoreF_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name flashMetadataBuffer_s_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_flashMetadataBuffer_s_0 \
    op interface \
    ports { flashMetadataBuffer_s_0_din { O 128 vector } flashMetadataBuffer_s_0_full_n { I 1 bit } flashMetadataBuffer_s_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name flashKeyBuffer_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_flashKeyBuffer_V_V \
    op interface \
    ports { flashKeyBuffer_V_V_din { O 64 vector } flashKeyBuffer_V_V_full_n { I 1 bit } flashKeyBuffer_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name flashDemux2getPath_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_flashDemux2getPath_V \
    op interface \
    ports { flashDemux2getPath_V_din { O 48 vector } flashDemux2getPath_V_full_n { I 1 bit } flashDemux2getPath_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name flashDemux2setPathMe_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_flashDemux2setPathMe_1 \
    op interface \
    ports { flashDemux2setPathMe_1_din { O 48 vector } flashDemux2setPathMe_1_full_n { I 1 bit } flashDemux2setPathMe_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name flashDemux2setPathVa_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_flashDemux2setPathVa_1 \
    op interface \
    ports { flashDemux2setPathVa_1_din { O 66 vector } flashDemux2setPathVa_1_full_n { I 1 bit } flashDemux2setPathVa_1_write { O 1 bit } } \
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


