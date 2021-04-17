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

-- DATE "03/22/2021 18:36:09"

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
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END crono;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enab	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rest	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DIV|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIV|Add0~0_combout\ : std_logic;
SIGNAL \DIV|contador~4_combout\ : std_logic;
SIGNAL \DIV|Add0~1\ : std_logic;
SIGNAL \DIV|Add0~2_combout\ : std_logic;
SIGNAL \DIV|Add0~3\ : std_logic;
SIGNAL \DIV|Add0~4_combout\ : std_logic;
SIGNAL \DIV|Add0~5\ : std_logic;
SIGNAL \DIV|Add0~6_combout\ : std_logic;
SIGNAL \DIV|Add0~7\ : std_logic;
SIGNAL \DIV|Add0~8_combout\ : std_logic;
SIGNAL \DIV|Add0~9\ : std_logic;
SIGNAL \DIV|Add0~10_combout\ : std_logic;
SIGNAL \DIV|contador~3_combout\ : std_logic;
SIGNAL \DIV|Add0~11\ : std_logic;
SIGNAL \DIV|Add0~12_combout\ : std_logic;
SIGNAL \DIV|Add0~13\ : std_logic;
SIGNAL \DIV|Add0~14_combout\ : std_logic;
SIGNAL \DIV|Equal0~2_combout\ : std_logic;
SIGNAL \DIV|Equal0~1_combout\ : std_logic;
SIGNAL \DIV|Add0~15\ : std_logic;
SIGNAL \DIV|Add0~16_combout\ : std_logic;
SIGNAL \DIV|contador~5_combout\ : std_logic;
SIGNAL \DIV|Add0~17\ : std_logic;
SIGNAL \DIV|Add0~18_combout\ : std_logic;
SIGNAL \DIV|Add0~19\ : std_logic;
SIGNAL \DIV|Add0~20_combout\ : std_logic;
SIGNAL \DIV|Add0~21\ : std_logic;
SIGNAL \DIV|Add0~22_combout\ : std_logic;
SIGNAL \DIV|Add0~23\ : std_logic;
SIGNAL \DIV|Add0~24_combout\ : std_logic;
SIGNAL \DIV|Add0~25\ : std_logic;
SIGNAL \DIV|Add0~26_combout\ : std_logic;
SIGNAL \DIV|contador~6_combout\ : std_logic;
SIGNAL \DIV|Add0~27\ : std_logic;
SIGNAL \DIV|Add0~28_combout\ : std_logic;
SIGNAL \DIV|Add0~29\ : std_logic;
SIGNAL \DIV|Add0~30_combout\ : std_logic;
SIGNAL \DIV|contador~7_combout\ : std_logic;
SIGNAL \DIV|Equal0~4_combout\ : std_logic;
SIGNAL \DIV|Equal0~3_combout\ : std_logic;
SIGNAL \DIV|Equal0~5_combout\ : std_logic;
SIGNAL \DIV|Add0~31\ : std_logic;
SIGNAL \DIV|Add0~32_combout\ : std_logic;
SIGNAL \DIV|contador~0_combout\ : std_logic;
SIGNAL \DIV|Add0~33\ : std_logic;
SIGNAL \DIV|Add0~34_combout\ : std_logic;
SIGNAL \DIV|contador~1_combout\ : std_logic;
SIGNAL \DIV|Add0~35\ : std_logic;
SIGNAL \DIV|Add0~36_combout\ : std_logic;
SIGNAL \DIV|contador~2_combout\ : std_logic;
SIGNAL \DIV|Equal0~0_combout\ : std_logic;
SIGNAL \DIV|clk_sig~0_combout\ : std_logic;
SIGNAL \DIV|clk_sig~feeder_combout\ : std_logic;
SIGNAL \DIV|clk_sig~q\ : std_logic;
SIGNAL \DIV|clk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \enab~input_o\ : std_logic;
SIGNAL \MOD10_1|Qt[0]~0_combout\ : std_logic;
SIGNAL \rest~input_o\ : std_logic;
SIGNAL \MOD10_1|Qt[1]~1_combout\ : std_logic;
SIGNAL \MOD10_1|Qt[2]~2_combout\ : std_logic;
SIGNAL \MOD10_1|Qt[3]~3_combout\ : std_logic;
SIGNAL \MOD10_1|Qt[3]~4_combout\ : std_logic;
SIGNAL \SEG7_1|Mux6~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux5~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux4~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux3~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux2~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux1~0_combout\ : std_logic;
SIGNAL \SEG7_1|Mux0~0_combout\ : std_logic;
SIGNAL \MOD10_1|Qt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIV|contador\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \SEG7_1|ALT_INV_Mux0~0_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\DIV|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DIV|clk_sig~q\);

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);
\SEG7_1|ALT_INV_Mux0~0_combout\ <= NOT \SEG7_1|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X46_Y9_N14
\DIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~0_combout\ = \DIV|contador\(0) $ (VCC)
-- \DIV|Add0~1\ = CARRY(\DIV|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(0),
	datad => VCC,
	combout => \DIV|Add0~0_combout\,
	cout => \DIV|Add0~1\);

-- Location: LCCOMB_X46_Y9_N12
\DIV|contador~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~4_combout\ = (\DIV|Add0~0_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|Add0~0_combout\,
	datac => \DIV|Equal0~5_combout\,
	combout => \DIV|contador~4_combout\);

-- Location: FF_X46_Y9_N13
\DIV|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(0));

-- Location: LCCOMB_X46_Y9_N16
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

-- Location: FF_X46_Y9_N17
\DIV|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(1));

-- Location: LCCOMB_X46_Y9_N18
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

-- Location: FF_X46_Y9_N19
\DIV|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(2));

-- Location: LCCOMB_X46_Y9_N20
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

-- Location: FF_X46_Y9_N21
\DIV|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(3));

-- Location: LCCOMB_X46_Y9_N22
\DIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~8_combout\ = (\DIV|contador\(4) & (\DIV|Add0~7\ $ (GND))) # (!\DIV|contador\(4) & (!\DIV|Add0~7\ & VCC))
-- \DIV|Add0~9\ = CARRY((\DIV|contador\(4) & !\DIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(4),
	datad => VCC,
	cin => \DIV|Add0~7\,
	combout => \DIV|Add0~8_combout\,
	cout => \DIV|Add0~9\);

-- Location: FF_X46_Y9_N23
\DIV|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(4));

-- Location: LCCOMB_X46_Y9_N24
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

-- Location: LCCOMB_X46_Y9_N0
\DIV|contador~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~3_combout\ = (\DIV|Add0~10_combout\ & ((!\DIV|Equal0~0_combout\) # (!\DIV|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV|Equal0~5_combout\,
	datac => \DIV|Equal0~0_combout\,
	datad => \DIV|Add0~10_combout\,
	combout => \DIV|contador~3_combout\);

-- Location: FF_X46_Y9_N1
\DIV|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(5));

-- Location: LCCOMB_X46_Y9_N26
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

-- Location: FF_X46_Y9_N27
\DIV|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(6));

-- Location: LCCOMB_X46_Y9_N28
\DIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~14_combout\ = (\DIV|contador\(7) & (!\DIV|Add0~13\)) # (!\DIV|contador\(7) & ((\DIV|Add0~13\) # (GND)))
-- \DIV|Add0~15\ = CARRY((!\DIV|Add0~13\) # (!\DIV|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(7),
	datad => VCC,
	cin => \DIV|Add0~13\,
	combout => \DIV|Add0~14_combout\,
	cout => \DIV|Add0~15\);

-- Location: FF_X46_Y9_N29
\DIV|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(7));

-- Location: LCCOMB_X46_Y9_N10
\DIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~2_combout\ = (!\DIV|contador\(0) & (!\DIV|contador\(1) & (!\DIV|contador\(2) & !\DIV|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(0),
	datab => \DIV|contador\(1),
	datac => \DIV|contador\(2),
	datad => \DIV|contador\(7),
	combout => \DIV|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y9_N2
\DIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~1_combout\ = (!\DIV|contador\(6) & (!\DIV|contador\(3) & (!\DIV|contador\(4) & \DIV|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(6),
	datab => \DIV|contador\(3),
	datac => \DIV|contador\(4),
	datad => \DIV|contador\(5),
	combout => \DIV|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y9_N30
\DIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~16_combout\ = (\DIV|contador\(8) & (\DIV|Add0~15\ $ (GND))) # (!\DIV|contador\(8) & (!\DIV|Add0~15\ & VCC))
-- \DIV|Add0~17\ = CARRY((\DIV|contador\(8) & !\DIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(8),
	datad => VCC,
	cin => \DIV|Add0~15\,
	combout => \DIV|Add0~16_combout\,
	cout => \DIV|Add0~17\);

-- Location: LCCOMB_X46_Y9_N8
\DIV|contador~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~5_combout\ = (\DIV|Add0~16_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datab => \DIV|Equal0~5_combout\,
	datac => \DIV|Add0~16_combout\,
	combout => \DIV|contador~5_combout\);

-- Location: FF_X46_Y9_N9
\DIV|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(8));

-- Location: LCCOMB_X46_Y8_N0
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

-- Location: FF_X46_Y8_N1
\DIV|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(9));

-- Location: LCCOMB_X46_Y8_N2
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

-- Location: FF_X46_Y8_N3
\DIV|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(10));

-- Location: LCCOMB_X46_Y8_N4
\DIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~22_combout\ = (\DIV|contador\(11) & (!\DIV|Add0~21\)) # (!\DIV|contador\(11) & ((\DIV|Add0~21\) # (GND)))
-- \DIV|Add0~23\ = CARRY((!\DIV|Add0~21\) # (!\DIV|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(11),
	datad => VCC,
	cin => \DIV|Add0~21\,
	combout => \DIV|Add0~22_combout\,
	cout => \DIV|Add0~23\);

-- Location: FF_X46_Y8_N5
\DIV|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(11));

-- Location: LCCOMB_X46_Y8_N6
\DIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~24_combout\ = (\DIV|contador\(12) & (\DIV|Add0~23\ $ (GND))) # (!\DIV|contador\(12) & (!\DIV|Add0~23\ & VCC))
-- \DIV|Add0~25\ = CARRY((\DIV|contador\(12) & !\DIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(12),
	datad => VCC,
	cin => \DIV|Add0~23\,
	combout => \DIV|Add0~24_combout\,
	cout => \DIV|Add0~25\);

-- Location: FF_X46_Y8_N7
\DIV|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(12));

-- Location: LCCOMB_X46_Y8_N8
\DIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~26_combout\ = (\DIV|contador\(13) & (!\DIV|Add0~25\)) # (!\DIV|contador\(13) & ((\DIV|Add0~25\) # (GND)))
-- \DIV|Add0~27\ = CARRY((!\DIV|Add0~25\) # (!\DIV|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(13),
	datad => VCC,
	cin => \DIV|Add0~25\,
	combout => \DIV|Add0~26_combout\,
	cout => \DIV|Add0~27\);

-- Location: LCCOMB_X46_Y8_N26
\DIV|contador~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~6_combout\ = (\DIV|Add0~26_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Add0~26_combout\,
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|contador~6_combout\);

-- Location: FF_X46_Y8_N27
\DIV|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(13));

-- Location: LCCOMB_X46_Y8_N10
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

-- Location: FF_X46_Y8_N11
\DIV|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(14));

-- Location: LCCOMB_X46_Y8_N12
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

-- Location: LCCOMB_X46_Y8_N28
\DIV|contador~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~7_combout\ = (\DIV|Add0~30_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Equal0~5_combout\,
	datad => \DIV|Add0~30_combout\,
	combout => \DIV|contador~7_combout\);

-- Location: FF_X46_Y8_N29
\DIV|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(15));

-- Location: LCCOMB_X46_Y8_N22
\DIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~4_combout\ = (!\DIV|contador\(12) & (\DIV|contador\(15) & (\DIV|contador\(13) & !\DIV|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(12),
	datab => \DIV|contador\(15),
	datac => \DIV|contador\(13),
	datad => \DIV|contador\(14),
	combout => \DIV|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y9_N6
\DIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~3_combout\ = (\DIV|contador\(8) & (!\DIV|contador\(9) & (!\DIV|contador\(10) & !\DIV|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(8),
	datab => \DIV|contador\(9),
	datac => \DIV|contador\(10),
	datad => \DIV|contador\(11),
	combout => \DIV|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y9_N4
\DIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~5_combout\ = (\DIV|Equal0~2_combout\ & (\DIV|Equal0~1_combout\ & (\DIV|Equal0~4_combout\ & \DIV|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~2_combout\,
	datab => \DIV|Equal0~1_combout\,
	datac => \DIV|Equal0~4_combout\,
	datad => \DIV|Equal0~3_combout\,
	combout => \DIV|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y8_N14
\DIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~32_combout\ = (\DIV|contador\(16) & (\DIV|Add0~31\ $ (GND))) # (!\DIV|contador\(16) & (!\DIV|Add0~31\ & VCC))
-- \DIV|Add0~33\ = CARRY((\DIV|contador\(16) & !\DIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV|contador\(16),
	datad => VCC,
	cin => \DIV|Add0~31\,
	combout => \DIV|Add0~32_combout\,
	cout => \DIV|Add0~33\);

-- Location: LCCOMB_X46_Y8_N24
\DIV|contador~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~0_combout\ = (\DIV|Add0~32_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Add0~32_combout\,
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|contador~0_combout\);

-- Location: FF_X46_Y8_N25
\DIV|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(16));

-- Location: LCCOMB_X46_Y8_N16
\DIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~34_combout\ = (\DIV|contador\(17) & (!\DIV|Add0~33\)) # (!\DIV|contador\(17) & ((\DIV|Add0~33\) # (GND)))
-- \DIV|Add0~35\ = CARRY((!\DIV|Add0~33\) # (!\DIV|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(17),
	datad => VCC,
	cin => \DIV|Add0~33\,
	combout => \DIV|Add0~34_combout\,
	cout => \DIV|Add0~35\);

-- Location: LCCOMB_X46_Y8_N30
\DIV|contador~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~1_combout\ = (\DIV|Add0~34_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Equal0~5_combout\,
	datad => \DIV|Add0~34_combout\,
	combout => \DIV|contador~1_combout\);

-- Location: FF_X46_Y8_N31
\DIV|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(17));

-- Location: LCCOMB_X46_Y8_N18
\DIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Add0~36_combout\ = \DIV|Add0~35\ $ (!\DIV|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DIV|contador\(18),
	cin => \DIV|Add0~35\,
	combout => \DIV|Add0~36_combout\);

-- Location: LCCOMB_X46_Y8_N20
\DIV|contador~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|contador~2_combout\ = (\DIV|Add0~36_combout\ & ((!\DIV|Equal0~5_combout\) # (!\DIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|Equal0~0_combout\,
	datac => \DIV|Equal0~5_combout\,
	datad => \DIV|Add0~36_combout\,
	combout => \DIV|contador~2_combout\);

-- Location: FF_X46_Y8_N21
\DIV|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DIV|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV|contador\(18));

-- Location: LCCOMB_X45_Y8_N0
\DIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|Equal0~0_combout\ = (\DIV|contador\(18) & (\DIV|contador\(17) & \DIV|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV|contador\(18),
	datac => \DIV|contador\(17),
	datad => \DIV|contador\(16),
	combout => \DIV|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y9_N18
\DIV|clk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|clk_sig~0_combout\ = \DIV|clk_sig~q\ $ (((\DIV|Equal0~0_combout\ & \DIV|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV|Equal0~0_combout\,
	datac => \DIV|clk_sig~q\,
	datad => \DIV|Equal0~5_combout\,
	combout => \DIV|clk_sig~0_combout\);

-- Location: LCCOMB_X45_Y9_N30
\DIV|clk_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DIV|clk_sig~feeder_combout\ = \DIV|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIV|clk_sig~0_combout\,
	combout => \DIV|clk_sig~feeder_combout\);

-- Location: FF_X45_Y9_N31
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

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: LCCOMB_X67_Y53_N8
\MOD10_1|Qt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[0]~0_combout\ = \MOD10_1|Qt\(0) $ (\enab~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_1|Qt\(0),
	datad => \enab~input_o\,
	combout => \MOD10_1|Qt[0]~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: FF_X67_Y53_N9
\MOD10_1|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt[0]~0_combout\,
	clrn => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(0));

-- Location: LCCOMB_X67_Y53_N18
\MOD10_1|Qt[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[1]~1_combout\ = \MOD10_1|Qt\(1) $ (((\enab~input_o\ & \MOD10_1|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enab~input_o\,
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(1),
	combout => \MOD10_1|Qt[1]~1_combout\);

-- Location: FF_X67_Y53_N19
\MOD10_1|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt[1]~1_combout\,
	clrn => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(1));

-- Location: LCCOMB_X67_Y53_N16
\MOD10_1|Qt[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[2]~2_combout\ = \MOD10_1|Qt\(2) $ (((\enab~input_o\ & (\MOD10_1|Qt\(0) & \MOD10_1|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enab~input_o\,
	datab => \MOD10_1|Qt\(0),
	datac => \MOD10_1|Qt\(2),
	datad => \MOD10_1|Qt\(1),
	combout => \MOD10_1|Qt[2]~2_combout\);

-- Location: FF_X67_Y53_N17
\MOD10_1|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt[2]~2_combout\,
	clrn => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(2));

-- Location: LCCOMB_X67_Y53_N6
\MOD10_1|Qt[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[3]~3_combout\ = (\enab~input_o\ & (\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(0) & \MOD10_1|Qt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enab~input_o\,
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(0),
	datad => \MOD10_1|Qt\(1),
	combout => \MOD10_1|Qt[3]~3_combout\);

-- Location: LCCOMB_X67_Y53_N30
\MOD10_1|Qt[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOD10_1|Qt[3]~4_combout\ = \MOD10_1|Qt\(3) $ (\MOD10_1|Qt[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt[3]~3_combout\,
	combout => \MOD10_1|Qt[3]~4_combout\);

-- Location: FF_X67_Y53_N31
\MOD10_1|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DIV|clk_sig~clkctrl_outclk\,
	d => \MOD10_1|Qt[3]~4_combout\,
	clrn => \rest~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOD10_1|Qt\(3));

-- Location: LCCOMB_X67_Y53_N12
\SEG7_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux6~0_combout\ = (!\MOD10_1|Qt\(3) & (!\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(0) $ (\MOD10_1|Qt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y53_N10
\SEG7_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux5~0_combout\ = (\MOD10_1|Qt\(2) & ((\MOD10_1|Qt\(3)) # (\MOD10_1|Qt\(0) $ (\MOD10_1|Qt\(1))))) # (!\MOD10_1|Qt\(2) & (((\MOD10_1|Qt\(3) & \MOD10_1|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y53_N20
\SEG7_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux4~0_combout\ = (\MOD10_1|Qt\(2) & (((\MOD10_1|Qt\(3))))) # (!\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(3)) # (!\MOD10_1|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y53_N22
\SEG7_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux3~0_combout\ = (\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(3)) # ((\MOD10_1|Qt\(0) & \MOD10_1|Qt\(2))))) # (!\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(2) $ (((\MOD10_1|Qt\(0) & !\MOD10_1|Qt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y53_N28
\SEG7_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux2~0_combout\ = (\MOD10_1|Qt\(1) & (\MOD10_1|Qt\(0) & ((!\MOD10_1|Qt\(3))))) # (!\MOD10_1|Qt\(1) & ((\MOD10_1|Qt\(2) & ((!\MOD10_1|Qt\(3)))) # (!\MOD10_1|Qt\(2) & (\MOD10_1|Qt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y53_N26
\SEG7_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux1~0_combout\ = (!\MOD10_1|Qt\(3) & ((\MOD10_1|Qt\(0) & ((\MOD10_1|Qt\(1)) # (!\MOD10_1|Qt\(2)))) # (!\MOD10_1|Qt\(0) & (!\MOD10_1|Qt\(2) & \MOD10_1|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y53_N24
\SEG7_1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEG7_1|Mux0~0_combout\ = (\MOD10_1|Qt\(3)) # ((\MOD10_1|Qt\(2) & ((!\MOD10_1|Qt\(1)) # (!\MOD10_1|Qt\(0)))) # (!\MOD10_1|Qt\(2) & ((\MOD10_1|Qt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD10_1|Qt\(0),
	datab => \MOD10_1|Qt\(2),
	datac => \MOD10_1|Qt\(3),
	datad => \MOD10_1|Qt\(1),
	combout => \SEG7_1|Mux0~0_combout\);

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
END structure;


