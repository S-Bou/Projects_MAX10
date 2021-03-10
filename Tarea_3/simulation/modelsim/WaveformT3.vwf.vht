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
-- Generated on "03/09/2021 15:48:15"
                                                             
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
SIGNAL OUT_Sin : STD_LOGIC;
SIGNAL Pulse_KEY0 : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(0 TO 10);
SIGNAL Reset_KEY1 : STD_LOGIC;
SIGNAL StartTIM : STD_LOGIC;
SIGNAL TimeEnd : STD_LOGIC;
SIGNAL xDev_n : STD_LOGIC;
COMPONENT AntiRebotes
	PORT (
	CLK : IN STD_LOGIC;
	OUT_Sin : OUT STD_LOGIC;
	Pulse_KEY0 : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(0 TO 10);
	Reset_KEY1 : IN STD_LOGIC;
	StartTIM : OUT STD_LOGIC;
	TimeEnd : OUT STD_LOGIC;
	xDev_n : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AntiRebotes
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	OUT_Sin => OUT_Sin,
	Pulse_KEY0 => Pulse_KEY0,
	q => q,
	Reset_KEY1 => Reset_KEY1,
	StartTIM => StartTIM,
	TimeEnd => TimeEnd,
	xDev_n => xDev_n
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- Reset_KEY1
t_prcs_Reset_KEY1: PROCESS
BEGIN
	Reset_KEY1 <= '1';
	WAIT FOR 2000000 ps;
	Reset_KEY1 <= '0';
WAIT;
END PROCESS t_prcs_Reset_KEY1;

-- Pulse_KEY0
t_prcs_Pulse_KEY0: PROCESS
BEGIN
	Pulse_KEY0 <= '1';
	WAIT FOR 17920000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 28800000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '0';
	WAIT FOR 640000 ps;
	Pulse_KEY0 <= '1';
	WAIT FOR 40960000 ps;
	Pulse_KEY0 <= '0';
WAIT;
END PROCESS t_prcs_Pulse_KEY0;
END AntiRebotes_arch;
