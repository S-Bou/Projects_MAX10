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

-- Generated by Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
-- Created on Wed Mar 10 11:07:12 2021

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM1 IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        Pulse : IN STD_LOGIC := '0';
        TimeEnd : IN STD_LOGIC := '0';
        xDeb_n : OUT STD_LOGIC;
        StartTimer : OUT STD_LOGIC;
        Cnt_E : OUT STD_LOGIC
    );
END SM1;

ARCHITECTURE BEHAVIOR OF SM1 IS
    TYPE type_fstate IS (Q0,Q1,Q2,Q3);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,Pulse,TimeEnd)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= Q0;
            xDeb_n <= '0';
            StartTimer <= '0';
            Cnt_E <= '0';
        ELSE
            xDeb_n <= '0';
            StartTimer <= '0';
            Cnt_E <= '0';
            CASE fstate IS
                WHEN Q0 =>
                    IF (NOT((Pulse = '1'))) THEN
                        reg_fstate <= Q1;
                    ELSE
                        reg_fstate <= Q0;
                    END IF;

                    IF (NOT((Pulse = '1'))) THEN
                        StartTimer <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        StartTimer <= '0';
                    END IF;

                    xDeb_n <= '1';
                WHEN Q1 =>
                    IF ((TimeEnd = '1')) THEN
                        reg_fstate <= Q2;
                    ELSE
                        reg_fstate <= Q1;
                    END IF;

                    Cnt_E <= '1';

                    xDeb_n <= '0';
                WHEN Q2 =>
                    IF ((Pulse = '1')) THEN
                        reg_fstate <= Q3;
                    ELSE
                        reg_fstate <= Q2;
                    END IF;

                    IF ((Pulse = '1')) THEN
                        StartTimer <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        StartTimer <= '0';
                    END IF;

                    xDeb_n <= '0';
                WHEN Q3 =>
                    IF ((TimeEnd = '1')) THEN
                        reg_fstate <= Q0;
                    ELSE
                        reg_fstate <= Q3;
                    END IF;

                    Cnt_E <= '1';

                    xDeb_n <= '1';
                WHEN OTHERS => 
                    xDeb_n <= 'X';
                    StartTimer <= 'X';
                    Cnt_E <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
