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
-- Generated on "08/30/2023 21:48:17"
                                                             
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
SIGNAL clock_50mhz : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL s_bcd7s_dezena : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL s_bcd7s_infos : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL s_bcd7s_unidade : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL s_clock : STD_LOGIC;
SIGNAL s_decimal : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_dezena : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_unidade : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sentido_contagem : STD_LOGIC;
COMPONENT ContadorDecimal
	PORT (
	clock_50mhz : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	s_bcd7s_dezena : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	s_bcd7s_infos : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	s_bcd7s_unidade : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	s_clock : BUFFER STD_LOGIC;
	s_decimal : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_dezena : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_unidade : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sentido_contagem : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContadorDecimal
	PORT MAP (
-- list connections between master ports and signals
	clock_50mhz => clock_50mhz,
	reset => reset,
	s_bcd7s_dezena => s_bcd7s_dezena,
	s_bcd7s_infos => s_bcd7s_infos,
	s_bcd7s_unidade => s_bcd7s_unidade,
	s_clock => s_clock,
	s_decimal => s_decimal,
	s_dezena => s_dezena,
	s_unidade => s_unidade,
	sentido_contagem => sentido_contagem
	);

-- clock_50mhz
t_prcs_clock_50mhz: PROCESS
BEGIN
LOOP
	clock_50mhz <= '0';
	WAIT FOR 5000 ps;
	clock_50mhz <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_50mhz;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- sentido_contagem
t_prcs_sentido_contagem: PROCESS
BEGIN
	sentido_contagem <= '0';
WAIT;
END PROCESS t_prcs_sentido_contagem;
END ContadorDecimal_arch;
