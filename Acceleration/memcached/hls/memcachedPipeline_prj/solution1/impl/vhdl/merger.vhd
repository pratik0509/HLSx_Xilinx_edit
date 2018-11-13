-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity merger is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    valueStoreDram2merge_1_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    valueStoreDram2merge_1_empty_n : IN STD_LOGIC;
    valueStoreDram2merge_1_read : OUT STD_LOGIC;
    valueStoreFlash2merg_1_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    valueStoreFlash2merg_1_empty_n : IN STD_LOGIC;
    valueStoreFlash2merg_1_read : OUT STD_LOGIC;
    merger2responseForma_1_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    merger2responseForma_1_full_n : IN STD_LOGIC;
    merger2responseForma_1_write : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC );
end;


architecture behav of merger is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv256_lc_1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal internal_ap_ready : STD_LOGIC;
    signal grp_nbreadreq_fu_44_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_nbreadreq_fu_52_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op8_read_state1 : BOOLEAN;
    signal ap_predicate_op11_read_state1 : BOOLEAN;
    signal ap_predicate_op16_read_state1 : BOOLEAN;
    signal ap_predicate_op21_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal mergerState_load_reg_137 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_reg_145 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_136_reg_149 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_predicate_op32_write_state2 : BOOLEAN;
    signal ap_predicate_op35_write_state2 : BOOLEAN;
    signal dramOrFlash_V_load_reg_141 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_135_reg_153 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_predicate_op39_write_state2 : BOOLEAN;
    signal tmp_134_reg_161 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_predicate_op43_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal mergerState : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal dramOrFlash_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal valueStoreFlash2merg_1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal merger2responseForma_1_blk_n : STD_LOGIC;
    signal valueStoreDram2merge_1_blk_n : STD_LOGIC;
    signal reg_91 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal reg_96 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal tmp_EOP_V_4_fu_121_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_EOP_V_fu_129_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_141 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
        elsif (ap_clk'event and ap_clk =  '1') then
            ap_CS_fsm <= ap_NS_fsm;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_done_reg <= ap_const_logic_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if ((ap_continue = ap_const_logic_1)) then 
                ap_done_reg <= ap_const_logic_0;
            elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                ap_done_reg <= ap_const_logic_1;
            end if; 
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                ap_enable_reg_pp0_iter1 <= real_start;
            end if; 
        end if;
    end process;


    dramOrFlash_V_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            dramOrFlash_V <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if ((ap_const_boolean_1 = ap_condition_141)) then
                if ((ap_predicate_op11_read_state1 = ap_const_boolean_1)) then 
                    dramOrFlash_V <= ap_const_lv1_0;
                elsif ((ap_predicate_op8_read_state1 = ap_const_boolean_1)) then 
                    dramOrFlash_V <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;


    dramOrFlash_V_load_reg_141_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            dramOrFlash_V_load_reg_141 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                dramOrFlash_V_load_reg_141 <= dramOrFlash_V;
            end if; 
        end if;
    end process;


    mergerState_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            mergerState <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if ((((tmp_EOP_V_4_fu_121_p3 = ap_const_lv1_1) and (grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (dramOrFlash_V = ap_const_lv1_0) and (mergerState = ap_const_lv1_1) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((dramOrFlash_V = ap_const_lv1_1) and (tmp_EOP_V_fu_129_p3 = ap_const_lv1_1) and (grp_nbreadreq_fu_52_p3 = ap_const_lv1_1) and (mergerState = ap_const_lv1_1) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
                mergerState <= ap_const_lv1_0;
            elsif ((((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)) or ((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) then 
                mergerState <= ap_const_lv1_1;
            end if; 
        end if;
    end process;


    mergerState_load_reg_137_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            mergerState_load_reg_137 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                mergerState_load_reg_137 <= mergerState;
            end if; 
        end if;
    end process;


    reg_91_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            reg_91 <= ap_const_lv256_lc_1;
        elsif (ap_clk'event and ap_clk =  '1') then
            if ((((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or ((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) then 
                reg_91 <= valueStoreDram2merge_1_dout;
            end if; 
        end if;
    end process;


    reg_96_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            reg_96 <= ap_const_lv256_lc_1;
        elsif (ap_clk'event and ap_clk =  '1') then
            if ((((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or ((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)))) then 
                reg_96 <= valueStoreFlash2merg_1_dout;
            end if; 
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            start_once_reg <= ap_const_logic_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                start_once_reg <= ap_const_logic_1;
            elsif ((internal_ap_ready = ap_const_logic_1)) then 
                start_once_reg <= ap_const_logic_0;
            end if; 
        end if;
    end process;


    tmp_134_reg_161_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp_134_reg_161 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((dramOrFlash_V = ap_const_lv1_1) and (mergerState = ap_const_lv1_1) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tmp_134_reg_161 <= (0=>valueStoreDram2merge_1_empty_n, others=>'-');
            end if; 
        end if;
    end process;


    tmp_135_reg_153_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp_135_reg_153 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((dramOrFlash_V = ap_const_lv1_0) and (mergerState = ap_const_lv1_1) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tmp_135_reg_153 <= (0=>valueStoreFlash2merg_1_empty_n, others=>'-');
            end if; 
        end if;
    end process;


    tmp_136_reg_149_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp_136_reg_149 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((grp_nbreadreq_fu_44_p3 = ap_const_lv1_0) and (mergerState = ap_const_lv1_0) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tmp_136_reg_149 <= (0=>valueStoreDram2merge_1_empty_n, others=>'-');
            end if; 
        end if;
    end process;


    tmp_reg_145_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp_reg_145 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((mergerState = ap_const_lv1_0) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tmp_reg_145 <= (0=>valueStoreFlash2merg_1_empty_n, others=>'-');
            end if; 
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(real_start, ap_done_reg, ap_enable_reg_pp0_iter1, valueStoreDram2merge_1_empty_n, ap_predicate_op8_read_state1, valueStoreFlash2merg_1_empty_n, ap_predicate_op11_read_state1, ap_predicate_op16_read_state1, ap_predicate_op21_read_state1, merger2responseForma_1_full_n, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((real_start = ap_const_logic_1) and ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(real_start, ap_done_reg, ap_enable_reg_pp0_iter1, valueStoreDram2merge_1_empty_n, ap_predicate_op8_read_state1, valueStoreFlash2merg_1_empty_n, ap_predicate_op11_read_state1, ap_predicate_op16_read_state1, ap_predicate_op21_read_state1, merger2responseForma_1_full_n, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((real_start = ap_const_logic_1) and ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(real_start, ap_done_reg, ap_enable_reg_pp0_iter1, valueStoreDram2merge_1_empty_n, ap_predicate_op8_read_state1, valueStoreFlash2merg_1_empty_n, ap_predicate_op11_read_state1, ap_predicate_op16_read_state1, ap_predicate_op21_read_state1, merger2responseForma_1_full_n, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((real_start = ap_const_logic_1) and ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(real_start, ap_done_reg, valueStoreDram2merge_1_empty_n, ap_predicate_op8_read_state1, valueStoreFlash2merg_1_empty_n, ap_predicate_op11_read_state1, ap_predicate_op16_read_state1, ap_predicate_op21_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or ((valueStoreFlash2merg_1_empty_n = ap_const_logic_0) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or ((valueStoreDram2merge_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(merger2responseForma_1_full_n, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)) or ((merger2responseForma_1_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_141_assign_proc : process(real_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_141 <= ((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= real_start;

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((real_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op11_read_state1_assign_proc : process(grp_nbreadreq_fu_44_p3, mergerState)
    begin
                ap_predicate_op11_read_state1 <= ((grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (mergerState = ap_const_lv1_0));
    end process;


    ap_predicate_op16_read_state1_assign_proc : process(grp_nbreadreq_fu_44_p3, mergerState, dramOrFlash_V)
    begin
                ap_predicate_op16_read_state1 <= ((grp_nbreadreq_fu_44_p3 = ap_const_lv1_1) and (dramOrFlash_V = ap_const_lv1_0) and (mergerState = ap_const_lv1_1));
    end process;


    ap_predicate_op21_read_state1_assign_proc : process(grp_nbreadreq_fu_52_p3, mergerState, dramOrFlash_V)
    begin
                ap_predicate_op21_read_state1 <= ((dramOrFlash_V = ap_const_lv1_1) and (grp_nbreadreq_fu_52_p3 = ap_const_lv1_1) and (mergerState = ap_const_lv1_1));
    end process;


    ap_predicate_op32_write_state2_assign_proc : process(mergerState_load_reg_137, tmp_reg_145, tmp_136_reg_149)
    begin
                ap_predicate_op32_write_state2 <= ((tmp_136_reg_149 = ap_const_lv1_1) and (tmp_reg_145 = ap_const_lv1_0) and (mergerState_load_reg_137 = ap_const_lv1_0));
    end process;


    ap_predicate_op35_write_state2_assign_proc : process(mergerState_load_reg_137, tmp_reg_145)
    begin
                ap_predicate_op35_write_state2 <= ((tmp_reg_145 = ap_const_lv1_1) and (mergerState_load_reg_137 = ap_const_lv1_0));
    end process;


    ap_predicate_op39_write_state2_assign_proc : process(mergerState_load_reg_137, dramOrFlash_V_load_reg_141, tmp_135_reg_153)
    begin
                ap_predicate_op39_write_state2 <= ((mergerState_load_reg_137 = ap_const_lv1_1) and (tmp_135_reg_153 = ap_const_lv1_1) and (dramOrFlash_V_load_reg_141 = ap_const_lv1_0));
    end process;


    ap_predicate_op43_write_state2_assign_proc : process(mergerState_load_reg_137, dramOrFlash_V_load_reg_141, tmp_134_reg_161)
    begin
                ap_predicate_op43_write_state2 <= ((mergerState_load_reg_137 = ap_const_lv1_1) and (tmp_134_reg_161 = ap_const_lv1_1) and (dramOrFlash_V_load_reg_141 = ap_const_lv1_1));
    end process;


    ap_predicate_op8_read_state1_assign_proc : process(grp_nbreadreq_fu_44_p3, grp_nbreadreq_fu_52_p3, mergerState)
    begin
                ap_predicate_op8_read_state1 <= ((grp_nbreadreq_fu_52_p3 = ap_const_lv1_1) and (grp_nbreadreq_fu_44_p3 = ap_const_lv1_0) and (mergerState = ap_const_lv1_0));
    end process;

    ap_ready <= internal_ap_ready;

    ap_reset_idle_pp0_assign_proc : process(real_start, ap_idle_pp0_0to0)
    begin
        if (((real_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_nbreadreq_fu_44_p3 <= (0=>valueStoreFlash2merg_1_empty_n, others=>'-');
    grp_nbreadreq_fu_52_p3 <= (0=>valueStoreDram2merge_1_empty_n, others=>'-');

    internal_ap_ready_assign_proc : process(real_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    merger2responseForma_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, merger2responseForma_1_full_n, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) then 
            merger2responseForma_1_blk_n <= merger2responseForma_1_full_n;
        else 
            merger2responseForma_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    merger2responseForma_1_din_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2, reg_91, reg_96, ap_block_pp0_stage0_01001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)))) then 
            merger2responseForma_1_din <= reg_96;
        elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) then 
            merger2responseForma_1_din <= reg_91;
        else 
            merger2responseForma_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    merger2responseForma_1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op32_write_state2, ap_predicate_op35_write_state2, ap_predicate_op39_write_state2, ap_predicate_op43_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op43_write_state2 = ap_const_boolean_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) then 
            merger2responseForma_1_write <= ap_const_logic_1;
        else 
            merger2responseForma_1_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_EOP_V_4_fu_121_p3 <= valueStoreFlash2merg_1_dout(127 downto 127);
    tmp_EOP_V_fu_129_p3 <= valueStoreDram2merge_1_dout(127 downto 127);

    valueStoreDram2merge_1_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_pp0_stage0, valueStoreDram2merge_1_empty_n, ap_predicate_op8_read_state1, ap_predicate_op21_read_state1, ap_block_pp0_stage0)
    begin
        if (((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or (not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) then 
            valueStoreDram2merge_1_blk_n <= valueStoreDram2merge_1_empty_n;
        else 
            valueStoreDram2merge_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    valueStoreDram2merge_1_read_assign_proc : process(real_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_predicate_op21_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op21_read_state1 = ap_const_boolean_1)) or ((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) then 
            valueStoreDram2merge_1_read <= ap_const_logic_1;
        else 
            valueStoreDram2merge_1_read <= ap_const_logic_0;
        end if; 
    end process;


    valueStoreFlash2merg_1_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_pp0_stage0, valueStoreFlash2merg_1_empty_n, ap_predicate_op11_read_state1, ap_predicate_op16_read_state1, ap_block_pp0_stage0)
    begin
        if (((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or (not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)))) then 
            valueStoreFlash2merg_1_blk_n <= valueStoreFlash2merg_1_empty_n;
        else 
            valueStoreFlash2merg_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    valueStoreFlash2merg_1_read_assign_proc : process(real_start, ap_CS_fsm_pp0_stage0, ap_predicate_op11_read_state1, ap_predicate_op16_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op16_read_state1 = ap_const_boolean_1)) or ((real_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op11_read_state1 = ap_const_boolean_1)))) then 
            valueStoreFlash2merg_1_read <= ap_const_logic_1;
        else 
            valueStoreFlash2merg_1_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;
