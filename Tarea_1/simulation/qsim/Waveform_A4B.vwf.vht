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
-- Generated on "02/20/2021 12:09:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Adder_4b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder_4b_vhd_vec_tst IS
END Adder_4b_vhd_vec_tst;
ARCHITECTURE Adder_4b_arch OF Adder_4b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Aa : STD_LOGIC;
SIGNAL Ab : STD_LOGIC;
SIGNAL Ac : STD_LOGIC;
SIGNAL Ad : STD_LOGIC;
SIGNAL Ae : STD_LOGIC;
SIGNAL Af : STD_LOGIC;
SIGNAL Ag : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Ba : STD_LOGIC;
SIGNAL Bb : STD_LOGIC;
SIGNAL Bc : STD_LOGIC;
SIGNAL Bd : STD_LOGIC;
SIGNAL Be : STD_LOGIC;
SIGNAL Bf : STD_LOGIC;
SIGNAL Bg : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sa : STD_LOGIC;
SIGNAL Sb : STD_LOGIC;
SIGNAL Sc : STD_LOGIC;
SIGNAL Sd : STD_LOGIC;
SIGNAL Se : STD_LOGIC;
SIGNAL Sf : STD_LOGIC;
SIGNAL Sg : STD_LOGIC;
COMPONENT Adder_4b
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Aa : OUT STD_LOGIC;
	Ab : OUT STD_LOGIC;
	Ac : OUT STD_LOGIC;
	Ad : OUT STD_LOGIC;
	Ae : OUT STD_LOGIC;
	Af : OUT STD_LOGIC;
	Ag : OUT STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Ba : OUT STD_LOGIC;
	Bb : OUT STD_LOGIC;
	Bc : OUT STD_LOGIC;
	Bd : OUT STD_LOGIC;
	Be : OUT STD_LOGIC;
	Bf : OUT STD_LOGIC;
	Bg : OUT STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sa : OUT STD_LOGIC;
	Sb : OUT STD_LOGIC;
	Sc : OUT STD_LOGIC;
	Sd : OUT STD_LOGIC;
	Se : OUT STD_LOGIC;
	Sf : OUT STD_LOGIC;
	Sg : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Adder_4b
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Aa => Aa,
	Ab => Ab,
	Ac => Ac,
	Ad => Ad,
	Ae => Ae,
	Af => Af,
	Ag => Ag,
	B => B,
	Ba => Ba,
	Bb => Bb,
	Bc => Bc,
	Bd => Bd,
	Be => Be,
	Bf => Bf,
	Bg => Bg,
	Cin => Cin,
	Cout => Cout,
	S => S,
	Sa => Sa,
	Sb => Sb,
	Sc => Sc,
	Sd => Sd,
	Se => Se,
	Sf => Sf,
	Sg => Sg
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 250000 ps;
	A(3) <= '1';
	WAIT FOR 100000 ps;
	A(3) <= '0';
	WAIT FOR 100000 ps;
	A(3) <= '1';
	WAIT FOR 180000 ps;
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 110000 ps;
	A(2) <= '1';
	WAIT FOR 60000 ps;
	A(2) <= '0';
	WAIT FOR 280000 ps;
	A(2) <= '1';
	WAIT FOR 180000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
	WAIT FOR 170000 ps;
	A(1) <= '1';
	WAIT FOR 280000 ps;
	A(1) <= '0';
	WAIT FOR 90000 ps;
	A(1) <= '1';
	WAIT FOR 90000 ps;
	A(1) <= '0';
	WAIT FOR 130000 ps;
	A(1) <= '1';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 70000 ps;
	A(0) <= '1';
	WAIT FOR 40000 ps;
	A(0) <= '0';
	WAIT FOR 140000 ps;
	A(0) <= '1';
	WAIT FOR 100000 ps;
	A(0) <= '0';
	WAIT FOR 100000 ps;
	A(0) <= '1';
	WAIT FOR 310000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
	WAIT FOR 450000 ps;
	B(3) <= '1';
	WAIT FOR 180000 ps;
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
	WAIT FOR 250000 ps;
	B(2) <= '1';
	WAIT FOR 100000 ps;
	B(2) <= '0';
	WAIT FOR 100000 ps;
	B(2) <= '1';
	WAIT FOR 180000 ps;
	B(2) <= '0';
	WAIT FOR 130000 ps;
	B(2) <= '1';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
	WAIT FOR 110000 ps;
	B(1) <= '1';
	WAIT FOR 60000 ps;
	B(1) <= '0';
	WAIT FOR 180000 ps;
	B(1) <= '1';
	WAIT FOR 280000 ps;
	B(1) <= '0';
	WAIT FOR 130000 ps;
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
	WAIT FOR 70000 ps;
	B(0) <= '1';
	WAIT FOR 180000 ps;
	B(0) <= '0';
	WAIT FOR 290000 ps;
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
END Adder_4b_arch;
