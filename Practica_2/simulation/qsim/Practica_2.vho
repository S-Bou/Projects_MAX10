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

-- DATE "02/19/2021 20:37:47"

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

ENTITY 	Practica_2 IS
    PORT (
	cout : OUT std_logic;
	CLK : IN std_logic;
	PWM_OUT : OUT std_logic;
	DATAIN : IN std_logic_vector(7 DOWNTO 0);
	LED_OUT : OUT std_logic
	);
END Practica_2;

-- Design Ports Information
-- cout	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PWM_OUT	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_OUT	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATAIN[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_PWM_OUT : std_logic;
SIGNAL ww_DATAIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_OUT : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|auto_generated|op_1~16clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \PWM_OUT~output_o\ : std_logic;
SIGNAL \LED_OUT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst3|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \DATAIN[7]~input_o\ : std_logic;
SIGNAL \inst1|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[6]~input_o\ : std_logic;
SIGNAL \inst1|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[5]~input_o\ : std_logic;
SIGNAL \inst1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[4]~input_o\ : std_logic;
SIGNAL \inst1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[3]~input_o\ : std_logic;
SIGNAL \inst1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[2]~input_o\ : std_logic;
SIGNAL \inst1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[1]~input_o\ : std_logic;
SIGNAL \inst1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \DATAIN[0]~input_o\ : std_logic;
SIGNAL \inst1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|auto_generated|op_1~16clkctrl_outclk\ : std_logic;
SIGNAL \inst3|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|dffs\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

cout <= ww_cout;
ww_CLK <= CLK;
PWM_OUT <= ww_PWM_OUT;
ww_DATAIN <= DATAIN;
LED_OUT <= ww_LED_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\inst2|auto_generated|op_1~16clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|auto_generated|op_1~16_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X22_Y0_N16
\cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\PWM_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|op_1~16clkctrl_outclk\,
	devoe => ww_devoe,
	o => \PWM_OUT~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LED_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|auto_generated|op_1~16_combout\,
	devoe => ww_devoe,
	o => \LED_OUT~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X46_Y50_N6
\inst3|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita0~combout\ = \inst3|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst3|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst3|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst3|auto_generated|counter_comb_bita0~combout\,
	cout => \inst3|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X46_Y46_N16
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

-- Location: FF_X46_Y50_N7
\inst3|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X46_Y50_N8
\inst3|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita1~combout\ = (\inst3|auto_generated|counter_reg_bit\(1) & (!\inst3|auto_generated|counter_comb_bita0~COUT\)) # (!\inst3|auto_generated|counter_reg_bit\(1) & ((\inst3|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst3|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst3|auto_generated|counter_comb_bita0~COUT\) # (!\inst3|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita1~combout\,
	cout => \inst3|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X46_Y50_N9
\inst3|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X46_Y50_N10
\inst3|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita2~combout\ = (\inst3|auto_generated|counter_reg_bit\(2) & (\inst3|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst3|auto_generated|counter_reg_bit\(2) & (!\inst3|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \inst3|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst3|auto_generated|counter_reg_bit\(2) & !\inst3|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita2~combout\,
	cout => \inst3|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X46_Y50_N11
\inst3|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X46_Y50_N12
\inst3|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita3~combout\ = (\inst3|auto_generated|counter_reg_bit\(3) & (!\inst3|auto_generated|counter_comb_bita2~COUT\)) # (!\inst3|auto_generated|counter_reg_bit\(3) & ((\inst3|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst3|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst3|auto_generated|counter_comb_bita2~COUT\) # (!\inst3|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita3~combout\,
	cout => \inst3|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X46_Y50_N13
\inst3|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X46_Y50_N14
\inst3|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita4~combout\ = (\inst3|auto_generated|counter_reg_bit\(4) & (\inst3|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst3|auto_generated|counter_reg_bit\(4) & (!\inst3|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \inst3|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst3|auto_generated|counter_reg_bit\(4) & !\inst3|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita4~combout\,
	cout => \inst3|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X46_Y50_N15
\inst3|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X46_Y50_N16
\inst3|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita5~combout\ = (\inst3|auto_generated|counter_reg_bit\(5) & (!\inst3|auto_generated|counter_comb_bita4~COUT\)) # (!\inst3|auto_generated|counter_reg_bit\(5) & ((\inst3|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst3|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst3|auto_generated|counter_comb_bita4~COUT\) # (!\inst3|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita5~combout\,
	cout => \inst3|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X46_Y50_N17
\inst3|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X46_Y50_N18
\inst3|auto_generated|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita6~combout\ = (\inst3|auto_generated|counter_reg_bit\(6) & (\inst3|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst3|auto_generated|counter_reg_bit\(6) & (!\inst3|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \inst3|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst3|auto_generated|counter_reg_bit\(6) & !\inst3|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita6~combout\,
	cout => \inst3|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X46_Y50_N19
\inst3|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X46_Y50_N20
\inst3|auto_generated|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita7~combout\ = (\inst3|auto_generated|counter_reg_bit\(7) & (!\inst3|auto_generated|counter_comb_bita6~COUT\)) # (!\inst3|auto_generated|counter_reg_bit\(7) & ((\inst3|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst3|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst3|auto_generated|counter_comb_bita6~COUT\) # (!\inst3|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst3|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita7~combout\,
	cout => \inst3|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X46_Y50_N21
\inst3|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X46_Y50_N22
\inst3|auto_generated|counter_comb_bita7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|auto_generated|counter_comb_bita7~0_combout\ = !\inst3|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst3|auto_generated|counter_comb_bita7~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\DATAIN[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(7),
	o => \DATAIN[7]~input_o\);

-- Location: LCCOMB_X46_Y50_N28
\inst1|dffs[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[7]~feeder_combout\ = \DATAIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAIN[7]~input_o\,
	combout => \inst1|dffs[7]~feeder_combout\);

-- Location: FF_X46_Y50_N29
\inst1|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[7]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(7));

-- Location: IOIBUF_X54_Y54_N15
\DATAIN[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(6),
	o => \DATAIN[6]~input_o\);

-- Location: LCCOMB_X46_Y50_N26
\inst1|dffs[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[6]~feeder_combout\ = \DATAIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAIN[6]~input_o\,
	combout => \inst1|dffs[6]~feeder_combout\);

-- Location: FF_X46_Y50_N27
\inst1|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[6]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(6));

-- Location: IOIBUF_X49_Y54_N1
\DATAIN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(5),
	o => \DATAIN[5]~input_o\);

-- Location: LCCOMB_X46_Y50_N0
\inst1|dffs[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[5]~feeder_combout\ = \DATAIN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAIN[5]~input_o\,
	combout => \inst1|dffs[5]~feeder_combout\);

-- Location: FF_X46_Y50_N1
\inst1|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[5]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(5));

-- Location: IOIBUF_X54_Y54_N22
\DATAIN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(4),
	o => \DATAIN[4]~input_o\);

-- Location: LCCOMB_X46_Y50_N4
\inst1|dffs[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[4]~feeder_combout\ = \DATAIN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAIN[4]~input_o\,
	combout => \inst1|dffs[4]~feeder_combout\);

-- Location: FF_X46_Y50_N5
\inst1|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[4]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(4));

-- Location: IOIBUF_X54_Y54_N29
\DATAIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(3),
	o => \DATAIN[3]~input_o\);

-- Location: LCCOMB_X46_Y50_N2
\inst1|dffs[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[3]~feeder_combout\ = \DATAIN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAIN[3]~input_o\,
	combout => \inst1|dffs[3]~feeder_combout\);

-- Location: FF_X46_Y50_N3
\inst1|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[3]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(3));

-- Location: IOIBUF_X51_Y54_N1
\DATAIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(2),
	o => \DATAIN[2]~input_o\);

-- Location: LCCOMB_X47_Y50_N30
\inst1|dffs[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[2]~feeder_combout\ = \DATAIN[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAIN[2]~input_o\,
	combout => \inst1|dffs[2]~feeder_combout\);

-- Location: FF_X47_Y50_N31
\inst1|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[2]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(2));

-- Location: IOIBUF_X51_Y54_N22
\DATAIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(1),
	o => \DATAIN[1]~input_o\);

-- Location: LCCOMB_X46_Y50_N24
\inst1|dffs[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[1]~feeder_combout\ = \DATAIN[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAIN[1]~input_o\,
	combout => \inst1|dffs[1]~feeder_combout\);

-- Location: FF_X46_Y50_N25
\inst1|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[1]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(1));

-- Location: IOIBUF_X51_Y54_N29
\DATAIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(0),
	o => \DATAIN[0]~input_o\);

-- Location: LCCOMB_X46_Y50_N30
\inst1|dffs[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|dffs[0]~feeder_combout\ = \DATAIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAIN[0]~input_o\,
	combout => \inst1|dffs[0]~feeder_combout\);

-- Location: FF_X46_Y50_N31
\inst1|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|dffs[0]~feeder_combout\,
	ena => \inst3|auto_generated|counter_comb_bita7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dffs\(0));

-- Location: LCCOMB_X47_Y50_N0
\inst2|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~1_cout\ = CARRY((\inst3|auto_generated|counter_reg_bit\(0) & \inst1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(0),
	datab => \inst1|dffs\(0),
	datad => VCC,
	cout => \inst2|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X47_Y50_N2
\inst2|auto_generated|op_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~3_cout\ = CARRY((\inst3|auto_generated|counter_reg_bit\(1) & (!\inst1|dffs\(1) & !\inst2|auto_generated|op_1~1_cout\)) # (!\inst3|auto_generated|counter_reg_bit\(1) & ((!\inst2|auto_generated|op_1~1_cout\) # 
-- (!\inst1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(1),
	datab => \inst1|dffs\(1),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~1_cout\,
	cout => \inst2|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X47_Y50_N4
\inst2|auto_generated|op_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~5_cout\ = CARRY((\inst1|dffs\(2) & ((\inst3|auto_generated|counter_reg_bit\(2)) # (!\inst2|auto_generated|op_1~3_cout\))) # (!\inst1|dffs\(2) & (\inst3|auto_generated|counter_reg_bit\(2) & !\inst2|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dffs\(2),
	datab => \inst3|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~3_cout\,
	cout => \inst2|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X47_Y50_N6
\inst2|auto_generated|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~7_cout\ = CARRY((\inst1|dffs\(3) & (!\inst3|auto_generated|counter_reg_bit\(3) & !\inst2|auto_generated|op_1~5_cout\)) # (!\inst1|dffs\(3) & ((!\inst2|auto_generated|op_1~5_cout\) # 
-- (!\inst3|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dffs\(3),
	datab => \inst3|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~5_cout\,
	cout => \inst2|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X47_Y50_N8
\inst2|auto_generated|op_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~9_cout\ = CARRY((\inst3|auto_generated|counter_reg_bit\(4) & ((\inst1|dffs\(4)) # (!\inst2|auto_generated|op_1~7_cout\))) # (!\inst3|auto_generated|counter_reg_bit\(4) & (\inst1|dffs\(4) & !\inst2|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(4),
	datab => \inst1|dffs\(4),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~7_cout\,
	cout => \inst2|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X47_Y50_N10
\inst2|auto_generated|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~11_cout\ = CARRY((\inst1|dffs\(5) & (!\inst3|auto_generated|counter_reg_bit\(5) & !\inst2|auto_generated|op_1~9_cout\)) # (!\inst1|dffs\(5) & ((!\inst2|auto_generated|op_1~9_cout\) # 
-- (!\inst3|auto_generated|counter_reg_bit\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dffs\(5),
	datab => \inst3|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~9_cout\,
	cout => \inst2|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X47_Y50_N12
\inst2|auto_generated|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~13_cout\ = CARRY((\inst1|dffs\(6) & ((\inst3|auto_generated|counter_reg_bit\(6)) # (!\inst2|auto_generated|op_1~11_cout\))) # (!\inst1|dffs\(6) & (\inst3|auto_generated|counter_reg_bit\(6) & 
-- !\inst2|auto_generated|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dffs\(6),
	datab => \inst3|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~11_cout\,
	cout => \inst2|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X47_Y50_N14
\inst2|auto_generated|op_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~15_cout\ = CARRY((\inst3|auto_generated|counter_reg_bit\(7) & (!\inst1|dffs\(7) & !\inst2|auto_generated|op_1~13_cout\)) # (!\inst3|auto_generated|counter_reg_bit\(7) & ((!\inst2|auto_generated|op_1~13_cout\) # 
-- (!\inst1|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|auto_generated|counter_reg_bit\(7),
	datab => \inst1|dffs\(7),
	datad => VCC,
	cin => \inst2|auto_generated|op_1~13_cout\,
	cout => \inst2|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X47_Y50_N16
\inst2|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|auto_generated|op_1~16_combout\ = !\inst2|auto_generated|op_1~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|auto_generated|op_1~15_cout\,
	combout => \inst2|auto_generated|op_1~16_combout\);

-- Location: CLKCTRL_G11
\inst2|auto_generated|op_1~16clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|auto_generated|op_1~16clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|auto_generated|op_1~16clkctrl_outclk\);

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

ww_cout <= \cout~output_o\;

ww_PWM_OUT <= \PWM_OUT~output_o\;

ww_LED_OUT <= \LED_OUT~output_o\;
END structure;


