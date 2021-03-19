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

-- DATE "03/19/2021 13:18:02"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	sw : IN std_logic_vector(9 DOWNTO 0);
	ledr : OUT std_logic_vector(5 DOWNTO 0);
	sel : INOUT std_logic_vector(1 DOWNTO 0);
	solAdd : INOUT std_logic_vector(3 DOWNTO 0);
	solSub : INOUT std_logic_vector(3 DOWNTO 0);
	solMul : INOUT std_logic_vector(5 DOWNTO 0);
	solCom : INOUT std_logic_vector(1 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- sw[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solAdd[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solAdd[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solAdd[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solAdd[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solSub[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solSub[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solSub[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solSub[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solMul[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solMul[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solMul[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solMul[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solMul[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solMul[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solCom[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solCom[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux4~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \solAdd[0]~input_o\ : std_logic;
SIGNAL \solAdd[1]~input_o\ : std_logic;
SIGNAL \solAdd[2]~input_o\ : std_logic;
SIGNAL \solAdd[3]~input_o\ : std_logic;
SIGNAL \solSub[0]~input_o\ : std_logic;
SIGNAL \solSub[1]~input_o\ : std_logic;
SIGNAL \solSub[2]~input_o\ : std_logic;
SIGNAL \solSub[3]~input_o\ : std_logic;
SIGNAL \solMul[0]~input_o\ : std_logic;
SIGNAL \solMul[1]~input_o\ : std_logic;
SIGNAL \solMul[2]~input_o\ : std_logic;
SIGNAL \solMul[3]~input_o\ : std_logic;
SIGNAL \solMul[4]~input_o\ : std_logic;
SIGNAL \solMul[5]~input_o\ : std_logic;
SIGNAL \solCom[0]~input_o\ : std_logic;
SIGNAL \solCom[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \solAdd[0]~output_o\ : std_logic;
SIGNAL \solAdd[1]~output_o\ : std_logic;
SIGNAL \solAdd[2]~output_o\ : std_logic;
SIGNAL \solAdd[3]~output_o\ : std_logic;
SIGNAL \solSub[0]~output_o\ : std_logic;
SIGNAL \solSub[1]~output_o\ : std_logic;
SIGNAL \solSub[2]~output_o\ : std_logic;
SIGNAL \solSub[3]~output_o\ : std_logic;
SIGNAL \solMul[0]~output_o\ : std_logic;
SIGNAL \solMul[1]~output_o\ : std_logic;
SIGNAL \solMul[2]~output_o\ : std_logic;
SIGNAL \solMul[3]~output_o\ : std_logic;
SIGNAL \solMul[4]~output_o\ : std_logic;
SIGNAL \solMul[5]~output_o\ : std_logic;
SIGNAL \solCom[0]~output_o\ : std_logic;
SIGNAL \solCom[1]~output_o\ : std_logic;
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \ledr[4]~output_o\ : std_logic;
SIGNAL \ledr[5]~output_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \A3B|FA0|HA2|s1~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \A3B|FA0|Cout~1_combout\ : std_logic;
SIGNAL \A3B|FA1|HA2|s1~combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \S3B|FS2|HS1|s1~0_combout\ : std_logic;
SIGNAL \A3B|FA2|HA2|s1~combout\ : std_logic;
SIGNAL \A3B|FA1|Cout~0_combout\ : std_logic;
SIGNAL \A3B|FA2|Cout~1_combout\ : std_logic;
SIGNAL \S3B|FS0|Bout~combout\ : std_logic;
SIGNAL \S3B|FS1|HS2|s1~combout\ : std_logic;
SIGNAL \S3B|FS2|HS2|s1~combout\ : std_logic;
SIGNAL \S3B|FS1|Bout~combout\ : std_logic;
SIGNAL \S3B|FS2|Bout~combout\ : std_logic;
SIGNAL \A3B|FA0|Cout~0_combout\ : std_logic;
SIGNAL \M3B|HA0|s1~combout\ : std_logic;
SIGNAL \M3B|comb~0_combout\ : std_logic;
SIGNAL \M3B|comb~1_combout\ : std_logic;
SIGNAL \M3B|comb~2_combout\ : std_logic;
SIGNAL \M3B|HA1|s1~combout\ : std_logic;
SIGNAL \M3B|FA0|HA2|s1~0_combout\ : std_logic;
SIGNAL \M3B|FA0|Cout~0_combout\ : std_logic;
SIGNAL \M3B|FA1|HA2|s1~4_combout\ : std_logic;
SIGNAL \M3B|FA1|HA2|s1~5_combout\ : std_logic;
SIGNAL \M3B|HA2|s1~combout\ : std_logic;
SIGNAL \A3B|FA2|Cout~0_combout\ : std_logic;
SIGNAL \M3B|FA1|Cout~0_combout\ : std_logic;
SIGNAL \M3B|FA1|Cout~1_combout\ : std_logic;
SIGNAL \M3B|FA2|HA2|s1~combout\ : std_logic;
SIGNAL \M3B|FA2|Cout~0_combout\ : std_logic;
SIGNAL \C3B|LessThan0~0_combout\ : std_logic;
SIGNAL \C3B|LessThan0~1_combout\ : std_logic;
SIGNAL \C3B|Sc2b[0]~0_combout\ : std_logic;
SIGNAL \C3B|Sc2b[1]~1_combout\ : std_logic;
SIGNAL \S3B|FS0|HS1|s1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \ledr[2]$latch~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \ledr[3]$latch~combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~1clkctrl_outclk\ : std_logic;
SIGNAL \ledr[4]$latch~combout\ : std_logic;
SIGNAL \ledr[5]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux4~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~1_combout\);

\Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N24
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

-- Location: IOOBUF_X54_Y54_N9
\sel[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[8]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\sel[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[9]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\solAdd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3B|FA0|HA2|s1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solAdd[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\solAdd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3B|FA1|HA2|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solAdd[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\solAdd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3B|FA2|HA2|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solAdd[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\solAdd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3B|FA2|Cout~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solAdd[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\solSub[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3B|FA0|HA2|s1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solSub[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\solSub[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S3B|FS1|HS2|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solSub[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\solSub[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S3B|FS2|HS2|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solSub[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\solSub[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S3B|FS2|Bout~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solSub[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\solMul[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3B|FA0|Cout~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solMul[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\solMul[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3B|HA0|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solMul[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\solMul[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3B|FA0|HA2|s1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solMul[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\solMul[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3B|HA2|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solMul[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\solMul[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3B|FA2|HA2|s1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solMul[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\solMul[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M3B|FA2|Cout~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solMul[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\solCom[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3B|Sc2b[0]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solCom[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\solCom[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3B|Sc2b[1]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \solCom[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\ledr[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\ledr[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ledr[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\ledr[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ledr[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\ledr[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ledr[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\ledr[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ledr[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\ledr[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ledr[5]~output_o\);

-- Location: IOIBUF_X56_Y54_N1
\sw[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\sw[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X54_Y53_N30
\A3B|FA0|HA2|s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA0|HA2|s1~0_combout\ = \sw[0]~input_o\ $ (\sw[7]~input_o\ $ (\sw[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \A3B|FA0|HA2|s1~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X52_Y53_N18
\A3B|FA0|Cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA0|Cout~1_combout\ = (\sw[0]~input_o\ & ((\sw[3]~input_o\) # (\sw[7]~input_o\))) # (!\sw[0]~input_o\ & (\sw[3]~input_o\ & \sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \A3B|FA0|Cout~1_combout\);

-- Location: LCCOMB_X55_Y53_N8
\A3B|FA1|HA2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA1|HA2|s1~combout\ = \sw[1]~input_o\ $ (\sw[4]~input_o\ $ (\A3B|FA0|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \A3B|FA0|Cout~1_combout\,
	combout => \A3B|FA1|HA2|s1~combout\);

-- Location: IOIBUF_X51_Y54_N1
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X55_Y53_N2
\S3B|FS2|HS1|s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS2|HS1|s1~0_combout\ = \sw[2]~input_o\ $ (\sw[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \S3B|FS2|HS1|s1~0_combout\);

-- Location: LCCOMB_X55_Y53_N18
\A3B|FA2|HA2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA2|HA2|s1~combout\ = \S3B|FS2|HS1|s1~0_combout\ $ (((\sw[1]~input_o\ & ((\A3B|FA0|Cout~1_combout\) # (\sw[4]~input_o\))) # (!\sw[1]~input_o\ & (\A3B|FA0|Cout~1_combout\ & \sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \A3B|FA0|Cout~1_combout\,
	datac => \sw[4]~input_o\,
	datad => \S3B|FS2|HS1|s1~0_combout\,
	combout => \A3B|FA2|HA2|s1~combout\);

-- Location: LCCOMB_X55_Y53_N6
\A3B|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA1|Cout~0_combout\ = (\sw[1]~input_o\ & ((\sw[4]~input_o\) # (\A3B|FA0|Cout~1_combout\))) # (!\sw[1]~input_o\ & (\sw[4]~input_o\ & \A3B|FA0|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \A3B|FA0|Cout~1_combout\,
	combout => \A3B|FA1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y53_N22
\A3B|FA2|Cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA2|Cout~1_combout\ = (\sw[5]~input_o\ & ((\sw[2]~input_o\) # (\A3B|FA1|Cout~0_combout\))) # (!\sw[5]~input_o\ & (\sw[2]~input_o\ & \A3B|FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \A3B|FA1|Cout~0_combout\,
	combout => \A3B|FA2|Cout~1_combout\);

-- Location: LCCOMB_X52_Y53_N14
\S3B|FS0|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS0|Bout~combout\ = (\sw[0]~input_o\ & (\sw[3]~input_o\ & \sw[7]~input_o\)) # (!\sw[0]~input_o\ & ((\sw[3]~input_o\) # (\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \S3B|FS0|Bout~combout\);

-- Location: LCCOMB_X55_Y53_N24
\S3B|FS1|HS2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS1|HS2|s1~combout\ = \sw[1]~input_o\ $ (\sw[4]~input_o\ $ (\S3B|FS0|Bout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \S3B|FS0|Bout~combout\,
	combout => \S3B|FS1|HS2|s1~combout\);

-- Location: LCCOMB_X55_Y53_N4
\S3B|FS2|HS2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS2|HS2|s1~combout\ = \S3B|FS2|HS1|s1~0_combout\ $ (((\sw[1]~input_o\ & (\S3B|FS0|Bout~combout\ & \sw[4]~input_o\)) # (!\sw[1]~input_o\ & ((\S3B|FS0|Bout~combout\) # (\sw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \S3B|FS0|Bout~combout\,
	datac => \sw[4]~input_o\,
	datad => \S3B|FS2|HS1|s1~0_combout\,
	combout => \S3B|FS2|HS2|s1~combout\);

-- Location: LCCOMB_X55_Y53_N28
\S3B|FS1|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS1|Bout~combout\ = (\sw[1]~input_o\ & (\sw[4]~input_o\ & \S3B|FS0|Bout~combout\)) # (!\sw[1]~input_o\ & ((\sw[4]~input_o\) # (\S3B|FS0|Bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \S3B|FS0|Bout~combout\,
	combout => \S3B|FS1|Bout~combout\);

-- Location: LCCOMB_X55_Y53_N10
\S3B|FS2|Bout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS2|Bout~combout\ = (\sw[5]~input_o\ & ((\S3B|FS1|Bout~combout\) # (!\sw[2]~input_o\))) # (!\sw[5]~input_o\ & (!\sw[2]~input_o\ & \S3B|FS1|Bout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \S3B|FS1|Bout~combout\,
	combout => \S3B|FS2|Bout~combout\);

-- Location: LCCOMB_X52_Y53_N24
\A3B|FA0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA0|Cout~0_combout\ = (\sw[0]~input_o\ & \sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	combout => \A3B|FA0|Cout~0_combout\);

-- Location: LCCOMB_X54_Y53_N24
\M3B|HA0|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|HA0|s1~combout\ = (\sw[4]~input_o\ & (\sw[0]~input_o\ $ (((\sw[1]~input_o\ & \sw[3]~input_o\))))) # (!\sw[4]~input_o\ & (((\sw[1]~input_o\ & \sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \M3B|HA0|s1~combout\);

-- Location: LCCOMB_X54_Y53_N10
\M3B|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|comb~0_combout\ = (\sw[1]~input_o\ & \sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \M3B|comb~0_combout\);

-- Location: LCCOMB_X54_Y53_N20
\M3B|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|comb~1_combout\ = (\sw[0]~input_o\ & \sw[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \M3B|comb~1_combout\);

-- Location: LCCOMB_X54_Y53_N22
\M3B|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|comb~2_combout\ = (\sw[5]~input_o\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \M3B|comb~2_combout\);

-- Location: LCCOMB_X54_Y53_N16
\M3B|HA1|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|HA1|s1~combout\ = (\sw[1]~input_o\ & (\sw[4]~input_o\ $ (((\sw[3]~input_o\ & \sw[2]~input_o\))))) # (!\sw[1]~input_o\ & (\sw[3]~input_o\ & (\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \M3B|HA1|s1~combout\);

-- Location: LCCOMB_X54_Y53_N2
\M3B|FA0|HA2|s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA0|HA2|s1~0_combout\ = \M3B|comb~2_combout\ $ (\M3B|HA1|s1~combout\ $ (((\M3B|comb~0_combout\ & \M3B|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3B|comb~0_combout\,
	datab => \M3B|comb~1_combout\,
	datac => \M3B|comb~2_combout\,
	datad => \M3B|HA1|s1~combout\,
	combout => \M3B|FA0|HA2|s1~0_combout\);

-- Location: LCCOMB_X54_Y53_N12
\M3B|FA0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA0|Cout~0_combout\ = (\M3B|comb~2_combout\ & ((\M3B|HA1|s1~combout\) # ((\M3B|comb~0_combout\ & \M3B|comb~1_combout\)))) # (!\M3B|comb~2_combout\ & (\M3B|comb~0_combout\ & (\M3B|comb~1_combout\ & \M3B|HA1|s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3B|comb~0_combout\,
	datab => \M3B|comb~1_combout\,
	datac => \M3B|comb~2_combout\,
	datad => \M3B|HA1|s1~combout\,
	combout => \M3B|FA0|Cout~0_combout\);

-- Location: LCCOMB_X54_Y53_N4
\M3B|FA1|HA2|s1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA1|HA2|s1~4_combout\ = (\sw[4]~input_o\ & (\sw[2]~input_o\ & ((!\sw[3]~input_o\) # (!\sw[1]~input_o\)))) # (!\sw[4]~input_o\ & (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \M3B|FA1|HA2|s1~4_combout\);

-- Location: LCCOMB_X54_Y53_N14
\M3B|FA1|HA2|s1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA1|HA2|s1~5_combout\ = (\M3B|FA1|HA2|s1~4_combout\ & (\sw[4]~input_o\ $ (((\sw[1]~input_o\ & \sw[5]~input_o\))))) # (!\M3B|FA1|HA2|s1~4_combout\ & (\sw[1]~input_o\ & (\sw[5]~input_o\ & \sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \M3B|FA1|HA2|s1~4_combout\,
	datad => \sw[4]~input_o\,
	combout => \M3B|FA1|HA2|s1~5_combout\);

-- Location: LCCOMB_X54_Y53_N6
\M3B|HA2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|HA2|s1~combout\ = \M3B|FA0|Cout~0_combout\ $ (\M3B|FA1|HA2|s1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3B|FA0|Cout~0_combout\,
	datac => \M3B|FA1|HA2|s1~5_combout\,
	combout => \M3B|HA2|s1~combout\);

-- Location: LCCOMB_X54_Y53_N8
\A3B|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3B|FA2|Cout~0_combout\ = (\sw[5]~input_o\ & \sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \sw[2]~input_o\,
	combout => \A3B|FA2|Cout~0_combout\);

-- Location: LCCOMB_X54_Y53_N0
\M3B|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA1|Cout~0_combout\ = (\sw[1]~input_o\ & (\sw[2]~input_o\ & \sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \M3B|FA1|Cout~0_combout\);

-- Location: LCCOMB_X54_Y53_N18
\M3B|FA1|Cout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA1|Cout~1_combout\ = (\M3B|FA1|Cout~0_combout\ & (\sw[2]~input_o\ & ((\sw[3]~input_o\) # (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \M3B|FA1|Cout~0_combout\,
	datac => \sw[2]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \M3B|FA1|Cout~1_combout\);

-- Location: LCCOMB_X54_Y53_N26
\M3B|FA2|HA2|s1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA2|HA2|s1~combout\ = \A3B|FA2|Cout~0_combout\ $ (\M3B|FA1|Cout~1_combout\ $ (((\M3B|FA0|Cout~0_combout\ & \M3B|FA1|HA2|s1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3B|FA0|Cout~0_combout\,
	datab => \A3B|FA2|Cout~0_combout\,
	datac => \M3B|FA1|HA2|s1~5_combout\,
	datad => \M3B|FA1|Cout~1_combout\,
	combout => \M3B|FA2|HA2|s1~combout\);

-- Location: LCCOMB_X54_Y53_N28
\M3B|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M3B|FA2|Cout~0_combout\ = (\A3B|FA2|Cout~0_combout\ & ((\M3B|FA1|Cout~1_combout\) # ((\M3B|FA0|Cout~0_combout\ & \M3B|FA1|HA2|s1~5_combout\)))) # (!\A3B|FA2|Cout~0_combout\ & (\M3B|FA0|Cout~0_combout\ & (\M3B|FA1|HA2|s1~5_combout\ & 
-- \M3B|FA1|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3B|FA0|Cout~0_combout\,
	datab => \A3B|FA2|Cout~0_combout\,
	datac => \M3B|FA1|HA2|s1~5_combout\,
	datad => \M3B|FA1|Cout~1_combout\,
	combout => \M3B|FA2|Cout~0_combout\);

-- Location: LCCOMB_X55_Y53_N16
\C3B|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3B|LessThan0~0_combout\ = (\sw[2]~input_o\ & (\sw[5]~input_o\ & (\sw[4]~input_o\ & !\sw[1]~input_o\))) # (!\sw[2]~input_o\ & ((\sw[5]~input_o\) # ((\sw[4]~input_o\ & !\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \C3B|LessThan0~0_combout\);

-- Location: LCCOMB_X55_Y53_N14
\C3B|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3B|LessThan0~1_combout\ = (\sw[2]~input_o\ & (\sw[5]~input_o\ & (\sw[4]~input_o\ $ (!\sw[1]~input_o\)))) # (!\sw[2]~input_o\ & (!\sw[5]~input_o\ & (\sw[4]~input_o\ $ (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \C3B|LessThan0~1_combout\);

-- Location: LCCOMB_X52_Y53_N2
\C3B|Sc2b[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3B|Sc2b[0]~0_combout\ = (\C3B|LessThan0~1_combout\ & ((\sw[0]~input_o\ & (\C3B|LessThan0~0_combout\ & !\sw[3]~input_o\)) # (!\sw[0]~input_o\ & ((\sw[3]~input_o\))))) # (!\C3B|LessThan0~1_combout\ & (\C3B|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3B|LessThan0~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \C3B|LessThan0~1_combout\,
	combout => \C3B|Sc2b[0]~0_combout\);

-- Location: LCCOMB_X52_Y53_N22
\C3B|Sc2b[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3B|Sc2b[1]~1_combout\ = (!\C3B|LessThan0~0_combout\ & (((\sw[0]~input_o\ & !\sw[3]~input_o\)) # (!\C3B|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3B|LessThan0~0_combout\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \C3B|LessThan0~1_combout\,
	combout => \C3B|Sc2b[1]~1_combout\);

-- Location: LCCOMB_X52_Y53_N4
\S3B|FS0|HS1|s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \S3B|FS0|HS1|s1~0_combout\ = \sw[0]~input_o\ $ (\sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	combout => \S3B|FS0|HS1|s1~0_combout\);

-- Location: LCCOMB_X52_Y53_N12
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sw[9]~input_o\ & (\sw[8]~input_o\)) # (!\sw[9]~input_o\ & ((\sw[7]~input_o\ $ (\S3B|FS0|HS1|s1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \S3B|FS0|HS1|s1~0_combout\,
	datad => \sw[9]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X52_Y53_N28
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\C3B|Sc2b[0]~0_combout\) # (!\sw[9]~input_o\)))) # (!\Mux2~0_combout\ & (\A3B|FA0|Cout~0_combout\ & ((\sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \A3B|FA0|Cout~0_combout\,
	datac => \C3B|Sc2b[0]~0_combout\,
	datad => \sw[9]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X52_Y53_N10
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sw[8]~input_o\ & (((\sw[9]~input_o\)))) # (!\sw[8]~input_o\ & ((\sw[9]~input_o\ & ((\M3B|HA0|s1~combout\))) # (!\sw[9]~input_o\ & (\A3B|FA1|HA2|s1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3B|FA1|HA2|s1~combout\,
	datab => \sw[8]~input_o\,
	datac => \M3B|HA0|s1~combout\,
	datad => \sw[9]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X52_Y53_N26
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sw[8]~input_o\ & ((\Mux1~0_combout\ & (\C3B|Sc2b[1]~1_combout\)) # (!\Mux1~0_combout\ & ((\S3B|FS1|HS2|s1~combout\))))) # (!\sw[8]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3B|Sc2b[1]~1_combout\,
	datab => \sw[8]~input_o\,
	datac => \S3B|FS1|HS2|s1~combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X56_Y53_N0
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\sw[9]~input_o\ & ((\sw[8]~input_o\ & (\S3B|FS2|HS2|s1~combout\)) # (!\sw[8]~input_o\ & ((\A3B|FA2|HA2|s1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \S3B|FS2|HS2|s1~combout\,
	datac => \sw[8]~input_o\,
	datad => \A3B|FA2|HA2|s1~combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X56_Y53_N10
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\sw[9]~input_o\ & \M3B|FA0|HA2|s1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \M3B|FA0|HA2|s1~0_combout\,
	datac => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X52_Y53_N30
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\sw[8]~input_o\) # (!\sw[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[9]~input_o\,
	datad => \sw[8]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: CLKCTRL_G13
\Mux4~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y53_N28
\ledr[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledr[2]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & ((\Mux0~1_combout\))) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & (\ledr[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledr[2]$latch~combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \ledr[2]$latch~combout\);

-- Location: LCCOMB_X55_Y53_N20
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\sw[8]~input_o\ & ((\S3B|FS1|Bout~combout\))) # (!\sw[8]~input_o\ & (\A3B|FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3B|FA1|Cout~0_combout\,
	datac => \sw[8]~input_o\,
	datad => \S3B|FS1|Bout~combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X55_Y53_N30
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\sw[5]~input_o\) # (\sw[2]~input_o\ $ (\sw[8]~input_o\)))) # (!\Mux3~2_combout\ & (\sw[5]~input_o\ & (\sw[2]~input_o\ $ (\sw[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \sw[8]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X55_Y53_N26
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\sw[9]~input_o\ & (\M3B|FA1|HA2|s1~5_combout\ $ (((\M3B|FA0|Cout~0_combout\))))) # (!\sw[9]~input_o\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M3B|FA1|HA2|s1~5_combout\,
	datab => \Mux3~3_combout\,
	datac => \sw[9]~input_o\,
	datad => \M3B|FA0|Cout~0_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X55_Y53_N0
\ledr[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledr[3]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & ((\Mux3~4_combout\))) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & (\ledr[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledr[3]$latch~combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \Mux3~4_combout\,
	combout => \ledr[3]$latch~combout\);

-- Location: LCCOMB_X55_Y53_N12
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\sw[9]~input_o\ & !\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[9]~input_o\,
	datad => \sw[8]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: CLKCTRL_G14
\Mux4~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux4~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux4~1clkctrl_outclk\);

-- Location: LCCOMB_X56_Y53_N6
\ledr[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledr[4]$latch~combout\ = (GLOBAL(\Mux4~1clkctrl_outclk\) & (\M3B|FA2|HA2|s1~combout\)) # (!GLOBAL(\Mux4~1clkctrl_outclk\) & ((\ledr[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M3B|FA2|HA2|s1~combout\,
	datac => \Mux4~1clkctrl_outclk\,
	datad => \ledr[4]$latch~combout\,
	combout => \ledr[4]$latch~combout\);

-- Location: LCCOMB_X57_Y53_N24
\ledr[5]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ledr[5]$latch~combout\ = (GLOBAL(\Mux4~1clkctrl_outclk\) & (\M3B|FA2|Cout~0_combout\)) # (!GLOBAL(\Mux4~1clkctrl_outclk\) & ((\ledr[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M3B|FA2|Cout~0_combout\,
	datac => \Mux4~1clkctrl_outclk\,
	datad => \ledr[5]$latch~combout\,
	combout => \ledr[5]$latch~combout\);

-- Location: IOIBUF_X54_Y54_N15
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\solAdd[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solAdd(0),
	o => \solAdd[0]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\solAdd[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solAdd(1),
	o => \solAdd[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\solAdd[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solAdd(2),
	o => \solAdd[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\solAdd[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solAdd(3),
	o => \solAdd[3]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\solSub[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solSub(0),
	o => \solSub[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\solSub[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solSub(1),
	o => \solSub[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\solSub[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solSub(2),
	o => \solSub[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\solSub[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solSub(3),
	o => \solSub[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\solMul[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solMul(0),
	o => \solMul[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N8
\solMul[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solMul(1),
	o => \solMul[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\solMul[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solMul(2),
	o => \solMul[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\solMul[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solMul(3),
	o => \solMul[3]~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\solMul[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solMul(4),
	o => \solMul[4]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\solMul[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solMul(5),
	o => \solMul[5]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\solCom[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solCom(0),
	o => \solCom[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\solCom[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => solCom(1),
	o => \solCom[1]~input_o\);

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

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

sel(0) <= \sel[0]~output_o\;

sel(1) <= \sel[1]~output_o\;

solAdd(0) <= \solAdd[0]~output_o\;

solAdd(1) <= \solAdd[1]~output_o\;

solAdd(2) <= \solAdd[2]~output_o\;

solAdd(3) <= \solAdd[3]~output_o\;

solSub(0) <= \solSub[0]~output_o\;

solSub(1) <= \solSub[1]~output_o\;

solSub(2) <= \solSub[2]~output_o\;

solSub(3) <= \solSub[3]~output_o\;

solMul(0) <= \solMul[0]~output_o\;

solMul(1) <= \solMul[1]~output_o\;

solMul(2) <= \solMul[2]~output_o\;

solMul(3) <= \solMul[3]~output_o\;

solMul(4) <= \solMul[4]~output_o\;

solMul(5) <= \solMul[5]~output_o\;

solCom(0) <= \solCom[0]~output_o\;

solCom(1) <= \solCom[1]~output_o\;
END structure;


