-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/15/2021 09:59:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica_2_vhd_vec_tst IS
END Practica_2_vhd_vec_tst;
ARCHITECTURE Practica_2_arch OF Practica_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL DATAIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LED_OUT : STD_LOGIC;
SIGNAL PWM_OUT : STD_LOGIC;
COMPONENT Practica_2
	PORT (
	CLK : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	DATAIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	LED_OUT : OUT STD_LOGIC;
	PWM_OUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica_2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	cout => cout,
	DATAIN => DATAIN,
	LED_OUT => LED_OUT,
	PWM_OUT => PWM_OUT
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- DATAIN[7]
t_prcs_DATAIN_7: PROCESS
BEGIN
	DATAIN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATAIN_7;
-- DATAIN[6]
t_prcs_DATAIN_6: PROCESS
BEGIN
	DATAIN(6) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_6;
-- DATAIN[5]
t_prcs_DATAIN_5: PROCESS
BEGIN
	DATAIN(5) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_5;
-- DATAIN[4]
t_prcs_DATAIN_4: PROCESS
BEGIN
	DATAIN(4) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_4;
-- DATAIN[3]
t_prcs_DATAIN_3: PROCESS
BEGIN
	DATAIN(3) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_3;
-- DATAIN[2]
t_prcs_DATAIN_2: PROCESS
BEGIN
	DATAIN(2) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_2;
-- DATAIN[1]
t_prcs_DATAIN_1: PROCESS
BEGIN
	DATAIN(1) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_1;
-- DATAIN[0]
t_prcs_DATAIN_0: PROCESS
BEGIN
	DATAIN(0) <= '1';
WAIT;
END PROCESS t_prcs_DATAIN_0;
END Practica_2_arch;
