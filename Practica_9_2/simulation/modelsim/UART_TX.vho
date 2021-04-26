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

-- DATE "04/24/2021 16:30:39"

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

ENTITY 	uart_tx IS
    PORT (
	tx_data : IN std_logic_vector(7 DOWNTO 0);
	baudsel : IN std_logic_vector(1 DOWNTO 0);
	clk_i : IN std_logic;
	reset : IN std_logic;
	tx_en : IN std_logic;
	tx : OUT std_logic;
	tx_rdy : OUT std_logic
	);
END uart_tx;

-- Design Ports Information
-- tx	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_rdy	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_en	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baudsel[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baudsel[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_tx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_baudsel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_tx_en : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_tx_rdy : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK0|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \tx_rdy~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK0|contador[0]~20_combout\ : std_logic;
SIGNAL \baudsel[1]~input_o\ : std_logic;
SIGNAL \CLK0|divider[15]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \CLK0|Equal0~4_combout\ : std_logic;
SIGNAL \CLK0|Equal0~3_combout\ : std_logic;
SIGNAL \CLK0|Equal0~2_combout\ : std_logic;
SIGNAL \CLK0|Equal0~1_combout\ : std_logic;
SIGNAL \CLK0|Equal0~5_combout\ : std_logic;
SIGNAL \CLK0|Equal0~6_combout\ : std_logic;
SIGNAL \CLK0|contador[0]~21\ : std_logic;
SIGNAL \CLK0|contador[1]~22_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CLK0|contador[1]~23\ : std_logic;
SIGNAL \CLK0|contador[2]~24_combout\ : std_logic;
SIGNAL \baudsel[0]~input_o\ : std_logic;
SIGNAL \CLK0|Mux0~0_combout\ : std_logic;
SIGNAL \CLK0|divider[17]~0_combout\ : std_logic;
SIGNAL \CLK0|contador[2]~25\ : std_logic;
SIGNAL \CLK0|contador[3]~26_combout\ : std_logic;
SIGNAL \CLK0|divider[4]~feeder_combout\ : std_logic;
SIGNAL \CLK0|contador[3]~27\ : std_logic;
SIGNAL \CLK0|contador[4]~28_combout\ : std_logic;
SIGNAL \CLK0|Mux1~0_combout\ : std_logic;
SIGNAL \CLK0|contador[4]~29\ : std_logic;
SIGNAL \CLK0|contador[5]~30_combout\ : std_logic;
SIGNAL \CLK0|Mux1~1_combout\ : std_logic;
SIGNAL \CLK0|contador[5]~31\ : std_logic;
SIGNAL \CLK0|contador[6]~32_combout\ : std_logic;
SIGNAL \CLK0|contador[6]~33\ : std_logic;
SIGNAL \CLK0|contador[7]~34_combout\ : std_logic;
SIGNAL \CLK0|Mux1~2_combout\ : std_logic;
SIGNAL \CLK0|divider[8]~2_combout\ : std_logic;
SIGNAL \CLK0|contador[7]~35\ : std_logic;
SIGNAL \CLK0|contador[8]~36_combout\ : std_logic;
SIGNAL \CLK0|contador[8]~feeder_combout\ : std_logic;
SIGNAL \CLK0|contador[8]~37\ : std_logic;
SIGNAL \CLK0|contador[9]~38_combout\ : std_logic;
SIGNAL \CLK0|contador[9]~feeder_combout\ : std_logic;
SIGNAL \CLK0|Mux1~3_combout\ : std_logic;
SIGNAL \CLK0|contador[9]~39\ : std_logic;
SIGNAL \CLK0|contador[10]~40_combout\ : std_logic;
SIGNAL \CLK0|Mux2~0_combout\ : std_logic;
SIGNAL \CLK0|contador[10]~41\ : std_logic;
SIGNAL \CLK0|contador[11]~42_combout\ : std_logic;
SIGNAL \CLK0|contador[11]~43\ : std_logic;
SIGNAL \CLK0|contador[12]~44_combout\ : std_logic;
SIGNAL \CLK0|contador[12]~45\ : std_logic;
SIGNAL \CLK0|contador[13]~46_combout\ : std_logic;
SIGNAL \CLK0|contador[13]~47\ : std_logic;
SIGNAL \CLK0|contador[14]~48_combout\ : std_logic;
SIGNAL \CLK0|contador[14]~49\ : std_logic;
SIGNAL \CLK0|contador[15]~50_combout\ : std_logic;
SIGNAL \CLK0|contador[15]~51\ : std_logic;
SIGNAL \CLK0|contador[16]~52_combout\ : std_logic;
SIGNAL \CLK0|contador[16]~53\ : std_logic;
SIGNAL \CLK0|contador[17]~54_combout\ : std_logic;
SIGNAL \CLK0|contador[17]~55\ : std_logic;
SIGNAL \CLK0|contador[18]~56_combout\ : std_logic;
SIGNAL \CLK0|contador[18]~57\ : std_logic;
SIGNAL \CLK0|contador[19]~58_combout\ : std_logic;
SIGNAL \CLK0|Equal0~0_combout\ : std_logic;
SIGNAL \CLK0|clk_sig~0_combout\ : std_logic;
SIGNAL \CLK0|clk_sig~feeder_combout\ : std_logic;
SIGNAL \CLK0|clk_sig~q\ : std_logic;
SIGNAL \CLK0|clk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \count[1]~3_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \current_state.stop~q\ : std_logic;
SIGNAL \tx_en~input_o\ : std_logic;
SIGNAL \current_state.idle~0_combout\ : std_logic;
SIGNAL \current_state.idle~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.start~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \current_state.data~q\ : std_logic;
SIGNAL \count[2]~2_combout\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \tx_data_int[5]~21_combout\ : std_logic;
SIGNAL \tx_data_int[5]~23_combout\ : std_logic;
SIGNAL \tx_data_int[5]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[5]~22_combout\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \tx_data_int[4]~25_combout\ : std_logic;
SIGNAL \tx_data_int[4]~27_combout\ : std_logic;
SIGNAL \tx_data_int[4]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[4]~26_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \tx_data_int[6]~17_combout\ : std_logic;
SIGNAL \tx_data_int[6]~19_combout\ : std_logic;
SIGNAL \tx_data_int[6]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[6]~18_combout\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
SIGNAL \tx_data_int[7]~29_combout\ : std_logic;
SIGNAL \tx_data_int[7]~31_combout\ : std_logic;
SIGNAL \tx_data_int[7]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[7]~30_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_data_int[1]~5_combout\ : std_logic;
SIGNAL \tx_data_int[1]~7_combout\ : std_logic;
SIGNAL \tx_data_int[1]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[1]~6_combout\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data_int[0]~9_combout\ : std_logic;
SIGNAL \tx_data_int[0]~11_combout\ : std_logic;
SIGNAL \tx_data_int[0]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[0]~10_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data_int[2]~1_combout\ : std_logic;
SIGNAL \tx_data_int[2]~3_combout\ : std_logic;
SIGNAL \tx_data_int[2]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[2]~2_combout\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data_int[3]~13_combout\ : std_logic;
SIGNAL \tx_data_int[3]~15_combout\ : std_logic;
SIGNAL \tx_data_int[3]~_emulated_q\ : std_logic;
SIGNAL \tx_data_int[3]~14_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \tx~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \tx_rdy~reg0_q\ : std_logic;
SIGNAL \CLK0|contador\ : std_logic_vector(19 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK0|divider\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_current_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_tx_rdy~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_tx_data <= tx_data;
ww_baudsel <= baudsel;
ww_clk_i <= clk_i;
ww_reset <= reset;
ww_tx_en <= tx_en;
tx <= ww_tx;
tx_rdy <= ww_tx_rdy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK0|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK0|clk_sig~q\);

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);
\ALT_INV_current_state.idle~q\ <= NOT \current_state.idle~q\;
\ALT_INV_tx_rdy~reg0_q\ <= NOT \tx_rdy~reg0_q\;
\ALT_INV_tx~reg0_q\ <= NOT \tx~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X24_Y0_N30
\tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx~reg0_q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\tx_rdy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx_rdy~reg0_q\,
	devoe => ww_devoe,
	o => \tx_rdy~output_o\);

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

-- Location: LCCOMB_X45_Y52_N12
\CLK0|contador[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[0]~20_combout\ = \CLK0|contador\(0) $ (VCC)
-- \CLK0|contador[0]~21\ = CARRY(\CLK0|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(0),
	datad => VCC,
	combout => \CLK0|contador[0]~20_combout\,
	cout => \CLK0|contador[0]~21\);

-- Location: IOIBUF_X69_Y54_N1
\baudsel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baudsel(1),
	o => \baudsel[1]~input_o\);

-- Location: LCCOMB_X45_Y52_N8
\CLK0|divider[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|divider[15]~1_combout\ = !\baudsel[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|divider[15]~1_combout\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X45_Y52_N9
\CLK0|divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|divider[15]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(15));

-- Location: LCCOMB_X45_Y51_N26
\CLK0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~4_combout\ = (!\CLK0|contador\(15) & (!\CLK0|contador\(12) & (!\CLK0|contador\(14) & !\CLK0|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(15),
	datab => \CLK0|contador\(12),
	datac => \CLK0|contador\(14),
	datad => \CLK0|contador\(13),
	combout => \CLK0|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y51_N20
\CLK0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~3_combout\ = (!\CLK0|contador\(8) & (!\CLK0|contador\(10) & (!\CLK0|contador\(11) & !\CLK0|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(8),
	datab => \CLK0|contador\(10),
	datac => \CLK0|contador\(11),
	datad => \CLK0|contador\(9),
	combout => \CLK0|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y52_N10
\CLK0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~2_combout\ = (!\CLK0|contador\(7) & (!\CLK0|contador\(6) & (!\CLK0|contador\(5) & !\CLK0|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(7),
	datab => \CLK0|contador\(6),
	datac => \CLK0|contador\(5),
	datad => \CLK0|contador\(4),
	combout => \CLK0|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y52_N6
\CLK0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~1_combout\ = (!\CLK0|contador\(0) & (!\CLK0|contador\(2) & (!\CLK0|contador\(1) & !\CLK0|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(0),
	datab => \CLK0|contador\(2),
	datac => \CLK0|contador\(1),
	datad => \CLK0|contador\(3),
	combout => \CLK0|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y51_N24
\CLK0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~5_combout\ = (\CLK0|Equal0~4_combout\ & (\CLK0|Equal0~3_combout\ & (\CLK0|Equal0~2_combout\ & \CLK0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|Equal0~4_combout\,
	datab => \CLK0|Equal0~3_combout\,
	datac => \CLK0|Equal0~2_combout\,
	datad => \CLK0|Equal0~1_combout\,
	combout => \CLK0|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y51_N22
\CLK0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~6_combout\ = (\CLK0|Equal0~0_combout\ & \CLK0|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK0|Equal0~0_combout\,
	datad => \CLK0|Equal0~5_combout\,
	combout => \CLK0|Equal0~6_combout\);

-- Location: FF_X45_Y52_N13
\CLK0|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[0]~20_combout\,
	asdata => \CLK0|divider\(15),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(0));

-- Location: LCCOMB_X45_Y52_N14
\CLK0|contador[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[1]~22_combout\ = (\CLK0|contador\(1) & (\CLK0|contador[0]~21\ & VCC)) # (!\CLK0|contador\(1) & (!\CLK0|contador[0]~21\))
-- \CLK0|contador[1]~23\ = CARRY((!\CLK0|contador\(1) & !\CLK0|contador[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(1),
	datad => VCC,
	cin => \CLK0|contador[0]~21\,
	combout => \CLK0|contador[1]~22_combout\,
	cout => \CLK0|contador[1]~23\);

-- Location: LCCOMB_X44_Y44_N16
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

-- Location: FF_X45_Y52_N15
\CLK0|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[1]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(1));

-- Location: LCCOMB_X45_Y52_N16
\CLK0|contador[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[2]~24_combout\ = (\CLK0|contador\(2) & ((GND) # (!\CLK0|contador[1]~23\))) # (!\CLK0|contador\(2) & (\CLK0|contador[1]~23\ $ (GND)))
-- \CLK0|contador[2]~25\ = CARRY((\CLK0|contador\(2)) # (!\CLK0|contador[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(2),
	datad => VCC,
	cin => \CLK0|contador[1]~23\,
	combout => \CLK0|contador[2]~24_combout\,
	cout => \CLK0|contador[2]~25\);

-- Location: IOIBUF_X56_Y54_N1
\baudsel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_baudsel(0),
	o => \baudsel[0]~input_o\);

-- Location: LCCOMB_X46_Y52_N20
\CLK0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Mux0~0_combout\ = (\baudsel[0]~input_o\) # (\baudsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudsel[0]~input_o\,
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y52_N4
\CLK0|divider[17]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|divider[17]~0_combout\ = !\CLK0|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK0|Mux0~0_combout\,
	combout => \CLK0|divider[17]~0_combout\);

-- Location: FF_X45_Y52_N5
\CLK0|divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|divider[17]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(17));

-- Location: FF_X45_Y52_N17
\CLK0|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[2]~24_combout\,
	asdata => \CLK0|divider\(17),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(2));

-- Location: LCCOMB_X45_Y52_N18
\CLK0|contador[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[3]~26_combout\ = (\CLK0|contador\(3) & (\CLK0|contador[2]~25\ & VCC)) # (!\CLK0|contador\(3) & (!\CLK0|contador[2]~25\))
-- \CLK0|contador[3]~27\ = CARRY((!\CLK0|contador\(3) & !\CLK0|contador[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(3),
	datad => VCC,
	cin => \CLK0|contador[2]~25\,
	combout => \CLK0|contador[3]~26_combout\,
	cout => \CLK0|contador[3]~27\);

-- Location: LCCOMB_X45_Y52_N0
\CLK0|divider[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|divider[4]~feeder_combout\ = \baudsel[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|divider[4]~feeder_combout\);

-- Location: FF_X45_Y52_N1
\CLK0|divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|divider[4]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(4));

-- Location: FF_X45_Y52_N19
\CLK0|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[3]~26_combout\,
	asdata => \CLK0|divider\(4),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(3));

-- Location: LCCOMB_X45_Y52_N20
\CLK0|contador[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[4]~28_combout\ = (\CLK0|contador\(4) & ((GND) # (!\CLK0|contador[3]~27\))) # (!\CLK0|contador\(4) & (\CLK0|contador[3]~27\ $ (GND)))
-- \CLK0|contador[4]~29\ = CARRY((\CLK0|contador\(4)) # (!\CLK0|contador[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(4),
	datad => VCC,
	cin => \CLK0|contador[3]~27\,
	combout => \CLK0|contador[4]~28_combout\,
	cout => \CLK0|contador[4]~29\);

-- Location: LCCOMB_X46_Y52_N0
\CLK0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Mux1~0_combout\ = (!\baudsel[0]~input_o\ & \baudsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudsel[0]~input_o\,
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|Mux1~0_combout\);

-- Location: FF_X46_Y52_N1
\CLK0|divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|Mux1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(5));

-- Location: FF_X45_Y52_N21
\CLK0|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[4]~28_combout\,
	asdata => \CLK0|divider\(5),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(4));

-- Location: LCCOMB_X45_Y52_N22
\CLK0|contador[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[5]~30_combout\ = (\CLK0|contador\(5) & (\CLK0|contador[4]~29\ & VCC)) # (!\CLK0|contador\(5) & (!\CLK0|contador[4]~29\))
-- \CLK0|contador[5]~31\ = CARRY((!\CLK0|contador\(5) & !\CLK0|contador[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(5),
	datad => VCC,
	cin => \CLK0|contador[4]~29\,
	combout => \CLK0|contador[5]~30_combout\,
	cout => \CLK0|contador[5]~31\);

-- Location: LCCOMB_X46_Y52_N30
\CLK0|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Mux1~1_combout\ = (\baudsel[0]~input_o\ & !\baudsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudsel[0]~input_o\,
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|Mux1~1_combout\);

-- Location: FF_X46_Y52_N31
\CLK0|divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|Mux1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(6));

-- Location: FF_X45_Y52_N23
\CLK0|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[5]~30_combout\,
	asdata => \CLK0|divider\(6),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(5));

-- Location: LCCOMB_X45_Y52_N24
\CLK0|contador[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[6]~32_combout\ = (\CLK0|contador\(6) & ((GND) # (!\CLK0|contador[5]~31\))) # (!\CLK0|contador\(6) & (\CLK0|contador[5]~31\ $ (GND)))
-- \CLK0|contador[6]~33\ = CARRY((\CLK0|contador\(6)) # (!\CLK0|contador[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(6),
	datad => VCC,
	cin => \CLK0|contador[5]~31\,
	combout => \CLK0|contador[6]~32_combout\,
	cout => \CLK0|contador[6]~33\);

-- Location: FF_X46_Y52_N21
\CLK0|divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|Mux0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(7));

-- Location: FF_X45_Y52_N25
\CLK0|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[6]~32_combout\,
	asdata => \CLK0|divider\(7),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(6));

-- Location: LCCOMB_X45_Y52_N26
\CLK0|contador[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[7]~34_combout\ = (\CLK0|contador\(7) & (\CLK0|contador[6]~33\ & VCC)) # (!\CLK0|contador\(7) & (!\CLK0|contador[6]~33\))
-- \CLK0|contador[7]~35\ = CARRY((!\CLK0|contador\(7) & !\CLK0|contador[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(7),
	datad => VCC,
	cin => \CLK0|contador[6]~33\,
	combout => \CLK0|contador[7]~34_combout\,
	cout => \CLK0|contador[7]~35\);

-- Location: LCCOMB_X46_Y52_N14
\CLK0|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Mux1~2_combout\ = \baudsel[0]~input_o\ $ (\baudsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudsel[0]~input_o\,
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|Mux1~2_combout\);

-- Location: LCCOMB_X45_Y52_N2
\CLK0|divider[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|divider[8]~2_combout\ = !\CLK0|Mux1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK0|Mux1~2_combout\,
	combout => \CLK0|divider[8]~2_combout\);

-- Location: FF_X45_Y52_N3
\CLK0|divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|divider[8]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(8));

-- Location: FF_X45_Y52_N27
\CLK0|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[7]~34_combout\,
	asdata => \CLK0|divider\(8),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(7));

-- Location: LCCOMB_X45_Y52_N28
\CLK0|contador[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[8]~36_combout\ = (\CLK0|contador\(8) & ((GND) # (!\CLK0|contador[7]~35\))) # (!\CLK0|contador\(8) & (\CLK0|contador[7]~35\ $ (GND)))
-- \CLK0|contador[8]~37\ = CARRY((\CLK0|contador\(8)) # (!\CLK0|contador[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(8),
	datad => VCC,
	cin => \CLK0|contador[7]~35\,
	combout => \CLK0|contador[8]~36_combout\,
	cout => \CLK0|contador[8]~37\);

-- Location: LCCOMB_X46_Y51_N20
\CLK0|contador[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[8]~feeder_combout\ = \CLK0|contador[8]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK0|contador[8]~36_combout\,
	combout => \CLK0|contador[8]~feeder_combout\);

-- Location: FF_X46_Y51_N21
\CLK0|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[8]~feeder_combout\,
	asdata => \CLK0|divider\(15),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(8));

-- Location: LCCOMB_X45_Y52_N30
\CLK0|contador[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[9]~38_combout\ = (\CLK0|contador\(9) & (\CLK0|contador[8]~37\ & VCC)) # (!\CLK0|contador\(9) & (!\CLK0|contador[8]~37\))
-- \CLK0|contador[9]~39\ = CARRY((!\CLK0|contador\(9) & !\CLK0|contador[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(9),
	datad => VCC,
	cin => \CLK0|contador[8]~37\,
	combout => \CLK0|contador[9]~38_combout\,
	cout => \CLK0|contador[9]~39\);

-- Location: LCCOMB_X45_Y51_N28
\CLK0|contador[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[9]~feeder_combout\ = \CLK0|contador[9]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador[9]~38_combout\,
	combout => \CLK0|contador[9]~feeder_combout\);

-- Location: LCCOMB_X46_Y52_N18
\CLK0|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Mux1~3_combout\ = (\baudsel[0]~input_o\ & \baudsel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudsel[0]~input_o\,
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|Mux1~3_combout\);

-- Location: FF_X46_Y52_N19
\CLK0|divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|Mux1~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(10));

-- Location: FF_X45_Y51_N29
\CLK0|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[9]~feeder_combout\,
	asdata => \CLK0|divider\(10),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(9));

-- Location: LCCOMB_X45_Y51_N0
\CLK0|contador[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[10]~40_combout\ = (\CLK0|contador\(10) & ((GND) # (!\CLK0|contador[9]~39\))) # (!\CLK0|contador\(10) & (\CLK0|contador[9]~39\ $ (GND)))
-- \CLK0|contador[10]~41\ = CARRY((\CLK0|contador\(10)) # (!\CLK0|contador[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(10),
	datad => VCC,
	cin => \CLK0|contador[9]~39\,
	combout => \CLK0|contador[10]~40_combout\,
	cout => \CLK0|contador[10]~41\);

-- Location: LCCOMB_X46_Y52_N16
\CLK0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Mux2~0_combout\ = (\baudsel[1]~input_o\) # (!\baudsel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \baudsel[0]~input_o\,
	datad => \baudsel[1]~input_o\,
	combout => \CLK0|Mux2~0_combout\);

-- Location: FF_X46_Y52_N17
\CLK0|divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|Mux2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(11));

-- Location: FF_X45_Y51_N1
\CLK0|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[10]~40_combout\,
	asdata => \CLK0|divider\(11),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(10));

-- Location: LCCOMB_X45_Y51_N2
\CLK0|contador[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[11]~42_combout\ = (\CLK0|contador\(11) & (\CLK0|contador[10]~41\ & VCC)) # (!\CLK0|contador\(11) & (!\CLK0|contador[10]~41\))
-- \CLK0|contador[11]~43\ = CARRY((!\CLK0|contador\(11) & !\CLK0|contador[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(11),
	datad => VCC,
	cin => \CLK0|contador[10]~41\,
	combout => \CLK0|contador[11]~42_combout\,
	cout => \CLK0|contador[11]~43\);

-- Location: FF_X45_Y51_N3
\CLK0|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[11]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(11));

-- Location: LCCOMB_X45_Y51_N4
\CLK0|contador[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[12]~44_combout\ = (\CLK0|contador\(12) & ((GND) # (!\CLK0|contador[11]~43\))) # (!\CLK0|contador\(12) & (\CLK0|contador[11]~43\ $ (GND)))
-- \CLK0|contador[12]~45\ = CARRY((\CLK0|contador\(12)) # (!\CLK0|contador[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(12),
	datad => VCC,
	cin => \CLK0|contador[11]~43\,
	combout => \CLK0|contador[12]~44_combout\,
	cout => \CLK0|contador[12]~45\);

-- Location: FF_X46_Y52_N15
\CLK0|divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|Mux1~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|divider\(13));

-- Location: FF_X45_Y51_N5
\CLK0|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[12]~44_combout\,
	asdata => \CLK0|divider\(13),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(12));

-- Location: LCCOMB_X45_Y51_N6
\CLK0|contador[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[13]~46_combout\ = (\CLK0|contador\(13) & (\CLK0|contador[12]~45\ & VCC)) # (!\CLK0|contador\(13) & (!\CLK0|contador[12]~45\))
-- \CLK0|contador[13]~47\ = CARRY((!\CLK0|contador\(13) & !\CLK0|contador[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(13),
	datad => VCC,
	cin => \CLK0|contador[12]~45\,
	combout => \CLK0|contador[13]~46_combout\,
	cout => \CLK0|contador[13]~47\);

-- Location: FF_X45_Y51_N7
\CLK0|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[13]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(13));

-- Location: LCCOMB_X45_Y51_N8
\CLK0|contador[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[14]~48_combout\ = (\CLK0|contador\(14) & ((GND) # (!\CLK0|contador[13]~47\))) # (!\CLK0|contador\(14) & (\CLK0|contador[13]~47\ $ (GND)))
-- \CLK0|contador[14]~49\ = CARRY((\CLK0|contador\(14)) # (!\CLK0|contador[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(14),
	datad => VCC,
	cin => \CLK0|contador[13]~47\,
	combout => \CLK0|contador[14]~48_combout\,
	cout => \CLK0|contador[14]~49\);

-- Location: FF_X45_Y51_N9
\CLK0|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[14]~48_combout\,
	asdata => \CLK0|divider\(15),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(14));

-- Location: LCCOMB_X45_Y51_N10
\CLK0|contador[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[15]~50_combout\ = (\CLK0|contador\(15) & (\CLK0|contador[14]~49\ & VCC)) # (!\CLK0|contador\(15) & (!\CLK0|contador[14]~49\))
-- \CLK0|contador[15]~51\ = CARRY((!\CLK0|contador\(15) & !\CLK0|contador[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(15),
	datad => VCC,
	cin => \CLK0|contador[14]~49\,
	combout => \CLK0|contador[15]~50_combout\,
	cout => \CLK0|contador[15]~51\);

-- Location: FF_X45_Y51_N11
\CLK0|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[15]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(15));

-- Location: LCCOMB_X45_Y51_N12
\CLK0|contador[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[16]~52_combout\ = (\CLK0|contador\(16) & ((GND) # (!\CLK0|contador[15]~51\))) # (!\CLK0|contador\(16) & (\CLK0|contador[15]~51\ $ (GND)))
-- \CLK0|contador[16]~53\ = CARRY((\CLK0|contador\(16)) # (!\CLK0|contador[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(16),
	datad => VCC,
	cin => \CLK0|contador[15]~51\,
	combout => \CLK0|contador[16]~52_combout\,
	cout => \CLK0|contador[16]~53\);

-- Location: FF_X45_Y51_N13
\CLK0|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[16]~52_combout\,
	asdata => \CLK0|divider\(17),
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(16));

-- Location: LCCOMB_X45_Y51_N14
\CLK0|contador[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[17]~54_combout\ = (\CLK0|contador\(17) & (\CLK0|contador[16]~53\ & VCC)) # (!\CLK0|contador\(17) & (!\CLK0|contador[16]~53\))
-- \CLK0|contador[17]~55\ = CARRY((!\CLK0|contador\(17) & !\CLK0|contador[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(17),
	datad => VCC,
	cin => \CLK0|contador[16]~53\,
	combout => \CLK0|contador[17]~54_combout\,
	cout => \CLK0|contador[17]~55\);

-- Location: FF_X45_Y51_N15
\CLK0|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[17]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(17));

-- Location: LCCOMB_X45_Y51_N16
\CLK0|contador[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[18]~56_combout\ = (\CLK0|contador\(18) & ((GND) # (!\CLK0|contador[17]~55\))) # (!\CLK0|contador\(18) & (\CLK0|contador[17]~55\ $ (GND)))
-- \CLK0|contador[18]~57\ = CARRY((\CLK0|contador\(18)) # (!\CLK0|contador[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK0|contador\(18),
	datad => VCC,
	cin => \CLK0|contador[17]~55\,
	combout => \CLK0|contador[18]~56_combout\,
	cout => \CLK0|contador[18]~57\);

-- Location: FF_X45_Y51_N17
\CLK0|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[18]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(18));

-- Location: LCCOMB_X45_Y51_N18
\CLK0|contador[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|contador[19]~58_combout\ = \CLK0|contador[18]~57\ $ (!\CLK0|contador\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK0|contador\(19),
	cin => \CLK0|contador[18]~57\,
	combout => \CLK0|contador[19]~58_combout\);

-- Location: FF_X45_Y51_N19
\CLK0|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|contador[19]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~input_o\,
	sload => \CLK0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|contador\(19));

-- Location: LCCOMB_X45_Y51_N30
\CLK0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|Equal0~0_combout\ = (!\CLK0|contador\(16) & (!\CLK0|contador\(18) & (!\CLK0|contador\(17) & !\CLK0|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|contador\(16),
	datab => \CLK0|contador\(18),
	datac => \CLK0|contador\(17),
	datad => \CLK0|contador\(19),
	combout => \CLK0|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y51_N30
\CLK0|clk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|clk_sig~0_combout\ = \CLK0|clk_sig~q\ $ (((\CLK0|Equal0~0_combout\ & \CLK0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|Equal0~0_combout\,
	datac => \CLK0|clk_sig~q\,
	datad => \CLK0|Equal0~5_combout\,
	combout => \CLK0|clk_sig~0_combout\);

-- Location: LCCOMB_X44_Y51_N2
\CLK0|clk_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK0|clk_sig~feeder_combout\ = \CLK0|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK0|clk_sig~0_combout\,
	combout => \CLK0|clk_sig~feeder_combout\);

-- Location: FF_X44_Y51_N3
\CLK0|clk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK0|clk_sig~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK0|clk_sig~q\);

-- Location: CLKCTRL_G10
\CLK0|clk_sig~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK0|clk_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK0|clk_sig~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N26
\count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~3_combout\ = count(1) $ (((count(0) & \current_state.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datac => \current_state.data~q\,
	datad => count(1),
	combout => \count[1]~3_combout\);

-- Location: FF_X46_Y53_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \count[1]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X45_Y53_N8
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (count(0) & (count(3) $ (((count(2) & count(1)))))) # (!count(0) & (count(3) & ((count(2)) # (count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \count~0_combout\);

-- Location: FF_X45_Y53_N9
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \reset~input_o\,
	ena => \current_state.data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X45_Y53_N6
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!count(0) & ((count(1)) # ((count(2)) # (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => count(0),
	datad => count(2),
	combout => \count~1_combout\);

-- Location: FF_X45_Y53_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \reset~input_o\,
	ena => \current_state.data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X45_Y53_N14
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(0) & (!count(2) & (count(3) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y53_N20
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.data~q\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.data~q\,
	datac => \Equal0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X45_Y53_N21
\current_state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.stop~q\);

-- Location: IOIBUF_X49_Y54_N29
\tx_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_en,
	o => \tx_en~input_o\);

-- Location: LCCOMB_X45_Y53_N22
\current_state.idle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.idle~0_combout\ = (\Selector2~0_combout\ & (!\current_state.stop~q\)) # (!\Selector2~0_combout\ & ((\Selector5~0_combout\ & (!\current_state.stop~q\)) # (!\Selector5~0_combout\ & ((\current_state.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.stop~q\,
	datab => \Selector2~0_combout\,
	datac => \current_state.idle~q\,
	datad => \Selector5~0_combout\,
	combout => \current_state.idle~0_combout\);

-- Location: FF_X45_Y53_N23
\current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \current_state.idle~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.idle~q\);

-- Location: LCCOMB_X45_Y53_N16
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\current_state.idle~q\ & \tx_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.idle~q\,
	datac => \tx_en~input_o\,
	combout => \Selector3~0_combout\);

-- Location: FF_X45_Y53_N17
\current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.start~q\);

-- Location: LCCOMB_X45_Y53_N24
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.stop~q\) # ((\current_state.start~q\) # ((\tx_en~input_o\ & !\current_state.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.stop~q\,
	datab => \tx_en~input_o\,
	datac => \current_state.data~q\,
	datad => \current_state.start~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X45_Y53_N10
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.start~q\ & !\current_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.start~q\,
	datac => \current_state.stop~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X45_Y53_N30
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((!\Selector2~0_combout\ & (!\Equal0~0_combout\ & \current_state.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \current_state.data~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X45_Y53_N31
\current_state.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.data~q\);

-- Location: LCCOMB_X45_Y53_N28
\count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[2]~2_combout\ = count(2) $ (((\current_state.data~q\ & (count(0) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.data~q\,
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \count[2]~2_combout\);

-- Location: FF_X45_Y53_N29
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \count[2]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: IOIBUF_X49_Y54_N1
\tx_data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: LCCOMB_X47_Y53_N18
\tx_data_int[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[5]~21_combout\ = (\reset~input_o\ & ((\tx_data_int[5]~21_combout\))) # (!\reset~input_o\ & (\tx_data[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[5]~input_o\,
	datac => \tx_data_int[5]~21_combout\,
	datad => \reset~input_o\,
	combout => \tx_data_int[5]~21_combout\);

-- Location: LCCOMB_X47_Y53_N12
\tx_data_int[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[5]~23_combout\ = \tx_data_int[5]~21_combout\ $ (\tx_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_data_int[5]~21_combout\,
	datad => \tx_data[5]~input_o\,
	combout => \tx_data_int[5]~23_combout\);

-- Location: FF_X46_Y53_N5
\tx_data_int[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[5]~23_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[5]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N4
\tx_data_int[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[5]~22_combout\ = (\reset~input_o\ & ((\tx_data_int[5]~_emulated_q\ $ (\tx_data_int[5]~21_combout\)))) # (!\reset~input_o\ & (\tx_data[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tx_data[5]~input_o\,
	datac => \tx_data_int[5]~_emulated_q\,
	datad => \tx_data_int[5]~21_combout\,
	combout => \tx_data_int[5]~22_combout\);

-- Location: IOIBUF_X54_Y54_N22
\tx_data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: LCCOMB_X46_Y53_N6
\tx_data_int[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[4]~25_combout\ = (\reset~input_o\ & (\tx_data_int[4]~25_combout\)) # (!\reset~input_o\ & ((\tx_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data_int[4]~25_combout\,
	datac => \tx_data[4]~input_o\,
	datad => \reset~input_o\,
	combout => \tx_data_int[4]~25_combout\);

-- Location: LCCOMB_X47_Y53_N14
\tx_data_int[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[4]~27_combout\ = \tx_data_int[4]~25_combout\ $ (\tx_data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data_int[4]~25_combout\,
	datad => \tx_data[4]~input_o\,
	combout => \tx_data_int[4]~27_combout\);

-- Location: FF_X46_Y53_N27
\tx_data_int[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[4]~27_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[4]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N26
\tx_data_int[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[4]~26_combout\ = (\reset~input_o\ & ((\tx_data_int[4]~_emulated_q\ $ (\tx_data_int[4]~25_combout\)))) # (!\reset~input_o\ & (\tx_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tx_data[4]~input_o\,
	datac => \tx_data_int[4]~_emulated_q\,
	datad => \tx_data_int[4]~25_combout\,
	combout => \tx_data_int[4]~26_combout\);

-- Location: LCCOMB_X46_Y53_N14
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (count(1) & (((count(0))))) # (!count(1) & ((count(0) & (\tx_data_int[5]~22_combout\)) # (!count(0) & ((\tx_data_int[4]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \tx_data_int[5]~22_combout\,
	datac => count(0),
	datad => \tx_data_int[4]~26_combout\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X54_Y54_N15
\tx_data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: LCCOMB_X47_Y53_N24
\tx_data_int[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[6]~17_combout\ = (\reset~input_o\ & (\tx_data_int[6]~17_combout\)) # (!\reset~input_o\ & ((\tx_data[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data_int[6]~17_combout\,
	datac => \tx_data[6]~input_o\,
	datad => \reset~input_o\,
	combout => \tx_data_int[6]~17_combout\);

-- Location: LCCOMB_X47_Y53_N10
\tx_data_int[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[6]~19_combout\ = \tx_data_int[6]~17_combout\ $ (\tx_data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data_int[6]~17_combout\,
	datac => \tx_data[6]~input_o\,
	combout => \tx_data_int[6]~19_combout\);

-- Location: FF_X46_Y53_N23
\tx_data_int[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[6]~19_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[6]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N22
\tx_data_int[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[6]~18_combout\ = (\reset~input_o\ & ((\tx_data_int[6]~_emulated_q\ $ (\tx_data_int[6]~17_combout\)))) # (!\reset~input_o\ & (\tx_data[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[6]~input_o\,
	datab => \reset~input_o\,
	datac => \tx_data_int[6]~_emulated_q\,
	datad => \tx_data_int[6]~17_combout\,
	combout => \tx_data_int[6]~18_combout\);

-- Location: IOIBUF_X58_Y54_N29
\tx_data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

-- Location: LCCOMB_X47_Y53_N16
\tx_data_int[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[7]~29_combout\ = (\reset~input_o\ & ((\tx_data_int[7]~29_combout\))) # (!\reset~input_o\ & (\tx_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[7]~input_o\,
	datab => \tx_data_int[7]~29_combout\,
	datad => \reset~input_o\,
	combout => \tx_data_int[7]~29_combout\);

-- Location: LCCOMB_X47_Y53_N20
\tx_data_int[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[7]~31_combout\ = \tx_data_int[7]~29_combout\ $ (\tx_data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_data_int[7]~29_combout\,
	datad => \tx_data[7]~input_o\,
	combout => \tx_data_int[7]~31_combout\);

-- Location: FF_X46_Y53_N1
\tx_data_int[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[7]~31_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[7]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N0
\tx_data_int[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[7]~30_combout\ = (\reset~input_o\ & ((\tx_data_int[7]~_emulated_q\ $ (\tx_data_int[7]~29_combout\)))) # (!\reset~input_o\ & (\tx_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[7]~input_o\,
	datab => \reset~input_o\,
	datac => \tx_data_int[7]~_emulated_q\,
	datad => \tx_data_int[7]~29_combout\,
	combout => \tx_data_int[7]~30_combout\);

-- Location: LCCOMB_X46_Y53_N20
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (count(1) & ((\Mux0~2_combout\ & ((\tx_data_int[7]~30_combout\))) # (!\Mux0~2_combout\ & (\tx_data_int[6]~18_combout\)))) # (!count(1) & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \Mux0~2_combout\,
	datac => \tx_data_int[6]~18_combout\,
	datad => \tx_data_int[7]~30_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X46_Y53_N10
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((count(2) & (\Mux0~3_combout\ & \current_state.data~q\))) # (!\current_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Mux0~3_combout\,
	datac => \current_state.data~q\,
	datad => \current_state.idle~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\tx_data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: LCCOMB_X46_Y53_N24
\tx_data_int[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[1]~5_combout\ = (\reset~input_o\ & ((\tx_data_int[1]~5_combout\))) # (!\reset~input_o\ & (\tx_data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[1]~input_o\,
	datab => \tx_data_int[1]~5_combout\,
	datad => \reset~input_o\,
	combout => \tx_data_int[1]~5_combout\);

-- Location: LCCOMB_X47_Y53_N28
\tx_data_int[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[1]~7_combout\ = \tx_data_int[1]~5_combout\ $ (\tx_data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data_int[1]~5_combout\,
	datad => \tx_data[1]~input_o\,
	combout => \tx_data_int[1]~7_combout\);

-- Location: FF_X46_Y53_N17
\tx_data_int[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[1]~7_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[1]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N16
\tx_data_int[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[1]~6_combout\ = (\reset~input_o\ & (\tx_data_int[1]~5_combout\ $ ((\tx_data_int[1]~_emulated_q\)))) # (!\reset~input_o\ & (((\tx_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tx_data_int[1]~5_combout\,
	datac => \tx_data_int[1]~_emulated_q\,
	datad => \tx_data[1]~input_o\,
	combout => \tx_data_int[1]~6_combout\);

-- Location: IOIBUF_X51_Y54_N29
\tx_data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: LCCOMB_X47_Y53_N4
\tx_data_int[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[0]~9_combout\ = (\reset~input_o\ & ((\tx_data_int[0]~9_combout\))) # (!\reset~input_o\ & (\tx_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[0]~input_o\,
	datac => \tx_data_int[0]~9_combout\,
	datad => \reset~input_o\,
	combout => \tx_data_int[0]~9_combout\);

-- Location: LCCOMB_X47_Y53_N6
\tx_data_int[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[0]~11_combout\ = \tx_data_int[0]~9_combout\ $ (\tx_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data_int[0]~9_combout\,
	datad => \tx_data[0]~input_o\,
	combout => \tx_data_int[0]~11_combout\);

-- Location: FF_X46_Y53_N31
\tx_data_int[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[0]~11_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[0]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N30
\tx_data_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[0]~10_combout\ = (\reset~input_o\ & ((\tx_data_int[0]~_emulated_q\ $ (\tx_data_int[0]~9_combout\)))) # (!\reset~input_o\ & (\tx_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data_int[0]~_emulated_q\,
	datad => \tx_data_int[0]~9_combout\,
	combout => \tx_data_int[0]~10_combout\);

-- Location: LCCOMB_X46_Y53_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (count(1) & (((count(0))))) # (!count(1) & ((count(0) & (\tx_data_int[1]~6_combout\)) # (!count(0) & ((\tx_data_int[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \tx_data_int[1]~6_combout\,
	datac => count(0),
	datad => \tx_data_int[0]~10_combout\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\tx_data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: LCCOMB_X47_Y53_N26
\tx_data_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[2]~1_combout\ = (\reset~input_o\ & ((\tx_data_int[2]~1_combout\))) # (!\reset~input_o\ & (\tx_data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[2]~input_o\,
	datac => \tx_data_int[2]~1_combout\,
	datad => \reset~input_o\,
	combout => \tx_data_int[2]~1_combout\);

-- Location: LCCOMB_X47_Y53_N30
\tx_data_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[2]~3_combout\ = \tx_data[2]~input_o\ $ (\tx_data_int[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[2]~input_o\,
	datac => \tx_data_int[2]~1_combout\,
	combout => \tx_data_int[2]~3_combout\);

-- Location: FF_X47_Y53_N9
\tx_data_int[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[2]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[2]~_emulated_q\);

-- Location: LCCOMB_X47_Y53_N8
\tx_data_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[2]~2_combout\ = (\reset~input_o\ & (\tx_data_int[2]~1_combout\ $ (((\tx_data_int[2]~_emulated_q\))))) # (!\reset~input_o\ & (((\tx_data[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data_int[2]~1_combout\,
	datab => \tx_data[2]~input_o\,
	datac => \tx_data_int[2]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \tx_data_int[2]~2_combout\);

-- Location: IOIBUF_X54_Y54_N29
\tx_data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: LCCOMB_X47_Y53_N2
\tx_data_int[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[3]~13_combout\ = (\reset~input_o\ & ((\tx_data_int[3]~13_combout\))) # (!\reset~input_o\ & (\tx_data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_data[3]~input_o\,
	datac => \tx_data_int[3]~13_combout\,
	datad => \reset~input_o\,
	combout => \tx_data_int[3]~13_combout\);

-- Location: LCCOMB_X47_Y53_N0
\tx_data_int[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[3]~15_combout\ = \tx_data_int[3]~13_combout\ $ (\tx_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_data_int[3]~13_combout\,
	datad => \tx_data[3]~input_o\,
	combout => \tx_data_int[3]~15_combout\);

-- Location: FF_X46_Y53_N29
\tx_data_int[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	asdata => \tx_data_int[3]~15_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \ALT_INV_current_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_data_int[3]~_emulated_q\);

-- Location: LCCOMB_X46_Y53_N28
\tx_data_int[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_data_int[3]~14_combout\ = (\reset~input_o\ & ((\tx_data_int[3]~_emulated_q\ $ (\tx_data_int[3]~13_combout\)))) # (!\reset~input_o\ & (\tx_data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[3]~input_o\,
	datab => \reset~input_o\,
	datac => \tx_data_int[3]~_emulated_q\,
	datad => \tx_data_int[3]~13_combout\,
	combout => \tx_data_int[3]~14_combout\);

-- Location: LCCOMB_X46_Y53_N2
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\tx_data_int[3]~14_combout\) # (!count(1))))) # (!\Mux0~0_combout\ & (\tx_data_int[2]~2_combout\ & (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \tx_data_int[2]~2_combout\,
	datac => count(1),
	datad => \tx_data_int[3]~14_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X46_Y53_N18
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Equal0~0_combout\ & (((!\tx~reg0_q\)))) # (!\Equal0~0_combout\ & (!count(2) & (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Mux0~1_combout\,
	datac => \tx~reg0_q\,
	datad => \Equal0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X46_Y53_N8
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~0_combout\ & (!\current_state.stop~q\ & ((!\current_state.data~q\) # (!\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector0~1_combout\,
	datac => \current_state.data~q\,
	datad => \current_state.stop~q\,
	combout => \Selector0~2_combout\);

-- Location: FF_X46_Y53_N9
\tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx~reg0_q\);

-- Location: LCCOMB_X45_Y53_N12
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.idle~q\ & ((\tx_rdy~reg0_q\) # (!\current_state.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.data~q\,
	datac => \tx_rdy~reg0_q\,
	datad => \current_state.idle~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X45_Y53_N13
\tx_rdy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK0|clk_sig~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_rdy~reg0_q\);

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

ww_tx <= \tx~output_o\;

ww_tx_rdy <= \tx_rdy~output_o\;
END structure;


