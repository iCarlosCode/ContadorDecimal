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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/22/2023 18:47:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ContadorDecimal IS
    PORT (
	reset : IN std_logic;
	s_reset : OUT std_logic;
	clk : IN std_logic;
	s_decimal : OUT std_logic_vector(6 DOWNTO 0);
	s_unidade : OUT std_logic_vector(6 DOWNTO 0);
	s_dezena : OUT std_logic_vector(6 DOWNTO 0);
	s_bcd7s_dezena : OUT std_logic_vector(0 TO 6);
	s_bcd7s_unidade : OUT std_logic_vector(0 TO 6);
	s_bcd : OUT std_logic_vector(7 DOWNTO 0)
	);
END ContadorDecimal;

-- Design Ports Information
-- s_reset	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[6]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[1]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[5]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorDecimal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s_decimal : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_bcd7s_dezena : std_logic_vector(0 TO 6);
SIGNAL ww_s_bcd7s_unidade : std_logic_vector(0 TO 6);
SIGNAL ww_s_bcd : std_logic_vector(7 DOWNTO 0);
SIGNAL \Equal0~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_reset~output_o\ : std_logic;
SIGNAL \s_decimal[0]~output_o\ : std_logic;
SIGNAL \s_decimal[1]~output_o\ : std_logic;
SIGNAL \s_decimal[2]~output_o\ : std_logic;
SIGNAL \s_decimal[3]~output_o\ : std_logic;
SIGNAL \s_decimal[4]~output_o\ : std_logic;
SIGNAL \s_decimal[5]~output_o\ : std_logic;
SIGNAL \s_decimal[6]~output_o\ : std_logic;
SIGNAL \s_unidade[0]~output_o\ : std_logic;
SIGNAL \s_unidade[1]~output_o\ : std_logic;
SIGNAL \s_unidade[2]~output_o\ : std_logic;
SIGNAL \s_unidade[3]~output_o\ : std_logic;
SIGNAL \s_unidade[4]~output_o\ : std_logic;
SIGNAL \s_unidade[5]~output_o\ : std_logic;
SIGNAL \s_unidade[6]~output_o\ : std_logic;
SIGNAL \s_dezena[0]~output_o\ : std_logic;
SIGNAL \s_dezena[1]~output_o\ : std_logic;
SIGNAL \s_dezena[2]~output_o\ : std_logic;
SIGNAL \s_dezena[3]~output_o\ : std_logic;
SIGNAL \s_dezena[4]~output_o\ : std_logic;
SIGNAL \s_dezena[5]~output_o\ : std_logic;
SIGNAL \s_dezena[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[0]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[0]~output_o\ : std_logic;
SIGNAL \s_bcd[0]~output_o\ : std_logic;
SIGNAL \s_bcd[1]~output_o\ : std_logic;
SIGNAL \s_bcd[2]~output_o\ : std_logic;
SIGNAL \s_bcd[3]~output_o\ : std_logic;
SIGNAL \s_bcd[4]~output_o\ : std_logic;
SIGNAL \s_bcd[5]~output_o\ : std_logic;
SIGNAL \s_bcd[6]~output_o\ : std_logic;
SIGNAL \s_bcd[7]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \contador[0]~75_combout\ : std_logic;
SIGNAL \contador[1]~25_combout\ : std_logic;
SIGNAL \contador[1]~26\ : std_logic;
SIGNAL \contador[2]~27_combout\ : std_logic;
SIGNAL \contador[2]~28\ : std_logic;
SIGNAL \contador[3]~29_combout\ : std_logic;
SIGNAL \contador[3]~30\ : std_logic;
SIGNAL \contador[4]~31_combout\ : std_logic;
SIGNAL \contador[4]~32\ : std_logic;
SIGNAL \contador[5]~33_combout\ : std_logic;
SIGNAL \contador[5]~34\ : std_logic;
SIGNAL \contador[6]~35_combout\ : std_logic;
SIGNAL \contador[6]~36\ : std_logic;
SIGNAL \contador[7]~37_combout\ : std_logic;
SIGNAL \contador[7]~38\ : std_logic;
SIGNAL \contador[8]~39_combout\ : std_logic;
SIGNAL \contador[8]~40\ : std_logic;
SIGNAL \contador[9]~41_combout\ : std_logic;
SIGNAL \contador[9]~42\ : std_logic;
SIGNAL \contador[10]~43_combout\ : std_logic;
SIGNAL \contador[10]~44\ : std_logic;
SIGNAL \contador[11]~45_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \contador[11]~46\ : std_logic;
SIGNAL \contador[12]~47_combout\ : std_logic;
SIGNAL \contador[12]~48\ : std_logic;
SIGNAL \contador[13]~49_combout\ : std_logic;
SIGNAL \contador[13]~50\ : std_logic;
SIGNAL \contador[14]~51_combout\ : std_logic;
SIGNAL \contador[14]~52\ : std_logic;
SIGNAL \contador[15]~53_combout\ : std_logic;
SIGNAL \contador[15]~54\ : std_logic;
SIGNAL \contador[16]~55_combout\ : std_logic;
SIGNAL \contador[16]~56\ : std_logic;
SIGNAL \contador[17]~57_combout\ : std_logic;
SIGNAL \contador[17]~58\ : std_logic;
SIGNAL \contador[18]~59_combout\ : std_logic;
SIGNAL \contador[18]~60\ : std_logic;
SIGNAL \contador[19]~61_combout\ : std_logic;
SIGNAL \contador[19]~62\ : std_logic;
SIGNAL \contador[20]~63_combout\ : std_logic;
SIGNAL \contador[20]~64\ : std_logic;
SIGNAL \contador[21]~65_combout\ : std_logic;
SIGNAL \contador[21]~66\ : std_logic;
SIGNAL \contador[22]~67_combout\ : std_logic;
SIGNAL \contador[22]~68\ : std_logic;
SIGNAL \contador[23]~69_combout\ : std_logic;
SIGNAL \contador[23]~70\ : std_logic;
SIGNAL \contador[24]~71_combout\ : std_logic;
SIGNAL \contador[24]~72\ : std_logic;
SIGNAL \contador[25]~73_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add20~0_combout\ : std_logic;
SIGNAL \Add20~1\ : std_logic;
SIGNAL \Add20~3\ : std_logic;
SIGNAL \Add20~4_combout\ : std_logic;
SIGNAL \Add20~5\ : std_logic;
SIGNAL \Add20~6_combout\ : std_logic;
SIGNAL \Add20~7\ : std_logic;
SIGNAL \Add20~8_combout\ : std_logic;
SIGNAL \Add20~9\ : std_logic;
SIGNAL \Add20~10_combout\ : std_logic;
SIGNAL \Add20~11\ : std_logic;
SIGNAL \Add20~12_combout\ : std_logic;
SIGNAL \sentido_contagem~1_combout\ : std_logic;
SIGNAL \sentido_contagem~0_combout\ : std_logic;
SIGNAL \sentido_contagem~2_combout\ : std_logic;
SIGNAL \sentido_contagem~3_combout\ : std_logic;
SIGNAL \Add20~2_combout\ : std_logic;
SIGNAL \Equal0~8clkctrl_outclk\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \unidade[0]~2_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \unidade[0]~9_combout\ : std_logic;
SIGNAL \unidade[0]~10_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \unidade[0]~8_combout\ : std_logic;
SIGNAL \unidade[0]~11_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \Add20~14_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \unidade[0]~3_combout\ : std_logic;
SIGNAL \unidade[0]~5_combout\ : std_logic;
SIGNAL \unidade[0]~0_combout\ : std_logic;
SIGNAL \unidade[0]~1_combout\ : std_logic;
SIGNAL \unidade[0]~4_combout\ : std_logic;
SIGNAL \unidade[0]~6_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \unidade[0]~7_combout\ : std_logic;
SIGNAL \unidade[0]~12_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \unidade[0]~13_combout\ : std_logic;
SIGNAL \unidade[0]~15_combout\ : std_logic;
SIGNAL \unidade[0]~16_combout\ : std_logic;
SIGNAL \unidade[0]~17_combout\ : std_logic;
SIGNAL \unidade[0]~14_combout\ : std_logic;
SIGNAL \unidade[0]~18_combout\ : std_logic;
SIGNAL \unidade[0]~19_combout\ : std_logic;
SIGNAL \unidade[0]~24_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \unidade[0]~25_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \unidade[0]~26_combout\ : std_logic;
SIGNAL \unidade[0]~20_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \unidade[0]~21_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \unidade[0]~22_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \unidade[0]~23_combout\ : std_logic;
SIGNAL \unidade[0]~27_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \unidade[0]~31_combout\ : std_logic;
SIGNAL \unidade[0]~30_combout\ : std_logic;
SIGNAL \unidade[0]~32_combout\ : std_logic;
SIGNAL \unidade[0]~33_combout\ : std_logic;
SIGNAL \unidade[0]~28_combout\ : std_logic;
SIGNAL \unidade[0]~29_combout\ : std_logic;
SIGNAL \unidade[0]~34_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \unidade[0]~35_combout\ : std_logic;
SIGNAL \unidade[0]~36_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \unidade[1]~43_combout\ : std_logic;
SIGNAL \unidade[1]~44_combout\ : std_logic;
SIGNAL \unidade[1]~45_combout\ : std_logic;
SIGNAL \unidade[1]~46_combout\ : std_logic;
SIGNAL \unidade[1]~47_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \unidade[1]~48_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add20~15\ : std_logic;
SIGNAL \Add20~16_combout\ : std_logic;
SIGNAL \Add19~1\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \unidade[1]~37_combout\ : std_logic;
SIGNAL \unidade[1]~38_combout\ : std_logic;
SIGNAL \unidade[1]~39_combout\ : std_logic;
SIGNAL \unidade[1]~40_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \unidade[1]~41_combout\ : std_logic;
SIGNAL \unidade[1]~42_combout\ : std_logic;
SIGNAL \unidade[1]~49_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \unidade[2]~60_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \unidade[2]~58_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \unidade[2]~56_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \unidade[2]~57_combout\ : std_logic;
SIGNAL \unidade[2]~59_combout\ : std_logic;
SIGNAL \unidade[2]~61_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \unidade[2]~54_combout\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \Add20~17\ : std_logic;
SIGNAL \Add20~18_combout\ : std_logic;
SIGNAL \unidade[2]~50_combout\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \unidade[2]~51_combout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \unidade[2]~52_combout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \unidade[2]~53_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \unidade[2]~55_combout\ : std_logic;
SIGNAL \unidade[2]~62_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add20~19\ : std_logic;
SIGNAL \Add20~20_combout\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \unidade[3]~63_combout\ : std_logic;
SIGNAL \unidade[3]~64_combout\ : std_logic;
SIGNAL \unidade[3]~65_combout\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \unidade[3]~66_combout\ : std_logic;
SIGNAL \unidade[3]~67_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \unidade[3]~68_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \unidade[3]~69_combout\ : std_logic;
SIGNAL \unidade[3]~70_combout\ : std_logic;
SIGNAL \unidade[3]~71_combout\ : std_logic;
SIGNAL \unidade[3]~72_combout\ : std_logic;
SIGNAL \unidade[3]~73_combout\ : std_logic;
SIGNAL \unidade[3]~74_combout\ : std_logic;
SIGNAL \unidade[3]~75_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \unidade[4]~82_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \unidade[4]~83_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \unidade[4]~84_combout\ : std_logic;
SIGNAL \unidade[4]~85_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \unidade[4]~86_combout\ : std_logic;
SIGNAL \unidade[4]~87_combout\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \unidade[4]~78_combout\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \Add20~21\ : std_logic;
SIGNAL \Add20~22_combout\ : std_logic;
SIGNAL \unidade[4]~76_combout\ : std_logic;
SIGNAL \unidade[4]~77_combout\ : std_logic;
SIGNAL \unidade[4]~79_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \unidade[4]~80_combout\ : std_logic;
SIGNAL \unidade[4]~81_combout\ : std_logic;
SIGNAL \unidade[4]~88_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \unidade[5]~95_combout\ : std_logic;
SIGNAL \unidade[5]~96_combout\ : std_logic;
SIGNAL \unidade[5]~97_combout\ : std_logic;
SIGNAL \unidade[5]~98_combout\ : std_logic;
SIGNAL \unidade[5]~99_combout\ : std_logic;
SIGNAL \unidade[5]~100_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \Add20~23\ : std_logic;
SIGNAL \Add20~24_combout\ : std_logic;
SIGNAL \unidade[5]~89_combout\ : std_logic;
SIGNAL \unidade[5]~90_combout\ : std_logic;
SIGNAL \unidade[5]~91_combout\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \unidade[5]~92_combout\ : std_logic;
SIGNAL \unidade[5]~93_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \unidade[5]~94_combout\ : std_logic;
SIGNAL \unidade[5]~101_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \unidade[6]~108_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \unidade[6]~109_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \unidade[6]~110_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \unidade[6]~111_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \unidade[6]~112_combout\ : std_logic;
SIGNAL \unidade[6]~113_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \unidade[6]~106_combout\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \unidade[6]~104_combout\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \Add20~25\ : std_logic;
SIGNAL \Add20~26_combout\ : std_logic;
SIGNAL \unidade[6]~102_combout\ : std_logic;
SIGNAL \Add17~11\ : std_logic;
SIGNAL \Add17~12_combout\ : std_logic;
SIGNAL \unidade[6]~103_combout\ : std_logic;
SIGNAL \unidade[6]~105_combout\ : std_logic;
SIGNAL \unidade[6]~107_combout\ : std_logic;
SIGNAL \unidade[6]~114_combout\ : std_logic;
SIGNAL \dezena~2_combout\ : std_logic;
SIGNAL \dezena[0]~3_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \dezena~0_combout\ : std_logic;
SIGNAL \dezena~1_combout\ : std_logic;
SIGNAL \unidade[0]~115_combout\ : std_logic;
SIGNAL \dezena[0]~4_combout\ : std_logic;
SIGNAL \dezena~6_combout\ : std_logic;
SIGNAL \dezena~7_combout\ : std_logic;
SIGNAL \dezena[1]~8_combout\ : std_logic;
SIGNAL \unidade[0]~116_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \dezena~5_combout\ : std_logic;
SIGNAL \dezena[1]~9_combout\ : std_logic;
SIGNAL \dezena~10_combout\ : std_logic;
SIGNAL \dezena~11_combout\ : std_logic;
SIGNAL \dezena[2]~12_combout\ : std_logic;
SIGNAL \dezena[2]~13_combout\ : std_logic;
SIGNAL \dezena[3]~14_combout\ : std_logic;
SIGNAL \dezena[3]~15_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL contador : std_logic_vector(25 DOWNTO 0);
SIGNAL q : std_logic_vector(6 DOWNTO 0);
SIGNAL unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
s_reset <= ww_s_reset;
ww_clk <= clk;
s_decimal <= ww_s_decimal;
s_unidade <= ww_s_unidade;
s_dezena <= ww_s_dezena;
s_bcd7s_dezena <= ww_s_bcd7s_dezena;
s_bcd7s_unidade <= ww_s_bcd7s_unidade;
s_bcd <= ww_s_bcd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~8_combout\);
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\s_reset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reset~input_o\,
	devoe => ww_devoe,
	o => \s_reset~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\s_decimal[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(0),
	devoe => ww_devoe,
	o => \s_decimal[0]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\s_decimal[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(1),
	devoe => ww_devoe,
	o => \s_decimal[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\s_decimal[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(2),
	devoe => ww_devoe,
	o => \s_decimal[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\s_decimal[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(3),
	devoe => ww_devoe,
	o => \s_decimal[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\s_decimal[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(4),
	devoe => ww_devoe,
	o => \s_decimal[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\s_decimal[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(5),
	devoe => ww_devoe,
	o => \s_decimal[5]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\s_decimal[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(6),
	devoe => ww_devoe,
	o => \s_decimal[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\s_unidade[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(0),
	devoe => ww_devoe,
	o => \s_unidade[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\s_unidade[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(1),
	devoe => ww_devoe,
	o => \s_unidade[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\s_unidade[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(2),
	devoe => ww_devoe,
	o => \s_unidade[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\s_unidade[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(3),
	devoe => ww_devoe,
	o => \s_unidade[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\s_unidade[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(4),
	devoe => ww_devoe,
	o => \s_unidade[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\s_unidade[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(5),
	devoe => ww_devoe,
	o => \s_unidade[5]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\s_unidade[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => unidade(6),
	devoe => ww_devoe,
	o => \s_unidade[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\s_dezena[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dezena(0),
	devoe => ww_devoe,
	o => \s_dezena[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\s_dezena[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dezena(1),
	devoe => ww_devoe,
	o => \s_dezena[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\s_dezena[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dezena(2),
	devoe => ww_devoe,
	o => \s_dezena[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\s_dezena[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dezena(3),
	devoe => ww_devoe,
	o => \s_dezena[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\s_dezena[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_dezena[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\s_dezena[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_dezena[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\s_dezena[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_dezena[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\s_bcd7s_dezena[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\s_bcd7s_dezena[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\s_bcd7s_dezena[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\s_bcd7s_dezena[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\s_bcd7s_dezena[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\s_bcd7s_dezena[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\s_bcd7s_dezena[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_dezena[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\s_bcd7s_unidade[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\s_bcd7s_unidade[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\s_bcd7s_unidade[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\s_bcd7s_unidade[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\s_bcd7s_unidade[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\s_bcd7s_unidade[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\s_bcd7s_unidade[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_unidade[0]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\s_bcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\s_bcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\s_bcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\s_bcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\s_bcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[4]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\s_bcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\s_bcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\s_bcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd[7]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X29_Y48_N0
\contador[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[0]~75_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => contador(0),
	combout => \contador[0]~75_combout\);

-- Location: FF_X29_Y48_N7
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \contador[0]~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X29_Y48_N8
\contador[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[1]~25_combout\ = (contador(0) & (contador(1) $ (VCC))) # (!contador(0) & (contador(1) & VCC))
-- \contador[1]~26\ = CARRY((contador(0) & contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datad => VCC,
	combout => \contador[1]~25_combout\,
	cout => \contador[1]~26\);

-- Location: FF_X29_Y48_N1
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	asdata => \contador[1]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X29_Y48_N10
\contador[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[2]~27_combout\ = (contador(2) & (!\contador[1]~26\)) # (!contador(2) & ((\contador[1]~26\) # (GND)))
-- \contador[2]~28\ = CARRY((!\contador[1]~26\) # (!contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => VCC,
	cin => \contador[1]~26\,
	combout => \contador[2]~27_combout\,
	cout => \contador[2]~28\);

-- Location: FF_X29_Y48_N11
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X29_Y48_N12
\contador[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[3]~29_combout\ = (contador(3) & (\contador[2]~28\ $ (GND))) # (!contador(3) & (!\contador[2]~28\ & VCC))
-- \contador[3]~30\ = CARRY((contador(3) & !\contador[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~28\,
	combout => \contador[3]~29_combout\,
	cout => \contador[3]~30\);

-- Location: FF_X29_Y48_N13
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X29_Y48_N14
\contador[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[4]~31_combout\ = (contador(4) & (!\contador[3]~30\)) # (!contador(4) & ((\contador[3]~30\) # (GND)))
-- \contador[4]~32\ = CARRY((!\contador[3]~30\) # (!contador(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \contador[3]~30\,
	combout => \contador[4]~31_combout\,
	cout => \contador[4]~32\);

-- Location: FF_X29_Y48_N15
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X29_Y48_N16
\contador[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[5]~33_combout\ = (contador(5) & (\contador[4]~32\ $ (GND))) # (!contador(5) & (!\contador[4]~32\ & VCC))
-- \contador[5]~34\ = CARRY((contador(5) & !\contador[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \contador[4]~32\,
	combout => \contador[5]~33_combout\,
	cout => \contador[5]~34\);

-- Location: FF_X29_Y48_N17
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X29_Y48_N18
\contador[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[6]~35_combout\ = (contador(6) & (!\contador[5]~34\)) # (!contador(6) & ((\contador[5]~34\) # (GND)))
-- \contador[6]~36\ = CARRY((!\contador[5]~34\) # (!contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \contador[5]~34\,
	combout => \contador[6]~35_combout\,
	cout => \contador[6]~36\);

-- Location: FF_X29_Y48_N19
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X29_Y48_N20
\contador[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[7]~37_combout\ = (contador(7) & (\contador[6]~36\ $ (GND))) # (!contador(7) & (!\contador[6]~36\ & VCC))
-- \contador[7]~38\ = CARRY((contador(7) & !\contador[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(7),
	datad => VCC,
	cin => \contador[6]~36\,
	combout => \contador[7]~37_combout\,
	cout => \contador[7]~38\);

-- Location: FF_X29_Y48_N21
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X29_Y48_N22
\contador[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[8]~39_combout\ = (contador(8) & (!\contador[7]~38\)) # (!contador(8) & ((\contador[7]~38\) # (GND)))
-- \contador[8]~40\ = CARRY((!\contador[7]~38\) # (!contador(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datad => VCC,
	cin => \contador[7]~38\,
	combout => \contador[8]~39_combout\,
	cout => \contador[8]~40\);

-- Location: FF_X29_Y48_N23
\contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(8));

-- Location: LCCOMB_X29_Y48_N24
\contador[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[9]~41_combout\ = (contador(9) & (\contador[8]~40\ $ (GND))) # (!contador(9) & (!\contador[8]~40\ & VCC))
-- \contador[9]~42\ = CARRY((contador(9) & !\contador[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(9),
	datad => VCC,
	cin => \contador[8]~40\,
	combout => \contador[9]~41_combout\,
	cout => \contador[9]~42\);

-- Location: FF_X29_Y48_N25
\contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(9));

-- Location: LCCOMB_X29_Y48_N26
\contador[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[10]~43_combout\ = (contador(10) & (!\contador[9]~42\)) # (!contador(10) & ((\contador[9]~42\) # (GND)))
-- \contador[10]~44\ = CARRY((!\contador[9]~42\) # (!contador(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(10),
	datad => VCC,
	cin => \contador[9]~42\,
	combout => \contador[10]~43_combout\,
	cout => \contador[10]~44\);

-- Location: FF_X29_Y48_N27
\contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(10));

-- Location: LCCOMB_X29_Y48_N28
\contador[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[11]~45_combout\ = (contador(11) & (\contador[10]~44\ $ (GND))) # (!contador(11) & (!\contador[10]~44\ & VCC))
-- \contador[11]~46\ = CARRY((contador(11) & !\contador[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(11),
	datad => VCC,
	cin => \contador[10]~44\,
	combout => \contador[11]~45_combout\,
	cout => \contador[11]~46\);

-- Location: FF_X29_Y48_N29
\contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(11));

-- Location: LCCOMB_X29_Y48_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!contador(8) & (!contador(11) & (!contador(10) & !contador(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datab => contador(11),
	datac => contador(10),
	datad => contador(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X29_Y48_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!contador(2) & (!contador(1) & (!contador(0) & !contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datac => contador(0),
	datad => contador(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y48_N30
\contador[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[12]~47_combout\ = (contador(12) & (!\contador[11]~46\)) # (!contador(12) & ((\contador[11]~46\) # (GND)))
-- \contador[12]~48\ = CARRY((!\contador[11]~46\) # (!contador(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(12),
	datad => VCC,
	cin => \contador[11]~46\,
	combout => \contador[12]~47_combout\,
	cout => \contador[12]~48\);

-- Location: FF_X29_Y48_N31
\contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(12));

-- Location: LCCOMB_X29_Y47_N0
\contador[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[13]~49_combout\ = (contador(13) & (\contador[12]~48\ $ (GND))) # (!contador(13) & (!\contador[12]~48\ & VCC))
-- \contador[13]~50\ = CARRY((contador(13) & !\contador[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(13),
	datad => VCC,
	cin => \contador[12]~48\,
	combout => \contador[13]~49_combout\,
	cout => \contador[13]~50\);

-- Location: FF_X29_Y47_N1
\contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(13));

-- Location: LCCOMB_X29_Y47_N2
\contador[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[14]~51_combout\ = (contador(14) & (!\contador[13]~50\)) # (!contador(14) & ((\contador[13]~50\) # (GND)))
-- \contador[14]~52\ = CARRY((!\contador[13]~50\) # (!contador(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(14),
	datad => VCC,
	cin => \contador[13]~50\,
	combout => \contador[14]~51_combout\,
	cout => \contador[14]~52\);

-- Location: FF_X29_Y47_N3
\contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(14));

-- Location: LCCOMB_X29_Y47_N4
\contador[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[15]~53_combout\ = (contador(15) & (\contador[14]~52\ $ (GND))) # (!contador(15) & (!\contador[14]~52\ & VCC))
-- \contador[15]~54\ = CARRY((contador(15) & !\contador[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(15),
	datad => VCC,
	cin => \contador[14]~52\,
	combout => \contador[15]~53_combout\,
	cout => \contador[15]~54\);

-- Location: FF_X29_Y47_N5
\contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(15));

-- Location: LCCOMB_X29_Y47_N6
\contador[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[16]~55_combout\ = (contador(16) & (!\contador[15]~54\)) # (!contador(16) & ((\contador[15]~54\) # (GND)))
-- \contador[16]~56\ = CARRY((!\contador[15]~54\) # (!contador(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(16),
	datad => VCC,
	cin => \contador[15]~54\,
	combout => \contador[16]~55_combout\,
	cout => \contador[16]~56\);

-- Location: FF_X29_Y47_N7
\contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(16));

-- Location: LCCOMB_X29_Y47_N8
\contador[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[17]~57_combout\ = (contador(17) & (\contador[16]~56\ $ (GND))) # (!contador(17) & (!\contador[16]~56\ & VCC))
-- \contador[17]~58\ = CARRY((contador(17) & !\contador[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(17),
	datad => VCC,
	cin => \contador[16]~56\,
	combout => \contador[17]~57_combout\,
	cout => \contador[17]~58\);

-- Location: FF_X29_Y47_N9
\contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(17));

-- Location: LCCOMB_X29_Y47_N10
\contador[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[18]~59_combout\ = (contador(18) & (!\contador[17]~58\)) # (!contador(18) & ((\contador[17]~58\) # (GND)))
-- \contador[18]~60\ = CARRY((!\contador[17]~58\) # (!contador(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(18),
	datad => VCC,
	cin => \contador[17]~58\,
	combout => \contador[18]~59_combout\,
	cout => \contador[18]~60\);

-- Location: FF_X29_Y47_N11
\contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(18));

-- Location: LCCOMB_X29_Y47_N12
\contador[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[19]~61_combout\ = (contador(19) & (\contador[18]~60\ $ (GND))) # (!contador(19) & (!\contador[18]~60\ & VCC))
-- \contador[19]~62\ = CARRY((contador(19) & !\contador[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datad => VCC,
	cin => \contador[18]~60\,
	combout => \contador[19]~61_combout\,
	cout => \contador[19]~62\);

-- Location: FF_X29_Y47_N13
\contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(19));

-- Location: LCCOMB_X29_Y47_N14
\contador[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[20]~63_combout\ = (contador(20) & (!\contador[19]~62\)) # (!contador(20) & ((\contador[19]~62\) # (GND)))
-- \contador[20]~64\ = CARRY((!\contador[19]~62\) # (!contador(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(20),
	datad => VCC,
	cin => \contador[19]~62\,
	combout => \contador[20]~63_combout\,
	cout => \contador[20]~64\);

-- Location: FF_X29_Y47_N15
\contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(20));

-- Location: LCCOMB_X29_Y47_N16
\contador[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[21]~65_combout\ = (contador(21) & (\contador[20]~64\ $ (GND))) # (!contador(21) & (!\contador[20]~64\ & VCC))
-- \contador[21]~66\ = CARRY((contador(21) & !\contador[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(21),
	datad => VCC,
	cin => \contador[20]~64\,
	combout => \contador[21]~65_combout\,
	cout => \contador[21]~66\);

-- Location: FF_X29_Y47_N17
\contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(21));

-- Location: LCCOMB_X29_Y47_N18
\contador[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[22]~67_combout\ = (contador(22) & (!\contador[21]~66\)) # (!contador(22) & ((\contador[21]~66\) # (GND)))
-- \contador[22]~68\ = CARRY((!\contador[21]~66\) # (!contador(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(22),
	datad => VCC,
	cin => \contador[21]~66\,
	combout => \contador[22]~67_combout\,
	cout => \contador[22]~68\);

-- Location: FF_X29_Y47_N19
\contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(22));

-- Location: LCCOMB_X29_Y47_N20
\contador[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[23]~69_combout\ = (contador(23) & (\contador[22]~68\ $ (GND))) # (!contador(23) & (!\contador[22]~68\ & VCC))
-- \contador[23]~70\ = CARRY((contador(23) & !\contador[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(23),
	datad => VCC,
	cin => \contador[22]~68\,
	combout => \contador[23]~69_combout\,
	cout => \contador[23]~70\);

-- Location: FF_X29_Y47_N21
\contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(23));

-- Location: LCCOMB_X29_Y47_N22
\contador[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[24]~71_combout\ = (contador(24) & (!\contador[23]~70\)) # (!contador(24) & ((\contador[23]~70\) # (GND)))
-- \contador[24]~72\ = CARRY((!\contador[23]~70\) # (!contador(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(24),
	datad => VCC,
	cin => \contador[23]~70\,
	combout => \contador[24]~71_combout\,
	cout => \contador[24]~72\);

-- Location: FF_X29_Y47_N23
\contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(24));

-- Location: LCCOMB_X29_Y47_N24
\contador[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[25]~73_combout\ = contador(25) $ (!\contador[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(25),
	cin => \contador[24]~72\,
	combout => \contador[25]~73_combout\);

-- Location: FF_X29_Y47_N25
\contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \contador[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(25));

-- Location: LCCOMB_X28_Y47_N6
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!contador(24) & !contador(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(24),
	datad => contador(25),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X29_Y47_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!contador(23) & (!contador(22) & (!contador(20) & !contador(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(23),
	datab => contador(22),
	datac => contador(20),
	datad => contador(21),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X29_Y47_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!contador(19) & (!contador(17) & (!contador(18) & !contador(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datab => contador(17),
	datac => contador(18),
	datad => contador(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X29_Y48_N2
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!contador(7) & (!contador(6) & (!contador(4) & !contador(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(7),
	datab => contador(6),
	datac => contador(4),
	datad => contador(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X28_Y47_N22
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X29_Y47_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!contador(12) & (!contador(13) & (!contador(15) & !contador(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(12),
	datab => contador(13),
	datac => contador(15),
	datad => contador(14),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X38_Y61_N6
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~7_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X39_Y61_N4
\Add20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~0_combout\ = q(0) $ (VCC)
-- \Add20~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add20~0_combout\,
	cout => \Add20~1\);

-- Location: LCCOMB_X39_Y61_N0
\q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(0) = (\reset~input_o\ & ((\Equal0~8_combout\ & ((\Add20~0_combout\))) # (!\Equal0~8_combout\ & (q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => q(0),
	datac => \Equal0~8_combout\,
	datad => \Add20~0_combout\,
	combout => q(0));

-- Location: LCCOMB_X39_Y61_N6
\Add20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~2_combout\ = (\sentido_contagem~3_combout\ & ((q(1) & (\Add20~1\ & VCC)) # (!q(1) & (!\Add20~1\)))) # (!\sentido_contagem~3_combout\ & ((q(1) & (!\Add20~1\)) # (!q(1) & ((\Add20~1\) # (GND)))))
-- \Add20~3\ = CARRY((\sentido_contagem~3_combout\ & (!q(1) & !\Add20~1\)) # (!\sentido_contagem~3_combout\ & ((!\Add20~1\) # (!q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~3_combout\,
	datab => q(1),
	datad => VCC,
	cin => \Add20~1\,
	combout => \Add20~2_combout\,
	cout => \Add20~3\);

-- Location: LCCOMB_X39_Y61_N8
\Add20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~4_combout\ = ((\sentido_contagem~3_combout\ $ (q(2) $ (!\Add20~3\)))) # (GND)
-- \Add20~5\ = CARRY((\sentido_contagem~3_combout\ & ((q(2)) # (!\Add20~3\))) # (!\sentido_contagem~3_combout\ & (q(2) & !\Add20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~3_combout\,
	datab => q(2),
	datad => VCC,
	cin => \Add20~3\,
	combout => \Add20~4_combout\,
	cout => \Add20~5\);

-- Location: LCCOMB_X39_Y61_N18
\q[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(2) = (\reset~input_o\ & ((\Equal0~8_combout\ & ((\Add20~4_combout\))) # (!\Equal0~8_combout\ & (q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => q(2),
	datac => \Equal0~8_combout\,
	datad => \Add20~4_combout\,
	combout => q(2));

-- Location: LCCOMB_X39_Y61_N10
\Add20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~6_combout\ = (\sentido_contagem~3_combout\ & ((q(3) & (\Add20~5\ & VCC)) # (!q(3) & (!\Add20~5\)))) # (!\sentido_contagem~3_combout\ & ((q(3) & (!\Add20~5\)) # (!q(3) & ((\Add20~5\) # (GND)))))
-- \Add20~7\ = CARRY((\sentido_contagem~3_combout\ & (!q(3) & !\Add20~5\)) # (!\sentido_contagem~3_combout\ & ((!\Add20~5\) # (!q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~3_combout\,
	datab => q(3),
	datad => VCC,
	cin => \Add20~5\,
	combout => \Add20~6_combout\,
	cout => \Add20~7\);

-- Location: LCCOMB_X38_Y61_N24
\q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(3) = (\reset~input_o\ & ((\Equal0~8_combout\ & ((\Add20~6_combout\))) # (!\Equal0~8_combout\ & (q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => q(3),
	datac => \Add20~6_combout\,
	datad => \Equal0~8_combout\,
	combout => q(3));

-- Location: LCCOMB_X39_Y61_N12
\Add20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~8_combout\ = ((\sentido_contagem~3_combout\ $ (q(4) $ (!\Add20~7\)))) # (GND)
-- \Add20~9\ = CARRY((\sentido_contagem~3_combout\ & ((q(4)) # (!\Add20~7\))) # (!\sentido_contagem~3_combout\ & (q(4) & !\Add20~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~3_combout\,
	datab => q(4),
	datad => VCC,
	cin => \Add20~7\,
	combout => \Add20~8_combout\,
	cout => \Add20~9\);

-- Location: LCCOMB_X39_Y61_N24
\q[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(4) = (\reset~input_o\ & ((\Equal0~8_combout\ & ((\Add20~8_combout\))) # (!\Equal0~8_combout\ & (q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => q(4),
	datac => \Equal0~8_combout\,
	datad => \Add20~8_combout\,
	combout => q(4));

-- Location: LCCOMB_X39_Y61_N14
\Add20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~10_combout\ = (q(5) & ((\sentido_contagem~3_combout\ & (\Add20~9\ & VCC)) # (!\sentido_contagem~3_combout\ & (!\Add20~9\)))) # (!q(5) & ((\sentido_contagem~3_combout\ & (!\Add20~9\)) # (!\sentido_contagem~3_combout\ & ((\Add20~9\) # (GND)))))
-- \Add20~11\ = CARRY((q(5) & (!\sentido_contagem~3_combout\ & !\Add20~9\)) # (!q(5) & ((!\Add20~9\) # (!\sentido_contagem~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => \sentido_contagem~3_combout\,
	datad => VCC,
	cin => \Add20~9\,
	combout => \Add20~10_combout\,
	cout => \Add20~11\);

-- Location: LCCOMB_X39_Y61_N22
\q[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(5) = (\reset~input_o\ & ((\Equal0~8_combout\ & ((\Add20~10_combout\))) # (!\Equal0~8_combout\ & (q(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => \reset~input_o\,
	datac => \Equal0~8_combout\,
	datad => \Add20~10_combout\,
	combout => q(5));

-- Location: LCCOMB_X39_Y61_N16
\Add20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~12_combout\ = \sentido_contagem~3_combout\ $ (\Add20~11\ $ (!q(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~3_combout\,
	datad => q(6),
	cin => \Add20~11\,
	combout => \Add20~12_combout\);

-- Location: LCCOMB_X39_Y61_N28
\q[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(6) = (\reset~input_o\ & ((\Equal0~8_combout\ & ((\Add20~12_combout\))) # (!\Equal0~8_combout\ & (q(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => q(6),
	datac => \Equal0~8_combout\,
	datad => \Add20~12_combout\,
	combout => q(6));

-- Location: LCCOMB_X39_Y61_N20
\sentido_contagem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sentido_contagem~1_combout\ = (q(5) & (q(6) & (!q(0) & !\sentido_contagem~3_combout\))) # (!q(5) & (!q(6) & (q(0) & \sentido_contagem~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => q(6),
	datac => q(0),
	datad => \sentido_contagem~3_combout\,
	combout => \sentido_contagem~1_combout\);

-- Location: LCCOMB_X39_Y61_N30
\sentido_contagem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sentido_contagem~0_combout\ = (q(4)) # ((q(3)) # (q(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(3),
	datac => q(2),
	combout => \sentido_contagem~0_combout\);

-- Location: LCCOMB_X39_Y61_N2
\sentido_contagem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sentido_contagem~2_combout\ = (\sentido_contagem~1_combout\ & (!\sentido_contagem~0_combout\ & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~1_combout\,
	datac => \sentido_contagem~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \sentido_contagem~2_combout\);

-- Location: LCCOMB_X39_Y61_N26
\sentido_contagem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sentido_contagem~3_combout\ = (\reset~input_o\ & ((\sentido_contagem~2_combout\ & (q(1))) # (!\sentido_contagem~2_combout\ & ((\sentido_contagem~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => q(1),
	datac => \sentido_contagem~3_combout\,
	datad => \sentido_contagem~2_combout\,
	combout => \sentido_contagem~3_combout\);

-- Location: CLKCTRL_G12
\Equal0~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~8clkctrl_outclk\);

-- Location: LCCOMB_X40_Y61_N10
\q[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- q(1) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add20~2_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datab => \Add20~2_combout\,
	datac => \reset~input_o\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => q(1));

-- Location: LCCOMB_X39_Y64_N18
\Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = q(0) $ (VCC)
-- \Add16~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: LCCOMB_X40_Y64_N18
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = q(0) $ (VCC)
-- \Add14~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X39_Y64_N0
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = q(0) $ (VCC)
-- \Add15~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X38_Y61_N26
\unidade[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~2_combout\ = (q(4) & q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datac => q(3),
	combout => \unidade[0]~2_combout\);

-- Location: LCCOMB_X40_Y61_N24
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (((!q(0) & !q(1))) # (!q(2))) # (!\unidade[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~2_combout\,
	datab => q(2),
	datac => q(0),
	datad => q(1),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X41_Y62_N4
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (q(3) & ((q(2)) # ((q(0)) # (q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(2),
	datac => q(0),
	datad => q(1),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X40_Y61_N14
\LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = (!q(2) & ((!q(1)) # (!q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datac => q(2),
	datad => q(1),
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X41_Y62_N10
\unidade[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~9_combout\ = (q(4) & (!q(3) & ((\LessThan17~1_combout\)))) # (!q(4) & (((\LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => \LessThan14~0_combout\,
	datad => \LessThan17~1_combout\,
	combout => \unidade[0]~9_combout\);

-- Location: LCCOMB_X41_Y64_N16
\unidade[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~10_combout\ = (q(6)) # ((q(5) & ((\unidade[0]~9_combout\) # (!\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~0_combout\,
	datab => q(5),
	datac => q(6),
	datad => \unidade[0]~9_combout\,
	combout => \unidade[0]~10_combout\);

-- Location: LCCOMB_X40_Y61_N28
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (q(4) & ((q(3)) # (!\LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datac => \LessThan17~1_combout\,
	datad => q(4),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X40_Y61_N30
\unidade[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~8_combout\ = (!q(6) & ((!q(5)) # (!\LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	datab => \LessThan13~0_combout\,
	datac => q(5),
	combout => \unidade[0]~8_combout\);

-- Location: LCCOMB_X40_Y65_N28
\unidade[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~11_combout\ = (\unidade[0]~10_combout\ & ((\Add14~0_combout\) # ((\unidade[0]~8_combout\)))) # (!\unidade[0]~10_combout\ & (((\Add15~0_combout\ & !\unidade[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datab => \Add15~0_combout\,
	datac => \unidade[0]~10_combout\,
	datad => \unidade[0]~8_combout\,
	combout => \unidade[0]~11_combout\);

-- Location: LCCOMB_X40_Y64_N4
\Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = q(0) $ (VCC)
-- \Add19~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add19~0_combout\,
	cout => \Add19~1\);

-- Location: LCCOMB_X41_Y61_N16
\Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = q(0) $ (VCC)
-- \Add18~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add18~0_combout\,
	cout => \Add18~1\);

-- Location: LCCOMB_X41_Y64_N18
\Add20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~14_combout\ = q(0) $ (VCC)
-- \Add20~15\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add20~14_combout\,
	cout => \Add20~15\);

-- Location: LCCOMB_X40_Y61_N6
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (q(3)) # ((q(2) & ((q(0)) # (q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(2),
	datac => q(0),
	datad => q(1),
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X40_Y61_N22
\LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (q(0) & (q(2) & q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datac => q(2),
	datad => q(1),
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X40_Y61_N20
\unidade[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~3_combout\ = (!q(5) & (!q(6) & ((!\unidade[0]~2_combout\) # (!\LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => q(6),
	datac => \LessThan17~0_combout\,
	datad => \unidade[0]~2_combout\,
	combout => \unidade[0]~3_combout\);

-- Location: LCCOMB_X40_Y61_N12
\unidade[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~5_combout\ = (q(5)) # (((\LessThan16~0_combout\ & q(4))) # (!\unidade[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~0_combout\,
	datab => q(4),
	datac => q(5),
	datad => \unidade[0]~3_combout\,
	combout => \unidade[0]~5_combout\);

-- Location: LCCOMB_X40_Y61_N4
\unidade[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~0_combout\ = (q(3) & ((q(2)) # ((q(0) & q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(2),
	datac => q(0),
	datad => q(1),
	combout => \unidade[0]~0_combout\);

-- Location: LCCOMB_X40_Y61_N8
\unidade[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~1_combout\ = (!q(5) & ((q(4) & ((!\LessThan16~0_combout\))) # (!q(4) & (\unidade[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => q(4),
	datac => \unidade[0]~0_combout\,
	datad => \LessThan16~0_combout\,
	combout => \unidade[0]~1_combout\);

-- Location: LCCOMB_X40_Y61_N2
\unidade[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~4_combout\ = (\unidade[0]~1_combout\) # (!\unidade[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade[0]~3_combout\,
	datad => \unidade[0]~1_combout\,
	combout => \unidade[0]~4_combout\);

-- Location: LCCOMB_X40_Y65_N20
\unidade[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~6_combout\ = (\unidade[0]~5_combout\ & ((\Add18~0_combout\) # ((\unidade[0]~4_combout\)))) # (!\unidade[0]~5_combout\ & (((\Add20~14_combout\ & !\unidade[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~0_combout\,
	datab => \Add20~14_combout\,
	datac => \unidade[0]~5_combout\,
	datad => \unidade[0]~4_combout\,
	combout => \unidade[0]~6_combout\);

-- Location: LCCOMB_X41_Y61_N0
\Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = q(0) $ (VCC)
-- \Add17~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X40_Y65_N18
\unidade[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~7_combout\ = (\unidade[0]~6_combout\ & (((\Add17~0_combout\) # (!\unidade[0]~4_combout\)))) # (!\unidade[0]~6_combout\ & (\Add19~0_combout\ & (\unidade[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datab => \unidade[0]~6_combout\,
	datac => \unidade[0]~4_combout\,
	datad => \Add17~0_combout\,
	combout => \unidade[0]~7_combout\);

-- Location: LCCOMB_X40_Y65_N6
\unidade[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~12_combout\ = (\unidade[0]~11_combout\ & ((\Add16~0_combout\) # ((!\unidade[0]~8_combout\)))) # (!\unidade[0]~11_combout\ & (((\unidade[0]~7_combout\ & \unidade[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \unidade[0]~11_combout\,
	datac => \unidade[0]~7_combout\,
	datad => \unidade[0]~8_combout\,
	combout => \unidade[0]~12_combout\);

-- Location: LCCOMB_X41_Y63_N8
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = q(0) $ (VCC)
-- \Add13~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X39_Y65_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = q(0) $ (VCC)
-- \Add12~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X39_Y65_N16
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = q(0) $ (VCC)
-- \Add11~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X40_Y62_N14
\unidade[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~13_combout\ = (q(2)) # ((q(0)) # ((q(3)) # (q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(0),
	datac => q(3),
	datad => q(1),
	combout => \unidade[0]~13_combout\);

-- Location: LCCOMB_X40_Y62_N20
\unidade[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~15_combout\ = (q(4) & (((!\unidade[0]~13_combout\)))) # (!q(4) & ((q(3)) # ((\LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(3),
	datac => \LessThan17~0_combout\,
	datad => \unidade[0]~13_combout\,
	combout => \unidade[0]~15_combout\);

-- Location: LCCOMB_X40_Y62_N30
\unidade[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~16_combout\ = (!\unidade[0]~15_combout\ & ((!\unidade[0]~0_combout\) # (!q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade[0]~15_combout\,
	datac => q(4),
	datad => \unidade[0]~0_combout\,
	combout => \unidade[0]~16_combout\);

-- Location: LCCOMB_X40_Y62_N28
\unidade[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~17_combout\ = (q(6) & ((q(5)) # (!\unidade[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~16_combout\,
	datac => q(5),
	datad => q(6),
	combout => \unidade[0]~17_combout\);

-- Location: LCCOMB_X39_Y62_N0
\unidade[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~14_combout\ = ((!q(5) & ((!q(4)) # (!\unidade[0]~13_combout\)))) # (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	datab => \unidade[0]~13_combout\,
	datac => q(4),
	datad => q(5),
	combout => \unidade[0]~14_combout\);

-- Location: LCCOMB_X40_Y65_N4
\unidade[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~18_combout\ = (\unidade[0]~17_combout\ & (((\Add11~0_combout\) # (\unidade[0]~14_combout\)))) # (!\unidade[0]~17_combout\ & (\Add12~0_combout\ & ((!\unidade[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add11~0_combout\,
	datac => \unidade[0]~17_combout\,
	datad => \unidade[0]~14_combout\,
	combout => \unidade[0]~18_combout\);

-- Location: LCCOMB_X40_Y65_N10
\unidade[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~19_combout\ = (\unidade[0]~18_combout\ & (((\Add13~0_combout\) # (!\unidade[0]~14_combout\)))) # (!\unidade[0]~18_combout\ & (\unidade[0]~12_combout\ & ((\unidade[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~12_combout\,
	datab => \Add13~0_combout\,
	datac => \unidade[0]~18_combout\,
	datad => \unidade[0]~14_combout\,
	combout => \unidade[0]~19_combout\);

-- Location: LCCOMB_X40_Y62_N26
\unidade[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~24_combout\ = (!q(6) & (((!q(4)) # (!\unidade[0]~13_combout\)) # (!q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => \unidade[0]~13_combout\,
	datac => q(4),
	datad => q(6),
	combout => \unidade[0]~24_combout\);

-- Location: LCCOMB_X40_Y63_N14
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = q(0) $ (VCC)
-- \Add6~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X39_Y62_N18
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = q(0) $ (VCC)
-- \Add4~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X40_Y62_N24
\unidade[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~25_combout\ = (q(6)) # ((q(5) & !\unidade[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datac => \unidade[0]~16_combout\,
	datad => q(6),
	combout => \unidade[0]~25_combout\);

-- Location: LCCOMB_X40_Y62_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = q(0) $ (VCC)
-- \Add5~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X40_Y62_N18
\unidade[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~26_combout\ = (\unidade[0]~25_combout\ & ((\Add4~0_combout\) # ((\unidade[0]~24_combout\)))) # (!\unidade[0]~25_combout\ & (((\Add5~0_combout\ & !\unidade[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \unidade[0]~25_combout\,
	datac => \Add5~0_combout\,
	datad => \unidade[0]~24_combout\,
	combout => \unidade[0]~26_combout\);

-- Location: LCCOMB_X41_Y62_N0
\unidade[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~20_combout\ = (\unidade[0]~9_combout\) # ((q(6)) # ((q(5)) # (!\LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~9_combout\,
	datab => q(6),
	datac => q(5),
	datad => \LessThan12~0_combout\,
	combout => \unidade[0]~20_combout\);

-- Location: LCCOMB_X43_Y62_N0
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = q(0) $ (VCC)
-- \Add7~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X40_Y61_N26
\unidade[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~21_combout\ = (q(5)) # (((q(6)) # (\LessThan13~0_combout\)) # (!\LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => \LessThan12~0_combout\,
	datac => q(6),
	datad => \LessThan13~0_combout\,
	combout => \unidade[0]~21_combout\);

-- Location: LCCOMB_X42_Y62_N18
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = q(0) $ (VCC)
-- \Add10~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X42_Y61_N18
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = q(0) $ (VCC)
-- \Add8~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X40_Y65_N8
\unidade[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~22_combout\ = (\unidade[0]~21_combout\ & (((\Add8~0_combout\) # (\unidade[0]~20_combout\)))) # (!\unidade[0]~21_combout\ & (\Add10~0_combout\ & ((!\unidade[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~21_combout\,
	datab => \Add10~0_combout\,
	datac => \Add8~0_combout\,
	datad => \unidade[0]~20_combout\,
	combout => \unidade[0]~22_combout\);

-- Location: LCCOMB_X43_Y65_N8
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = q(0) $ (VCC)
-- \Add9~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X40_Y65_N30
\unidade[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~23_combout\ = (\unidade[0]~20_combout\ & ((\unidade[0]~22_combout\ & (\Add7~0_combout\)) # (!\unidade[0]~22_combout\ & ((\Add9~0_combout\))))) # (!\unidade[0]~20_combout\ & (((\unidade[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~20_combout\,
	datab => \Add7~0_combout\,
	datac => \unidade[0]~22_combout\,
	datad => \Add9~0_combout\,
	combout => \unidade[0]~23_combout\);

-- Location: LCCOMB_X40_Y65_N12
\unidade[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~27_combout\ = (\unidade[0]~24_combout\ & ((\unidade[0]~26_combout\ & (\Add6~0_combout\)) # (!\unidade[0]~26_combout\ & ((\unidade[0]~23_combout\))))) # (!\unidade[0]~24_combout\ & (((\unidade[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~24_combout\,
	datab => \Add6~0_combout\,
	datac => \unidade[0]~26_combout\,
	datad => \unidade[0]~23_combout\,
	combout => \unidade[0]~27_combout\);

-- Location: LCCOMB_X42_Y61_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = q(0) $ (VCC)
-- \Add1~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X42_Y65_N8
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = q(0) $ (VCC)
-- \Add2~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X38_Y61_N10
\unidade[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~31_combout\ = (!q(2) & (!q(1) & !q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datac => q(1),
	datad => q(0),
	combout => \unidade[0]~31_combout\);

-- Location: LCCOMB_X38_Y61_N14
\unidade[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~30_combout\ = (!q(4) & (\LessThan16~0_combout\ & ((!q(3)) # (!\LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \LessThan17~0_combout\,
	datac => q(3),
	datad => \LessThan16~0_combout\,
	combout => \unidade[0]~30_combout\);

-- Location: LCCOMB_X38_Y61_N30
\unidade[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~32_combout\ = (q(5)) # ((\unidade[0]~30_combout\) # ((!\unidade[0]~31_combout\ & \unidade[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~31_combout\,
	datab => \unidade[0]~2_combout\,
	datac => q(5),
	datad => \unidade[0]~30_combout\,
	combout => \unidade[0]~32_combout\);

-- Location: LCCOMB_X38_Y61_N8
\unidade[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~33_combout\ = (q(6) & \unidade[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(6),
	datad => \unidade[0]~32_combout\,
	combout => \unidade[0]~33_combout\);

-- Location: LCCOMB_X41_Y63_N28
\unidade[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~28_combout\ = (!q(5) & (!q(4) & ((!q(3)) # (!\LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => q(4),
	datac => \LessThan17~0_combout\,
	datad => q(3),
	combout => \unidade[0]~28_combout\);

-- Location: LCCOMB_X41_Y63_N26
\unidade[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~29_combout\ = (\unidade[0]~28_combout\) # (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade[0]~28_combout\,
	datad => q(6),
	combout => \unidade[0]~29_combout\);

-- Location: LCCOMB_X40_Y65_N14
\unidade[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~34_combout\ = (\unidade[0]~33_combout\ & ((\Add1~0_combout\) # ((\unidade[0]~29_combout\)))) # (!\unidade[0]~33_combout\ & (((\Add2~0_combout\ & !\unidade[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \unidade[0]~33_combout\,
	datad => \unidade[0]~29_combout\,
	combout => \unidade[0]~34_combout\);

-- Location: LCCOMB_X39_Y62_N4
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = q(0) $ (VCC)
-- \Add3~1\ = CARRY(q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X40_Y65_N16
\unidade[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~35_combout\ = (\unidade[0]~34_combout\ & (((\Add3~0_combout\) # (!\unidade[0]~29_combout\)))) # (!\unidade[0]~34_combout\ & (\unidade[0]~27_combout\ & ((\unidade[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~27_combout\,
	datab => \unidade[0]~34_combout\,
	datac => \Add3~0_combout\,
	datad => \unidade[0]~29_combout\,
	combout => \unidade[0]~35_combout\);

-- Location: LCCOMB_X40_Y65_N22
\unidade[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~36_combout\ = (\sentido_contagem~3_combout\ & (\unidade[0]~19_combout\)) # (!\sentido_contagem~3_combout\ & ((\unidade[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~19_combout\,
	datab => \unidade[0]~35_combout\,
	datad => \sentido_contagem~3_combout\,
	combout => \unidade[0]~36_combout\);

-- Location: LCCOMB_X40_Y65_N26
\unidade[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(0) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\unidade[0]~36_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((unidade(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~36_combout\,
	datab => \reset~input_o\,
	datac => unidade(0),
	datad => \Equal0~8clkctrl_outclk\,
	combout => unidade(0));

-- Location: LCCOMB_X39_Y62_N6
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (q(1) & (\Add3~1\ & VCC)) # (!q(1) & (!\Add3~1\))
-- \Add3~3\ = CARRY((!q(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X42_Y65_N10
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (q(1) & (!\Add2~1\)) # (!q(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X39_Y62_N20
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (q(1) & (!\Add4~1\)) # (!q(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X40_Y63_N16
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (q(1) & (!\Add6~1\)) # (!q(1) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X40_Y62_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (q(1) & (\Add5~1\ & VCC)) # (!q(1) & (!\Add5~1\))
-- \Add5~3\ = CARRY((!q(1) & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X42_Y61_N20
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (q(1) & (!\Add8~1\)) # (!q(1) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X43_Y62_N2
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (q(1) & (\Add7~1\ & VCC)) # (!q(1) & (!\Add7~1\))
-- \Add7~3\ = CARRY((!q(1) & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X42_Y62_N20
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (q(1) & (!\Add10~1\)) # (!q(1) & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X43_Y65_N10
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (q(1) & (\Add9~1\ & VCC)) # (!q(1) & (!\Add9~1\))
-- \Add9~3\ = CARRY((!q(1) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X41_Y62_N18
\unidade[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~43_combout\ = (\unidade[0]~20_combout\ & (((\unidade[0]~21_combout\) # (\Add9~2_combout\)))) # (!\unidade[0]~20_combout\ & (\Add10~2_combout\ & (!\unidade[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \unidade[0]~20_combout\,
	datac => \unidade[0]~21_combout\,
	datad => \Add9~2_combout\,
	combout => \unidade[1]~43_combout\);

-- Location: LCCOMB_X41_Y62_N16
\unidade[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~44_combout\ = (\unidade[0]~21_combout\ & ((\unidade[1]~43_combout\ & ((\Add7~2_combout\))) # (!\unidade[1]~43_combout\ & (\Add8~2_combout\)))) # (!\unidade[0]~21_combout\ & (((\unidade[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \unidade[0]~21_combout\,
	datac => \Add7~2_combout\,
	datad => \unidade[1]~43_combout\,
	combout => \unidade[1]~44_combout\);

-- Location: LCCOMB_X41_Y62_N2
\unidade[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~45_combout\ = (\unidade[0]~24_combout\ & ((\unidade[0]~25_combout\) # ((\unidade[1]~44_combout\)))) # (!\unidade[0]~24_combout\ & (!\unidade[0]~25_combout\ & (\Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~24_combout\,
	datab => \unidade[0]~25_combout\,
	datac => \Add5~2_combout\,
	datad => \unidade[1]~44_combout\,
	combout => \unidade[1]~45_combout\);

-- Location: LCCOMB_X41_Y62_N8
\unidade[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~46_combout\ = (\unidade[0]~25_combout\ & ((\unidade[1]~45_combout\ & ((\Add6~2_combout\))) # (!\unidade[1]~45_combout\ & (\Add4~2_combout\)))) # (!\unidade[0]~25_combout\ & (((\unidade[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \unidade[0]~25_combout\,
	datac => \Add6~2_combout\,
	datad => \unidade[1]~45_combout\,
	combout => \unidade[1]~46_combout\);

-- Location: LCCOMB_X41_Y62_N26
\unidade[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~47_combout\ = (\unidade[0]~29_combout\ & (((\unidade[1]~46_combout\) # (\unidade[0]~33_combout\)))) # (!\unidade[0]~29_combout\ & (\Add2~2_combout\ & ((!\unidade[0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \unidade[0]~29_combout\,
	datac => \unidade[1]~46_combout\,
	datad => \unidade[0]~33_combout\,
	combout => \unidade[1]~47_combout\);

-- Location: LCCOMB_X42_Y61_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (q(1) & (\Add1~1\ & VCC)) # (!q(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!q(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X41_Y62_N24
\unidade[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~48_combout\ = (\unidade[0]~33_combout\ & ((\unidade[1]~47_combout\ & (\Add3~2_combout\)) # (!\unidade[1]~47_combout\ & ((\Add1~2_combout\))))) # (!\unidade[0]~33_combout\ & (((\unidade[1]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~33_combout\,
	datab => \Add3~2_combout\,
	datac => \unidade[1]~47_combout\,
	datad => \Add1~2_combout\,
	combout => \unidade[1]~48_combout\);

-- Location: LCCOMB_X39_Y65_N18
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (q(1) & (!\Add11~1\)) # (!q(1) & ((\Add11~1\) # (GND)))
-- \Add11~3\ = CARRY((!\Add11~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X41_Y63_N10
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (q(1) & (!\Add13~1\)) # (!q(1) & ((\Add13~1\) # (GND)))
-- \Add13~3\ = CARRY((!\Add13~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X40_Y64_N20
\Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (q(1) & (\Add14~1\ & VCC)) # (!q(1) & (!\Add14~1\))
-- \Add14~3\ = CARRY((!q(1) & !\Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X39_Y64_N20
\Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (q(1) & (\Add16~1\ & VCC)) # (!q(1) & (!\Add16~1\))
-- \Add16~3\ = CARRY((!q(1) & !\Add16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X39_Y64_N2
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (q(1) & (!\Add15~1\)) # (!q(1) & ((\Add15~1\) # (GND)))
-- \Add15~3\ = CARRY((!\Add15~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X41_Y61_N18
\Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (q(1) & (\Add18~1\ & VCC)) # (!q(1) & (!\Add18~1\))
-- \Add18~3\ = CARRY((!q(1) & !\Add18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datad => VCC,
	cin => \Add18~1\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X41_Y61_N2
\Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (q(1) & (!\Add17~1\)) # (!q(1) & ((\Add17~1\) # (GND)))
-- \Add17~3\ = CARRY((!\Add17~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datad => VCC,
	cin => \Add17~1\,
	combout => \Add17~2_combout\,
	cout => \Add17~3\);

-- Location: LCCOMB_X41_Y64_N20
\Add20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~16_combout\ = (q(1) & (\Add20~15\ & VCC)) # (!q(1) & (!\Add20~15\))
-- \Add20~17\ = CARRY((!q(1) & !\Add20~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(1),
	datad => VCC,
	cin => \Add20~15\,
	combout => \Add20~16_combout\,
	cout => \Add20~17\);

-- Location: LCCOMB_X40_Y64_N6
\Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (q(1) & (!\Add19~1\)) # (!q(1) & ((\Add19~1\) # (GND)))
-- \Add19~3\ = CARRY((!\Add19~1\) # (!q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add19~1\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: LCCOMB_X40_Y61_N0
\unidade[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~37_combout\ = (\unidade[0]~5_combout\ & (\unidade[0]~4_combout\)) # (!\unidade[0]~5_combout\ & ((\unidade[0]~4_combout\ & ((\Add19~2_combout\))) # (!\unidade[0]~4_combout\ & (\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~5_combout\,
	datab => \unidade[0]~4_combout\,
	datac => \Add20~16_combout\,
	datad => \Add19~2_combout\,
	combout => \unidade[1]~37_combout\);

-- Location: LCCOMB_X40_Y61_N18
\unidade[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~38_combout\ = (\unidade[0]~5_combout\ & ((\unidade[1]~37_combout\ & ((\Add17~2_combout\))) # (!\unidade[1]~37_combout\ & (\Add18~2_combout\)))) # (!\unidade[0]~5_combout\ & (((\unidade[1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~5_combout\,
	datab => \Add18~2_combout\,
	datac => \Add17~2_combout\,
	datad => \unidade[1]~37_combout\,
	combout => \unidade[1]~38_combout\);

-- Location: LCCOMB_X40_Y64_N0
\unidade[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~39_combout\ = (\unidade[0]~10_combout\ & (((\unidade[0]~8_combout\)))) # (!\unidade[0]~10_combout\ & ((\unidade[0]~8_combout\ & ((\unidade[1]~38_combout\))) # (!\unidade[0]~8_combout\ & (\Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~2_combout\,
	datab => \unidade[0]~10_combout\,
	datac => \unidade[0]~8_combout\,
	datad => \unidade[1]~38_combout\,
	combout => \unidade[1]~39_combout\);

-- Location: LCCOMB_X39_Y64_N14
\unidade[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~40_combout\ = (\unidade[1]~39_combout\ & (((\Add16~2_combout\) # (!\unidade[0]~10_combout\)))) # (!\unidade[1]~39_combout\ & (\Add14~2_combout\ & ((\unidade[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~2_combout\,
	datab => \Add16~2_combout\,
	datac => \unidade[1]~39_combout\,
	datad => \unidade[0]~10_combout\,
	combout => \unidade[1]~40_combout\);

-- Location: LCCOMB_X39_Y65_N2
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (q(1) & (\Add12~1\ & VCC)) # (!q(1) & (!\Add12~1\))
-- \Add12~3\ = CARRY((!q(1) & !\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X39_Y64_N16
\unidade[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~41_combout\ = (\unidade[0]~14_combout\ & ((\unidade[0]~17_combout\) # ((\unidade[1]~40_combout\)))) # (!\unidade[0]~14_combout\ & (!\unidade[0]~17_combout\ & ((\Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~14_combout\,
	datab => \unidade[0]~17_combout\,
	datac => \unidade[1]~40_combout\,
	datad => \Add12~2_combout\,
	combout => \unidade[1]~41_combout\);

-- Location: LCCOMB_X42_Y64_N22
\unidade[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~42_combout\ = (\unidade[1]~41_combout\ & (((\Add13~2_combout\) # (!\unidade[0]~17_combout\)))) # (!\unidade[1]~41_combout\ & (\Add11~2_combout\ & ((\unidade[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add13~2_combout\,
	datac => \unidade[1]~41_combout\,
	datad => \unidade[0]~17_combout\,
	combout => \unidade[1]~42_combout\);

-- Location: LCCOMB_X42_Y64_N8
\unidade[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[1]~49_combout\ = (\sentido_contagem~3_combout\ & ((\unidade[1]~42_combout\))) # (!\sentido_contagem~3_combout\ & (\unidade[1]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~48_combout\,
	datab => \sentido_contagem~3_combout\,
	datac => \unidade[1]~42_combout\,
	combout => \unidade[1]~49_combout\);

-- Location: LCCOMB_X42_Y64_N20
\unidade[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(1) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\unidade[1]~49_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => unidade(1),
	datac => \unidade[1]~49_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => unidade(1));

-- Location: LCCOMB_X42_Y65_N12
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (q(2) & (\Add2~3\ $ (GND))) # (!q(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((q(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X42_Y61_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (q(2) & ((GND) # (!\Add1~3\))) # (!q(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((q(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X42_Y65_N4
\unidade[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~60_combout\ = (\unidade[0]~33_combout\ & (((\Add1~4_combout\) # (\unidade[0]~29_combout\)))) # (!\unidade[0]~33_combout\ & (\Add2~4_combout\ & ((!\unidade[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~33_combout\,
	datab => \Add2~4_combout\,
	datac => \Add1~4_combout\,
	datad => \unidade[0]~29_combout\,
	combout => \unidade[2]~60_combout\);

-- Location: LCCOMB_X39_Y62_N8
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (q(2) & (\Add3~3\ $ (GND))) # (!q(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((q(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X40_Y63_N18
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (q(2) & (\Add6~3\ $ (GND))) # (!q(2) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((q(2) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X40_Y62_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (q(2) & ((GND) # (!\Add5~3\))) # (!q(2) & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((q(2)) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X39_Y62_N22
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (q(2) & ((GND) # (!\Add4~3\))) # (!q(2) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((q(2)) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X41_Y62_N6
\unidade[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~58_combout\ = (\unidade[0]~24_combout\ & (((\unidade[0]~25_combout\)))) # (!\unidade[0]~24_combout\ & ((\unidade[0]~25_combout\ & ((\Add4~4_combout\))) # (!\unidade[0]~25_combout\ & (\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~24_combout\,
	datab => \Add5~4_combout\,
	datac => \Add4~4_combout\,
	datad => \unidade[0]~25_combout\,
	combout => \unidade[2]~58_combout\);

-- Location: LCCOMB_X43_Y62_N4
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (q(2) & (\Add7~3\ $ (GND))) # (!q(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((q(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X42_Y62_N22
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (q(2) & (\Add10~3\ $ (GND))) # (!q(2) & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((q(2) & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X42_Y61_N22
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (q(2) & ((GND) # (!\Add8~3\))) # (!q(2) & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((q(2)) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X42_Y62_N8
\unidade[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~56_combout\ = (\unidade[0]~20_combout\ & (((\unidade[0]~21_combout\)))) # (!\unidade[0]~20_combout\ & ((\unidade[0]~21_combout\ & ((\Add8~4_combout\))) # (!\unidade[0]~21_combout\ & (\Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~20_combout\,
	datab => \Add10~4_combout\,
	datac => \unidade[0]~21_combout\,
	datad => \Add8~4_combout\,
	combout => \unidade[2]~56_combout\);

-- Location: LCCOMB_X43_Y65_N12
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (q(2) & ((GND) # (!\Add9~3\))) # (!q(2) & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((q(2)) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X42_Y62_N14
\unidade[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~57_combout\ = (\unidade[0]~20_combout\ & ((\unidade[2]~56_combout\ & (\Add7~4_combout\)) # (!\unidade[2]~56_combout\ & ((\Add9~4_combout\))))) # (!\unidade[0]~20_combout\ & (((\unidade[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~20_combout\,
	datab => \Add7~4_combout\,
	datac => \unidade[2]~56_combout\,
	datad => \Add9~4_combout\,
	combout => \unidade[2]~57_combout\);

-- Location: LCCOMB_X42_Y62_N12
\unidade[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~59_combout\ = (\unidade[0]~24_combout\ & ((\unidade[2]~58_combout\ & (\Add6~4_combout\)) # (!\unidade[2]~58_combout\ & ((\unidade[2]~57_combout\))))) # (!\unidade[0]~24_combout\ & (((\unidade[2]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \unidade[0]~24_combout\,
	datac => \unidade[2]~58_combout\,
	datad => \unidade[2]~57_combout\,
	combout => \unidade[2]~59_combout\);

-- Location: LCCOMB_X41_Y65_N22
\unidade[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~61_combout\ = (\unidade[2]~60_combout\ & ((\Add3~4_combout\) # ((!\unidade[0]~29_combout\)))) # (!\unidade[2]~60_combout\ & (((\unidade[2]~59_combout\ & \unidade[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[2]~60_combout\,
	datab => \Add3~4_combout\,
	datac => \unidade[2]~59_combout\,
	datad => \unidade[0]~29_combout\,
	combout => \unidade[2]~61_combout\);

-- Location: LCCOMB_X39_Y65_N20
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (q(2) & ((GND) # (!\Add11~3\))) # (!q(2) & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((q(2)) # (!\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X39_Y65_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (q(2) & ((GND) # (!\Add12~3\))) # (!q(2) & (\Add12~3\ $ (GND)))
-- \Add12~5\ = CARRY((q(2)) # (!\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X40_Y65_N24
\unidade[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~54_combout\ = (\unidade[0]~17_combout\ & ((\Add11~4_combout\) # ((\unidade[0]~14_combout\)))) # (!\unidade[0]~17_combout\ & (((\Add12~4_combout\ & !\unidade[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \Add12~4_combout\,
	datac => \unidade[0]~17_combout\,
	datad => \unidade[0]~14_combout\,
	combout => \unidade[2]~54_combout\);

-- Location: LCCOMB_X40_Y64_N8
\Add19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (q(2) & ((GND) # (!\Add19~3\))) # (!q(2) & (\Add19~3\ $ (GND)))
-- \Add19~5\ = CARRY((q(2)) # (!\Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: LCCOMB_X41_Y61_N20
\Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = (q(2) & (\Add18~3\ $ (GND))) # (!q(2) & (!\Add18~3\ & VCC))
-- \Add18~5\ = CARRY((q(2) & !\Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X41_Y64_N22
\Add20~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~18_combout\ = (q(2) & ((GND) # (!\Add20~17\))) # (!q(2) & (\Add20~17\ $ (GND)))
-- \Add20~19\ = CARRY((q(2)) # (!\Add20~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add20~17\,
	combout => \Add20~18_combout\,
	cout => \Add20~19\);

-- Location: LCCOMB_X41_Y65_N20
\unidade[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~50_combout\ = (\unidade[0]~5_combout\ & ((\Add18~4_combout\) # ((\unidade[0]~4_combout\)))) # (!\unidade[0]~5_combout\ & (((!\unidade[0]~4_combout\ & \Add20~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~4_combout\,
	datab => \unidade[0]~5_combout\,
	datac => \unidade[0]~4_combout\,
	datad => \Add20~18_combout\,
	combout => \unidade[2]~50_combout\);

-- Location: LCCOMB_X41_Y61_N4
\Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = (q(2) & (\Add17~3\ $ (GND))) # (!q(2) & (!\Add17~3\ & VCC))
-- \Add17~5\ = CARRY((q(2) & !\Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add17~3\,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X41_Y65_N6
\unidade[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~51_combout\ = (\unidade[2]~50_combout\ & (((\Add17~4_combout\) # (!\unidade[0]~4_combout\)))) # (!\unidade[2]~50_combout\ & (\Add19~4_combout\ & (\unidade[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => \unidade[2]~50_combout\,
	datac => \unidade[0]~4_combout\,
	datad => \Add17~4_combout\,
	combout => \unidade[2]~51_combout\);

-- Location: LCCOMB_X40_Y64_N22
\Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = (q(2) & (\Add14~3\ $ (GND))) # (!q(2) & (!\Add14~3\ & VCC))
-- \Add14~5\ = CARRY((q(2) & !\Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X39_Y64_N4
\Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = (q(2) & ((GND) # (!\Add15~3\))) # (!q(2) & (\Add15~3\ $ (GND)))
-- \Add15~5\ = CARRY((q(2)) # (!\Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X41_Y65_N24
\unidade[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~52_combout\ = (\unidade[0]~8_combout\ & (((\unidade[0]~10_combout\)))) # (!\unidade[0]~8_combout\ & ((\unidade[0]~10_combout\ & (\Add14~4_combout\)) # (!\unidade[0]~10_combout\ & ((\Add15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~4_combout\,
	datab => \Add15~4_combout\,
	datac => \unidade[0]~8_combout\,
	datad => \unidade[0]~10_combout\,
	combout => \unidade[2]~52_combout\);

-- Location: LCCOMB_X39_Y64_N22
\Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = (q(2) & ((GND) # (!\Add16~3\))) # (!q(2) & (\Add16~3\ $ (GND)))
-- \Add16~5\ = CARRY((q(2)) # (!\Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X41_Y65_N18
\unidade[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~53_combout\ = (\unidade[2]~52_combout\ & (((\Add16~4_combout\) # (!\unidade[0]~8_combout\)))) # (!\unidade[2]~52_combout\ & (\unidade[2]~51_combout\ & (\unidade[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[2]~51_combout\,
	datab => \unidade[2]~52_combout\,
	datac => \unidade[0]~8_combout\,
	datad => \Add16~4_combout\,
	combout => \unidade[2]~53_combout\);

-- Location: LCCOMB_X41_Y63_N12
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (q(2) & (\Add13~3\ $ (GND))) # (!q(2) & (!\Add13~3\ & VCC))
-- \Add13~5\ = CARRY((q(2) & !\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X41_Y65_N0
\unidade[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~55_combout\ = (\unidade[0]~14_combout\ & ((\unidade[2]~54_combout\ & ((\Add13~4_combout\))) # (!\unidade[2]~54_combout\ & (\unidade[2]~53_combout\)))) # (!\unidade[0]~14_combout\ & (\unidade[2]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~14_combout\,
	datab => \unidade[2]~54_combout\,
	datac => \unidade[2]~53_combout\,
	datad => \Add13~4_combout\,
	combout => \unidade[2]~55_combout\);

-- Location: LCCOMB_X41_Y65_N12
\unidade[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[2]~62_combout\ = (\sentido_contagem~3_combout\ & ((\unidade[2]~55_combout\))) # (!\sentido_contagem~3_combout\ & (\unidade[2]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[2]~61_combout\,
	datab => \sentido_contagem~3_combout\,
	datac => \unidade[2]~55_combout\,
	combout => \unidade[2]~62_combout\);

-- Location: LCCOMB_X41_Y65_N16
\unidade[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(2) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\unidade[2]~62_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((unidade(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[2]~62_combout\,
	datab => \reset~input_o\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => unidade(2),
	combout => unidade(2));

-- Location: LCCOMB_X39_Y65_N22
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (q(3) & (!\Add11~5\)) # (!q(3) & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X39_Y65_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (q(3) & (\Add12~5\ & VCC)) # (!q(3) & (!\Add12~5\))
-- \Add12~7\ = CARRY((!q(3) & !\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X39_Y64_N6
\Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (q(3) & (\Add15~5\ & VCC)) # (!q(3) & (!\Add15~5\))
-- \Add15~7\ = CARRY((!q(3) & !\Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X41_Y61_N22
\Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (q(3) & (\Add18~5\ & VCC)) # (!q(3) & (!\Add18~5\))
-- \Add18~7\ = CARRY((!q(3) & !\Add18~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X41_Y61_N6
\Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (q(3) & (!\Add17~5\)) # (!q(3) & ((\Add17~5\) # (GND)))
-- \Add17~7\ = CARRY((!\Add17~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X41_Y64_N24
\Add20~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~20_combout\ = (q(3) & (\Add20~19\ & VCC)) # (!q(3) & (!\Add20~19\))
-- \Add20~21\ = CARRY((!q(3) & !\Add20~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add20~19\,
	combout => \Add20~20_combout\,
	cout => \Add20~21\);

-- Location: LCCOMB_X40_Y64_N10
\Add19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (q(3) & (!\Add19~5\)) # (!q(3) & ((\Add19~5\) # (GND)))
-- \Add19~7\ = CARRY((!\Add19~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: LCCOMB_X41_Y64_N14
\unidade[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~63_combout\ = (\unidade[0]~4_combout\ & (((\unidade[0]~5_combout\) # (\Add19~6_combout\)))) # (!\unidade[0]~4_combout\ & (\Add20~20_combout\ & (!\unidade[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~4_combout\,
	datab => \Add20~20_combout\,
	datac => \unidade[0]~5_combout\,
	datad => \Add19~6_combout\,
	combout => \unidade[3]~63_combout\);

-- Location: LCCOMB_X41_Y64_N4
\unidade[3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~64_combout\ = (\unidade[3]~63_combout\ & (((\Add17~6_combout\) # (!\unidade[0]~5_combout\)))) # (!\unidade[3]~63_combout\ & (\Add18~6_combout\ & ((\unidade[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~6_combout\,
	datab => \Add17~6_combout\,
	datac => \unidade[3]~63_combout\,
	datad => \unidade[0]~5_combout\,
	combout => \unidade[3]~64_combout\);

-- Location: LCCOMB_X41_Y64_N10
\unidade[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~65_combout\ = (\unidade[0]~8_combout\ & (((\unidade[3]~64_combout\) # (\unidade[0]~10_combout\)))) # (!\unidade[0]~8_combout\ & (\Add15~6_combout\ & ((!\unidade[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~8_combout\,
	datab => \Add15~6_combout\,
	datac => \unidade[3]~64_combout\,
	datad => \unidade[0]~10_combout\,
	combout => \unidade[3]~65_combout\);

-- Location: LCCOMB_X39_Y64_N24
\Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (q(3) & (!\Add16~5\)) # (!q(3) & ((\Add16~5\) # (GND)))
-- \Add16~7\ = CARRY((!\Add16~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X40_Y64_N24
\Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (q(3) & (!\Add14~5\)) # (!q(3) & ((\Add14~5\) # (GND)))
-- \Add14~7\ = CARRY((!\Add14~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X41_Y64_N8
\unidade[3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~66_combout\ = (\unidade[3]~65_combout\ & ((\Add16~6_combout\) # ((!\unidade[0]~10_combout\)))) # (!\unidade[3]~65_combout\ & (((\unidade[0]~10_combout\ & \Add14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~65_combout\,
	datab => \Add16~6_combout\,
	datac => \unidade[0]~10_combout\,
	datad => \Add14~6_combout\,
	combout => \unidade[3]~66_combout\);

-- Location: LCCOMB_X41_Y64_N2
\unidade[3]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~67_combout\ = (\unidade[0]~17_combout\ & (((\unidade[0]~14_combout\)))) # (!\unidade[0]~17_combout\ & ((\unidade[0]~14_combout\ & ((\unidade[3]~66_combout\))) # (!\unidade[0]~14_combout\ & (\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~17_combout\,
	datab => \Add12~6_combout\,
	datac => \unidade[0]~14_combout\,
	datad => \unidade[3]~66_combout\,
	combout => \unidade[3]~67_combout\);

-- Location: LCCOMB_X41_Y63_N14
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (q(3) & (\Add13~5\ & VCC)) # (!q(3) & (!\Add13~5\))
-- \Add13~7\ = CARRY((!q(3) & !\Add13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X41_Y64_N12
\unidade[3]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~68_combout\ = (\unidade[3]~67_combout\ & (((\Add13~6_combout\) # (!\unidade[0]~17_combout\)))) # (!\unidade[3]~67_combout\ & (\Add11~6_combout\ & (\unidade[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \unidade[3]~67_combout\,
	datac => \unidade[0]~17_combout\,
	datad => \Add13~6_combout\,
	combout => \unidade[3]~68_combout\);

-- Location: LCCOMB_X42_Y61_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (q(3) & (!\Add1~5\)) # (!q(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X39_Y62_N10
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (q(3) & (\Add3~5\ & VCC)) # (!q(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!q(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X42_Y65_N14
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (q(3) & (!\Add2~5\)) # (!q(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X39_Y62_N24
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (q(3) & (!\Add4~5\)) # (!q(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X40_Y63_N20
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (q(3) & (\Add6~5\ & VCC)) # (!q(3) & (!\Add6~5\))
-- \Add6~7\ = CARRY((!q(3) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X40_Y62_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (q(3) & (\Add5~5\ & VCC)) # (!q(3) & (!\Add5~5\))
-- \Add5~7\ = CARRY((!q(3) & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X43_Y62_N6
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (q(3) & (!\Add7~5\)) # (!q(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X42_Y61_N24
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (q(3) & (\Add8~5\ & VCC)) # (!q(3) & (!\Add8~5\))
-- \Add8~7\ = CARRY((!q(3) & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X42_Y62_N24
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (q(3) & (!\Add10~5\)) # (!q(3) & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X43_Y65_N14
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (q(3) & (!\Add9~5\)) # (!q(3) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X42_Y62_N2
\unidade[3]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~69_combout\ = (\unidade[0]~21_combout\ & (((\unidade[0]~20_combout\)))) # (!\unidade[0]~21_combout\ & ((\unidade[0]~20_combout\ & ((\Add9~6_combout\))) # (!\unidade[0]~20_combout\ & (\Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~21_combout\,
	datab => \Add10~6_combout\,
	datac => \Add9~6_combout\,
	datad => \unidade[0]~20_combout\,
	combout => \unidade[3]~69_combout\);

-- Location: LCCOMB_X42_Y62_N0
\unidade[3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~70_combout\ = (\unidade[0]~21_combout\ & ((\unidade[3]~69_combout\ & (\Add7~6_combout\)) # (!\unidade[3]~69_combout\ & ((\Add8~6_combout\))))) # (!\unidade[0]~21_combout\ & (((\unidade[3]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add8~6_combout\,
	datac => \unidade[0]~21_combout\,
	datad => \unidade[3]~69_combout\,
	combout => \unidade[3]~70_combout\);

-- Location: LCCOMB_X42_Y62_N6
\unidade[3]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~71_combout\ = (\unidade[0]~24_combout\ & (((\unidade[0]~25_combout\) # (\unidade[3]~70_combout\)))) # (!\unidade[0]~24_combout\ & (\Add5~6_combout\ & (!\unidade[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \unidade[0]~24_combout\,
	datac => \unidade[0]~25_combout\,
	datad => \unidade[3]~70_combout\,
	combout => \unidade[3]~71_combout\);

-- Location: LCCOMB_X42_Y62_N16
\unidade[3]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~72_combout\ = (\unidade[0]~25_combout\ & ((\unidade[3]~71_combout\ & ((\Add6~6_combout\))) # (!\unidade[3]~71_combout\ & (\Add4~6_combout\)))) # (!\unidade[0]~25_combout\ & (((\unidade[3]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~25_combout\,
	datab => \Add4~6_combout\,
	datac => \Add6~6_combout\,
	datad => \unidade[3]~71_combout\,
	combout => \unidade[3]~72_combout\);

-- Location: LCCOMB_X42_Y62_N10
\unidade[3]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~73_combout\ = (\unidade[0]~29_combout\ & (((\unidade[0]~33_combout\) # (\unidade[3]~72_combout\)))) # (!\unidade[0]~29_combout\ & (\Add2~6_combout\ & (!\unidade[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~29_combout\,
	datab => \Add2~6_combout\,
	datac => \unidade[0]~33_combout\,
	datad => \unidade[3]~72_combout\,
	combout => \unidade[3]~73_combout\);

-- Location: LCCOMB_X42_Y62_N4
\unidade[3]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~74_combout\ = (\unidade[0]~33_combout\ & ((\unidade[3]~73_combout\ & ((\Add3~6_combout\))) # (!\unidade[3]~73_combout\ & (\Add1~6_combout\)))) # (!\unidade[0]~33_combout\ & (((\unidade[3]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add3~6_combout\,
	datac => \unidade[0]~33_combout\,
	datad => \unidade[3]~73_combout\,
	combout => \unidade[3]~74_combout\);

-- Location: LCCOMB_X42_Y64_N18
\unidade[3]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~75_combout\ = (\sentido_contagem~3_combout\ & (\unidade[3]~68_combout\)) # (!\sentido_contagem~3_combout\ & ((\unidade[3]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~68_combout\,
	datac => \sentido_contagem~3_combout\,
	datad => \unidade[3]~74_combout\,
	combout => \unidade[3]~75_combout\);

-- Location: LCCOMB_X42_Y64_N26
\unidade[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(3) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\unidade[3]~75_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (unidade(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => \reset~input_o\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \unidade[3]~75_combout\,
	combout => unidade(3));

-- Location: LCCOMB_X39_Y62_N12
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (q(4) & ((GND) # (!\Add3~7\))) # (!q(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((q(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X40_Y63_N22
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (q(4) & ((GND) # (!\Add6~7\))) # (!q(4) & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((q(4)) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X43_Y65_N16
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (q(4) & ((GND) # (!\Add9~7\))) # (!q(4) & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((q(4)) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X42_Y61_N26
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (q(4) & (\Add8~7\ $ (GND))) # (!q(4) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((q(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X42_Y62_N26
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (q(4) & (\Add10~7\ $ (GND))) # (!q(4) & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((q(4) & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X41_Y63_N0
\unidade[4]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~82_combout\ = (\unidade[0]~20_combout\ & (((\unidade[0]~21_combout\)))) # (!\unidade[0]~20_combout\ & ((\unidade[0]~21_combout\ & (\Add8~8_combout\)) # (!\unidade[0]~21_combout\ & ((\Add10~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \unidade[0]~20_combout\,
	datac => \Add10~8_combout\,
	datad => \unidade[0]~21_combout\,
	combout => \unidade[4]~82_combout\);

-- Location: LCCOMB_X43_Y62_N8
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (q(4) & (\Add7~7\ $ (GND))) # (!q(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((q(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X40_Y63_N30
\unidade[4]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~83_combout\ = (\unidade[0]~20_combout\ & ((\unidade[4]~82_combout\ & ((\Add7~8_combout\))) # (!\unidade[4]~82_combout\ & (\Add9~8_combout\)))) # (!\unidade[0]~20_combout\ & (((\unidade[4]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \unidade[0]~20_combout\,
	datac => \unidade[4]~82_combout\,
	datad => \Add7~8_combout\,
	combout => \unidade[4]~83_combout\);

-- Location: LCCOMB_X40_Y62_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (q(4) & (\Add5~7\ $ (GND))) # (!q(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((q(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X39_Y62_N26
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (q(4) & (\Add4~7\ $ (GND))) # (!q(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((q(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X40_Y62_N16
\unidade[4]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~84_combout\ = (\unidade[0]~24_combout\ & (((\unidade[0]~25_combout\)))) # (!\unidade[0]~24_combout\ & ((\unidade[0]~25_combout\ & ((\Add4~8_combout\))) # (!\unidade[0]~25_combout\ & (\Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \unidade[0]~24_combout\,
	datac => \unidade[0]~25_combout\,
	datad => \Add4~8_combout\,
	combout => \unidade[4]~84_combout\);

-- Location: LCCOMB_X40_Y63_N4
\unidade[4]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~85_combout\ = (\unidade[0]~24_combout\ & ((\unidade[4]~84_combout\ & (\Add6~8_combout\)) # (!\unidade[4]~84_combout\ & ((\unidade[4]~83_combout\))))) # (!\unidade[0]~24_combout\ & (((\unidade[4]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \unidade[0]~24_combout\,
	datac => \unidade[4]~83_combout\,
	datad => \unidade[4]~84_combout\,
	combout => \unidade[4]~85_combout\);

-- Location: LCCOMB_X42_Y61_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (q(4) & (\Add1~7\ $ (GND))) # (!q(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((q(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X42_Y65_N16
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (q(4) & ((GND) # (!\Add2~7\))) # (!q(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((q(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X41_Y61_N14
\unidade[4]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~86_combout\ = (\unidade[0]~33_combout\ & ((\Add1~8_combout\) # ((\unidade[0]~29_combout\)))) # (!\unidade[0]~33_combout\ & (((!\unidade[0]~29_combout\ & \Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~33_combout\,
	datab => \Add1~8_combout\,
	datac => \unidade[0]~29_combout\,
	datad => \Add2~8_combout\,
	combout => \unidade[4]~86_combout\);

-- Location: LCCOMB_X40_Y63_N10
\unidade[4]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~87_combout\ = (\unidade[0]~29_combout\ & ((\unidade[4]~86_combout\ & (\Add3~8_combout\)) # (!\unidade[4]~86_combout\ & ((\unidade[4]~85_combout\))))) # (!\unidade[0]~29_combout\ & (((\unidade[4]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~29_combout\,
	datab => \Add3~8_combout\,
	datac => \unidade[4]~85_combout\,
	datad => \unidade[4]~86_combout\,
	combout => \unidade[4]~87_combout\);

-- Location: LCCOMB_X39_Y64_N26
\Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = (q(4) & ((GND) # (!\Add16~7\))) # (!q(4) & (\Add16~7\ $ (GND)))
-- \Add16~9\ = CARRY((q(4)) # (!\Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X39_Y64_N8
\Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = (q(4) & (\Add15~7\ $ (GND))) # (!q(4) & (!\Add15~7\ & VCC))
-- \Add15~9\ = CARRY((q(4) & !\Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X40_Y64_N26
\Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = (q(4) & (\Add14~7\ $ (GND))) # (!q(4) & (!\Add14~7\ & VCC))
-- \Add14~9\ = CARRY((q(4) & !\Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X40_Y64_N2
\unidade[4]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~78_combout\ = (\unidade[0]~8_combout\ & (((\unidade[0]~10_combout\)))) # (!\unidade[0]~8_combout\ & ((\unidade[0]~10_combout\ & ((\Add14~8_combout\))) # (!\unidade[0]~10_combout\ & (\Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~8_combout\,
	datab => \Add14~8_combout\,
	datac => \unidade[0]~8_combout\,
	datad => \unidade[0]~10_combout\,
	combout => \unidade[4]~78_combout\);

-- Location: LCCOMB_X41_Y61_N8
\Add17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~8_combout\ = (q(4) & (\Add17~7\ $ (GND))) # (!q(4) & (!\Add17~7\ & VCC))
-- \Add17~9\ = CARRY((q(4) & !\Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add17~7\,
	combout => \Add17~8_combout\,
	cout => \Add17~9\);

-- Location: LCCOMB_X40_Y64_N12
\Add19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~8_combout\ = (q(4) & ((GND) # (!\Add19~7\))) # (!q(4) & (\Add19~7\ $ (GND)))
-- \Add19~9\ = CARRY((q(4)) # (!\Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add19~7\,
	combout => \Add19~8_combout\,
	cout => \Add19~9\);

-- Location: LCCOMB_X41_Y61_N24
\Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = (q(4) & (\Add18~7\ $ (GND))) # (!q(4) & (!\Add18~7\ & VCC))
-- \Add18~9\ = CARRY((q(4) & !\Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X41_Y64_N26
\Add20~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~22_combout\ = (q(4) & ((GND) # (!\Add20~21\))) # (!q(4) & (\Add20~21\ $ (GND)))
-- \Add20~23\ = CARRY((q(4)) # (!\Add20~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add20~21\,
	combout => \Add20~22_combout\,
	cout => \Add20~23\);

-- Location: LCCOMB_X41_Y61_N30
\unidade[4]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~76_combout\ = (\unidade[0]~4_combout\ & (((\unidade[0]~5_combout\)))) # (!\unidade[0]~4_combout\ & ((\unidade[0]~5_combout\ & (\Add18~8_combout\)) # (!\unidade[0]~5_combout\ & ((\Add20~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~4_combout\,
	datab => \Add18~8_combout\,
	datac => \unidade[0]~5_combout\,
	datad => \Add20~22_combout\,
	combout => \unidade[4]~76_combout\);

-- Location: LCCOMB_X40_Y63_N28
\unidade[4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~77_combout\ = (\unidade[0]~4_combout\ & ((\unidade[4]~76_combout\ & (\Add17~8_combout\)) # (!\unidade[4]~76_combout\ & ((\Add19~8_combout\))))) # (!\unidade[0]~4_combout\ & (((\unidade[4]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~8_combout\,
	datab => \Add19~8_combout\,
	datac => \unidade[0]~4_combout\,
	datad => \unidade[4]~76_combout\,
	combout => \unidade[4]~77_combout\);

-- Location: LCCOMB_X40_Y63_N6
\unidade[4]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~79_combout\ = (\unidade[0]~8_combout\ & ((\unidade[4]~78_combout\ & (\Add16~8_combout\)) # (!\unidade[4]~78_combout\ & ((\unidade[4]~77_combout\))))) # (!\unidade[0]~8_combout\ & (((\unidade[4]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~8_combout\,
	datab => \Add16~8_combout\,
	datac => \unidade[4]~78_combout\,
	datad => \unidade[4]~77_combout\,
	combout => \unidade[4]~79_combout\);

-- Location: LCCOMB_X41_Y63_N16
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (q(4) & ((GND) # (!\Add13~7\))) # (!q(4) & (\Add13~7\ $ (GND)))
-- \Add13~9\ = CARRY((q(4)) # (!\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X39_Y65_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (q(4) & (\Add12~7\ $ (GND))) # (!q(4) & (!\Add12~7\ & VCC))
-- \Add12~9\ = CARRY((q(4) & !\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X39_Y65_N24
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (q(4) & (\Add11~7\ $ (GND))) # (!q(4) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((q(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X39_Y65_N30
\unidade[4]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~80_combout\ = (\unidade[0]~17_combout\ & (((\Add11~8_combout\) # (\unidade[0]~14_combout\)))) # (!\unidade[0]~17_combout\ & (\Add12~8_combout\ & ((!\unidade[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => \unidade[0]~17_combout\,
	datac => \Add11~8_combout\,
	datad => \unidade[0]~14_combout\,
	combout => \unidade[4]~80_combout\);

-- Location: LCCOMB_X40_Y63_N0
\unidade[4]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~81_combout\ = (\unidade[4]~80_combout\ & (((\Add13~8_combout\) # (!\unidade[0]~14_combout\)))) # (!\unidade[4]~80_combout\ & (\unidade[4]~79_combout\ & ((\unidade[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[4]~79_combout\,
	datab => \Add13~8_combout\,
	datac => \unidade[4]~80_combout\,
	datad => \unidade[0]~14_combout\,
	combout => \unidade[4]~81_combout\);

-- Location: LCCOMB_X40_Y63_N8
\unidade[4]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[4]~88_combout\ = (\sentido_contagem~3_combout\ & ((\unidade[4]~81_combout\))) # (!\sentido_contagem~3_combout\ & (\unidade[4]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[4]~87_combout\,
	datab => \unidade[4]~81_combout\,
	datad => \sentido_contagem~3_combout\,
	combout => \unidade[4]~88_combout\);

-- Location: LCCOMB_X40_Y63_N2
\unidade[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(4) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\unidade[4]~88_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (unidade(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => unidade(4),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \unidade[4]~88_combout\,
	combout => unidade(4));

-- Location: LCCOMB_X39_Y62_N14
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (q(5) & (\Add3~9\ & VCC)) # (!q(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!q(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X42_Y61_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (q(5) & (\Add1~9\ & VCC)) # (!q(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!q(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X42_Y65_N18
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (q(5) & (\Add2~9\ & VCC)) # (!q(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!q(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X40_Y63_N24
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (q(5) & (!\Add6~9\)) # (!q(5) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X39_Y62_N28
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (q(5) & (!\Add4~9\)) # (!q(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X40_Y62_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (q(5) & (!\Add5~9\)) # (!q(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X42_Y61_N28
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (q(5) & (\Add8~9\ & VCC)) # (!q(5) & (!\Add8~9\))
-- \Add8~11\ = CARRY((!q(5) & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X43_Y62_N10
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (q(5) & (\Add7~9\ & VCC)) # (!q(5) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!q(5) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X42_Y62_N28
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (q(5) & (!\Add10~9\)) # (!q(5) & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X43_Y65_N18
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (q(5) & (\Add9~9\ & VCC)) # (!q(5) & (!\Add9~9\))
-- \Add9~11\ = CARRY((!q(5) & !\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X42_Y65_N2
\unidade[5]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~95_combout\ = (\unidade[0]~20_combout\ & ((\unidade[0]~21_combout\) # ((\Add9~10_combout\)))) # (!\unidade[0]~20_combout\ & (!\unidade[0]~21_combout\ & (\Add10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~20_combout\,
	datab => \unidade[0]~21_combout\,
	datac => \Add10~10_combout\,
	datad => \Add9~10_combout\,
	combout => \unidade[5]~95_combout\);

-- Location: LCCOMB_X42_Y65_N28
\unidade[5]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~96_combout\ = (\unidade[0]~21_combout\ & ((\unidade[5]~95_combout\ & ((\Add7~10_combout\))) # (!\unidade[5]~95_combout\ & (\Add8~10_combout\)))) # (!\unidade[0]~21_combout\ & (((\unidade[5]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \unidade[0]~21_combout\,
	datac => \Add7~10_combout\,
	datad => \unidade[5]~95_combout\,
	combout => \unidade[5]~96_combout\);

-- Location: LCCOMB_X42_Y65_N6
\unidade[5]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~97_combout\ = (\unidade[0]~24_combout\ & (((\unidade[0]~25_combout\) # (\unidade[5]~96_combout\)))) # (!\unidade[0]~24_combout\ & (\Add5~10_combout\ & (!\unidade[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \unidade[0]~24_combout\,
	datac => \unidade[0]~25_combout\,
	datad => \unidade[5]~96_combout\,
	combout => \unidade[5]~97_combout\);

-- Location: LCCOMB_X42_Y65_N26
\unidade[5]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~98_combout\ = (\unidade[0]~25_combout\ & ((\unidade[5]~97_combout\ & (\Add6~10_combout\)) # (!\unidade[5]~97_combout\ & ((\Add4~10_combout\))))) # (!\unidade[0]~25_combout\ & (((\unidade[5]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add4~10_combout\,
	datac => \unidade[0]~25_combout\,
	datad => \unidade[5]~97_combout\,
	combout => \unidade[5]~98_combout\);

-- Location: LCCOMB_X42_Y65_N24
\unidade[5]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~99_combout\ = (\unidade[0]~33_combout\ & (((\unidade[0]~29_combout\)))) # (!\unidade[0]~33_combout\ & ((\unidade[0]~29_combout\ & ((\unidade[5]~98_combout\))) # (!\unidade[0]~29_combout\ & (\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~33_combout\,
	datab => \Add2~10_combout\,
	datac => \unidade[5]~98_combout\,
	datad => \unidade[0]~29_combout\,
	combout => \unidade[5]~99_combout\);

-- Location: LCCOMB_X42_Y65_N30
\unidade[5]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~100_combout\ = (\unidade[0]~33_combout\ & ((\unidade[5]~99_combout\ & (\Add3~10_combout\)) # (!\unidade[5]~99_combout\ & ((\Add1~10_combout\))))) # (!\unidade[0]~33_combout\ & (((\unidade[5]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \unidade[0]~33_combout\,
	datac => \Add1~10_combout\,
	datad => \unidade[5]~99_combout\,
	combout => \unidade[5]~100_combout\);

-- Location: LCCOMB_X39_Y65_N26
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (q(5) & (\Add11~9\ & VCC)) # (!q(5) & (!\Add11~9\))
-- \Add11~11\ = CARRY((!q(5) & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X39_Y65_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (q(5) & (\Add12~9\ & VCC)) # (!q(5) & (!\Add12~9\))
-- \Add12~11\ = CARRY((!q(5) & !\Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X39_Y64_N28
\Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (q(5) & (!\Add16~9\)) # (!q(5) & ((\Add16~9\) # (GND)))
-- \Add16~11\ = CARRY((!\Add16~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X39_Y64_N10
\Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (q(5) & (!\Add15~9\)) # (!q(5) & ((\Add15~9\) # (GND)))
-- \Add15~11\ = CARRY((!\Add15~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X41_Y61_N26
\Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (q(5) & (\Add18~9\ & VCC)) # (!q(5) & (!\Add18~9\))
-- \Add18~11\ = CARRY((!q(5) & !\Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X41_Y61_N10
\Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = (q(5) & (\Add17~9\ & VCC)) # (!q(5) & (!\Add17~9\))
-- \Add17~11\ = CARRY((!q(5) & !\Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add17~9\,
	combout => \Add17~10_combout\,
	cout => \Add17~11\);

-- Location: LCCOMB_X40_Y64_N14
\Add19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (q(5) & (\Add19~9\ & VCC)) # (!q(5) & (!\Add19~9\))
-- \Add19~11\ = CARRY((!q(5) & !\Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X41_Y64_N28
\Add20~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~24_combout\ = (q(5) & (\Add20~23\ & VCC)) # (!q(5) & (!\Add20~23\))
-- \Add20~25\ = CARRY((!q(5) & !\Add20~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datad => VCC,
	cin => \Add20~23\,
	combout => \Add20~24_combout\,
	cout => \Add20~25\);

-- Location: LCCOMB_X41_Y65_N2
\unidade[5]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~89_combout\ = (\unidade[0]~5_combout\ & (((\unidade[0]~4_combout\)))) # (!\unidade[0]~5_combout\ & ((\unidade[0]~4_combout\ & (\Add19~10_combout\)) # (!\unidade[0]~4_combout\ & ((\Add20~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \unidade[0]~5_combout\,
	datac => \unidade[0]~4_combout\,
	datad => \Add20~24_combout\,
	combout => \unidade[5]~89_combout\);

-- Location: LCCOMB_X41_Y65_N4
\unidade[5]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~90_combout\ = (\unidade[0]~5_combout\ & ((\unidade[5]~89_combout\ & ((\Add17~10_combout\))) # (!\unidade[5]~89_combout\ & (\Add18~10_combout\)))) # (!\unidade[0]~5_combout\ & (((\unidade[5]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~10_combout\,
	datab => \unidade[0]~5_combout\,
	datac => \Add17~10_combout\,
	datad => \unidade[5]~89_combout\,
	combout => \unidade[5]~90_combout\);

-- Location: LCCOMB_X41_Y65_N30
\unidade[5]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~91_combout\ = (\unidade[0]~8_combout\ & (((\unidade[5]~90_combout\) # (\unidade[0]~10_combout\)))) # (!\unidade[0]~8_combout\ & (\Add15~10_combout\ & ((!\unidade[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~8_combout\,
	datab => \Add15~10_combout\,
	datac => \unidade[5]~90_combout\,
	datad => \unidade[0]~10_combout\,
	combout => \unidade[5]~91_combout\);

-- Location: LCCOMB_X40_Y64_N28
\Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (q(5) & (!\Add14~9\)) # (!q(5) & ((\Add14~9\) # (GND)))
-- \Add14~11\ = CARRY((!\Add14~9\) # (!q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X41_Y65_N28
\unidade[5]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~92_combout\ = (\unidade[0]~10_combout\ & ((\unidade[5]~91_combout\ & (\Add16~10_combout\)) # (!\unidade[5]~91_combout\ & ((\Add14~10_combout\))))) # (!\unidade[0]~10_combout\ & (((\unidade[5]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~10_combout\,
	datab => \Add16~10_combout\,
	datac => \unidade[5]~91_combout\,
	datad => \Add14~10_combout\,
	combout => \unidade[5]~92_combout\);

-- Location: LCCOMB_X41_Y65_N26
\unidade[5]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~93_combout\ = (\unidade[0]~14_combout\ & ((\unidade[0]~17_combout\) # ((\unidade[5]~92_combout\)))) # (!\unidade[0]~14_combout\ & (!\unidade[0]~17_combout\ & (\Add12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~14_combout\,
	datab => \unidade[0]~17_combout\,
	datac => \Add12~10_combout\,
	datad => \unidade[5]~92_combout\,
	combout => \unidade[5]~93_combout\);

-- Location: LCCOMB_X41_Y63_N18
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (q(5) & (\Add13~9\ & VCC)) # (!q(5) & (!\Add13~9\))
-- \Add13~11\ = CARRY((!q(5) & !\Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(5),
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X41_Y65_N8
\unidade[5]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~94_combout\ = (\unidade[0]~17_combout\ & ((\unidade[5]~93_combout\ & ((\Add13~10_combout\))) # (!\unidade[5]~93_combout\ & (\Add11~10_combout\)))) # (!\unidade[0]~17_combout\ & (((\unidade[5]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \unidade[0]~17_combout\,
	datac => \unidade[5]~93_combout\,
	datad => \Add13~10_combout\,
	combout => \unidade[5]~94_combout\);

-- Location: LCCOMB_X41_Y65_N14
\unidade[5]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~101_combout\ = (\sentido_contagem~3_combout\ & ((\unidade[5]~94_combout\))) # (!\sentido_contagem~3_combout\ & (\unidade[5]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sentido_contagem~3_combout\,
	datac => \unidade[5]~100_combout\,
	datad => \unidade[5]~94_combout\,
	combout => \unidade[5]~101_combout\);

-- Location: LCCOMB_X41_Y65_N10
\unidade[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(5) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\unidade[5]~101_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (unidade(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(5),
	datab => \reset~input_o\,
	datac => \unidade[5]~101_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => unidade(5));

-- Location: LCCOMB_X43_Y62_N12
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = q(6) $ (\Add7~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(6),
	cin => \Add7~11\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X42_Y61_N30
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = \Add8~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X42_Y62_N30
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = q(6) $ (!\Add10~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	cin => \Add10~11\,
	combout => \Add10~12_combout\);

-- Location: LCCOMB_X43_Y62_N24
\unidade[6]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~108_combout\ = (\unidade[0]~20_combout\ & (((\unidade[0]~21_combout\)))) # (!\unidade[0]~20_combout\ & ((\unidade[0]~21_combout\ & (\Add8~12_combout\)) # (!\unidade[0]~21_combout\ & ((\Add10~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datab => \unidade[0]~20_combout\,
	datac => \Add10~12_combout\,
	datad => \unidade[0]~21_combout\,
	combout => \unidade[6]~108_combout\);

-- Location: LCCOMB_X43_Y65_N20
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = \Add9~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add9~11\,
	combout => \Add9~12_combout\);

-- Location: LCCOMB_X43_Y62_N30
\unidade[6]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~109_combout\ = (\unidade[6]~108_combout\ & ((\Add7~12_combout\) # ((!\unidade[0]~20_combout\)))) # (!\unidade[6]~108_combout\ & (((\unidade[0]~20_combout\ & \Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \unidade[6]~108_combout\,
	datac => \unidade[0]~20_combout\,
	datad => \Add9~12_combout\,
	combout => \unidade[6]~109_combout\);

-- Location: LCCOMB_X40_Y62_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = \Add5~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add5~11\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X39_Y62_N30
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = q(6) $ (\Add4~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X40_Y62_N22
\unidade[6]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~110_combout\ = (\unidade[0]~25_combout\ & (((\Add4~12_combout\) # (\unidade[0]~24_combout\)))) # (!\unidade[0]~25_combout\ & (\Add5~12_combout\ & ((!\unidade[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => \Add4~12_combout\,
	datac => \unidade[0]~25_combout\,
	datad => \unidade[0]~24_combout\,
	combout => \unidade[6]~110_combout\);

-- Location: LCCOMB_X40_Y63_N26
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = \Add6~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add6~11\,
	combout => \Add6~12_combout\);

-- Location: LCCOMB_X43_Y62_N20
\unidade[6]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~111_combout\ = (\unidade[0]~24_combout\ & ((\unidade[6]~110_combout\ & ((\Add6~12_combout\))) # (!\unidade[6]~110_combout\ & (\unidade[6]~109_combout\)))) # (!\unidade[0]~24_combout\ & (((\unidade[6]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[6]~109_combout\,
	datab => \unidade[0]~24_combout\,
	datac => \unidade[6]~110_combout\,
	datad => \Add6~12_combout\,
	combout => \unidade[6]~111_combout\);

-- Location: LCCOMB_X39_Y62_N16
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = \Add3~11\ $ (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add3~11\,
	combout => \Add3~12_combout\);

-- Location: LCCOMB_X42_Y61_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X42_Y65_N20
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\ $ (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X42_Y65_N0
\unidade[6]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~112_combout\ = (\unidade[0]~29_combout\ & (((\unidade[0]~33_combout\)))) # (!\unidade[0]~29_combout\ & ((\unidade[0]~33_combout\ & (\Add1~12_combout\)) # (!\unidade[0]~33_combout\ & ((\Add2~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add2~12_combout\,
	datac => \unidade[0]~29_combout\,
	datad => \unidade[0]~33_combout\,
	combout => \unidade[6]~112_combout\);

-- Location: LCCOMB_X43_Y62_N22
\unidade[6]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~113_combout\ = (\unidade[0]~29_combout\ & ((\unidade[6]~112_combout\ & ((\Add3~12_combout\))) # (!\unidade[6]~112_combout\ & (\unidade[6]~111_combout\)))) # (!\unidade[0]~29_combout\ & (((\unidade[6]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~29_combout\,
	datab => \unidade[6]~111_combout\,
	datac => \Add3~12_combout\,
	datad => \unidade[6]~112_combout\,
	combout => \unidade[6]~113_combout\);

-- Location: LCCOMB_X41_Y63_N20
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = \Add13~11\ $ (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add13~11\,
	combout => \Add13~12_combout\);

-- Location: LCCOMB_X39_Y65_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = \Add12~11\ $ (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add12~11\,
	combout => \Add12~12_combout\);

-- Location: LCCOMB_X39_Y65_N28
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = \Add11~11\ $ (!q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add11~11\,
	combout => \Add11~12_combout\);

-- Location: LCCOMB_X39_Y65_N14
\unidade[6]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~106_combout\ = (\unidade[0]~14_combout\ & (((\unidade[0]~17_combout\)))) # (!\unidade[0]~14_combout\ & ((\unidade[0]~17_combout\ & ((\Add11~12_combout\))) # (!\unidade[0]~17_combout\ & (\Add12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \unidade[0]~14_combout\,
	datac => \Add11~12_combout\,
	datad => \unidade[0]~17_combout\,
	combout => \unidade[6]~106_combout\);

-- Location: LCCOMB_X40_Y64_N30
\Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = \Add14~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add14~11\,
	combout => \Add14~12_combout\);

-- Location: LCCOMB_X39_Y64_N12
\Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = \Add15~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add15~11\,
	combout => \Add15~12_combout\);

-- Location: LCCOMB_X41_Y64_N6
\unidade[6]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~104_combout\ = (\unidade[0]~8_combout\ & (((\unidade[0]~10_combout\)))) # (!\unidade[0]~8_combout\ & ((\unidade[0]~10_combout\ & (\Add14~12_combout\)) # (!\unidade[0]~10_combout\ & ((\Add15~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~8_combout\,
	datab => \Add14~12_combout\,
	datac => \Add15~12_combout\,
	datad => \unidade[0]~10_combout\,
	combout => \unidade[6]~104_combout\);

-- Location: LCCOMB_X39_Y64_N30
\Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = \Add16~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add16~11\,
	combout => \Add16~12_combout\);

-- Location: LCCOMB_X40_Y64_N16
\Add19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = \Add19~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add19~11\,
	combout => \Add19~12_combout\);

-- Location: LCCOMB_X41_Y61_N28
\Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = \Add18~11\ $ (q(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => q(6),
	cin => \Add18~11\,
	combout => \Add18~12_combout\);

-- Location: LCCOMB_X41_Y64_N30
\Add20~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~26_combout\ = q(6) $ (\Add20~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	cin => \Add20~25\,
	combout => \Add20~26_combout\);

-- Location: LCCOMB_X42_Y61_N14
\unidade[6]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~102_combout\ = (\unidade[0]~4_combout\ & (((\unidade[0]~5_combout\)))) # (!\unidade[0]~4_combout\ & ((\unidade[0]~5_combout\ & (\Add18~12_combout\)) # (!\unidade[0]~5_combout\ & ((\Add20~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~4_combout\,
	datab => \Add18~12_combout\,
	datac => \unidade[0]~5_combout\,
	datad => \Add20~26_combout\,
	combout => \unidade[6]~102_combout\);

-- Location: LCCOMB_X41_Y61_N12
\Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~12_combout\ = q(6) $ (\Add17~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(6),
	cin => \Add17~11\,
	combout => \Add17~12_combout\);

-- Location: LCCOMB_X43_Y62_N14
\unidade[6]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~103_combout\ = (\unidade[0]~4_combout\ & ((\unidade[6]~102_combout\ & ((\Add17~12_combout\))) # (!\unidade[6]~102_combout\ & (\Add19~12_combout\)))) # (!\unidade[0]~4_combout\ & (((\unidade[6]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~4_combout\,
	datab => \Add19~12_combout\,
	datac => \unidade[6]~102_combout\,
	datad => \Add17~12_combout\,
	combout => \unidade[6]~103_combout\);

-- Location: LCCOMB_X43_Y62_N28
\unidade[6]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~105_combout\ = (\unidade[6]~104_combout\ & ((\Add16~12_combout\) # ((!\unidade[0]~8_combout\)))) # (!\unidade[6]~104_combout\ & (((\unidade[6]~103_combout\ & \unidade[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[6]~104_combout\,
	datab => \Add16~12_combout\,
	datac => \unidade[6]~103_combout\,
	datad => \unidade[0]~8_combout\,
	combout => \unidade[6]~105_combout\);

-- Location: LCCOMB_X43_Y62_N26
\unidade[6]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~107_combout\ = (\unidade[0]~14_combout\ & ((\unidade[6]~106_combout\ & (\Add13~12_combout\)) # (!\unidade[6]~106_combout\ & ((\unidade[6]~105_combout\))))) # (!\unidade[0]~14_combout\ & (((\unidade[6]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~14_combout\,
	datab => \Add13~12_combout\,
	datac => \unidade[6]~106_combout\,
	datad => \unidade[6]~105_combout\,
	combout => \unidade[6]~107_combout\);

-- Location: LCCOMB_X43_Y62_N16
\unidade[6]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[6]~114_combout\ = (\sentido_contagem~3_combout\ & ((\unidade[6]~107_combout\))) # (!\sentido_contagem~3_combout\ & (\unidade[6]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[6]~113_combout\,
	datac => \sentido_contagem~3_combout\,
	datad => \unidade[6]~107_combout\,
	combout => \unidade[6]~114_combout\);

-- Location: LCCOMB_X43_Y62_N18
\unidade[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- unidade(6) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\unidade[6]~114_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((unidade(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \unidade[6]~114_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => unidade(6),
	combout => unidade(6));

-- Location: LCCOMB_X41_Y62_N30
\dezena~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~2_combout\ = (q(5) & (((\unidade[0]~16_combout\)))) # (!q(5) & ((\unidade[0]~9_combout\) # ((!\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(5),
	datab => \unidade[0]~9_combout\,
	datac => \LessThan12~0_combout\,
	datad => \unidade[0]~16_combout\,
	combout => \dezena~2_combout\);

-- Location: LCCOMB_X42_Y63_N14
\dezena[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[0]~3_combout\ = (q(6) & (((\unidade[0]~32_combout\) # (\sentido_contagem~3_combout\)))) # (!q(6) & (\dezena~2_combout\ & ((!\sentido_contagem~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~2_combout\,
	datab => \unidade[0]~32_combout\,
	datac => q(6),
	datad => \sentido_contagem~3_combout\,
	combout => \dezena[0]~3_combout\);

-- Location: LCCOMB_X38_Y61_N12
\LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (!q(5) & (((!\LessThan17~0_combout\) # (!q(4))) # (!q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => q(5),
	datad => \LessThan17~0_combout\,
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X40_Y61_N16
\dezena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~0_combout\ = ((q(4) & (!\LessThan16~0_combout\)) # (!q(4) & ((\unidade[0]~0_combout\)))) # (!\LessThan15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \LessThan16~0_combout\,
	datac => \unidade[0]~0_combout\,
	datad => \LessThan15~2_combout\,
	combout => \dezena~0_combout\);

-- Location: LCCOMB_X41_Y62_N12
\dezena~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~1_combout\ = (q(5) & (\LessThan12~0_combout\ & ((!\unidade[0]~9_combout\)))) # (!q(5) & (((\dezena~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~0_combout\,
	datab => q(5),
	datac => \dezena~0_combout\,
	datad => \unidade[0]~9_combout\,
	combout => \dezena~1_combout\);

-- Location: LCCOMB_X41_Y62_N20
\unidade[0]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~115_combout\ = (q(5)) # ((\unidade[0]~15_combout\) # ((\unidade[0]~0_combout\ & q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~0_combout\,
	datab => q(4),
	datac => q(5),
	datad => \unidade[0]~15_combout\,
	combout => \unidade[0]~115_combout\);

-- Location: LCCOMB_X42_Y63_N20
\dezena[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[0]~4_combout\ = (\dezena[0]~3_combout\ & (((\unidade[0]~115_combout\)) # (!\sentido_contagem~3_combout\))) # (!\dezena[0]~3_combout\ & (\sentido_contagem~3_combout\ & (\dezena~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena[0]~3_combout\,
	datab => \sentido_contagem~3_combout\,
	datac => \dezena~1_combout\,
	datad => \unidade[0]~115_combout\,
	combout => \dezena[0]~4_combout\);

-- Location: LCCOMB_X42_Y63_N28
\dezena[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- dezena(0) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\dezena[0]~4_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((dezena(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena[0]~4_combout\,
	datab => dezena(0),
	datac => \reset~input_o\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => dezena(0));

-- Location: LCCOMB_X40_Y63_N12
\dezena~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~6_combout\ = (q(4) & (((\unidade[0]~0_combout\)))) # (!q(4) & (!q(3) & (!\LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => \LessThan17~0_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \dezena~6_combout\);

-- Location: LCCOMB_X41_Y63_N30
\dezena~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~7_combout\ = (q(5) & (\dezena~6_combout\)) # (!q(5) & ((\unidade[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~6_combout\,
	datab => q(5),
	datac => \unidade[0]~21_combout\,
	combout => \dezena~7_combout\);

-- Location: LCCOMB_X42_Y63_N18
\dezena[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[1]~8_combout\ = (q(6) & ((\unidade[0]~28_combout\) # ((\sentido_contagem~3_combout\)))) # (!q(6) & (((\dezena~7_combout\ & !\sentido_contagem~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~28_combout\,
	datab => \dezena~7_combout\,
	datac => q(6),
	datad => \sentido_contagem~3_combout\,
	combout => \dezena[1]~8_combout\);

-- Location: LCCOMB_X41_Y63_N6
\unidade[0]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~116_combout\ = (!q(5) & ((!q(4)) # (!\unidade[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~13_combout\,
	datab => q(5),
	datac => q(4),
	combout => \unidade[0]~116_combout\);

-- Location: LCCOMB_X41_Y62_N22
\LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = (\LessThan14~0_combout\) # (q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan14~0_combout\,
	datad => q(4),
	combout => \LessThan14~1_combout\);

-- Location: LCCOMB_X41_Y62_N28
\dezena~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~5_combout\ = (q(5) & (((!\LessThan12~0_combout\)) # (!\LessThan14~1_combout\))) # (!q(5) & (((\unidade[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => q(5),
	datac => \LessThan12~0_combout\,
	datad => \unidade[0]~5_combout\,
	combout => \dezena~5_combout\);

-- Location: LCCOMB_X42_Y63_N16
\dezena[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[1]~9_combout\ = (\dezena[1]~8_combout\ & (((\unidade[0]~116_combout\)) # (!\sentido_contagem~3_combout\))) # (!\dezena[1]~8_combout\ & (\sentido_contagem~3_combout\ & ((\dezena~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena[1]~8_combout\,
	datab => \sentido_contagem~3_combout\,
	datac => \unidade[0]~116_combout\,
	datad => \dezena~5_combout\,
	combout => \dezena[1]~9_combout\);

-- Location: LCCOMB_X42_Y63_N26
\dezena[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- dezena(1) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\dezena[1]~9_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (dezena(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => \reset~input_o\,
	datac => \dezena[1]~9_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => dezena(1));

-- Location: LCCOMB_X41_Y62_N14
\dezena~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~10_combout\ = (q(5) & ((\LessThan14~0_combout\) # (q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datac => q(5),
	datad => q(4),
	combout => \dezena~10_combout\);

-- Location: LCCOMB_X41_Y63_N24
\dezena~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~11_combout\ = (q(5) & ((q(4)) # ((\LessThan17~0_combout\) # (q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \LessThan17~0_combout\,
	datac => q(3),
	datad => q(5),
	combout => \dezena~11_combout\);

-- Location: LCCOMB_X41_Y63_N22
\dezena[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[2]~12_combout\ = (q(6) & ((\sentido_contagem~3_combout\) # ((\unidade[0]~28_combout\)))) # (!q(6) & (!\sentido_contagem~3_combout\ & ((\dezena~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(6),
	datab => \sentido_contagem~3_combout\,
	datac => \unidade[0]~28_combout\,
	datad => \dezena~11_combout\,
	combout => \dezena[2]~12_combout\);

-- Location: LCCOMB_X41_Y63_N4
\dezena[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[2]~13_combout\ = (\dezena[2]~12_combout\ & (((\unidade[0]~116_combout\) # (!\sentido_contagem~3_combout\)))) # (!\dezena[2]~12_combout\ & (\dezena~10_combout\ & ((\sentido_contagem~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~10_combout\,
	datab => \unidade[0]~116_combout\,
	datac => \dezena[2]~12_combout\,
	datad => \sentido_contagem~3_combout\,
	combout => \dezena[2]~13_combout\);

-- Location: LCCOMB_X42_Y63_N4
\dezena[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- dezena(2) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\dezena[2]~13_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((dezena(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dezena[2]~13_combout\,
	datac => dezena(2),
	datad => \Equal0~8clkctrl_outclk\,
	combout => dezena(2));

-- Location: LCCOMB_X41_Y63_N2
\dezena[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[3]~14_combout\ = (\sentido_contagem~3_combout\ & (((q(4) & \unidade[0]~0_combout\)) # (!\unidade[0]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \sentido_contagem~3_combout\,
	datac => \unidade[0]~0_combout\,
	datad => \unidade[0]~116_combout\,
	combout => \dezena[3]~14_combout\);

-- Location: LCCOMB_X42_Y63_N22
\dezena[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[3]~15_combout\ = (q(6) & ((\dezena[3]~14_combout\) # ((!\sentido_contagem~3_combout\ & !\unidade[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena[3]~14_combout\,
	datab => \sentido_contagem~3_combout\,
	datac => q(6),
	datad => \unidade[0]~28_combout\,
	combout => \dezena[3]~15_combout\);

-- Location: LCCOMB_X42_Y63_N10
\dezena[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- dezena(3) = (\reset~input_o\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\dezena[3]~15_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (dezena(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(3),
	datab => \reset~input_o\,
	datac => \dezena[3]~15_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => dezena(3));

-- Location: LCCOMB_X42_Y63_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (dezena(3)) # ((dezena(1) & ((!dezena(2)) # (!dezena(0)))) # (!dezena(1) & ((dezena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X42_Y63_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (dezena(0) & ((dezena(1)) # (dezena(2) $ (!dezena(3))))) # (!dezena(0) & ((dezena(2) & ((dezena(3)))) # (!dezena(2) & (dezena(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X42_Y63_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (dezena(0)) # ((dezena(1) & ((dezena(3)))) # (!dezena(1) & (dezena(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X42_Y63_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (dezena(0) & ((dezena(3)) # (dezena(1) $ (!dezena(2))))) # (!dezena(0) & ((dezena(1) & ((dezena(3)))) # (!dezena(1) & (dezena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X42_Y63_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (dezena(2) & (((dezena(3))))) # (!dezena(2) & (dezena(1) & ((dezena(3)) # (!dezena(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X42_Y63_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (dezena(2) & ((dezena(3)) # (dezena(1) $ (dezena(0))))) # (!dezena(2) & (dezena(1) & ((dezena(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X42_Y63_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (dezena(1) & (((dezena(3))))) # (!dezena(1) & (dezena(2) $ (((dezena(0) & !dezena(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(1),
	datab => dezena(0),
	datac => dezena(2),
	datad => dezena(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X42_Y64_N24
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (unidade(3)) # ((unidade(2) & ((!unidade(1)) # (!unidade(0)))) # (!unidade(2) & ((unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X43_Y64_N0
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (unidade(4)) # ((unidade(5)) # ((unidade(6)) # (\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(5),
	datac => unidade(6),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X42_Y64_N14
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (unidade(0) & ((unidade(1)) # (unidade(3) $ (!unidade(2))))) # (!unidade(0) & ((unidade(2) & (unidade(3))) # (!unidade(2) & ((unidade(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X43_Y64_N14
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (unidade(4)) # ((unidade(5)) # ((unidade(6)) # (\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(5),
	datac => unidade(6),
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X42_Y64_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (unidade(0)) # ((unidade(1) & (unidade(3))) # (!unidade(1) & ((unidade(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X43_Y64_N4
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (unidade(4)) # ((unidade(5)) # ((unidade(6)) # (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(5),
	datac => unidade(6),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X42_Y64_N10
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (unidade(0) & ((unidade(3)) # (unidade(2) $ (!unidade(1))))) # (!unidade(0) & ((unidade(1) & (unidade(3))) # (!unidade(1) & ((unidade(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X43_Y64_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (unidade(4)) # ((unidade(5)) # ((unidade(6)) # (\Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(5),
	datac => unidade(6),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X42_Y64_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (unidade(2) & (unidade(3))) # (!unidade(2) & (unidade(1) & ((unidade(3)) # (!unidade(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X43_Y64_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (unidade(4)) # ((unidade(6)) # ((\Mux9~0_combout\) # (unidade(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(6),
	datac => \Mux9~0_combout\,
	datad => unidade(5),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X42_Y64_N6
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (unidade(3) & (((unidade(2)) # (unidade(1))))) # (!unidade(3) & (unidade(2) & (unidade(0) $ (unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X43_Y64_N10
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (unidade(4)) # ((unidade(6)) # ((\Mux8~0_combout\) # (unidade(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(6),
	datac => \Mux8~0_combout\,
	datad => unidade(5),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X42_Y64_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (unidade(1) & (unidade(3))) # (!unidade(1) & (unidade(2) $ (((!unidade(3) & unidade(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(0),
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X43_Y64_N20
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (unidade(4)) # ((unidade(5)) # ((unidade(6)) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(5),
	datac => unidade(6),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

ww_s_reset <= \s_reset~output_o\;

ww_s_decimal(0) <= \s_decimal[0]~output_o\;

ww_s_decimal(1) <= \s_decimal[1]~output_o\;

ww_s_decimal(2) <= \s_decimal[2]~output_o\;

ww_s_decimal(3) <= \s_decimal[3]~output_o\;

ww_s_decimal(4) <= \s_decimal[4]~output_o\;

ww_s_decimal(5) <= \s_decimal[5]~output_o\;

ww_s_decimal(6) <= \s_decimal[6]~output_o\;

ww_s_unidade(0) <= \s_unidade[0]~output_o\;

ww_s_unidade(1) <= \s_unidade[1]~output_o\;

ww_s_unidade(2) <= \s_unidade[2]~output_o\;

ww_s_unidade(3) <= \s_unidade[3]~output_o\;

ww_s_unidade(4) <= \s_unidade[4]~output_o\;

ww_s_unidade(5) <= \s_unidade[5]~output_o\;

ww_s_unidade(6) <= \s_unidade[6]~output_o\;

ww_s_dezena(0) <= \s_dezena[0]~output_o\;

ww_s_dezena(1) <= \s_dezena[1]~output_o\;

ww_s_dezena(2) <= \s_dezena[2]~output_o\;

ww_s_dezena(3) <= \s_dezena[3]~output_o\;

ww_s_dezena(4) <= \s_dezena[4]~output_o\;

ww_s_dezena(5) <= \s_dezena[5]~output_o\;

ww_s_dezena(6) <= \s_dezena[6]~output_o\;

ww_s_bcd7s_dezena(6) <= \s_bcd7s_dezena[6]~output_o\;

ww_s_bcd7s_dezena(5) <= \s_bcd7s_dezena[5]~output_o\;

ww_s_bcd7s_dezena(4) <= \s_bcd7s_dezena[4]~output_o\;

ww_s_bcd7s_dezena(3) <= \s_bcd7s_dezena[3]~output_o\;

ww_s_bcd7s_dezena(2) <= \s_bcd7s_dezena[2]~output_o\;

ww_s_bcd7s_dezena(1) <= \s_bcd7s_dezena[1]~output_o\;

ww_s_bcd7s_dezena(0) <= \s_bcd7s_dezena[0]~output_o\;

ww_s_bcd7s_unidade(6) <= \s_bcd7s_unidade[6]~output_o\;

ww_s_bcd7s_unidade(5) <= \s_bcd7s_unidade[5]~output_o\;

ww_s_bcd7s_unidade(4) <= \s_bcd7s_unidade[4]~output_o\;

ww_s_bcd7s_unidade(3) <= \s_bcd7s_unidade[3]~output_o\;

ww_s_bcd7s_unidade(2) <= \s_bcd7s_unidade[2]~output_o\;

ww_s_bcd7s_unidade(1) <= \s_bcd7s_unidade[1]~output_o\;

ww_s_bcd7s_unidade(0) <= \s_bcd7s_unidade[0]~output_o\;

ww_s_bcd(0) <= \s_bcd[0]~output_o\;

ww_s_bcd(1) <= \s_bcd[1]~output_o\;

ww_s_bcd(2) <= \s_bcd[2]~output_o\;

ww_s_bcd(3) <= \s_bcd[3]~output_o\;

ww_s_bcd(4) <= \s_bcd[4]~output_o\;

ww_s_bcd(5) <= \s_bcd[5]~output_o\;

ww_s_bcd(6) <= \s_bcd[6]~output_o\;

ww_s_bcd(7) <= \s_bcd[7]~output_o\;
END structure;


