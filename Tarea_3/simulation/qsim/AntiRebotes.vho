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

-- DATE "03/09/2021 11:37:22"

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

ENTITY 	AntiRebotes IS
    PORT (
	OUT_Sin : OUT std_logic;
	CLK : IN std_logic;
	Reset_KEY1 : IN std_logic;
	Pulse_KEY0 : IN std_logic;
	TimeEnd : OUT std_logic;
	StartTIM : OUT std_logic;
	xDev_n : OUT std_logic;
	q : OUT std_logic_vector(0 TO 10)
	);
END AntiRebotes;

-- Design Ports Information
-- OUT_Sin	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeEnd	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- StartTIM	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xDev_n	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_KEY1	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pulse_KEY0	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AntiRebotes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OUT_Sin : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset_KEY1 : std_logic;
SIGNAL ww_Pulse_KEY0 : std_logic;
SIGNAL ww_TimeEnd : std_logic;
SIGNAL ww_StartTIM : std_logic;
SIGNAL ww_xDev_n : std_logic;
SIGNAL ww_q : std_logic_vector(0 TO 10);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OUT_Sin~output_o\ : std_logic;
SIGNAL \TimeEnd~output_o\ : std_logic;
SIGNAL \StartTIM~output_o\ : std_logic;
SIGNAL \xDev_n~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset_KEY1~input_o\ : std_logic;
SIGNAL \Pulse_KEY0~input_o\ : std_logic;
SIGNAL \inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst10|reg_fstate.Q2~0_combout\ : std_logic;
SIGNAL \inst10|reg_fstate.Q1~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst10|StartTimer~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst10|StartTimer~1_combout\ : std_logic;
SIGNAL \inst1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst1|auto_generated|counter_comb_bita10~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_reg_bit[10]~0_combout\ : std_logic;
SIGNAL \inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst1|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst10|reg_fstate.Q1~1_combout\ : std_logic;
SIGNAL \inst10|fstate.Q1~q\ : std_logic;
SIGNAL \inst10|reg_fstate.Q2~1_combout\ : std_logic;
SIGNAL \inst10|fstate.Q2~q\ : std_logic;
SIGNAL \inst10|reg_fstate.Q3~0_combout\ : std_logic;
SIGNAL \inst10|reg_fstate.Q3~1_combout\ : std_logic;
SIGNAL \inst10|fstate.Q3~q\ : std_logic;
SIGNAL \inst10|reg_fstate.Q0~0_combout\ : std_logic;
SIGNAL \inst10|reg_fstate.Q0~1_combout\ : std_logic;
SIGNAL \inst10|fstate.Q0~q\ : std_logic;
SIGNAL \inst10|xDeb_n~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst1|auto_generated|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OUT_Sin <= ww_OUT_Sin;
ww_CLK <= CLK;
ww_Reset_KEY1 <= Reset_KEY1;
ww_Pulse_KEY0 <= Pulse_KEY0;
TimeEnd <= ww_TimeEnd;
StartTIM <= ww_StartTIM;
xDev_n <= ww_xDev_n;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X26_Y39_N23
\OUT_Sin~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \OUT_Sin~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\TimeEnd~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|cout_actual~combout\,
	devoe => ww_devoe,
	o => \TimeEnd~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\StartTIM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|StartTimer~0_combout\,
	devoe => ww_devoe,
	o => \StartTIM~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\xDev_n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|xDeb_n~0_combout\,
	devoe => ww_devoe,
	o => \xDev_n~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(10),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(9),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(8),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y39_N15
\Reset_KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_KEY1,
	o => \Reset_KEY1~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\Pulse_KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pulse_KEY0,
	o => \Pulse_KEY0~input_o\);

-- Location: LCCOMB_X30_Y35_N22
\inst|inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~feeder_combout\ = \Pulse_KEY0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Pulse_KEY0~input_o\,
	combout => \inst|inst~feeder_combout\);

-- Location: FF_X30_Y35_N23
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: FF_X30_Y35_N5
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X30_Y35_N12
\inst10|reg_fstate.Q2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q2~0_combout\ = (!\inst|inst1~q\ & (!\Reset_KEY1~input_o\ & \inst10|fstate.Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1~q\,
	datac => \Reset_KEY1~input_o\,
	datad => \inst10|fstate.Q2~q\,
	combout => \inst10|reg_fstate.Q2~0_combout\);

-- Location: LCCOMB_X30_Y35_N24
\inst10|reg_fstate.Q1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q1~0_combout\ = (!\inst10|fstate.Q0~q\ & (!\inst|inst1~q\ & !\Reset_KEY1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|fstate.Q0~q\,
	datab => \inst|inst1~q\,
	datac => \Reset_KEY1~input_o\,
	combout => \inst10|reg_fstate.Q1~0_combout\);

-- Location: LCCOMB_X31_Y35_N8
\inst1|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita0~combout\ = \inst1|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst1|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst1|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X44_Y39_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X30_Y35_N14
\inst10|StartTimer~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|StartTimer~0_combout\ = (!\Reset_KEY1~input_o\ & ((\inst|inst1~q\ & (\inst10|fstate.Q3~q\)) # (!\inst|inst1~q\ & ((\inst10|fstate.Q1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datab => \inst10|fstate.Q3~q\,
	datac => \inst|inst1~q\,
	datad => \inst10|fstate.Q1~q\,
	combout => \inst10|StartTimer~0_combout\);

-- Location: LCCOMB_X31_Y35_N10
\inst1|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita1~combout\ = (\inst1|auto_generated|counter_reg_bit\(1) & (!\inst1|auto_generated|counter_comb_bita0~COUT\)) # (!\inst1|auto_generated|counter_reg_bit\(1) & ((\inst1|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst1|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst1|auto_generated|counter_comb_bita0~COUT\) # (!\inst1|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X30_Y35_N28
\inst10|StartTimer~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|StartTimer~1_combout\ = (\inst|inst1~q\ & (!\inst10|fstate.Q3~q\)) # (!\inst|inst1~q\ & ((!\inst10|fstate.Q1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|fstate.Q3~q\,
	datac => \inst|inst1~q\,
	datad => \inst10|fstate.Q1~q\,
	combout => \inst10|StartTimer~1_combout\);

-- Location: LCCOMB_X30_Y35_N10
\inst1|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|_~0_combout\ = (!\Reset_KEY1~input_o\ & (((\inst10|fstate.Q0~q\ & !\inst10|fstate.Q2~q\)) # (!\inst10|StartTimer~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|fstate.Q0~q\,
	datab => \inst10|fstate.Q2~q\,
	datac => \Reset_KEY1~input_o\,
	datad => \inst10|StartTimer~1_combout\,
	combout => \inst1|auto_generated|_~0_combout\);

-- Location: FF_X31_Y35_N11
\inst1|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X31_Y35_N12
\inst1|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita2~combout\ = (\inst1|auto_generated|counter_reg_bit\(2) & (\inst1|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst1|auto_generated|counter_reg_bit\(2) & (!\inst1|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \inst1|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst1|auto_generated|counter_reg_bit\(2) & !\inst1|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita2~combout\,
	cout => \inst1|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X31_Y35_N13
\inst1|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X31_Y35_N14
\inst1|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita3~combout\ = (\inst1|auto_generated|counter_reg_bit\(3) & (!\inst1|auto_generated|counter_comb_bita2~COUT\)) # (!\inst1|auto_generated|counter_reg_bit\(3) & ((\inst1|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst1|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst1|auto_generated|counter_comb_bita2~COUT\) # (!\inst1|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita3~combout\,
	cout => \inst1|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X31_Y35_N15
\inst1|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X31_Y35_N16
\inst1|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita4~combout\ = (\inst1|auto_generated|counter_reg_bit\(4) & (\inst1|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst1|auto_generated|counter_reg_bit\(4) & (!\inst1|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \inst1|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst1|auto_generated|counter_reg_bit\(4) & !\inst1|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita4~combout\,
	cout => \inst1|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X31_Y35_N17
\inst1|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X31_Y35_N18
\inst1|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita5~combout\ = (\inst1|auto_generated|counter_reg_bit\(5) & (!\inst1|auto_generated|counter_comb_bita4~COUT\)) # (!\inst1|auto_generated|counter_reg_bit\(5) & ((\inst1|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst1|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst1|auto_generated|counter_comb_bita4~COUT\) # (!\inst1|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita5~combout\,
	cout => \inst1|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X31_Y35_N19
\inst1|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X31_Y35_N20
\inst1|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita6~combout\ = (\inst1|auto_generated|counter_reg_bit\(6) & (\inst1|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst1|auto_generated|counter_reg_bit\(6) & (!\inst1|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \inst1|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst1|auto_generated|counter_reg_bit\(6) & !\inst1|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita6~combout\,
	cout => \inst1|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X31_Y35_N21
\inst1|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X31_Y35_N22
\inst1|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita7~combout\ = (\inst1|auto_generated|counter_reg_bit\(7) & (!\inst1|auto_generated|counter_comb_bita6~COUT\)) # (!\inst1|auto_generated|counter_reg_bit\(7) & ((\inst1|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst1|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst1|auto_generated|counter_comb_bita6~COUT\) # (!\inst1|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita7~combout\,
	cout => \inst1|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X31_Y35_N23
\inst1|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X31_Y35_N24
\inst1|auto_generated|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita8~combout\ = (\inst1|auto_generated|counter_reg_bit\(8) & (\inst1|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst1|auto_generated|counter_reg_bit\(8) & (!\inst1|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \inst1|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst1|auto_generated|counter_reg_bit\(8) & !\inst1|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita8~combout\,
	cout => \inst1|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X31_Y35_N25
\inst1|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X31_Y35_N26
\inst1|auto_generated|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita9~combout\ = (\inst1|auto_generated|counter_reg_bit\(9) & (!\inst1|auto_generated|counter_comb_bita8~COUT\)) # (!\inst1|auto_generated|counter_reg_bit\(9) & ((\inst1|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst1|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst1|auto_generated|counter_comb_bita8~COUT\) # (!\inst1|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita9~combout\,
	cout => \inst1|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X31_Y35_N27
\inst1|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X31_Y35_N28
\inst1|auto_generated|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita10~combout\ = (\inst1|auto_generated|counter_reg_bit\(10) & (\inst1|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst1|auto_generated|counter_reg_bit\(10) & (!\inst1|auto_generated|counter_comb_bita9~COUT\ 
-- & VCC))
-- \inst1|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst1|auto_generated|counter_reg_bit\(10) & !\inst1|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst1|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita10~combout\,
	cout => \inst1|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X31_Y35_N29
\inst1|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X31_Y35_N4
\inst1|auto_generated|cmpr1|aneb_result_wire[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\inst1|auto_generated|counter_reg_bit\(7) & (!\inst1|auto_generated|counter_reg_bit\(8) & (!\inst1|auto_generated|counter_reg_bit\(9) & \inst1|auto_generated|counter_reg_bit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(7),
	datab => \inst1|auto_generated|counter_reg_bit\(8),
	datac => \inst1|auto_generated|counter_reg_bit\(9),
	datad => \inst1|auto_generated|counter_reg_bit\(10),
	combout => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X31_Y35_N30
\inst1|auto_generated|counter_comb_bita10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_comb_bita10~0_combout\ = \inst1|auto_generated|counter_comb_bita10~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst1|auto_generated|counter_comb_bita10~0_combout\);

-- Location: LCCOMB_X31_Y35_N2
\inst1|auto_generated|counter_reg_bit[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|counter_reg_bit[10]~0_combout\ = (\inst10|StartTimer~0_combout\) # ((\inst1|auto_generated|counter_comb_bita10~0_combout\) # ((\inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- \inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|StartTimer~0_combout\,
	datab => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst1|auto_generated|counter_comb_bita10~0_combout\,
	datad => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	combout => \inst1|auto_generated|counter_reg_bit[10]~0_combout\);

-- Location: FF_X31_Y35_N9
\inst1|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst1|auto_generated|counter_reg_bit[10]~0_combout\,
	ena => \inst1|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X31_Y35_N6
\inst1|auto_generated|cmpr1|aneb_result_wire[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\inst1|auto_generated|counter_reg_bit\(3) & (!\inst1|auto_generated|counter_reg_bit\(4) & (\inst1|auto_generated|counter_reg_bit\(5) & \inst1|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(3),
	datab => \inst1|auto_generated|counter_reg_bit\(4),
	datac => \inst1|auto_generated|counter_reg_bit\(5),
	datad => \inst1|auto_generated|counter_reg_bit\(6),
	combout => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X31_Y35_N0
\inst1|auto_generated|cmpr1|aneb_result_wire[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\inst1|auto_generated|counter_reg_bit\(0) & (!\inst1|auto_generated|counter_reg_bit\(1) & (!\inst1|auto_generated|counter_reg_bit\(2) & 
-- \inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|auto_generated|counter_reg_bit\(0),
	datab => \inst1|auto_generated|counter_reg_bit\(1),
	datac => \inst1|auto_generated|counter_reg_bit\(2),
	datad => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X30_Y35_N20
\inst1|auto_generated|cout_actual\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|auto_generated|cout_actual~combout\ = (\inst1|auto_generated|counter_comb_bita10~0_combout\) # ((\inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & \inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datac => \inst1|auto_generated|counter_comb_bita10~0_combout\,
	datad => \inst1|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst1|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X30_Y35_N18
\inst10|reg_fstate.Q1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q1~1_combout\ = (\inst10|reg_fstate.Q1~0_combout\) # ((!\Reset_KEY1~input_o\ & (\inst10|fstate.Q1~q\ & !\inst1|auto_generated|cout_actual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datab => \inst10|reg_fstate.Q1~0_combout\,
	datac => \inst10|fstate.Q1~q\,
	datad => \inst1|auto_generated|cout_actual~combout\,
	combout => \inst10|reg_fstate.Q1~1_combout\);

-- Location: FF_X30_Y35_N19
\inst10|fstate.Q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|reg_fstate.Q1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|fstate.Q1~q\);

-- Location: LCCOMB_X30_Y35_N16
\inst10|reg_fstate.Q2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q2~1_combout\ = (\inst10|reg_fstate.Q2~0_combout\) # ((\inst10|fstate.Q1~q\ & (!\Reset_KEY1~input_o\ & \inst1|auto_generated|cout_actual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|reg_fstate.Q2~0_combout\,
	datab => \inst10|fstate.Q1~q\,
	datac => \Reset_KEY1~input_o\,
	datad => \inst1|auto_generated|cout_actual~combout\,
	combout => \inst10|reg_fstate.Q2~1_combout\);

-- Location: FF_X30_Y35_N17
\inst10|fstate.Q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|reg_fstate.Q2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|fstate.Q2~q\);

-- Location: LCCOMB_X30_Y35_N2
\inst10|reg_fstate.Q3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q3~0_combout\ = (\inst|inst1~q\ & (!\Reset_KEY1~input_o\ & \inst10|fstate.Q2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1~q\,
	datac => \Reset_KEY1~input_o\,
	datad => \inst10|fstate.Q2~q\,
	combout => \inst10|reg_fstate.Q3~0_combout\);

-- Location: LCCOMB_X30_Y35_N0
\inst10|reg_fstate.Q3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q3~1_combout\ = (\inst10|reg_fstate.Q3~0_combout\) # ((!\Reset_KEY1~input_o\ & (\inst10|fstate.Q3~q\ & !\inst1|auto_generated|cout_actual~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datab => \inst10|reg_fstate.Q3~0_combout\,
	datac => \inst10|fstate.Q3~q\,
	datad => \inst1|auto_generated|cout_actual~combout\,
	combout => \inst10|reg_fstate.Q3~1_combout\);

-- Location: FF_X30_Y35_N1
\inst10|fstate.Q3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|reg_fstate.Q3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|fstate.Q3~q\);

-- Location: LCCOMB_X30_Y35_N4
\inst10|reg_fstate.Q0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q0~0_combout\ = (\Reset_KEY1~input_o\) # ((\inst|inst1~q\ & !\inst10|fstate.Q0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_KEY1~input_o\,
	datac => \inst|inst1~q\,
	datad => \inst10|fstate.Q0~q\,
	combout => \inst10|reg_fstate.Q0~0_combout\);

-- Location: LCCOMB_X30_Y35_N26
\inst10|reg_fstate.Q0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|reg_fstate.Q0~1_combout\ = (!\inst10|reg_fstate.Q0~0_combout\ & ((!\inst1|auto_generated|cout_actual~combout\) # (!\inst10|fstate.Q3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|fstate.Q3~q\,
	datac => \inst10|reg_fstate.Q0~0_combout\,
	datad => \inst1|auto_generated|cout_actual~combout\,
	combout => \inst10|reg_fstate.Q0~1_combout\);

-- Location: FF_X30_Y35_N27
\inst10|fstate.Q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|reg_fstate.Q0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|fstate.Q0~q\);

-- Location: LCCOMB_X30_Y35_N8
\inst10|xDeb_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|xDeb_n~0_combout\ = (!\Reset_KEY1~input_o\ & ((\inst10|fstate.Q3~q\) # (!\inst10|fstate.Q0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|fstate.Q0~q\,
	datac => \Reset_KEY1~input_o\,
	datad => \inst10|fstate.Q3~q\,
	combout => \inst10|xDeb_n~0_combout\);

-- Location: FF_X30_Y35_N9
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|xDeb_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X30_Y35_N30
inst4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\inst3~q\ & ((\Reset_KEY1~input_o\) # ((\inst10|fstate.Q0~q\ & !\inst10|fstate.Q3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|fstate.Q0~q\,
	datab => \inst3~q\,
	datac => \Reset_KEY1~input_o\,
	datad => \inst10|fstate.Q3~q\,
	combout => \inst4~combout\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_OUT_Sin <= \OUT_Sin~output_o\;

ww_TimeEnd <= \TimeEnd~output_o\;

ww_StartTIM <= \StartTIM~output_o\;

ww_xDev_n <= \xDev_n~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;
END structure;


