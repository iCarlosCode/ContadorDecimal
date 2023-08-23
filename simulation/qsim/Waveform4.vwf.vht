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
-- Generated on "08/23/2023 10:56:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ContadorDecimal
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ContadorDecimal_vhd_vec_tst IS
END ContadorDecimal_vhd_vec_tst;
ARCHITECTURE ContadorDecimal_arch OF ContadorDecimal_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL s_bcd : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s_bcd7s_dezena : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL s_bcd7s_unidade : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL s_decimal : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_dezena : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_reset : STD_LOGIC;
SIGNAL s_unidade : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sentido_contagem : STD_LOGIC;
COMPONENT ContadorDecimal
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	s_bcd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	s_bcd7s_dezena : OUT STD_LOGIC_VECTOR(0 TO 6);
	s_bcd7s_unidade : OUT STD_LOGIC_VECTOR(0 TO 6);
	s_decimal : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_dezena : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_reset : OUT STD_LOGIC;
	s_unidade : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sentido_contagem : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContadorDecimal
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	s_bcd => s_bcd,
	s_bcd7s_dezena => s_bcd7s_dezena,
	s_bcd7s_unidade => s_bcd7s_unidade,
	s_decimal => s_decimal,
	s_dezena => s_dezena,
	s_reset => s_reset,
	s_unidade => s_unidade,
	sentido_contagem => sentido_contagem
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END ContadorDecimal_arch;
