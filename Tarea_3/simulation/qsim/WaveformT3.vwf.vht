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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/06/2021 18:39:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AntiRebotes
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AntiRebotes_vhd_vec_tst IS
END AntiRebotes_vhd_vec_tst;
ARCHITECTURE AntiRebotes_arch OF AntiRebotes_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL L6 : STD_LOGIC;
SIGNAL L7 : STD_LOGIC;
SIGNAL L8 : STD_LOGIC;
SIGNAL L9 : STD_LOGIC;
SIGNAL OUT_SIN : STD_LOGIC;
SIGNAL Pulse_KEY0 : STD_LOGIC;
SIGNAL Reset_KEY1 : STD_LOGIC;
COMPONENT AntiRebotes
	PORT (
	CLK : IN STD_LOGIC;
	L6 : OUT STD_LOGIC;
	L7 : OUT STD_LOGIC;
	L8 : OUT STD_LOGIC;
	L9 : OUT STD_LOGIC;
	OUT_SIN : OUT STD_LOGIC;
	Pulse_KEY0 : IN STD_LOGIC;
	Reset_KEY1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AntiRebotes
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	L6 => L6,
	L7 => L7,
	L8 => L8,
	L9 => L9,
	OUT_SIN => OUT_SIN,
	Pulse_KEY0 => Pulse_KEY0,
	Reset_KEY1 => Reset_KEY1
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1000000 ps;
	CLK <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- Pulse_KEY0
t_prcs_Pulse_KEY0: PROCESS
BEGIN
LOOP
	Pulse_KEY0 <= '0';
	WAIT FOR 100000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 9900000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Pulse_KEY0;

-- Reset_KEY1
t_prcs_Reset_KEY1: PROCESS
BEGIN
	Reset_KEY1 <= '1';
WAIT;
END PROCESS t_prcs_Reset_KEY1;
END AntiRebotes_arch;
