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
-- Generated on "03/22/2021 18:36:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          crono
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY crono_vhd_vec_tst IS
END crono_vhd_vec_tst;
ARCHITECTURE crono_arch OF crono_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_i : STD_LOGIC;
SIGNAL enab : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL rest : STD_LOGIC;
COMPONENT crono
	PORT (
	clk_i : IN STD_LOGIC;
	enab : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	rest : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : crono
	PORT MAP (
-- list connections between master ports and signals
	clk_i => clk_i,
	enab => enab,
	HEX0 => HEX0,
	rest => rest
	);

-- clk_i
t_prcs_clk_i: PROCESS
BEGIN
LOOP
	clk_i <= '0';
	WAIT FOR 500000 ps;
	clk_i <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_i;

-- enab
t_prcs_enab: PROCESS
BEGIN
	enab <= '1';
WAIT;
END PROCESS t_prcs_enab;

-- rest
t_prcs_rest: PROCESS
BEGIN
	rest <= '1';
WAIT;
END PROCESS t_prcs_rest;
END crono_arch;
