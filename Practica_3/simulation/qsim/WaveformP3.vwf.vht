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
-- Generated on "02/19/2021 20:10:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica_3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica_3_vhd_vec_tst IS
END Practica_3_vhd_vec_tst;
ARCHITECTURE Practica_3_arch OF Practica_3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL a_1 : STD_LOGIC;
SIGNAL ALARM : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL b_1 : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL c1 : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL e1 : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL g1 : STD_LOGIC;
SIGNAL MONO : STD_LOGIC;
SIGNAL OPERATE : STD_LOGIC;
SIGNAL PULSES : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Practica_3
	PORT (
	a : OUT STD_LOGIC;
	a_1 : OUT STD_LOGIC;
	ALARM : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	b_1 : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	c1 : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	d : OUT STD_LOGIC;
	d1 : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	e1 : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	f1 : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	g1 : OUT STD_LOGIC;
	MONO : IN STD_LOGIC;
	OPERATE : OUT STD_LOGIC;
	PULSES : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Practica_3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	a_1 => a_1,
	ALARM => ALARM,
	b => b,
	b_1 => b_1,
	c => c,
	c1 => c1,
	CLK => CLK,
	d => d,
	d1 => d1,
	e => e,
	e1 => e1,
	f => f,
	f1 => f1,
	g => g,
	g1 => g1,
	MONO => MONO,
	OPERATE => OPERATE,
	PULSES => PULSES,
	RESET => RESET,
	S => S
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 500 ps;
	CLK <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- MONO
t_prcs_MONO: PROCESS
BEGIN
	MONO <= '1';
	WAIT FOR 2000000 ps;
	MONO <= '0';
	WAIT FOR 1000000 ps;
	MONO <= '1';
WAIT;
END PROCESS t_prcs_MONO;

-- PULSES
t_prcs_PULSES: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		PULSES <= '0';
		WAIT FOR 3000000 ps;
		PULSES <= '1';
		WAIT FOR 3000000 ps;
	END LOOP;
	PULSES <= '0';
	WAIT FOR 3000000 ps;
	PULSES <= '1';
WAIT;
END PROCESS t_prcs_PULSES;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
	WAIT FOR 1000000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
-- S[8]
t_prcs_S_8: PROCESS
BEGIN
	S(8) <= '1';
WAIT;
END PROCESS t_prcs_S_8;
-- S[7]
t_prcs_S_7: PROCESS
BEGIN
	S(7) <= '1';
WAIT;
END PROCESS t_prcs_S_7;
-- S[6]
t_prcs_S_6: PROCESS
BEGIN
	S(6) <= '1';
WAIT;
END PROCESS t_prcs_S_6;
-- S[5]
t_prcs_S_5: PROCESS
BEGIN
	S(5) <= '1';
WAIT;
END PROCESS t_prcs_S_5;
-- S[4]
t_prcs_S_4: PROCESS
BEGIN
	S(4) <= '1';
WAIT;
END PROCESS t_prcs_S_4;
-- S[3]
t_prcs_S_3: PROCESS
BEGIN
	S(3) <= '0';
WAIT;
END PROCESS t_prcs_S_3;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '1';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '1';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '1';
WAIT;
END PROCESS t_prcs_S_0;
END Practica_3_arch;
