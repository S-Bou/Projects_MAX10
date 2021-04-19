-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/19/2021 12:14:04"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	crono IS
    PORT (
	rest : IN std_logic;
	enab : IN std_logic;
	clk_i : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END crono;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enab	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF crono IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rest : std_logic;
SIGNAL ww_enab : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DIV|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rest~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV|Add0~0_combout\ : std_logic;
SIGNAL \DIV|contador~18_combout\ : std_logic;
SIGNAL \rest~input_o\ : std_logic;
SIGNAL \DIV|Add0~1\ : std_logic;
SIGNAL \DIV|Add0~2_combout\ : std_logic;
SIGNAL \DIV|Add0~3\ : std_logic;
SIGNAL \DIV|Add0~4_combout\ : std_logic;
SIGNAL \DIV|Add0~5\ : std_logic;
SIGNAL \DIV|Add0~6_combout\ : std_logic;
SIGNAL \DIV|Add0~7\ : std_logic;
SIGNAL \DIV|Add0~8_combout\ : std_logic;
SIGNAL \DIV|contador~19_combout\ : std_logic;
SIGNAL \DIV|Add0~9\ : std_logic;
SIGNAL \DIV|Add0~10_combout\ : std_logic;
SIGNAL \DIV|Add0~11\ : std_logic;
SIGNAL \DIV|Add0~12_combout\ : std_logic;
SIGNAL \DIV|Add0~13\ : std_logic;
SIGNAL \DIV|Add0~14_combout\ : std_logic;
SIGNAL \DIV|contador~20_combout\ : std_logic;
SIGNAL \DIV|Add0~15\ : std_logic;
SIGNAL \DIV|Add0~16_combout\ : std_logic;
SIGNAL \DIV|Add0~17\ : std_logic;
SIGNAL \DIV|Add0~18_combout\ : std_logic;
SIGNAL \DIV|Add0~19\ : std_logic;
SIGNAL \DIV|Add0~20_combout\ : std_logic;
SIGNAL \DIV|Add0~21\ : std_logic;
SIGNAL \DIV|Add0~22_combout\ : std_logic;
SIGNAL \DIV|Equal0~3_combout\ : std_logic;
SIGNAL \DIV|Add0~23\ : std_logic;
SIGNAL \DIV|Add0~24_combout\ : std_logic;
SIGNAL \DIV|contador~21_combout\ : std_logic;
SIGNAL \DIV|Add0~25\ : std_logic;
SIGNAL \DIV|Add0~26_combout\ : std_logic;
SIGNAL \DIV|Add0~27\ : std_logic;
SIGNAL \DIV|Add0~28_combout\ : std_logic;
SIGNAL \DIV|contador~22_combout\ : std_logic;
SIGNAL \DIV|Add0~29\ : std_logic;
SIGNAL \DIV|Add0~30_combout\ : std_logic;
SIGNAL \DIV|contador~23_combout\ : std_logic;
SIGNAL \DIV|Equal0~4_combout\ : std_logic;
SIGNAL \DIV|Equal0~2_combout\ : std_logic;
SIGNAL \DIV|Equal0~1_combout\ : std_logic;
SIGNAL \DIV|Equal0~5_combout\ : std_logic;
SIGNAL \DIV|Add0~31\ : std_logic;
SIGNAL \DIV|Add0~33\ : std_logic;
SIGNAL \DIV|Add0~34_combout\ : std_logic;
SIGNAL \DIV|contador~17_combout\ : std_logic;
SIGNAL \DIV|Add0~32_combout\ : std_logic;
SIGNAL \DIV|contador~16_combout\ : std_logic;
SIGNAL \DIV|Equal0~0_combout\ : std_logic;
SIGNAL \DIV|clk_sig~0_combout\ : std_logic;
SIGNAL \DIV|clk_sig~feeder_combout\ : std_logic;
SIGNAL \DIV|clk_sig~q\ : std_logic;
SIGNAL \DIV|clk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \MOD10_0|Qt[0]~3_combout\ : std_logic;
SIGNAL \rest~inputclkctrl_outclk\ : std_logic;
SIGNAL \enab~input_o\ : std_logic;
SIGNAL \MOD10_0|Qt~2_combout\ : std_logic;
SIGNAL \MOD10_0|Qt~0_combout\ : std_logic;
SIGNAL \MOD10_0|Qt[2]~1_combout\ : std_logic;
SIGNAL \SEG7_0|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_0|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_0|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_0|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_0|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_0|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_0|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_0|Equal0~0_combout\ : std_logic;
SIGNAL \MOD10_1|rco~0_combout\ : std_logic;
SIGNAL \MOD10_1|Qt[0]~3_combout\ : std_logic;
SIGNAL \MOD10_1|Qt[2]~1_combout\ : std_logic;
SIGNAL \MOD10_1|Qt~2_combout\ : std_logic;
SIGNAL \MOD10_1|Qt~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_2|Qt[0]~3_combout\ : std_logic;
SIGNAL \MOD10_1|Equal0~0_combout\ : std_logic;
SIGNAL \MOD10_1|rco~1_combout\ : std_logic;
SIGNAL \MOD10_2|Qt[2]~1_combout\ : std_logic;
SIGNAL \MOD10_2|Qt~2_combout\ : std_logic;
SIGNAL \MOD10_2|Qt~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_2|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_3|Qt[0]~2_combout\ : std_logic;
SIGNAL \MOD10_2|Equal0~0_combout\ : std_logic;
SIGNAL \MOD10_2|rco~0_combout\ : std_logic;
SIGNAL \MOD10_2|rco~1_combout\ : std_logic;
SIGNAL \MOD10_3|Qt~0_combout\ : std_logic;
SIGNAL \MOD10_3|Qt~1_combout\ : std_logic;
SIGNAL \SEG7_3|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_3|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_3|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_3|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_3|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_3|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_3|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_4|Qt[0]~3_combout\ : std_logic;
SIGNAL \SEG7_3|Mux2~1_combout\ : std_logic;
SIGNAL \MOD10_3|rco~0_combout\ : std_logic;
SIGNAL \MOD10_4|Qt~2_combout\ : std_logic;
SIGNAL \MOD10_4|Qt~0_combout\ : std_logic;
SIGNAL \MOD10_4|Qt[2]~1_combout\ : std_logic;
SIGNAL \SEG7_4|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_4|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_4|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_4|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_4|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_4|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_4|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_5|Qt[0]~2_combout\ : std_logic;
SIGNAL \MOD10_4|Equal0~0_combout\ : std_logic;
SIGNAL \MOD10_4|rco~0_combout\ : std_logic;
SIGNAL \MOD10_5|Qt~0_combout\ : std_logic;
SIGNAL \MOD10_5|Qt~1_combout\ : std_logic;
SIGNAL \SEG7_5|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_5|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_5|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_5|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_5|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_5|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_5|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_0|Qt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MOD10_1|Qt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MOD10_5|Qt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MOD10_2|Qt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MOD10_3|Qt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DIV|contador\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MOD10_4|Qt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7_5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG7_5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG7_3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG7_3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG7_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG7_0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rest <= rest;
ww_enab <= enab;
ww_clk_i <= clk_i;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\DIV|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV|clk_sig~q\);

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);

\rest~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rest~input_o\);
\SEG7_5|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_5|Mux0~0_combout\;
\SEG7_5|ALT_INV_Mux5~0_combout\ <= NOT \SEG7_5|Mux5~0_combout\;
\SEG7_5|ALT_INV_Mux6~0_combout\ <= NOT \SEG7_5|Mux6~0_combout\;
\SEG7_4|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_4|Mux0~0_combout\;
\SEG7_3|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_3|Mux0~0_combout\;
\SEG7_3|ALT_INV_Mux5~0_combout\ <= NOT \SEG7_3|Mux5~0_combout\;
\SEG7_3|ALT_INV_Mux6~0_combout\ <= NOT \SEG7_3|Mux6~0_combout\;
\SEG7_2|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_2|Mux0~0_combout\;
\SEG7_1|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_1|Mux0~0_combout\;
\SEG7_0|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk_i~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

-- Location: CLKCTRL_G3
\clk_i~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y4_N14
\DIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~0_combout\ = \DIV|contador\(0) $ (VCC)
-- \DIV|Add0~1\ = CARRY(\DIV|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(0),
	datad => VCC,
	combout => \DIV|Add0~0_combout\,
	cout => \DIV|Add0~1\);

-- Location: LCCOMB_X25_Y4_N8
\DIV|contador~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~18_combout\ = (\DIV|Add0~0_combout\ & (((!\DIV|Equal0~5_combout\) # (!\DIV|contador\(16))) # (!\DIV|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(17),
	datab => \DIV|contador\(16),
	datac => \DIV|Add0~0_combout\,
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|contador~18_combout\);

-- Location: IOIBUF_X0_Y18_N22
\rest~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rest,
	o => \rest~input_o\);

-- Location: FF_X25_Y4_N9
\DIV|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~18_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(0));

-- Location: LCCOMB_X25_Y4_N16
\DIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~2_combout\ = (\DIV|contador\(1) & (!\DIV|Add0~1\)) # (!\DIV|contador\(1) & ((\DIV|Add0~1\) # (GND)))
-- \DIV|Add0~3\ = CARRY((!\DIV|Add0~1\) # (!\DIV|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(1),
	datad => VCC,
	cin => \DIV|Add0~1\,
	combout => \DIV|Add0~2_combout\,
	cout => \DIV|Add0~3\);

-- Location: FF_X25_Y4_N17
\DIV|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~2_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(1));

-- Location: LCCOMB_X25_Y4_N18
\DIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~4_combout\ = (\DIV|contador\(2) & (\DIV|Add0~3\ $ (GND))) # (!\DIV|contador\(2) & (!\DIV|Add0~3\ & VCC))
-- \DIV|Add0~5\ = CARRY((\DIV|contador\(2) & !\DIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(2),
	datad => VCC,
	cin => \DIV|Add0~3\,
	combout => \DIV|Add0~4_combout\,
	cout => \DIV|Add0~5\);

-- Location: FF_X25_Y4_N19
\DIV|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~4_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(2));

-- Location: LCCOMB_X25_Y4_N20
\DIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~6_combout\ = (\DIV|contador\(3) & (!\DIV|Add0~5\)) # (!\DIV|contador\(3) & ((\DIV|Add0~5\) # (GND)))
-- \DIV|Add0~7\ = CARRY((!\DIV|Add0~5\) # (!\DIV|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(3),
	datad => VCC,
	cin => \DIV|Add0~5\,
	combout => \DIV|Add0~6_combout\,
	cout => \DIV|Add0~7\);

-- Location: FF_X25_Y4_N21
\DIV|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~6_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(3));

-- Location: LCCOMB_X25_Y4_N22
\DIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~8_combout\ = (\DIV|contador\(4) & (\DIV|Add0~7\ $ (GND))) # (!\DIV|contador\(4) & (!\DIV|Add0~7\ & VCC))
-- \DIV|Add0~9\ = CARRY((\DIV|contador\(4) & !\DIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(4),
	datad => VCC,
	cin => \DIV|Add0~7\,
	combout => \DIV|Add0~8_combout\,
	cout => \DIV|Add0~9\);

-- Location: LCCOMB_X25_Y4_N4
\DIV|contador~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~19_combout\ = (\DIV|Add0~8_combout\ & (((!\DIV|Equal0~5_combout\) # (!\DIV|contador\(17))) # (!\DIV|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Add0~8_combout\,
	datab => \DIV|contador\(16),
	datac => \DIV|contador\(17),
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|contador~19_combout\);

-- Location: FF_X25_Y4_N5
\DIV|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~19_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(4));

-- Location: LCCOMB_X25_Y4_N24
\DIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~10_combout\ = (\DIV|contador\(5) & (!\DIV|Add0~9\)) # (!\DIV|contador\(5) & ((\DIV|Add0~9\) # (GND)))
-- \DIV|Add0~11\ = CARRY((!\DIV|Add0~9\) # (!\DIV|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(5),
	datad => VCC,
	cin => \DIV|Add0~9\,
	combout => \DIV|Add0~10_combout\,
	cout => \DIV|Add0~11\);

-- Location: FF_X25_Y4_N25
\DIV|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~10_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(5));

-- Location: LCCOMB_X25_Y4_N26
\DIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~12_combout\ = (\DIV|contador\(6) & (\DIV|Add0~11\ $ (GND))) # (!\DIV|contador\(6) & (!\DIV|Add0~11\ & VCC))
-- \DIV|Add0~13\ = CARRY((\DIV|contador\(6) & !\DIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(6),
	datad => VCC,
	cin => \DIV|Add0~11\,
	combout => \DIV|Add0~12_combout\,
	cout => \DIV|Add0~13\);

-- Location: FF_X25_Y4_N27
\DIV|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~12_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(6));

-- Location: LCCOMB_X25_Y4_N28
\DIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~14_combout\ = (\DIV|contador\(7) & (!\DIV|Add0~13\)) # (!\DIV|contador\(7) & ((\DIV|Add0~13\) # (GND)))
-- \DIV|Add0~15\ = CARRY((!\DIV|Add0~13\) # (!\DIV|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(7),
	datad => VCC,
	cin => \DIV|Add0~13\,
	combout => \DIV|Add0~14_combout\,
	cout => \DIV|Add0~15\);

-- Location: LCCOMB_X25_Y4_N6
\DIV|contador~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~20_combout\ = (\DIV|Add0~14_combout\ & (((!\DIV|Equal0~5_combout\) # (!\DIV|contador\(16))) # (!\DIV|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(17),
	datab => \DIV|Add0~14_combout\,
	datac => \DIV|contador\(16),
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|contador~20_combout\);

-- Location: FF_X25_Y4_N7
\DIV|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~20_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(7));

-- Location: LCCOMB_X25_Y4_N30
\DIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~16_combout\ = (\DIV|contador\(8) & (\DIV|Add0~15\ $ (GND))) # (!\DIV|contador\(8) & (!\DIV|Add0~15\ & VCC))
-- \DIV|Add0~17\ = CARRY((\DIV|contador\(8) & !\DIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(8),
	datad => VCC,
	cin => \DIV|Add0~15\,
	combout => \DIV|Add0~16_combout\,
	cout => \DIV|Add0~17\);

-- Location: FF_X25_Y4_N31
\DIV|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~16_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(8));

-- Location: LCCOMB_X25_Y3_N0
\DIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~18_combout\ = (\DIV|contador\(9) & (!\DIV|Add0~17\)) # (!\DIV|contador\(9) & ((\DIV|Add0~17\) # (GND)))
-- \DIV|Add0~19\ = CARRY((!\DIV|Add0~17\) # (!\DIV|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(9),
	datad => VCC,
	cin => \DIV|Add0~17\,
	combout => \DIV|Add0~18_combout\,
	cout => \DIV|Add0~19\);

-- Location: FF_X25_Y3_N1
\DIV|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~18_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(9));

-- Location: LCCOMB_X25_Y3_N2
\DIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~20_combout\ = (\DIV|contador\(10) & (\DIV|Add0~19\ $ (GND))) # (!\DIV|contador\(10) & (!\DIV|Add0~19\ & VCC))
-- \DIV|Add0~21\ = CARRY((\DIV|contador\(10) & !\DIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(10),
	datad => VCC,
	cin => \DIV|Add0~19\,
	combout => \DIV|Add0~20_combout\,
	cout => \DIV|Add0~21\);

-- Location: FF_X25_Y3_N3
\DIV|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~20_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(10));

-- Location: LCCOMB_X25_Y3_N4
\DIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~22_combout\ = (\DIV|contador\(11) & (!\DIV|Add0~21\)) # (!\DIV|contador\(11) & ((\DIV|Add0~21\) # (GND)))
-- \DIV|Add0~23\ = CARRY((!\DIV|Add0~21\) # (!\DIV|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(11),
	datad => VCC,
	cin => \DIV|Add0~21\,
	combout => \DIV|Add0~22_combout\,
	cout => \DIV|Add0~23\);

-- Location: FF_X25_Y3_N5
\DIV|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~22_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(11));

-- Location: LCCOMB_X26_Y3_N18
\DIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~3_combout\ = (!\DIV|contador\(10) & (!\DIV|contador\(11) & (!\DIV|contador\(9) & !\DIV|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(10),
	datab => \DIV|contador\(11),
	datac => \DIV|contador\(9),
	datad => \DIV|contador\(8),
	combout => \DIV|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y3_N6
\DIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~24_combout\ = (\DIV|contador\(12) & (\DIV|Add0~23\ $ (GND))) # (!\DIV|contador\(12) & (!\DIV|Add0~23\ & VCC))
-- \DIV|Add0~25\ = CARRY((\DIV|contador\(12) & !\DIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(12),
	datad => VCC,
	cin => \DIV|Add0~23\,
	combout => \DIV|Add0~24_combout\,
	cout => \DIV|Add0~25\);

-- Location: LCCOMB_X25_Y3_N20
\DIV|contador~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~21_combout\ = (\DIV|Add0~24_combout\ & (((!\DIV|Equal0~5_combout\) # (!\DIV|contador\(17))) # (!\DIV|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(16),
	datab => \DIV|contador\(17),
	datac => \DIV|Equal0~5_combout\,
	datad => \DIV|Add0~24_combout\,
	combout => \DIV|contador~21_combout\);

-- Location: FF_X25_Y3_N21
\DIV|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~21_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(12));

-- Location: LCCOMB_X25_Y3_N8
\DIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~26_combout\ = (\DIV|contador\(13) & (!\DIV|Add0~25\)) # (!\DIV|contador\(13) & ((\DIV|Add0~25\) # (GND)))
-- \DIV|Add0~27\ = CARRY((!\DIV|Add0~25\) # (!\DIV|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(13),
	datad => VCC,
	cin => \DIV|Add0~25\,
	combout => \DIV|Add0~26_combout\,
	cout => \DIV|Add0~27\);

-- Location: FF_X25_Y3_N9
\DIV|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~26_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(13));

-- Location: LCCOMB_X25_Y3_N10
\DIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~28_combout\ = (\DIV|contador\(14) & (\DIV|Add0~27\ $ (GND))) # (!\DIV|contador\(14) & (!\DIV|Add0~27\ & VCC))
-- \DIV|Add0~29\ = CARRY((\DIV|contador\(14) & !\DIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(14),
	datad => VCC,
	cin => \DIV|Add0~27\,
	combout => \DIV|Add0~28_combout\,
	cout => \DIV|Add0~29\);

-- Location: LCCOMB_X25_Y3_N30
\DIV|contador~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~22_combout\ = (\DIV|Add0~28_combout\ & (((!\DIV|Equal0~5_combout\) # (!\DIV|contador\(17))) # (!\DIV|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(16),
	datab => \DIV|contador\(17),
	datac => \DIV|Equal0~5_combout\,
	datad => \DIV|Add0~28_combout\,
	combout => \DIV|contador~22_combout\);

-- Location: FF_X25_Y3_N31
\DIV|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~22_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(14));

-- Location: LCCOMB_X25_Y3_N12
\DIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~30_combout\ = (\DIV|contador\(15) & (!\DIV|Add0~29\)) # (!\DIV|contador\(15) & ((\DIV|Add0~29\) # (GND)))
-- \DIV|Add0~31\ = CARRY((!\DIV|Add0~29\) # (!\DIV|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(15),
	datad => VCC,
	cin => \DIV|Add0~29\,
	combout => \DIV|Add0~30_combout\,
	cout => \DIV|Add0~31\);

-- Location: LCCOMB_X25_Y3_N24
\DIV|contador~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~23_combout\ = (\DIV|Add0~30_combout\ & (((!\DIV|Equal0~5_combout\) # (!\DIV|contador\(17))) # (!\DIV|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(16),
	datab => \DIV|contador\(17),
	datac => \DIV|Equal0~5_combout\,
	datad => \DIV|Add0~30_combout\,
	combout => \DIV|contador~23_combout\);

-- Location: FF_X25_Y3_N25
\DIV|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~23_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(15));

-- Location: LCCOMB_X25_Y3_N18
\DIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~4_combout\ = (\DIV|contador\(14) & (\DIV|contador\(12) & (!\DIV|contador\(13) & \DIV|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(14),
	datab => \DIV|contador\(12),
	datac => \DIV|contador\(13),
	datad => \DIV|contador\(15),
	combout => \DIV|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y4_N12
\DIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~2_combout\ = (!\DIV|contador\(6) & (!\DIV|contador\(5) & (\DIV|contador\(4) & \DIV|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(6),
	datab => \DIV|contador\(5),
	datac => \DIV|contador\(4),
	datad => \DIV|contador\(7),
	combout => \DIV|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y4_N10
\DIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~1_combout\ = (!\DIV|contador\(3) & (!\DIV|contador\(1) & (!\DIV|contador\(0) & !\DIV|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(3),
	datab => \DIV|contador\(1),
	datac => \DIV|contador\(0),
	datad => \DIV|contador\(2),
	combout => \DIV|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y3_N0
\DIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~5_combout\ = (\DIV|Equal0~3_combout\ & (\DIV|Equal0~4_combout\ & (\DIV|Equal0~2_combout\ & \DIV|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~3_combout\,
	datab => \DIV|Equal0~4_combout\,
	datac => \DIV|Equal0~2_combout\,
	datad => \DIV|Equal0~1_combout\,
	combout => \DIV|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y3_N14
\DIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~32_combout\ = (\DIV|contador\(16) & (\DIV|Add0~31\ $ (GND))) # (!\DIV|contador\(16) & (!\DIV|Add0~31\ & VCC))
-- \DIV|Add0~33\ = CARRY((\DIV|contador\(16) & !\DIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(16),
	datad => VCC,
	cin => \DIV|Add0~31\,
	combout => \DIV|Add0~32_combout\,
	cout => \DIV|Add0~33\);

-- Location: LCCOMB_X25_Y3_N16
\DIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~34_combout\ = \DIV|Add0~33\ $ (\DIV|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DIV|contador\(17),
	cin => \DIV|Add0~33\,
	combout => \DIV|Add0~34_combout\);

-- Location: LCCOMB_X25_Y3_N28
\DIV|contador~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~17_combout\ = (\DIV|Add0~34_combout\ & (((!\DIV|contador\(17)) # (!\DIV|Equal0~5_combout\)) # (!\DIV|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(16),
	datab => \DIV|Equal0~5_combout\,
	datac => \DIV|contador\(17),
	datad => \DIV|Add0~34_combout\,
	combout => \DIV|contador~17_combout\);

-- Location: FF_X25_Y3_N29
\DIV|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~17_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(17));

-- Location: LCCOMB_X25_Y3_N22
\DIV|contador~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~16_combout\ = (\DIV|Add0~32_combout\ & (((!\DIV|contador\(16)) # (!\DIV|Equal0~5_combout\)) # (!\DIV|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(17),
	datab => \DIV|Equal0~5_combout\,
	datac => \DIV|contador\(16),
	datad => \DIV|Add0~32_combout\,
	combout => \DIV|contador~16_combout\);

-- Location: FF_X25_Y3_N23
\DIV|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~16_combout\,
	ena => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(16));

-- Location: LCCOMB_X25_Y3_N26
\DIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~0_combout\ = (\DIV|contador\(16) & \DIV|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV|contador\(16),
	datad => \DIV|contador\(17),
	combout => \DIV|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y3_N30
\DIV|clk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|clk_sig~0_combout\ = \DIV|clk_sig~q\ $ (((\DIV|Equal0~0_combout\ & (\rest~input_o\ & \DIV|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|clk_sig~q\,
	datac => \rest~input_o\,
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|clk_sig~0_combout\);

-- Location: LCCOMB_X26_Y3_N20
\DIV|clk_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|clk_sig~feeder_combout\ = \DIV|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|clk_sig~0_combout\,
	combout => \DIV|clk_sig~feeder_combout\);

-- Location: FF_X26_Y3_N21
\DIV|clk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|clk_sig~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|clk_sig~q\);

-- Location: CLKCTRL_G17
\DIV|clk_sig~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DIV|clk_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DIV|clk_sig~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y2_N4
\MOD10_0|Qt[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_0|Qt[0]~3_combout\ = !\MOD10_0|Qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_0|Qt\(0),
	combout => \MOD10_0|Qt[0]~3_combout\);

-- Location: CLKCTRL_G1
\rest~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rest~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rest~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y0_N22
\enab~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enab,
	o => \enab~input_o\);

-- Location: FF_X29_Y2_N5
\MOD10_0|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_0|Qt[0]~3_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \enab~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_0|Qt\(0));

-- Location: LCCOMB_X29_Y2_N10
\MOD10_0|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_0|Qt~2_combout\ = (\MOD10_0|Qt\(0) & ((\MOD10_0|Qt\(2) & (\MOD10_0|Qt\(3) $ (\MOD10_0|Qt\(1)))) # (!\MOD10_0|Qt\(2) & (\MOD10_0|Qt\(3) & \MOD10_0|Qt\(1))))) # (!\MOD10_0|Qt\(0) & (((\MOD10_0|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(0),
	datab => \MOD10_0|Qt\(2),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \MOD10_0|Qt~2_combout\);

-- Location: FF_X29_Y2_N11
\MOD10_0|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_0|Qt~2_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \enab~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_0|Qt\(3));

-- Location: LCCOMB_X29_Y2_N26
\MOD10_0|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_0|Qt~0_combout\ = (\MOD10_0|Qt\(1) & (((!\MOD10_0|Qt\(0))))) # (!\MOD10_0|Qt\(1) & (\MOD10_0|Qt\(0) & ((\MOD10_0|Qt\(2)) # (!\MOD10_0|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(3),
	datab => \MOD10_0|Qt\(2),
	datac => \MOD10_0|Qt\(1),
	datad => \MOD10_0|Qt\(0),
	combout => \MOD10_0|Qt~0_combout\);

-- Location: FF_X29_Y2_N27
\MOD10_0|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_0|Qt~0_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \enab~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_0|Qt\(1));

-- Location: LCCOMB_X29_Y2_N24
\MOD10_0|Qt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_0|Qt[2]~1_combout\ = \MOD10_0|Qt\(2) $ (((\MOD10_0|Qt\(0) & (\enab~input_o\ & \MOD10_0|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(0),
	datab => \enab~input_o\,
	datac => \MOD10_0|Qt\(2),
	datad => \MOD10_0|Qt\(1),
	combout => \MOD10_0|Qt[2]~1_combout\);

-- Location: FF_X29_Y2_N25
\MOD10_0|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_0|Qt[2]~1_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_0|Qt\(2));

-- Location: LCCOMB_X29_Y2_N20
\SEG7_0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux6~0_combout\ = (!\MOD10_0|Qt\(3) & (!\MOD10_0|Qt\(1) & (\MOD10_0|Qt\(2) $ (\MOD10_0|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y2_N18
\SEG7_0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux5~0_combout\ = (\MOD10_0|Qt\(2) & ((\MOD10_0|Qt\(3)) # (\MOD10_0|Qt\(0) $ (\MOD10_0|Qt\(1))))) # (!\MOD10_0|Qt\(2) & (((\MOD10_0|Qt\(3) & \MOD10_0|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y2_N8
\SEG7_0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux4~0_combout\ = (\MOD10_0|Qt\(2) & (((\MOD10_0|Qt\(3))))) # (!\MOD10_0|Qt\(2) & (\MOD10_0|Qt\(1) & ((\MOD10_0|Qt\(3)) # (!\MOD10_0|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y2_N22
\SEG7_0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux3~0_combout\ = (\MOD10_0|Qt\(1) & ((\MOD10_0|Qt\(3)) # ((\MOD10_0|Qt\(2) & \MOD10_0|Qt\(0))))) # (!\MOD10_0|Qt\(1) & (\MOD10_0|Qt\(2) $ (((\MOD10_0|Qt\(0) & !\MOD10_0|Qt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y2_N16
\SEG7_0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux2~0_combout\ = (\MOD10_0|Qt\(1) & (((\MOD10_0|Qt\(0) & !\MOD10_0|Qt\(3))))) # (!\MOD10_0|Qt\(1) & ((\MOD10_0|Qt\(2) & ((!\MOD10_0|Qt\(3)))) # (!\MOD10_0|Qt\(2) & (\MOD10_0|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y2_N14
\SEG7_0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux1~0_combout\ = (!\MOD10_0|Qt\(3) & ((\MOD10_0|Qt\(2) & (\MOD10_0|Qt\(0) & \MOD10_0|Qt\(1))) # (!\MOD10_0|Qt\(2) & ((\MOD10_0|Qt\(0)) # (\MOD10_0|Qt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y2_N28
\SEG7_0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_0|Mux0~0_combout\ = (\MOD10_0|Qt\(3)) # ((\MOD10_0|Qt\(2) & ((!\MOD10_0|Qt\(1)) # (!\MOD10_0|Qt\(0)))) # (!\MOD10_0|Qt\(2) & ((\MOD10_0|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(2),
	datab => \MOD10_0|Qt\(0),
	datac => \MOD10_0|Qt\(3),
	datad => \MOD10_0|Qt\(1),
	combout => \SEG7_0|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y2_N30
\MOD10_0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_0|Equal0~0_combout\ = (!\MOD10_0|Qt\(1) & (!\MOD10_0|Qt\(2) & (\MOD10_0|Qt\(0) & \MOD10_0|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_0|Qt\(1),
	datab => \MOD10_0|Qt\(2),
	datac => \MOD10_0|Qt\(0),
	datad => \MOD10_0|Qt\(3),
	combout => \MOD10_0|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y2_N12
\MOD10_1|rco~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|rco~0_combout\ = (\enab~input_o\ & (\MOD10_0|Equal0~0_combout\ & !\DIV|clk_sig~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enab~input_o\,
	datac => \MOD10_0|Equal0~0_combout\,
	datad => \DIV|clk_sig~q\,
	combout => \MOD10_1|rco~0_combout\);

-- Location: LCCOMB_X34_Y2_N28
\MOD10_1|Qt[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[0]~3_combout\ = !\MOD10_1|Qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_1|Qt\(0),
	combout => \MOD10_1|Qt[0]~3_combout\);

-- Location: FF_X34_Y2_N29
\MOD10_1|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt[0]~3_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_1|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(0));

-- Location: LCCOMB_X34_Y2_N12
\MOD10_1|Qt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[2]~1_combout\ = \MOD10_1|Qt\(2) $ (((\MOD10_1|Qt\(1) & (\MOD10_1|rco~0_combout\ & \MOD10_1|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|rco~0_combout\,
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(0),
	combout => \MOD10_1|Qt[2]~1_combout\);

-- Location: FF_X34_Y2_N13
\MOD10_1|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt[2]~1_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(2));

-- Location: LCCOMB_X34_Y2_N18
\MOD10_1|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt~2_combout\ = (\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(3) $ (((\MOD10_1|Qt\(2) & \MOD10_1|Qt\(0)))))) # (!\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(3) & ((\MOD10_1|Qt\(2)) # (!\MOD10_1|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(0),
	combout => \MOD10_1|Qt~2_combout\);

-- Location: FF_X34_Y2_N19
\MOD10_1|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt~2_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_1|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(3));

-- Location: LCCOMB_X34_Y2_N30
\MOD10_1|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt~0_combout\ = (\MOD10_1|Qt\(1) & (((!\MOD10_1|Qt\(0))))) # (!\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(0) & ((\MOD10_1|Qt\(2)) # (!\MOD10_1|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(3),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(1),
	datad => \MOD10_1|Qt\(0),
	combout => \MOD10_1|Qt~0_combout\);

-- Location: FF_X34_Y2_N31
\MOD10_1|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt~0_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_1|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(1));

-- Location: LCCOMB_X34_Y2_N8
\SEG7_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux6~0_combout\ = (!\MOD10_1|Qt\(1) & (!\MOD10_1|Qt\(3) & (\MOD10_1|Qt\(0) $ (\MOD10_1|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y2_N6
\SEG7_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux5~0_combout\ = (\MOD10_1|Qt\(2) & ((\MOD10_1|Qt\(3)) # (\MOD10_1|Qt\(1) $ (\MOD10_1|Qt\(0))))) # (!\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y2_N20
\SEG7_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux4~0_combout\ = (\MOD10_1|Qt\(2) & (((\MOD10_1|Qt\(3))))) # (!\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(3)) # (!\MOD10_1|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y2_N26
\SEG7_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux3~0_combout\ = (\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(3)) # ((\MOD10_1|Qt\(0) & \MOD10_1|Qt\(2))))) # (!\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(2) $ (((\MOD10_1|Qt\(0) & !\MOD10_1|Qt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y2_N24
\SEG7_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux2~0_combout\ = (\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(0) & ((!\MOD10_1|Qt\(3))))) # (!\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(2) & ((!\MOD10_1|Qt\(3)))) # (!\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y2_N22
\SEG7_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux1~0_combout\ = (!\MOD10_1|Qt\(3) & ((\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(0)) # (!\MOD10_1|Qt\(2)))) # (!\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(0) & !\MOD10_1|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y2_N16
\SEG7_1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux0~0_combout\ = (\MOD10_1|Qt\(3)) # ((\MOD10_1|Qt\(1) & ((!\MOD10_1|Qt\(2)) # (!\MOD10_1|Qt\(0)))) # (!\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(1),
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(3),
	combout => \SEG7_1|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y2_N4
\MOD10_2|Qt[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|Qt[0]~3_combout\ = !\MOD10_2|Qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_2|Qt\(0),
	combout => \MOD10_2|Qt[0]~3_combout\);

-- Location: LCCOMB_X34_Y2_N14
\MOD10_1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Equal0~0_combout\ = (!\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(3) & (!\MOD10_1|Qt\(1) & \MOD10_1|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(2),
	datab => \MOD10_1|Qt\(3),
	datac => \MOD10_1|Qt\(1),
	datad => \MOD10_1|Qt\(0),
	combout => \MOD10_1|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y2_N18
\MOD10_1|rco~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|rco~1_combout\ = (\enab~input_o\ & (\MOD10_0|Equal0~0_combout\ & (!\DIV|clk_sig~q\ & \MOD10_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enab~input_o\,
	datab => \MOD10_0|Equal0~0_combout\,
	datac => \DIV|clk_sig~q\,
	datad => \MOD10_1|Equal0~0_combout\,
	combout => \MOD10_1|rco~1_combout\);

-- Location: FF_X30_Y2_N5
\MOD10_2|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_2|Qt[0]~3_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_1|rco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_2|Qt\(0));

-- Location: LCCOMB_X30_Y2_N28
\MOD10_2|Qt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|Qt[2]~1_combout\ = \MOD10_2|Qt\(2) $ (((\MOD10_1|rco~1_combout\ & (\MOD10_2|Qt\(0) & \MOD10_2|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|rco~1_combout\,
	datab => \MOD10_2|Qt\(0),
	datac => \MOD10_2|Qt\(2),
	datad => \MOD10_2|Qt\(1),
	combout => \MOD10_2|Qt[2]~1_combout\);

-- Location: FF_X30_Y2_N29
\MOD10_2|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_2|Qt[2]~1_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_2|Qt\(2));

-- Location: LCCOMB_X30_Y2_N6
\MOD10_2|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|Qt~2_combout\ = (\MOD10_2|Qt\(2) & (\MOD10_2|Qt\(3) $ (((\MOD10_2|Qt\(0) & \MOD10_2|Qt\(1)))))) # (!\MOD10_2|Qt\(2) & (\MOD10_2|Qt\(3) & ((\MOD10_2|Qt\(1)) # (!\MOD10_2|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(2),
	datab => \MOD10_2|Qt\(0),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(1),
	combout => \MOD10_2|Qt~2_combout\);

-- Location: FF_X30_Y2_N7
\MOD10_2|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_2|Qt~2_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_1|rco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_2|Qt\(3));

-- Location: LCCOMB_X30_Y2_N10
\MOD10_2|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|Qt~0_combout\ = (\MOD10_2|Qt\(0) & (!\MOD10_2|Qt\(1) & ((\MOD10_2|Qt\(2)) # (!\MOD10_2|Qt\(3))))) # (!\MOD10_2|Qt\(0) & (((\MOD10_2|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(3),
	datac => \MOD10_2|Qt\(1),
	datad => \MOD10_2|Qt\(2),
	combout => \MOD10_2|Qt~0_combout\);

-- Location: FF_X30_Y2_N11
\MOD10_2|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_2|Qt~0_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_1|rco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_2|Qt\(1));

-- Location: LCCOMB_X30_Y2_N12
\SEG7_2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux6~0_combout\ = (!\MOD10_2|Qt\(1) & (!\MOD10_2|Qt\(3) & (\MOD10_2|Qt\(0) $ (\MOD10_2|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y2_N14
\SEG7_2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux5~0_combout\ = (\MOD10_2|Qt\(3) & (((\MOD10_2|Qt\(1)) # (\MOD10_2|Qt\(2))))) # (!\MOD10_2|Qt\(3) & (\MOD10_2|Qt\(2) & (\MOD10_2|Qt\(0) $ (\MOD10_2|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y2_N16
\SEG7_2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux4~0_combout\ = (\MOD10_2|Qt\(2) & (((\MOD10_2|Qt\(3))))) # (!\MOD10_2|Qt\(2) & (\MOD10_2|Qt\(1) & ((\MOD10_2|Qt\(3)) # (!\MOD10_2|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y2_N30
\SEG7_2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux3~0_combout\ = (\MOD10_2|Qt\(1) & ((\MOD10_2|Qt\(3)) # ((\MOD10_2|Qt\(0) & \MOD10_2|Qt\(2))))) # (!\MOD10_2|Qt\(1) & (\MOD10_2|Qt\(2) $ (((\MOD10_2|Qt\(0) & !\MOD10_2|Qt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y2_N24
\SEG7_2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux2~0_combout\ = (\MOD10_2|Qt\(1) & (\MOD10_2|Qt\(0) & (!\MOD10_2|Qt\(3)))) # (!\MOD10_2|Qt\(1) & ((\MOD10_2|Qt\(2) & ((!\MOD10_2|Qt\(3)))) # (!\MOD10_2|Qt\(2) & (\MOD10_2|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y2_N26
\SEG7_2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux1~0_combout\ = (!\MOD10_2|Qt\(3) & ((\MOD10_2|Qt\(0) & ((\MOD10_2|Qt\(1)) # (!\MOD10_2|Qt\(2)))) # (!\MOD10_2|Qt\(0) & (\MOD10_2|Qt\(1) & !\MOD10_2|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y2_N8
\SEG7_2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_2|Mux0~0_combout\ = (\MOD10_2|Qt\(3)) # ((\MOD10_2|Qt\(1) & ((!\MOD10_2|Qt\(2)) # (!\MOD10_2|Qt\(0)))) # (!\MOD10_2|Qt\(1) & ((\MOD10_2|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(0),
	datab => \MOD10_2|Qt\(1),
	datac => \MOD10_2|Qt\(3),
	datad => \MOD10_2|Qt\(2),
	combout => \SEG7_2|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y2_N2
\MOD10_3|Qt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_3|Qt[0]~2_combout\ = !\MOD10_3|Qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_3|Qt\(0),
	combout => \MOD10_3|Qt[0]~2_combout\);

-- Location: LCCOMB_X30_Y2_N20
\MOD10_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|Equal0~0_combout\ = (!\MOD10_2|Qt\(1) & (!\MOD10_2|Qt\(2) & (\MOD10_2|Qt\(0) & \MOD10_2|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_2|Qt\(1),
	datab => \MOD10_2|Qt\(2),
	datac => \MOD10_2|Qt\(0),
	datad => \MOD10_2|Qt\(3),
	combout => \MOD10_2|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y2_N24
\MOD10_2|rco~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|rco~0_combout\ = (\enab~input_o\ & \MOD10_2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enab~input_o\,
	datad => \MOD10_2|Equal0~0_combout\,
	combout => \MOD10_2|rco~0_combout\);

-- Location: LCCOMB_X32_Y2_N10
\MOD10_2|rco~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_2|rco~1_combout\ = (\MOD10_1|Equal0~0_combout\ & (\MOD10_0|Equal0~0_combout\ & (!\DIV|clk_sig~q\ & \MOD10_2|rco~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Equal0~0_combout\,
	datab => \MOD10_0|Equal0~0_combout\,
	datac => \DIV|clk_sig~q\,
	datad => \MOD10_2|rco~0_combout\,
	combout => \MOD10_2|rco~1_combout\);

-- Location: FF_X32_Y2_N3
\MOD10_3|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_3|Qt[0]~2_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_2|rco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_3|Qt\(0));

-- Location: LCCOMB_X32_Y2_N4
\MOD10_3|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_3|Qt~0_combout\ = (\MOD10_3|Qt\(1) & ((!\MOD10_3|Qt\(0)))) # (!\MOD10_3|Qt\(1) & (!\MOD10_3|Qt\(2) & \MOD10_3|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \MOD10_3|Qt~0_combout\);

-- Location: FF_X32_Y2_N5
\MOD10_3|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_3|Qt~0_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_2|rco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_3|Qt\(1));

-- Location: LCCOMB_X32_Y2_N28
\MOD10_3|Qt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_3|Qt~1_combout\ = (\MOD10_3|Qt\(2) & ((!\MOD10_3|Qt\(0)))) # (!\MOD10_3|Qt\(2) & (\MOD10_3|Qt\(1) & \MOD10_3|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(1),
	datac => \MOD10_3|Qt\(2),
	datad => \MOD10_3|Qt\(0),
	combout => \MOD10_3|Qt~1_combout\);

-- Location: FF_X32_Y2_N29
\MOD10_3|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_3|Qt~1_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_2|rco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_3|Qt\(2));

-- Location: LCCOMB_X32_Y2_N30
\SEG7_3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux6~0_combout\ = (\MOD10_3|Qt\(1)) # (\MOD10_3|Qt\(2) $ (!\MOD10_3|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y2_N20
\SEG7_3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux5~0_combout\ = (\MOD10_3|Qt\(1) $ (!\MOD10_3|Qt\(0))) # (!\MOD10_3|Qt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y2_N6
\SEG7_3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux4~0_combout\ = (!\MOD10_3|Qt\(2) & (\MOD10_3|Qt\(1) & !\MOD10_3|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y2_N4
\SEG7_3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux3~0_combout\ = (\MOD10_3|Qt\(1) & (\MOD10_3|Qt\(2) & \MOD10_3|Qt\(0))) # (!\MOD10_3|Qt\(1) & (\MOD10_3|Qt\(2) $ (\MOD10_3|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_3|Qt\(1),
	datab => \MOD10_3|Qt\(2),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y2_N16
\SEG7_3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux2~0_combout\ = (\MOD10_3|Qt\(0)) # ((\MOD10_3|Qt\(2) & !\MOD10_3|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y2_N14
\SEG7_3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux1~0_combout\ = (\MOD10_3|Qt\(2) & (\MOD10_3|Qt\(1) & \MOD10_3|Qt\(0))) # (!\MOD10_3|Qt\(2) & ((\MOD10_3|Qt\(1)) # (\MOD10_3|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y2_N8
\SEG7_3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux0~0_combout\ = (\MOD10_3|Qt\(2) & ((!\MOD10_3|Qt\(0)) # (!\MOD10_3|Qt\(1)))) # (!\MOD10_3|Qt\(2) & (\MOD10_3|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_3|Qt\(2),
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(0),
	combout => \SEG7_3|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y2_N10
\MOD10_4|Qt[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_4|Qt[0]~3_combout\ = !\MOD10_4|Qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_4|Qt\(0),
	combout => \MOD10_4|Qt[0]~3_combout\);

-- Location: LCCOMB_X32_Y2_N12
\SEG7_3|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_3|Mux2~1_combout\ = (!\MOD10_3|Qt\(1) & \MOD10_3|Qt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_3|Qt\(1),
	datad => \MOD10_3|Qt\(2),
	combout => \SEG7_3|Mux2~1_combout\);

-- Location: LCCOMB_X31_Y2_N20
\MOD10_3|rco~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_3|rco~0_combout\ = (\MOD10_1|rco~1_combout\ & (\MOD10_3|Qt\(0) & (\SEG7_3|Mux2~1_combout\ & \MOD10_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|rco~1_combout\,
	datab => \MOD10_3|Qt\(0),
	datac => \SEG7_3|Mux2~1_combout\,
	datad => \MOD10_2|Equal0~0_combout\,
	combout => \MOD10_3|rco~0_combout\);

-- Location: FF_X31_Y2_N11
\MOD10_4|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_4|Qt[0]~3_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_3|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_4|Qt\(0));

-- Location: LCCOMB_X31_Y2_N16
\MOD10_4|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_4|Qt~2_combout\ = (\MOD10_4|Qt\(0) & ((\MOD10_4|Qt\(2) & (\MOD10_4|Qt\(3) $ (\MOD10_4|Qt\(1)))) # (!\MOD10_4|Qt\(2) & (\MOD10_4|Qt\(3) & \MOD10_4|Qt\(1))))) # (!\MOD10_4|Qt\(0) & (((\MOD10_4|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(3),
	datad => \MOD10_4|Qt\(1),
	combout => \MOD10_4|Qt~2_combout\);

-- Location: FF_X31_Y2_N17
\MOD10_4|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_4|Qt~2_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_3|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_4|Qt\(3));

-- Location: LCCOMB_X31_Y2_N24
\MOD10_4|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_4|Qt~0_combout\ = (\MOD10_4|Qt\(0) & (!\MOD10_4|Qt\(1) & ((\MOD10_4|Qt\(2)) # (!\MOD10_4|Qt\(3))))) # (!\MOD10_4|Qt\(0) & (((\MOD10_4|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \MOD10_4|Qt~0_combout\);

-- Location: FF_X31_Y2_N25
\MOD10_4|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_4|Qt~0_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_3|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_4|Qt\(1));

-- Location: LCCOMB_X31_Y2_N14
\MOD10_4|Qt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_4|Qt[2]~1_combout\ = \MOD10_4|Qt\(2) $ (((\MOD10_4|Qt\(0) & (\MOD10_3|rco~0_combout\ & \MOD10_4|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_3|rco~0_combout\,
	datac => \MOD10_4|Qt\(2),
	datad => \MOD10_4|Qt\(1),
	combout => \MOD10_4|Qt[2]~1_combout\);

-- Location: FF_X31_Y2_N15
\MOD10_4|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_4|Qt[2]~1_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_4|Qt\(2));

-- Location: LCCOMB_X31_Y2_N6
\SEG7_4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux6~0_combout\ = (!\MOD10_4|Qt\(1) & (!\MOD10_4|Qt\(3) & (\MOD10_4|Qt\(0) $ (\MOD10_4|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y2_N12
\SEG7_4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux5~0_combout\ = (\MOD10_4|Qt\(2) & ((\MOD10_4|Qt\(3)) # (\MOD10_4|Qt\(0) $ (\MOD10_4|Qt\(1))))) # (!\MOD10_4|Qt\(2) & (((\MOD10_4|Qt\(1) & \MOD10_4|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y2_N30
\SEG7_4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux4~0_combout\ = (\MOD10_4|Qt\(2) & (((\MOD10_4|Qt\(3))))) # (!\MOD10_4|Qt\(2) & (\MOD10_4|Qt\(1) & ((\MOD10_4|Qt\(3)) # (!\MOD10_4|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y2_N8
\SEG7_4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux3~0_combout\ = (\MOD10_4|Qt\(1) & ((\MOD10_4|Qt\(3)) # ((\MOD10_4|Qt\(0) & \MOD10_4|Qt\(2))))) # (!\MOD10_4|Qt\(1) & (\MOD10_4|Qt\(2) $ (((\MOD10_4|Qt\(0) & !\MOD10_4|Qt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y2_N18
\SEG7_4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux2~0_combout\ = (\MOD10_4|Qt\(1) & (\MOD10_4|Qt\(0) & ((!\MOD10_4|Qt\(3))))) # (!\MOD10_4|Qt\(1) & ((\MOD10_4|Qt\(2) & ((!\MOD10_4|Qt\(3)))) # (!\MOD10_4|Qt\(2) & (\MOD10_4|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y2_N28
\SEG7_4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux1~0_combout\ = (!\MOD10_4|Qt\(3) & ((\MOD10_4|Qt\(0) & ((\MOD10_4|Qt\(1)) # (!\MOD10_4|Qt\(2)))) # (!\MOD10_4|Qt\(0) & (!\MOD10_4|Qt\(2) & \MOD10_4|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y2_N22
\SEG7_4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_4|Mux0~0_combout\ = (\MOD10_4|Qt\(3)) # ((\MOD10_4|Qt\(2) & ((!\MOD10_4|Qt\(1)) # (!\MOD10_4|Qt\(0)))) # (!\MOD10_4|Qt\(2) & ((\MOD10_4|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(2),
	datac => \MOD10_4|Qt\(1),
	datad => \MOD10_4|Qt\(3),
	combout => \SEG7_4|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y2_N0
\MOD10_5|Qt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_5|Qt[0]~2_combout\ = !\MOD10_5|Qt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_5|Qt\(0),
	combout => \MOD10_5|Qt[0]~2_combout\);

-- Location: LCCOMB_X31_Y2_N26
\MOD10_4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_4|Equal0~0_combout\ = (\MOD10_4|Qt\(0) & (!\MOD10_4|Qt\(1) & (!\MOD10_4|Qt\(2) & \MOD10_4|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_4|Qt\(0),
	datab => \MOD10_4|Qt\(1),
	datac => \MOD10_4|Qt\(2),
	datad => \MOD10_4|Qt\(3),
	combout => \MOD10_4|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y2_N22
\MOD10_4|rco~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_4|rco~0_combout\ = (\SEG7_3|Mux2~1_combout\ & (\MOD10_2|rco~1_combout\ & (\MOD10_4|Equal0~0_combout\ & \MOD10_3|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7_3|Mux2~1_combout\,
	datab => \MOD10_2|rco~1_combout\,
	datac => \MOD10_4|Equal0~0_combout\,
	datad => \MOD10_3|Qt\(0),
	combout => \MOD10_4|rco~0_combout\);

-- Location: FF_X32_Y2_N1
\MOD10_5|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_5|Qt[0]~2_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_4|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_5|Qt\(0));

-- Location: LCCOMB_X32_Y2_N18
\MOD10_5|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_5|Qt~0_combout\ = (\MOD10_5|Qt\(0) & (!\MOD10_5|Qt\(2) & !\MOD10_5|Qt\(1))) # (!\MOD10_5|Qt\(0) & ((\MOD10_5|Qt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(0),
	datac => \MOD10_5|Qt\(1),
	combout => \MOD10_5|Qt~0_combout\);

-- Location: FF_X32_Y2_N19
\MOD10_5|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_5|Qt~0_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_4|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_5|Qt\(1));

-- Location: LCCOMB_X32_Y2_N26
\MOD10_5|Qt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_5|Qt~1_combout\ = (\MOD10_5|Qt\(0) & (!\MOD10_5|Qt\(2) & \MOD10_5|Qt\(1))) # (!\MOD10_5|Qt\(0) & (\MOD10_5|Qt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD10_5|Qt\(0),
	datac => \MOD10_5|Qt\(2),
	datad => \MOD10_5|Qt\(1),
	combout => \MOD10_5|Qt~1_combout\);

-- Location: FF_X32_Y2_N27
\MOD10_5|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_5|Qt~1_combout\,
	clrn => \rest~inputclkctrl_outclk\,
	ena => \MOD10_4|rco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_5|Qt\(2));

-- Location: LCCOMB_X24_Y2_N4
\SEG7_5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux6~0_combout\ = (\MOD10_5|Qt\(1)) # (\MOD10_5|Qt\(2) $ (!\MOD10_5|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y2_N22
\SEG7_5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux5~0_combout\ = (\MOD10_5|Qt\(1) $ (!\MOD10_5|Qt\(0))) # (!\MOD10_5|Qt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y2_N28
\SEG7_5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux4~0_combout\ = (!\MOD10_5|Qt\(2) & (\MOD10_5|Qt\(1) & !\MOD10_5|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y2_N14
\SEG7_5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux3~0_combout\ = (\MOD10_5|Qt\(2) & (\MOD10_5|Qt\(1) $ (!\MOD10_5|Qt\(0)))) # (!\MOD10_5|Qt\(2) & (!\MOD10_5|Qt\(1) & \MOD10_5|Qt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y2_N0
\SEG7_5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux2~0_combout\ = (\MOD10_5|Qt\(0)) # ((\MOD10_5|Qt\(2) & !\MOD10_5|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y2_N10
\SEG7_5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux1~0_combout\ = (\MOD10_5|Qt\(2) & (\MOD10_5|Qt\(1) & \MOD10_5|Qt\(0))) # (!\MOD10_5|Qt\(2) & ((\MOD10_5|Qt\(1)) # (\MOD10_5|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y2_N12
\SEG7_5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_5|Mux0~0_combout\ = (\MOD10_5|Qt\(2) & ((!\MOD10_5|Qt\(0)) # (!\MOD10_5|Qt\(1)))) # (!\MOD10_5|Qt\(2) & (\MOD10_5|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_5|Qt\(2),
	datab => \MOD10_5|Qt\(1),
	datad => \MOD10_5|Qt\(0),
	combout => \SEG7_5|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


