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

-- DATE "08/23/2023 10:56:29"

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
	sentido_contagem : IN std_logic;
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
-- s_decimal[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[1]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[3]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[1]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[2]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[4]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[6]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[1]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[4]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[5]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- s_bcd[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[1]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[4]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[6]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sentido_contagem	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sentido_contagem : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s_decimal : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_bcd7s_dezena : std_logic_vector(0 TO 6);
SIGNAL ww_s_bcd7s_unidade : std_logic_vector(0 TO 6);
SIGNAL ww_s_bcd : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|Add0~0_combout\ : std_logic;
SIGNAL \clkdiv|count~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~1\ : std_logic;
SIGNAL \clkdiv|Add0~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~3\ : std_logic;
SIGNAL \clkdiv|Add0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~5\ : std_logic;
SIGNAL \clkdiv|Add0~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~7\ : std_logic;
SIGNAL \clkdiv|Add0~8_combout\ : std_logic;
SIGNAL \clkdiv|Add0~9\ : std_logic;
SIGNAL \clkdiv|Add0~10_combout\ : std_logic;
SIGNAL \clkdiv|Add0~11\ : std_logic;
SIGNAL \clkdiv|Add0~12_combout\ : std_logic;
SIGNAL \clkdiv|count~0_combout\ : std_logic;
SIGNAL \clkdiv|Add0~13\ : std_logic;
SIGNAL \clkdiv|Add0~14_combout\ : std_logic;
SIGNAL \clkdiv|Add0~15\ : std_logic;
SIGNAL \clkdiv|Add0~16_combout\ : std_logic;
SIGNAL \clkdiv|Add0~17\ : std_logic;
SIGNAL \clkdiv|Add0~18_combout\ : std_logic;
SIGNAL \clkdiv|Add0~19\ : std_logic;
SIGNAL \clkdiv|Add0~20_combout\ : std_logic;
SIGNAL \clkdiv|Add0~21\ : std_logic;
SIGNAL \clkdiv|Add0~22_combout\ : std_logic;
SIGNAL \clkdiv|count~1_combout\ : std_logic;
SIGNAL \clkdiv|Add0~23\ : std_logic;
SIGNAL \clkdiv|Add0~24_combout\ : std_logic;
SIGNAL \clkdiv|count~3_combout\ : std_logic;
SIGNAL \clkdiv|Add0~25\ : std_logic;
SIGNAL \clkdiv|Add0~26_combout\ : std_logic;
SIGNAL \clkdiv|count~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~27\ : std_logic;
SIGNAL \clkdiv|Add0~28_combout\ : std_logic;
SIGNAL \clkdiv|count~5_combout\ : std_logic;
SIGNAL \clkdiv|Add0~29\ : std_logic;
SIGNAL \clkdiv|Add0~30_combout\ : std_logic;
SIGNAL \clkdiv|Add0~31\ : std_logic;
SIGNAL \clkdiv|Add0~32_combout\ : std_logic;
SIGNAL \clkdiv|count~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~33\ : std_logic;
SIGNAL \clkdiv|Add0~34_combout\ : std_logic;
SIGNAL \clkdiv|Add0~35\ : std_logic;
SIGNAL \clkdiv|Add0~36_combout\ : std_logic;
SIGNAL \clkdiv|count~7_combout\ : std_logic;
SIGNAL \clkdiv|Add0~37\ : std_logic;
SIGNAL \clkdiv|Add0~38_combout\ : std_logic;
SIGNAL \clkdiv|count~8_combout\ : std_logic;
SIGNAL \clkdiv|Add0~39\ : std_logic;
SIGNAL \clkdiv|Add0~40_combout\ : std_logic;
SIGNAL \clkdiv|count~9_combout\ : std_logic;
SIGNAL \clkdiv|Add0~41\ : std_logic;
SIGNAL \clkdiv|Add0~42_combout\ : std_logic;
SIGNAL \clkdiv|count~10_combout\ : std_logic;
SIGNAL \clkdiv|Add0~43\ : std_logic;
SIGNAL \clkdiv|Add0~44_combout\ : std_logic;
SIGNAL \clkdiv|count~11_combout\ : std_logic;
SIGNAL \clkdiv|Add0~45\ : std_logic;
SIGNAL \clkdiv|Add0~46_combout\ : std_logic;
SIGNAL \clkdiv|Add0~47\ : std_logic;
SIGNAL \clkdiv|Add0~48_combout\ : std_logic;
SIGNAL \clkdiv|count~12_combout\ : std_logic;
SIGNAL \clkdiv|Add0~49\ : std_logic;
SIGNAL \clkdiv|Add0~50_combout\ : std_logic;
SIGNAL \clkdiv|Add0~51\ : std_logic;
SIGNAL \clkdiv|Add0~52_combout\ : std_logic;
SIGNAL \clkdiv|Add0~53\ : std_logic;
SIGNAL \clkdiv|Add0~54_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~8_combout\ : std_logic;
SIGNAL \clkdiv|Add0~55\ : std_logic;
SIGNAL \clkdiv|Add0~56_combout\ : std_logic;
SIGNAL \clkdiv|Add0~57\ : std_logic;
SIGNAL \clkdiv|Add0~58_combout\ : std_logic;
SIGNAL \clkdiv|Add0~59\ : std_logic;
SIGNAL \clkdiv|Add0~60_combout\ : std_logic;
SIGNAL \clkdiv|Add0~61\ : std_logic;
SIGNAL \clkdiv|Add0~62_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~9_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~2_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~4_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~6_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~7_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~10_combout\ : std_logic;
SIGNAL \clkdiv|b~0_combout\ : std_logic;
SIGNAL \clkdiv|b~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sentido_contagem~input_o\ : std_logic;
SIGNAL \q[0]~1_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \q[0]~3_combout\ : std_logic;
SIGNAL \q[0]~_emulated_q\ : std_logic;
SIGNAL \q[0]~2_combout\ : std_logic;
SIGNAL \Add19~1\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \q[1]~5_combout\ : std_logic;
SIGNAL \q[1]~_emulated_q\ : std_logic;
SIGNAL \q[1]~4_combout\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \q~14_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \q~19_combout\ : std_logic;
SIGNAL \q[6]~9_combout\ : std_logic;
SIGNAL \q[6]~_emulated_q\ : std_logic;
SIGNAL \q[6]~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \q~18_combout\ : std_logic;
SIGNAL \q[5]~7_combout\ : std_logic;
SIGNAL \q[5]~_emulated_q\ : std_logic;
SIGNAL \q[5]~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \q~16_combout\ : std_logic;
SIGNAL \q[3]~feeder_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \q~17_combout\ : std_logic;
SIGNAL \q[4]~feeder_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \dezena~15_combout\ : std_logic;
SIGNAL \q~15_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \unidade[0]~67_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \unidade[0]~68_combout\ : std_logic;
SIGNAL \unidade[0]~69_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \unidade[0]~58_combout\ : std_logic;
SIGNAL \unidade[0]~59_combout\ : std_logic;
SIGNAL \unidade[0]~60_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \unidade[0]~155_combout\ : std_logic;
SIGNAL \unidade[0]~61_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \unidade~134_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \unidade[0]~30_combout\ : std_logic;
SIGNAL \unidade[0]~159_combout\ : std_logic;
SIGNAL \unidade[0]~63_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \unidade~135_combout\ : std_logic;
SIGNAL \unidade~136_combout\ : std_logic;
SIGNAL \unidade~137_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \unidade~138_combout\ : std_logic;
SIGNAL \unidade~139_combout\ : std_logic;
SIGNAL \unidade~156_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \LessThan9~5_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \unidade[0]~55_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \unidade[0]~53_combout\ : std_logic;
SIGNAL \unidade[0]~54_combout\ : std_logic;
SIGNAL \unidade~131_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \unidade[0]~44_combout\ : std_logic;
SIGNAL \unidade[0]~45_combout\ : std_logic;
SIGNAL \unidade[0]~46_combout\ : std_logic;
SIGNAL \unidade[0]~154_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \unidade~127_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \unidade[0]~15_combout\ : std_logic;
SIGNAL \unidade[0]~158_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \unidade[0]~48_combout\ : std_logic;
SIGNAL \unidade[0]~49_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \unidade~128_combout\ : std_logic;
SIGNAL \unidade~129_combout\ : std_logic;
SIGNAL \unidade~130_combout\ : std_logic;
SIGNAL \unidade~132_combout\ : std_logic;
SIGNAL \unidade~133_combout\ : std_logic;
SIGNAL \unidade[0]~1_combout\ : std_logic;
SIGNAL \unidade[0]~_emulated_q\ : std_logic;
SIGNAL \unidade[0]~0_combout\ : std_logic;
SIGNAL \unidade~72_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \unidade~70_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \unidade~62_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \unidade~64_combout\ : std_logic;
SIGNAL \unidade~65_combout\ : std_logic;
SIGNAL \unidade~66_combout\ : std_logic;
SIGNAL \unidade~71_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \unidade~56_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \unidade~50_combout\ : std_logic;
SIGNAL \unidade~51_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \unidade~47_combout\ : std_logic;
SIGNAL \unidade~52_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \unidade~57_combout\ : std_logic;
SIGNAL \unidade~73_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \unidade~84_combout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \unidade~81_combout\ : std_logic;
SIGNAL \unidade~82_combout\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \unidade~80_combout\ : std_logic;
SIGNAL \unidade~83_combout\ : std_logic;
SIGNAL \unidade~85_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \unidade~78_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \unidade~74_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \unidade~75_combout\ : std_logic;
SIGNAL \unidade~76_combout\ : std_logic;
SIGNAL \unidade~77_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \unidade~79_combout\ : std_logic;
SIGNAL \unidade~86_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \unidade~140_combout\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \unidade~141_combout\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \unidade~142_combout\ : std_logic;
SIGNAL \unidade~143_combout\ : std_logic;
SIGNAL \unidade~144_combout\ : std_logic;
SIGNAL \unidade~145_combout\ : std_logic;
SIGNAL \unidade~146_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \unidade~147_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \unidade~148_combout\ : std_logic;
SIGNAL \unidade~149_combout\ : std_logic;
SIGNAL \unidade~150_combout\ : std_logic;
SIGNAL \unidade~151_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \unidade~152_combout\ : std_logic;
SIGNAL \unidade~157_combout\ : std_logic;
SIGNAL \unidade[3]~3_combout\ : std_logic;
SIGNAL \unidade[3]~_emulated_q\ : std_logic;
SIGNAL \unidade[3]~2_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \unidade~94_combout\ : std_logic;
SIGNAL \unidade~95_combout\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \unidade~93_combout\ : std_logic;
SIGNAL \unidade~96_combout\ : std_logic;
SIGNAL \unidade~97_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \unidade~98_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \unidade~87_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \unidade~88_combout\ : std_logic;
SIGNAL \unidade~89_combout\ : std_logic;
SIGNAL \unidade~90_combout\ : std_logic;
SIGNAL \unidade~91_combout\ : std_logic;
SIGNAL \unidade~92_combout\ : std_logic;
SIGNAL \unidade~99_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \unidade~110_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \unidade~107_combout\ : std_logic;
SIGNAL \unidade~108_combout\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \unidade~106_combout\ : std_logic;
SIGNAL \unidade~109_combout\ : std_logic;
SIGNAL \unidade~111_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \unidade~104_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \unidade~101_combout\ : std_logic;
SIGNAL \unidade~102_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \unidade~100_combout\ : std_logic;
SIGNAL \unidade~103_combout\ : std_logic;
SIGNAL \unidade~105_combout\ : std_logic;
SIGNAL \unidade~112_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \unidade~119_combout\ : std_logic;
SIGNAL \Add17~11\ : std_logic;
SIGNAL \Add17~12_combout\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \unidade~120_combout\ : std_logic;
SIGNAL \unidade~121_combout\ : std_logic;
SIGNAL \unidade~122_combout\ : std_logic;
SIGNAL \unidade~123_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \unidade~124_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \unidade~113_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \unidade~114_combout\ : std_logic;
SIGNAL \unidade~115_combout\ : std_logic;
SIGNAL \unidade~116_combout\ : std_logic;
SIGNAL \unidade~117_combout\ : std_logic;
SIGNAL \unidade~118_combout\ : std_logic;
SIGNAL \unidade~125_combout\ : std_logic;
SIGNAL \dezena~27_combout\ : std_logic;
SIGNAL \dezena~28_combout\ : std_logic;
SIGNAL \dezena~23_combout\ : std_logic;
SIGNAL \dezena~35_combout\ : std_logic;
SIGNAL \dezena~29_combout\ : std_logic;
SIGNAL \dezena~30_combout\ : std_logic;
SIGNAL \dezena~31_combout\ : std_logic;
SIGNAL \unidade~126_combout\ : std_logic;
SIGNAL \dezena~24_combout\ : std_logic;
SIGNAL \dezena~25_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \unidade[0]~153_combout\ : std_logic;
SIGNAL \dezena~22_combout\ : std_logic;
SIGNAL \dezena~26_combout\ : std_logic;
SIGNAL \dezena[0]~2_combout\ : std_logic;
SIGNAL \dezena[0]~_emulated_q\ : std_logic;
SIGNAL \dezena[0]~1_combout\ : std_logic;
SIGNAL \dezena~16_combout\ : std_logic;
SIGNAL \dezena[1]~0_combout\ : std_logic;
SIGNAL \dezena~17_combout\ : std_logic;
SIGNAL \dezena~18_combout\ : std_logic;
SIGNAL \dezena~19_combout\ : std_logic;
SIGNAL \dezena~33_combout\ : std_logic;
SIGNAL \dezena~34_combout\ : std_logic;
SIGNAL \dezena~20_combout\ : std_logic;
SIGNAL \dezena~21_combout\ : std_logic;
SIGNAL \dezena~36_combout\ : std_logic;
SIGNAL \dezena~32_combout\ : std_logic;
SIGNAL \dezena[3]~4_combout\ : std_logic;
SIGNAL \dezena[3]~_emulated_q\ : std_logic;
SIGNAL \dezena[3]~3_combout\ : std_logic;
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
SIGNAL q : std_logic_vector(6 DOWNTO 0);
SIGNAL dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL \clkdiv|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sentido_contagem~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sentido_contagem <= sentido_contagem;
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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_sentido_contagem~input_o\ <= NOT \sentido_contagem~input_o\;
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
	i => \clkdiv|b~q\,
	devoe => ww_devoe,
	o => \s_reset~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\s_decimal[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~2_combout\,
	devoe => ww_devoe,
	o => \s_decimal[0]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\s_decimal[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~4_combout\,
	devoe => ww_devoe,
	o => \s_decimal[1]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y15_N9
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

-- Location: IOOBUF_X115_Y16_N9
\s_decimal[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~6_combout\,
	devoe => ww_devoe,
	o => \s_decimal[5]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\s_decimal[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~8_combout\,
	devoe => ww_devoe,
	o => \s_decimal[6]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\s_unidade[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade[0]~0_combout\,
	devoe => ww_devoe,
	o => \s_unidade[0]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
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

-- Location: IOOBUF_X115_Y34_N23
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

-- Location: IOOBUF_X115_Y32_N9
\s_unidade[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unidade[3]~2_combout\,
	devoe => ww_devoe,
	o => \s_unidade[3]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X115_Y14_N2
\s_dezena[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena[0]~1_combout\,
	devoe => ww_devoe,
	o => \s_dezena[0]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y18_N9
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

-- Location: IOOBUF_X115_Y18_N2
\s_dezena[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena[3]~3_combout\,
	devoe => ww_devoe,
	o => \s_dezena[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X109_Y73_N9
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

-- Location: IOOBUF_X0_Y63_N23
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X115_Y8_N16
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X85_Y0_N2
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

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X110_Y72_N0
\clkdiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~0_combout\ = \clkdiv|count\(0) $ (VCC)
-- \clkdiv|Add0~1\ = CARRY(\clkdiv|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(0),
	datad => VCC,
	combout => \clkdiv|Add0~0_combout\,
	cout => \clkdiv|Add0~1\);

-- Location: LCCOMB_X109_Y72_N16
\clkdiv|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~2_combout\ = (\clkdiv|Add0~0_combout\ & !\clkdiv|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Add0~0_combout\,
	datad => \clkdiv|Equal0~10_combout\,
	combout => \clkdiv|count~2_combout\);

-- Location: FF_X109_Y72_N17
\clkdiv|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(0));

-- Location: LCCOMB_X110_Y72_N2
\clkdiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~2_combout\ = (\clkdiv|count\(1) & (!\clkdiv|Add0~1\)) # (!\clkdiv|count\(1) & ((\clkdiv|Add0~1\) # (GND)))
-- \clkdiv|Add0~3\ = CARRY((!\clkdiv|Add0~1\) # (!\clkdiv|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(1),
	datad => VCC,
	cin => \clkdiv|Add0~1\,
	combout => \clkdiv|Add0~2_combout\,
	cout => \clkdiv|Add0~3\);

-- Location: FF_X110_Y72_N3
\clkdiv|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(1));

-- Location: LCCOMB_X110_Y72_N4
\clkdiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~4_combout\ = (\clkdiv|count\(2) & (\clkdiv|Add0~3\ $ (GND))) # (!\clkdiv|count\(2) & (!\clkdiv|Add0~3\ & VCC))
-- \clkdiv|Add0~5\ = CARRY((\clkdiv|count\(2) & !\clkdiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(2),
	datad => VCC,
	cin => \clkdiv|Add0~3\,
	combout => \clkdiv|Add0~4_combout\,
	cout => \clkdiv|Add0~5\);

-- Location: FF_X110_Y72_N5
\clkdiv|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(2));

-- Location: LCCOMB_X110_Y72_N6
\clkdiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~6_combout\ = (\clkdiv|count\(3) & (!\clkdiv|Add0~5\)) # (!\clkdiv|count\(3) & ((\clkdiv|Add0~5\) # (GND)))
-- \clkdiv|Add0~7\ = CARRY((!\clkdiv|Add0~5\) # (!\clkdiv|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datad => VCC,
	cin => \clkdiv|Add0~5\,
	combout => \clkdiv|Add0~6_combout\,
	cout => \clkdiv|Add0~7\);

-- Location: FF_X110_Y72_N7
\clkdiv|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(3));

-- Location: LCCOMB_X110_Y72_N8
\clkdiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~8_combout\ = (\clkdiv|count\(4) & (\clkdiv|Add0~7\ $ (GND))) # (!\clkdiv|count\(4) & (!\clkdiv|Add0~7\ & VCC))
-- \clkdiv|Add0~9\ = CARRY((\clkdiv|count\(4) & !\clkdiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(4),
	datad => VCC,
	cin => \clkdiv|Add0~7\,
	combout => \clkdiv|Add0~8_combout\,
	cout => \clkdiv|Add0~9\);

-- Location: FF_X110_Y72_N9
\clkdiv|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(4));

-- Location: LCCOMB_X110_Y72_N10
\clkdiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~10_combout\ = (\clkdiv|count\(5) & (!\clkdiv|Add0~9\)) # (!\clkdiv|count\(5) & ((\clkdiv|Add0~9\) # (GND)))
-- \clkdiv|Add0~11\ = CARRY((!\clkdiv|Add0~9\) # (!\clkdiv|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(5),
	datad => VCC,
	cin => \clkdiv|Add0~9\,
	combout => \clkdiv|Add0~10_combout\,
	cout => \clkdiv|Add0~11\);

-- Location: FF_X110_Y72_N11
\clkdiv|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(5));

-- Location: LCCOMB_X110_Y72_N12
\clkdiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~12_combout\ = (\clkdiv|count\(6) & (\clkdiv|Add0~11\ $ (GND))) # (!\clkdiv|count\(6) & (!\clkdiv|Add0~11\ & VCC))
-- \clkdiv|Add0~13\ = CARRY((\clkdiv|count\(6) & !\clkdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(6),
	datad => VCC,
	cin => \clkdiv|Add0~11\,
	combout => \clkdiv|Add0~12_combout\,
	cout => \clkdiv|Add0~13\);

-- Location: LCCOMB_X109_Y72_N12
\clkdiv|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~0_combout\ = (\clkdiv|Add0~12_combout\ & !\clkdiv|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Add0~12_combout\,
	datad => \clkdiv|Equal0~10_combout\,
	combout => \clkdiv|count~0_combout\);

-- Location: FF_X109_Y72_N13
\clkdiv|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(6));

-- Location: LCCOMB_X110_Y72_N14
\clkdiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~14_combout\ = (\clkdiv|count\(7) & (!\clkdiv|Add0~13\)) # (!\clkdiv|count\(7) & ((\clkdiv|Add0~13\) # (GND)))
-- \clkdiv|Add0~15\ = CARRY((!\clkdiv|Add0~13\) # (!\clkdiv|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(7),
	datad => VCC,
	cin => \clkdiv|Add0~13\,
	combout => \clkdiv|Add0~14_combout\,
	cout => \clkdiv|Add0~15\);

-- Location: FF_X110_Y72_N15
\clkdiv|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(7));

-- Location: LCCOMB_X110_Y72_N16
\clkdiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~16_combout\ = (\clkdiv|count\(8) & (\clkdiv|Add0~15\ $ (GND))) # (!\clkdiv|count\(8) & (!\clkdiv|Add0~15\ & VCC))
-- \clkdiv|Add0~17\ = CARRY((\clkdiv|count\(8) & !\clkdiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(8),
	datad => VCC,
	cin => \clkdiv|Add0~15\,
	combout => \clkdiv|Add0~16_combout\,
	cout => \clkdiv|Add0~17\);

-- Location: FF_X110_Y72_N17
\clkdiv|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(8));

-- Location: LCCOMB_X110_Y72_N18
\clkdiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~18_combout\ = (\clkdiv|count\(9) & (!\clkdiv|Add0~17\)) # (!\clkdiv|count\(9) & ((\clkdiv|Add0~17\) # (GND)))
-- \clkdiv|Add0~19\ = CARRY((!\clkdiv|Add0~17\) # (!\clkdiv|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(9),
	datad => VCC,
	cin => \clkdiv|Add0~17\,
	combout => \clkdiv|Add0~18_combout\,
	cout => \clkdiv|Add0~19\);

-- Location: FF_X110_Y72_N19
\clkdiv|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(9));

-- Location: LCCOMB_X110_Y72_N20
\clkdiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~20_combout\ = (\clkdiv|count\(10) & (\clkdiv|Add0~19\ $ (GND))) # (!\clkdiv|count\(10) & (!\clkdiv|Add0~19\ & VCC))
-- \clkdiv|Add0~21\ = CARRY((\clkdiv|count\(10) & !\clkdiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(10),
	datad => VCC,
	cin => \clkdiv|Add0~19\,
	combout => \clkdiv|Add0~20_combout\,
	cout => \clkdiv|Add0~21\);

-- Location: FF_X110_Y72_N21
\clkdiv|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(10));

-- Location: LCCOMB_X110_Y72_N22
\clkdiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~22_combout\ = (\clkdiv|count\(11) & (!\clkdiv|Add0~21\)) # (!\clkdiv|count\(11) & ((\clkdiv|Add0~21\) # (GND)))
-- \clkdiv|Add0~23\ = CARRY((!\clkdiv|Add0~21\) # (!\clkdiv|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(11),
	datad => VCC,
	cin => \clkdiv|Add0~21\,
	combout => \clkdiv|Add0~22_combout\,
	cout => \clkdiv|Add0~23\);

-- Location: LCCOMB_X109_Y72_N14
\clkdiv|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~1_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~22_combout\,
	combout => \clkdiv|count~1_combout\);

-- Location: FF_X109_Y72_N15
\clkdiv|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(11));

-- Location: LCCOMB_X110_Y72_N24
\clkdiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~24_combout\ = (\clkdiv|count\(12) & (\clkdiv|Add0~23\ $ (GND))) # (!\clkdiv|count\(12) & (!\clkdiv|Add0~23\ & VCC))
-- \clkdiv|Add0~25\ = CARRY((\clkdiv|count\(12) & !\clkdiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(12),
	datad => VCC,
	cin => \clkdiv|Add0~23\,
	combout => \clkdiv|Add0~24_combout\,
	cout => \clkdiv|Add0~25\);

-- Location: LCCOMB_X109_Y72_N28
\clkdiv|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~3_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~24_combout\,
	combout => \clkdiv|count~3_combout\);

-- Location: FF_X109_Y72_N29
\clkdiv|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(12));

-- Location: LCCOMB_X110_Y72_N26
\clkdiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~26_combout\ = (\clkdiv|count\(13) & (!\clkdiv|Add0~25\)) # (!\clkdiv|count\(13) & ((\clkdiv|Add0~25\) # (GND)))
-- \clkdiv|Add0~27\ = CARRY((!\clkdiv|Add0~25\) # (!\clkdiv|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(13),
	datad => VCC,
	cin => \clkdiv|Add0~25\,
	combout => \clkdiv|Add0~26_combout\,
	cout => \clkdiv|Add0~27\);

-- Location: LCCOMB_X109_Y72_N6
\clkdiv|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~4_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~26_combout\,
	combout => \clkdiv|count~4_combout\);

-- Location: FF_X109_Y72_N7
\clkdiv|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(13));

-- Location: LCCOMB_X110_Y72_N28
\clkdiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~28_combout\ = (\clkdiv|count\(14) & (\clkdiv|Add0~27\ $ (GND))) # (!\clkdiv|count\(14) & (!\clkdiv|Add0~27\ & VCC))
-- \clkdiv|Add0~29\ = CARRY((\clkdiv|count\(14) & !\clkdiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(14),
	datad => VCC,
	cin => \clkdiv|Add0~27\,
	combout => \clkdiv|Add0~28_combout\,
	cout => \clkdiv|Add0~29\);

-- Location: LCCOMB_X109_Y72_N4
\clkdiv|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~5_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~28_combout\,
	combout => \clkdiv|count~5_combout\);

-- Location: FF_X109_Y72_N5
\clkdiv|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(14));

-- Location: LCCOMB_X110_Y72_N30
\clkdiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~30_combout\ = (\clkdiv|count\(15) & (!\clkdiv|Add0~29\)) # (!\clkdiv|count\(15) & ((\clkdiv|Add0~29\) # (GND)))
-- \clkdiv|Add0~31\ = CARRY((!\clkdiv|Add0~29\) # (!\clkdiv|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(15),
	datad => VCC,
	cin => \clkdiv|Add0~29\,
	combout => \clkdiv|Add0~30_combout\,
	cout => \clkdiv|Add0~31\);

-- Location: FF_X110_Y72_N31
\clkdiv|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(15));

-- Location: LCCOMB_X110_Y71_N0
\clkdiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~32_combout\ = (\clkdiv|count\(16) & (\clkdiv|Add0~31\ $ (GND))) # (!\clkdiv|count\(16) & (!\clkdiv|Add0~31\ & VCC))
-- \clkdiv|Add0~33\ = CARRY((\clkdiv|count\(16) & !\clkdiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(16),
	datad => VCC,
	cin => \clkdiv|Add0~31\,
	combout => \clkdiv|Add0~32_combout\,
	cout => \clkdiv|Add0~33\);

-- Location: LCCOMB_X109_Y71_N6
\clkdiv|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~6_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~32_combout\,
	combout => \clkdiv|count~6_combout\);

-- Location: FF_X109_Y71_N7
\clkdiv|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(16));

-- Location: LCCOMB_X110_Y71_N2
\clkdiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~34_combout\ = (\clkdiv|count\(17) & (!\clkdiv|Add0~33\)) # (!\clkdiv|count\(17) & ((\clkdiv|Add0~33\) # (GND)))
-- \clkdiv|Add0~35\ = CARRY((!\clkdiv|Add0~33\) # (!\clkdiv|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(17),
	datad => VCC,
	cin => \clkdiv|Add0~33\,
	combout => \clkdiv|Add0~34_combout\,
	cout => \clkdiv|Add0~35\);

-- Location: FF_X110_Y71_N3
\clkdiv|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(17));

-- Location: LCCOMB_X110_Y71_N4
\clkdiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~36_combout\ = (\clkdiv|count\(18) & (\clkdiv|Add0~35\ $ (GND))) # (!\clkdiv|count\(18) & (!\clkdiv|Add0~35\ & VCC))
-- \clkdiv|Add0~37\ = CARRY((\clkdiv|count\(18) & !\clkdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(18),
	datad => VCC,
	cin => \clkdiv|Add0~35\,
	combout => \clkdiv|Add0~36_combout\,
	cout => \clkdiv|Add0~37\);

-- Location: LCCOMB_X109_Y71_N0
\clkdiv|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~7_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~36_combout\,
	combout => \clkdiv|count~7_combout\);

-- Location: FF_X109_Y71_N1
\clkdiv|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(18));

-- Location: LCCOMB_X110_Y71_N6
\clkdiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~38_combout\ = (\clkdiv|count\(19) & (!\clkdiv|Add0~37\)) # (!\clkdiv|count\(19) & ((\clkdiv|Add0~37\) # (GND)))
-- \clkdiv|Add0~39\ = CARRY((!\clkdiv|Add0~37\) # (!\clkdiv|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(19),
	datad => VCC,
	cin => \clkdiv|Add0~37\,
	combout => \clkdiv|Add0~38_combout\,
	cout => \clkdiv|Add0~39\);

-- Location: LCCOMB_X109_Y71_N14
\clkdiv|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~8_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~38_combout\,
	combout => \clkdiv|count~8_combout\);

-- Location: FF_X109_Y71_N15
\clkdiv|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(19));

-- Location: LCCOMB_X110_Y71_N8
\clkdiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~40_combout\ = (\clkdiv|count\(20) & (\clkdiv|Add0~39\ $ (GND))) # (!\clkdiv|count\(20) & (!\clkdiv|Add0~39\ & VCC))
-- \clkdiv|Add0~41\ = CARRY((\clkdiv|count\(20) & !\clkdiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(20),
	datad => VCC,
	cin => \clkdiv|Add0~39\,
	combout => \clkdiv|Add0~40_combout\,
	cout => \clkdiv|Add0~41\);

-- Location: LCCOMB_X109_Y71_N22
\clkdiv|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~9_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~40_combout\,
	combout => \clkdiv|count~9_combout\);

-- Location: FF_X109_Y71_N23
\clkdiv|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(20));

-- Location: LCCOMB_X110_Y71_N10
\clkdiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~42_combout\ = (\clkdiv|count\(21) & (!\clkdiv|Add0~41\)) # (!\clkdiv|count\(21) & ((\clkdiv|Add0~41\) # (GND)))
-- \clkdiv|Add0~43\ = CARRY((!\clkdiv|Add0~41\) # (!\clkdiv|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(21),
	datad => VCC,
	cin => \clkdiv|Add0~41\,
	combout => \clkdiv|Add0~42_combout\,
	cout => \clkdiv|Add0~43\);

-- Location: LCCOMB_X109_Y71_N28
\clkdiv|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~10_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~42_combout\,
	combout => \clkdiv|count~10_combout\);

-- Location: FF_X109_Y71_N29
\clkdiv|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(21));

-- Location: LCCOMB_X110_Y71_N12
\clkdiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~44_combout\ = (\clkdiv|count\(22) & (\clkdiv|Add0~43\ $ (GND))) # (!\clkdiv|count\(22) & (!\clkdiv|Add0~43\ & VCC))
-- \clkdiv|Add0~45\ = CARRY((\clkdiv|count\(22) & !\clkdiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(22),
	datad => VCC,
	cin => \clkdiv|Add0~43\,
	combout => \clkdiv|Add0~44_combout\,
	cout => \clkdiv|Add0~45\);

-- Location: LCCOMB_X109_Y71_N10
\clkdiv|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~11_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|Add0~44_combout\,
	combout => \clkdiv|count~11_combout\);

-- Location: FF_X109_Y71_N11
\clkdiv|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(22));

-- Location: LCCOMB_X110_Y71_N14
\clkdiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~46_combout\ = (\clkdiv|count\(23) & (!\clkdiv|Add0~45\)) # (!\clkdiv|count\(23) & ((\clkdiv|Add0~45\) # (GND)))
-- \clkdiv|Add0~47\ = CARRY((!\clkdiv|Add0~45\) # (!\clkdiv|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(23),
	datad => VCC,
	cin => \clkdiv|Add0~45\,
	combout => \clkdiv|Add0~46_combout\,
	cout => \clkdiv|Add0~47\);

-- Location: FF_X110_Y71_N15
\clkdiv|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(23));

-- Location: LCCOMB_X110_Y71_N16
\clkdiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~48_combout\ = (\clkdiv|count\(24) & (\clkdiv|Add0~47\ $ (GND))) # (!\clkdiv|count\(24) & (!\clkdiv|Add0~47\ & VCC))
-- \clkdiv|Add0~49\ = CARRY((\clkdiv|count\(24) & !\clkdiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(24),
	datad => VCC,
	cin => \clkdiv|Add0~47\,
	combout => \clkdiv|Add0~48_combout\,
	cout => \clkdiv|Add0~49\);

-- Location: LCCOMB_X109_Y71_N16
\clkdiv|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~12_combout\ = (!\clkdiv|Equal0~10_combout\ & \clkdiv|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~10_combout\,
	datad => \clkdiv|Add0~48_combout\,
	combout => \clkdiv|count~12_combout\);

-- Location: FF_X109_Y71_N17
\clkdiv|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(24));

-- Location: LCCOMB_X110_Y71_N18
\clkdiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~50_combout\ = (\clkdiv|count\(25) & (!\clkdiv|Add0~49\)) # (!\clkdiv|count\(25) & ((\clkdiv|Add0~49\) # (GND)))
-- \clkdiv|Add0~51\ = CARRY((!\clkdiv|Add0~49\) # (!\clkdiv|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(25),
	datad => VCC,
	cin => \clkdiv|Add0~49\,
	combout => \clkdiv|Add0~50_combout\,
	cout => \clkdiv|Add0~51\);

-- Location: FF_X110_Y71_N19
\clkdiv|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(25));

-- Location: LCCOMB_X110_Y71_N20
\clkdiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~52_combout\ = (\clkdiv|count\(26) & (\clkdiv|Add0~51\ $ (GND))) # (!\clkdiv|count\(26) & (!\clkdiv|Add0~51\ & VCC))
-- \clkdiv|Add0~53\ = CARRY((\clkdiv|count\(26) & !\clkdiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(26),
	datad => VCC,
	cin => \clkdiv|Add0~51\,
	combout => \clkdiv|Add0~52_combout\,
	cout => \clkdiv|Add0~53\);

-- Location: FF_X110_Y71_N21
\clkdiv|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(26));

-- Location: LCCOMB_X110_Y71_N22
\clkdiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~54_combout\ = (\clkdiv|count\(27) & (!\clkdiv|Add0~53\)) # (!\clkdiv|count\(27) & ((\clkdiv|Add0~53\) # (GND)))
-- \clkdiv|Add0~55\ = CARRY((!\clkdiv|Add0~53\) # (!\clkdiv|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(27),
	datad => VCC,
	cin => \clkdiv|Add0~53\,
	combout => \clkdiv|Add0~54_combout\,
	cout => \clkdiv|Add0~55\);

-- Location: FF_X110_Y71_N23
\clkdiv|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(27));

-- Location: LCCOMB_X109_Y71_N30
\clkdiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~8_combout\ = (\clkdiv|count\(24) & (!\clkdiv|count\(27) & (!\clkdiv|count\(26) & !\clkdiv|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(24),
	datab => \clkdiv|count\(27),
	datac => \clkdiv|count\(26),
	datad => \clkdiv|count\(25),
	combout => \clkdiv|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y71_N24
\clkdiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~56_combout\ = (\clkdiv|count\(28) & (\clkdiv|Add0~55\ $ (GND))) # (!\clkdiv|count\(28) & (!\clkdiv|Add0~55\ & VCC))
-- \clkdiv|Add0~57\ = CARRY((\clkdiv|count\(28) & !\clkdiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(28),
	datad => VCC,
	cin => \clkdiv|Add0~55\,
	combout => \clkdiv|Add0~56_combout\,
	cout => \clkdiv|Add0~57\);

-- Location: FF_X110_Y71_N25
\clkdiv|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(28));

-- Location: LCCOMB_X110_Y71_N26
\clkdiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~58_combout\ = (\clkdiv|count\(29) & (!\clkdiv|Add0~57\)) # (!\clkdiv|count\(29) & ((\clkdiv|Add0~57\) # (GND)))
-- \clkdiv|Add0~59\ = CARRY((!\clkdiv|Add0~57\) # (!\clkdiv|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(29),
	datad => VCC,
	cin => \clkdiv|Add0~57\,
	combout => \clkdiv|Add0~58_combout\,
	cout => \clkdiv|Add0~59\);

-- Location: FF_X110_Y71_N27
\clkdiv|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(29));

-- Location: LCCOMB_X110_Y71_N28
\clkdiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~60_combout\ = (\clkdiv|count\(30) & (\clkdiv|Add0~59\ $ (GND))) # (!\clkdiv|count\(30) & (!\clkdiv|Add0~59\ & VCC))
-- \clkdiv|Add0~61\ = CARRY((\clkdiv|count\(30) & !\clkdiv|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(30),
	datad => VCC,
	cin => \clkdiv|Add0~59\,
	combout => \clkdiv|Add0~60_combout\,
	cout => \clkdiv|Add0~61\);

-- Location: FF_X110_Y71_N29
\clkdiv|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(30));

-- Location: LCCOMB_X110_Y71_N30
\clkdiv|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~62_combout\ = \clkdiv|count\(31) $ (\clkdiv|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(31),
	cin => \clkdiv|Add0~61\,
	combout => \clkdiv|Add0~62_combout\);

-- Location: FF_X110_Y71_N31
\clkdiv|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(31));

-- Location: LCCOMB_X109_Y71_N24
\clkdiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~9_combout\ = (!\clkdiv|count\(31) & (!\clkdiv|count\(30) & (!\clkdiv|count\(29) & !\clkdiv|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(31),
	datab => \clkdiv|count\(30),
	datac => \clkdiv|count\(29),
	datad => \clkdiv|count\(28),
	combout => \clkdiv|Equal0~9_combout\);

-- Location: LCCOMB_X109_Y72_N30
\clkdiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~2_combout\ = (!\clkdiv|count\(10) & (!\clkdiv|count\(0) & (\clkdiv|count\(11) & !\clkdiv|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(10),
	datab => \clkdiv|count\(0),
	datac => \clkdiv|count\(11),
	datad => \clkdiv|count\(9),
	combout => \clkdiv|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y72_N24
\clkdiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~1_combout\ = (!\clkdiv|count\(3) & (!\clkdiv|count\(4) & (!\clkdiv|count\(1) & !\clkdiv|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datab => \clkdiv|count\(4),
	datac => \clkdiv|count\(1),
	datad => \clkdiv|count\(2),
	combout => \clkdiv|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y72_N22
\clkdiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~3_combout\ = (\clkdiv|count\(13) & (\clkdiv|count\(14) & (!\clkdiv|count\(15) & \clkdiv|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datab => \clkdiv|count\(14),
	datac => \clkdiv|count\(15),
	datad => \clkdiv|count\(12),
	combout => \clkdiv|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y72_N18
\clkdiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~0_combout\ = (\clkdiv|count\(6) & (!\clkdiv|count\(5) & (!\clkdiv|count\(7) & !\clkdiv|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(6),
	datab => \clkdiv|count\(5),
	datac => \clkdiv|count\(7),
	datad => \clkdiv|count\(8),
	combout => \clkdiv|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y72_N20
\clkdiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~4_combout\ = (\clkdiv|Equal0~2_combout\ & (\clkdiv|Equal0~1_combout\ & (\clkdiv|Equal0~3_combout\ & \clkdiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~2_combout\,
	datab => \clkdiv|Equal0~1_combout\,
	datac => \clkdiv|Equal0~3_combout\,
	datad => \clkdiv|Equal0~0_combout\,
	combout => \clkdiv|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y71_N8
\clkdiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~5_combout\ = (\clkdiv|count\(16) & (\clkdiv|count\(18) & (\clkdiv|count\(19) & !\clkdiv|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(16),
	datab => \clkdiv|count\(18),
	datac => \clkdiv|count\(19),
	datad => \clkdiv|count\(17),
	combout => \clkdiv|Equal0~5_combout\);

-- Location: LCCOMB_X109_Y71_N20
\clkdiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~6_combout\ = (\clkdiv|count\(20) & (\clkdiv|count\(21) & (!\clkdiv|count\(23) & \clkdiv|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(20),
	datab => \clkdiv|count\(21),
	datac => \clkdiv|count\(23),
	datad => \clkdiv|count\(22),
	combout => \clkdiv|Equal0~6_combout\);

-- Location: LCCOMB_X109_Y71_N18
\clkdiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~7_combout\ = (\clkdiv|Equal0~5_combout\ & \clkdiv|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|Equal0~5_combout\,
	datad => \clkdiv|Equal0~6_combout\,
	combout => \clkdiv|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y71_N26
\clkdiv|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~10_combout\ = (\clkdiv|Equal0~8_combout\ & (\clkdiv|Equal0~9_combout\ & (\clkdiv|Equal0~4_combout\ & \clkdiv|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~8_combout\,
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Equal0~7_combout\,
	combout => \clkdiv|Equal0~10_combout\);

-- Location: LCCOMB_X109_Y71_N12
\clkdiv|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|b~0_combout\ = \clkdiv|Equal0~10_combout\ $ (\clkdiv|b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~10_combout\,
	datac => \clkdiv|b~q\,
	combout => \clkdiv|b~0_combout\);

-- Location: FF_X109_Y71_N13
\clkdiv|b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkdiv|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|b~q\);

-- Location: IOIBUF_X115_Y14_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\sentido_contagem~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sentido_contagem,
	o => \sentido_contagem~input_o\);

-- Location: LCCOMB_X110_Y14_N26
\q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~1_combout\ = (\reset~input_o\ & ((\q[0]~1_combout\))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datac => \q[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \q[0]~1_combout\);

-- Location: LCCOMB_X111_Y18_N8
\Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add19~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add19~0_combout\,
	cout => \Add19~1\);

-- Location: LCCOMB_X110_Y16_N4
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add9~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X111_Y14_N6
\q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~3_combout\ = \q[0]~1_combout\ $ (((\sentido_contagem~input_o\ & (\Add19~0_combout\)) # (!\sentido_contagem~input_o\ & ((\Add9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \Add19~0_combout\,
	datac => \q[0]~1_combout\,
	datad => \Add9~0_combout\,
	combout => \q[0]~3_combout\);

-- Location: FF_X110_Y14_N29
\q[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \q[0]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~_emulated_q\);

-- Location: LCCOMB_X110_Y14_N14
\q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~2_combout\ = (\reset~input_o\ & ((\q[0]~1_combout\ $ (\q[0]~_emulated_q\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \sentido_contagem~input_o\,
	datac => \q[0]~1_combout\,
	datad => \q[0]~_emulated_q\,
	combout => \q[0]~2_combout\);

-- Location: LCCOMB_X111_Y18_N10
\Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (\q[1]~4_combout\ & (\Add19~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add19~1\))
-- \Add19~3\ = CARRY((!\q[1]~4_combout\ & !\Add19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add19~1\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: LCCOMB_X110_Y16_N6
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\q[1]~4_combout\ & (!\Add9~1\)) # (!\q[1]~4_combout\ & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X110_Y14_N4
\q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~5_combout\ = \q[0]~1_combout\ $ (((\sentido_contagem~input_o\ & (\Add19~2_combout\)) # (!\sentido_contagem~input_o\ & ((\Add9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => \Add9~2_combout\,
	datac => \q[0]~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q[1]~5_combout\);

-- Location: FF_X110_Y14_N5
\q[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \q[1]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~_emulated_q\);

-- Location: LCCOMB_X110_Y14_N30
\q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~4_combout\ = (\reset~input_o\ & ((\q[1]~_emulated_q\ $ (\q[0]~1_combout\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \q[1]~_emulated_q\,
	datac => \q[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \q[1]~4_combout\);

-- Location: LCCOMB_X111_Y18_N12
\Add19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (q(2) & ((GND) # (!\Add19~3\))) # (!q(2) & (\Add19~3\ $ (GND)))
-- \Add19~5\ = CARRY((q(2)) # (!\Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: LCCOMB_X111_Y14_N26
\q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~14_combout\ = (\sentido_contagem~input_o\ & \Add19~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sentido_contagem~input_o\,
	datac => \Add19~4_combout\,
	combout => \q~14_combout\);

-- Location: LCCOMB_X110_Y16_N8
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (q(2) & (\Add9~3\ $ (GND))) # (!q(2) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((q(2) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X111_Y14_N8
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!\q[0]~2_combout\ & (!q(2) & !\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datab => q(2),
	datad => \q[1]~4_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X111_Y18_N14
\Add19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (q(3) & (\Add19~5\ & VCC)) # (!q(3) & (!\Add19~5\))
-- \Add19~7\ = CARRY((!q(3) & !\Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: LCCOMB_X111_Y18_N16
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

-- Location: LCCOMB_X111_Y18_N18
\Add19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (\q[5]~6_combout\ & (\Add19~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add19~9\))
-- \Add19~11\ = CARRY((!\q[5]~6_combout\ & !\Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X110_Y16_N10
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (q(3) & (!\Add9~5\)) # (!q(3) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X110_Y16_N12
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (q(4) & (\Add9~7\ $ (GND))) # (!q(4) & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((q(4) & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X110_Y16_N14
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\q[5]~6_combout\ & (!\Add9~9\)) # (!\q[5]~6_combout\ & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X109_Y14_N14
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\q[1]~4_combout\ & (\q[0]~2_combout\ & (!q(3) & !q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => \q[0]~2_combout\,
	datac => q(3),
	datad => q(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X111_Y18_N20
\Add19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = \Add19~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add19~11\,
	combout => \Add19~12_combout\);

-- Location: LCCOMB_X110_Y16_N16
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = \q[6]~8_combout\ $ (!\Add9~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	cin => \Add9~11\,
	combout => \Add9~12_combout\);

-- Location: LCCOMB_X110_Y14_N6
\q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~19_combout\ = (\Add9~12_combout\ & (!\Equal0~1_combout\ & !\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datac => \Equal0~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q~19_combout\);

-- Location: LCCOMB_X110_Y14_N22
\q[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~9_combout\ = \q[0]~1_combout\ $ (((\q~19_combout\) # ((\sentido_contagem~input_o\ & \Add19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \Add19~12_combout\,
	datac => \q~19_combout\,
	datad => \q[0]~1_combout\,
	combout => \q[6]~9_combout\);

-- Location: FF_X110_Y14_N23
\q[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \q[6]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~_emulated_q\);

-- Location: LCCOMB_X110_Y14_N0
\q[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~8_combout\ = (\reset~input_o\ & ((\q[6]~_emulated_q\ $ (\q[0]~1_combout\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \sentido_contagem~input_o\,
	datac => \q[6]~_emulated_q\,
	datad => \q[0]~1_combout\,
	combout => \q[6]~8_combout\);

-- Location: LCCOMB_X109_Y14_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!q(2) & (\Equal0~0_combout\ & (\q[5]~6_combout\ & \q[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => \Equal0~0_combout\,
	datac => \q[5]~6_combout\,
	datad => \q[6]~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X110_Y14_N24
\q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~18_combout\ = (\Add9~10_combout\ & (!\Equal0~1_combout\ & !\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datac => \Equal0~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q~18_combout\);

-- Location: LCCOMB_X110_Y14_N2
\q[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~7_combout\ = \q[0]~1_combout\ $ (((\q~18_combout\) # ((\Add19~10_combout\ & \sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \q~18_combout\,
	datac => \q[0]~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q[5]~7_combout\);

-- Location: FF_X110_Y14_N3
\q[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \q[5]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~_emulated_q\);

-- Location: LCCOMB_X110_Y14_N16
\q[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~6_combout\ = (\reset~input_o\ & ((\q[0]~1_combout\ $ (\q[5]~_emulated_q\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \sentido_contagem~input_o\,
	datac => \q[0]~1_combout\,
	datad => \q[5]~_emulated_q\,
	combout => \q[5]~6_combout\);

-- Location: LCCOMB_X110_Y14_N12
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\q[5]~6_combout\ & !\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => \q[6]~8_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X112_Y17_N16
\q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~16_combout\ = (\Add19~6_combout\ & (((!\Equal1~5_combout\) # (!\Equal0~2_combout\)) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal1~5_combout\,
	datad => \Add19~6_combout\,
	combout => \q~16_combout\);

-- Location: LCCOMB_X111_Y17_N20
\q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~feeder_combout\ = \q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q~16_combout\,
	combout => \q[3]~feeder_combout\);

-- Location: FF_X111_Y17_N21
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \q[3]~feeder_combout\,
	asdata => \Add9~6_combout\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X110_Y18_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!q(4) & !q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(4),
	datad => q(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X112_Y17_N2
\q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~17_combout\ = (\Add19~8_combout\ & (((!\Equal1~5_combout\) # (!\Equal0~2_combout\)) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal1~5_combout\,
	datad => \Add19~8_combout\,
	combout => \q~17_combout\);

-- Location: LCCOMB_X111_Y17_N6
\q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[4]~feeder_combout\ = \q~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \q~17_combout\,
	combout => \q[4]~feeder_combout\);

-- Location: FF_X111_Y17_N7
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \q[4]~feeder_combout\,
	asdata => \Add9~8_combout\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: LCCOMB_X111_Y14_N24
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!q(4) & (\Equal1~5_combout\ & (!q(3) & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \Equal1~5_combout\,
	datac => q(3),
	datad => \Equal1~4_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X110_Y14_N28
\dezena~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~15_combout\ = (!\Equal0~1_combout\ & !\sentido_contagem~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena~15_combout\);

-- Location: LCCOMB_X111_Y14_N16
\q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~15_combout\ = (\q~14_combout\ & (((\Add9~4_combout\ & \dezena~15_combout\)) # (!\Equal1~6_combout\))) # (!\q~14_combout\ & (\Add9~4_combout\ & ((\dezena~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~14_combout\,
	datab => \Add9~4_combout\,
	datac => \Equal1~6_combout\,
	datad => \dezena~15_combout\,
	combout => \q~15_combout\);

-- Location: FF_X111_Y14_N17
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \q~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X111_Y17_N2
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (q(3) & q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => q(4),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X110_Y14_N20
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((!\q[0]~2_combout\ & (!q(2) & !\q[1]~4_combout\))) # (!\LessThan13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datab => q(2),
	datac => \q[1]~4_combout\,
	datad => \LessThan13~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y14_N8
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (q(2) & (\q[0]~2_combout\ & \q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datac => \q[0]~2_combout\,
	datad => \q[1]~4_combout\,
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X110_Y14_N10
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!q(4) & (!\q[5]~6_combout\ & ((!q(3)) # (!\LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \q[5]~6_combout\,
	datac => \LessThan15~1_combout\,
	datad => q(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X111_Y17_N26
\unidade[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~67_combout\ = (\q[6]~8_combout\ & (((!\Equal1~4_combout\ & \LessThan13~0_combout\)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \LessThan13~0_combout\,
	datac => \q[6]~8_combout\,
	datad => \LessThan1~0_combout\,
	combout => \unidade[0]~67_combout\);

-- Location: LCCOMB_X110_Y14_N18
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (!q(3) & (((!\q[0]~2_combout\ & !\q[1]~4_combout\)) # (!q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datab => q(2),
	datac => q(3),
	datad => \q[1]~4_combout\,
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X111_Y17_N8
\unidade[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~68_combout\ = (\unidade[0]~67_combout\ & (((\LessThan0~4_combout\)))) # (!\unidade[0]~67_combout\ & (!q(4) & ((\LessThan16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \LessThan0~4_combout\,
	datac => \unidade[0]~67_combout\,
	datad => \LessThan16~0_combout\,
	combout => \unidade[0]~68_combout\);

-- Location: LCCOMB_X111_Y17_N30
\unidade[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~69_combout\ = ((!\q[5]~6_combout\ & \unidade[0]~68_combout\)) # (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \unidade[0]~68_combout\,
	combout => \unidade[0]~69_combout\);

-- Location: LCCOMB_X110_Y18_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X111_Y16_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add3~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X111_Y14_N30
\unidade[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~58_combout\ = ((!q(3) & \Equal1~4_combout\)) # (!q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datac => \Equal1~4_combout\,
	datad => q(4),
	combout => \unidade[0]~58_combout\);

-- Location: LCCOMB_X111_Y14_N28
\unidade[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~59_combout\ = (!\q[6]~8_combout\ & ((\unidade[0]~58_combout\) # (!\q[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datac => \unidade[0]~58_combout\,
	datad => \q[6]~8_combout\,
	combout => \unidade[0]~59_combout\);

-- Location: LCCOMB_X111_Y14_N10
\unidade[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~60_combout\ = (!\q[6]~8_combout\ & (!q(3) & (!\LessThan15~1_combout\ & !q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => q(3),
	datac => \LessThan15~1_combout\,
	datad => q(4),
	combout => \unidade[0]~60_combout\);

-- Location: LCCOMB_X111_Y14_N22
\LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~4_combout\ = (!q(2) & ((!\q[0]~2_combout\) # (!\q[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datac => \q[1]~4_combout\,
	datad => \q[0]~2_combout\,
	combout => \LessThan9~4_combout\);

-- Location: LCCOMB_X111_Y14_N2
\unidade[0]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~155_combout\ = (!\q[6]~8_combout\ & (((\LessThan9~4_combout\) # (!q(3))) # (!q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(3),
	datac => \LessThan9~4_combout\,
	datad => \q[6]~8_combout\,
	combout => \unidade[0]~155_combout\);

-- Location: LCCOMB_X111_Y14_N4
\unidade[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~61_combout\ = (\Equal1~5_combout\) # ((\unidade[0]~59_combout\ & (\unidade[0]~60_combout\)) # (!\unidade[0]~59_combout\ & ((\unidade[0]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~60_combout\,
	datab => \unidade[0]~155_combout\,
	datac => \Equal1~5_combout\,
	datad => \unidade[0]~59_combout\,
	combout => \unidade[0]~61_combout\);

-- Location: LCCOMB_X112_Y15_N14
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add5~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X111_Y14_N14
\unidade~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~134_combout\ = (\unidade[0]~59_combout\ & (((\unidade[0]~61_combout\) # (\Add5~0_combout\)))) # (!\unidade[0]~59_combout\ & (\Add3~0_combout\ & (!\unidade[0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \unidade[0]~59_combout\,
	datac => \unidade[0]~61_combout\,
	datad => \Add5~0_combout\,
	combout => \unidade~134_combout\);

-- Location: LCCOMB_X112_Y17_N18
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add4~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X110_Y15_N4
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add7~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X112_Y14_N22
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (((!\q[1]~4_combout\ & !\q[0]~2_combout\)) # (!\LessThan13~0_combout\)) # (!q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(2),
	datac => \q[0]~2_combout\,
	datad => \LessThan13~0_combout\,
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X111_Y14_N0
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (!q(4) & ((\Equal1~4_combout\) # (!q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datac => \Equal1~4_combout\,
	datad => q(3),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X112_Y15_N6
\unidade[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~30_combout\ = (q(3)) # ((q(2)) # ((\q[1]~4_combout\ & \q[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(2),
	datac => \q[1]~4_combout\,
	datad => \q[0]~2_combout\,
	combout => \unidade[0]~30_combout\);

-- Location: LCCOMB_X112_Y15_N12
\unidade[0]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~159_combout\ = (\q[5]~6_combout\) # ((\q[6]~8_combout\) # ((q(4) & \unidade[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => q(4),
	datac => \q[6]~8_combout\,
	datad => \unidade[0]~30_combout\,
	combout => \unidade[0]~159_combout\);

-- Location: LCCOMB_X112_Y15_N0
\unidade[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~63_combout\ = (\Equal1~5_combout\ & ((\unidade[0]~159_combout\ & (\LessThan12~0_combout\)) # (!\unidade[0]~159_combout\ & ((\LessThan14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \LessThan12~0_combout\,
	datac => \LessThan14~0_combout\,
	datad => \unidade[0]~159_combout\,
	combout => \unidade[0]~63_combout\);

-- Location: LCCOMB_X110_Y15_N18
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add6~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X111_Y15_N0
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add8~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X111_Y15_N24
\unidade~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~135_combout\ = (\unidade[0]~63_combout\ & (((\unidade[0]~159_combout\)))) # (!\unidade[0]~63_combout\ & ((\unidade[0]~159_combout\ & (\Add6~0_combout\)) # (!\unidade[0]~159_combout\ & ((\Add8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add8~0_combout\,
	datac => \unidade[0]~63_combout\,
	datad => \unidade[0]~159_combout\,
	combout => \unidade~135_combout\);

-- Location: LCCOMB_X111_Y15_N30
\unidade~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~136_combout\ = (\unidade[0]~63_combout\ & ((\unidade~135_combout\ & (\Add7~0_combout\)) # (!\unidade~135_combout\ & ((\Add9~0_combout\))))) # (!\unidade[0]~63_combout\ & (((\unidade~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add9~0_combout\,
	datac => \unidade[0]~63_combout\,
	datad => \unidade~135_combout\,
	combout => \unidade~136_combout\);

-- Location: LCCOMB_X112_Y16_N8
\unidade~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~137_combout\ = (\unidade~134_combout\ & (((\unidade~136_combout\) # (!\unidade[0]~61_combout\)))) # (!\unidade~134_combout\ & (\Add4~0_combout\ & (\unidade[0]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~134_combout\,
	datab => \Add4~0_combout\,
	datac => \unidade[0]~61_combout\,
	datad => \unidade~136_combout\,
	combout => \unidade~137_combout\);

-- Location: LCCOMB_X109_Y17_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add0~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X109_Y17_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add2~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X112_Y16_N18
\unidade~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~138_combout\ = (\unidade[0]~67_combout\ & ((\Add0~0_combout\) # ((\unidade[0]~69_combout\)))) # (!\unidade[0]~67_combout\ & (((\Add2~0_combout\ & !\unidade[0]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \unidade[0]~67_combout\,
	datac => \Add2~0_combout\,
	datad => \unidade[0]~69_combout\,
	combout => \unidade~138_combout\);

-- Location: LCCOMB_X112_Y16_N12
\unidade~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~139_combout\ = (\unidade[0]~69_combout\ & ((\unidade~138_combout\ & (\Add1~0_combout\)) # (!\unidade~138_combout\ & ((\unidade~137_combout\))))) # (!\unidade[0]~69_combout\ & (((\unidade~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~69_combout\,
	datab => \Add1~0_combout\,
	datac => \unidade~137_combout\,
	datad => \unidade~138_combout\,
	combout => \unidade~139_combout\);

-- Location: LCCOMB_X112_Y16_N14
\unidade~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~156_combout\ = (!\sentido_contagem~input_o\ & (!\Equal0~1_combout\ & \unidade~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datac => \Equal0~1_combout\,
	datad => \unidade~139_combout\,
	combout => \unidade~156_combout\);

-- Location: LCCOMB_X109_Y18_N18
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add12~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X109_Y18_N4
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add10~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X110_Y18_N4
\LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~5_combout\ = ((!q(2) & ((!\q[0]~2_combout\) # (!\q[1]~4_combout\)))) # (!\LessThan13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(2),
	datac => \q[0]~2_combout\,
	datad => \LessThan13~0_combout\,
	combout => \LessThan9~5_combout\);

-- Location: LCCOMB_X110_Y18_N24
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (!\q[5]~6_combout\ & (((\Equal1~4_combout\ & !q(3))) # (!q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => q(4),
	datac => \Equal1~4_combout\,
	datad => q(3),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X110_Y18_N0
\unidade[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~55_combout\ = (\q[6]~8_combout\ & ((!\LessThan10~0_combout\) # (!\LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~5_combout\,
	datab => \LessThan10~0_combout\,
	datad => \q[6]~8_combout\,
	combout => \unidade[0]~55_combout\);

-- Location: LCCOMB_X110_Y18_N30
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (\Equal0~2_combout\ & (((!\q[0]~2_combout\) # (!q(2))) # (!\q[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(2),
	datac => \q[0]~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X110_Y18_N26
\unidade[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~53_combout\ = (\q[6]~8_combout\ & (\LessThan9~5_combout\ & ((\LessThan11~0_combout\) # (!\LessThan10~0_combout\)))) # (!\q[6]~8_combout\ & (\LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan9~5_combout\,
	datad => \LessThan10~0_combout\,
	combout => \unidade[0]~53_combout\);

-- Location: LCCOMB_X110_Y18_N22
\unidade[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~54_combout\ = ((!\q[5]~6_combout\ & \unidade[0]~53_combout\)) # (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datac => \q[5]~6_combout\,
	datad => \unidade[0]~53_combout\,
	combout => \unidade[0]~54_combout\);

-- Location: LCCOMB_X111_Y16_N16
\unidade~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~131_combout\ = (\unidade[0]~55_combout\ & (((\Add10~0_combout\) # (\unidade[0]~54_combout\)))) # (!\unidade[0]~55_combout\ & (\Add12~0_combout\ & ((!\unidade[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add10~0_combout\,
	datac => \unidade[0]~55_combout\,
	datad => \unidade[0]~54_combout\,
	combout => \unidade~131_combout\);

-- Location: LCCOMB_X113_Y16_N8
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add11~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X112_Y14_N24
\unidade[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~44_combout\ = (((!q(3) & \LessThan9~4_combout\)) # (!\q[5]~6_combout\)) # (!q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => \q[5]~6_combout\,
	datad => \LessThan9~4_combout\,
	combout => \unidade[0]~44_combout\);

-- Location: LCCOMB_X112_Y14_N2
\unidade[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~45_combout\ = (!\q[6]~8_combout\ & (\unidade[0]~44_combout\ & ((\LessThan12~0_combout\) # (!\q[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan12~0_combout\,
	datad => \unidade[0]~44_combout\,
	combout => \unidade[0]~45_combout\);

-- Location: LCCOMB_X112_Y14_N20
\unidade[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~46_combout\ = (!\q[6]~8_combout\ & ((\unidade[0]~45_combout\ & (\LessThan14~0_combout\)) # (!\unidade[0]~45_combout\ & ((\LessThan12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan12~0_combout\,
	datad => \unidade[0]~45_combout\,
	combout => \unidade[0]~46_combout\);

-- Location: LCCOMB_X112_Y14_N26
\unidade[0]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~154_combout\ = (\unidade[0]~46_combout\) # ((!\q[6]~8_combout\ & !\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datac => \q[5]~6_combout\,
	datad => \unidade[0]~46_combout\,
	combout => \unidade[0]~154_combout\);

-- Location: LCCOMB_X113_Y14_N18
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add14~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X112_Y14_N4
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add13~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X109_Y14_N16
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add15~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X112_Y14_N30
\unidade~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~127_combout\ = (\unidade[0]~45_combout\ & (((\Add15~0_combout\) # (\unidade[0]~154_combout\)))) # (!\unidade[0]~45_combout\ & (\Add13~0_combout\ & ((!\unidade[0]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => \Add15~0_combout\,
	datac => \unidade[0]~45_combout\,
	datad => \unidade[0]~154_combout\,
	combout => \unidade~127_combout\);

-- Location: LCCOMB_X109_Y14_N0
\Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add17~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X111_Y17_N10
\unidade[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~15_combout\ = (q(3)) # ((q(2) & ((\q[1]~4_combout\) # (\q[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => \q[1]~4_combout\,
	datac => q(2),
	datad => \q[0]~2_combout\,
	combout => \unidade[0]~15_combout\);

-- Location: LCCOMB_X111_Y17_N12
\unidade[0]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~158_combout\ = (\q[5]~6_combout\) # ((\q[6]~8_combout\) # ((q(4) & \unidade[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \unidade[0]~15_combout\,
	combout => \unidade[0]~158_combout\);

-- Location: LCCOMB_X111_Y17_N4
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (((!\LessThan13~0_combout\) # (!q(2))) # (!\q[1]~4_combout\)) # (!\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datab => \q[1]~4_combout\,
	datac => q(2),
	datad => \LessThan13~0_combout\,
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X111_Y17_N18
\unidade[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~48_combout\ = (!q(4) & (\Equal1~5_combout\ & ((\LessThan9~4_combout\) # (!q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(3),
	datac => \Equal1~5_combout\,
	datad => \LessThan9~4_combout\,
	combout => \unidade[0]~48_combout\);

-- Location: LCCOMB_X111_Y17_N16
\unidade[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~49_combout\ = (\unidade[0]~158_combout\ & (\Equal1~5_combout\ & (\LessThan15~0_combout\))) # (!\unidade[0]~158_combout\ & (((\unidade[0]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~158_combout\,
	datab => \Equal1~5_combout\,
	datac => \LessThan15~0_combout\,
	datad => \unidade[0]~48_combout\,
	combout => \unidade[0]~49_combout\);

-- Location: LCCOMB_X110_Y17_N12
\Add16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add16~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: LCCOMB_X110_Y16_N18
\Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add18~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add18~0_combout\,
	cout => \Add18~1\);

-- Location: LCCOMB_X111_Y14_N12
\unidade~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~128_combout\ = (\unidade[0]~158_combout\ & ((\Add16~0_combout\) # ((\unidade[0]~49_combout\)))) # (!\unidade[0]~158_combout\ & (((\Add18~0_combout\ & !\unidade[0]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \Add18~0_combout\,
	datac => \unidade[0]~158_combout\,
	datad => \unidade[0]~49_combout\,
	combout => \unidade~128_combout\);

-- Location: LCCOMB_X111_Y14_N18
\unidade~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~129_combout\ = (\unidade[0]~49_combout\ & ((\unidade~128_combout\ & (\Add17~0_combout\)) # (!\unidade~128_combout\ & ((\Add19~0_combout\))))) # (!\unidade[0]~49_combout\ & (((\unidade~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~0_combout\,
	datab => \unidade[0]~49_combout\,
	datac => \Add19~0_combout\,
	datad => \unidade~128_combout\,
	combout => \unidade~129_combout\);

-- Location: LCCOMB_X111_Y14_N20
\unidade~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~130_combout\ = (\unidade[0]~154_combout\ & ((\unidade~127_combout\ & ((\unidade~129_combout\))) # (!\unidade~127_combout\ & (\Add14~0_combout\)))) # (!\unidade[0]~154_combout\ & (((\unidade~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~154_combout\,
	datab => \Add14~0_combout\,
	datac => \unidade~127_combout\,
	datad => \unidade~129_combout\,
	combout => \unidade~130_combout\);

-- Location: LCCOMB_X112_Y16_N16
\unidade~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~132_combout\ = (\unidade~131_combout\ & ((\Add11~0_combout\) # ((!\unidade[0]~54_combout\)))) # (!\unidade~131_combout\ & (((\unidade~130_combout\ & \unidade[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~131_combout\,
	datab => \Add11~0_combout\,
	datac => \unidade~130_combout\,
	datad => \unidade[0]~54_combout\,
	combout => \unidade~132_combout\);

-- Location: LCCOMB_X112_Y16_N10
\unidade~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~133_combout\ = (\Equal1~6_combout\) # (\unidade~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datad => \unidade~132_combout\,
	combout => \unidade~133_combout\);

-- Location: LCCOMB_X112_Y16_N28
\unidade[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~1_combout\ = \q[0]~1_combout\ $ (((\unidade~156_combout\) # ((\sentido_contagem~input_o\ & \unidade~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \q[0]~1_combout\,
	datac => \unidade~156_combout\,
	datad => \unidade~133_combout\,
	combout => \unidade[0]~1_combout\);

-- Location: FF_X112_Y16_N29
\unidade[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade[0]~_emulated_q\);

-- Location: LCCOMB_X112_Y16_N30
\unidade[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~0_combout\ = (\reset~input_o\ & ((\unidade[0]~_emulated_q\ $ (\q[0]~1_combout\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \unidade[0]~_emulated_q\,
	datac => \q[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \unidade[0]~0_combout\);

-- Location: LCCOMB_X112_Y18_N18
\unidade~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~72_combout\ = (\sentido_contagem~input_o\ & !\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sentido_contagem~input_o\,
	datad => \Equal1~6_combout\,
	combout => \unidade~72_combout\);

-- Location: LCCOMB_X109_Y17_N20
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\q[1]~4_combout\ & (\Add0~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\q[1]~4_combout\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X109_Y17_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\q[1]~4_combout\ & (\Add2~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((!\q[1]~4_combout\ & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X111_Y17_N24
\unidade~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~70_combout\ = (\unidade[0]~69_combout\ & (\unidade[0]~67_combout\)) # (!\unidade[0]~69_combout\ & ((\unidade[0]~67_combout\ & (\Add0~2_combout\)) # (!\unidade[0]~67_combout\ & ((\Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~69_combout\,
	datab => \unidade[0]~67_combout\,
	datac => \Add0~2_combout\,
	datad => \Add2~2_combout\,
	combout => \unidade~70_combout\);

-- Location: LCCOMB_X110_Y18_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\q[1]~4_combout\ & (!\Add1~1\)) # (!\q[1]~4_combout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X112_Y15_N16
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\q[1]~4_combout\ & (!\Add5~1\)) # (!\q[1]~4_combout\ & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X112_Y17_N20
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\q[1]~4_combout\ & (\Add4~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add4~1\))
-- \Add4~3\ = CARRY((!\q[1]~4_combout\ & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X111_Y16_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\q[1]~4_combout\ & (!\Add3~1\)) # (!\q[1]~4_combout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X112_Y17_N12
\unidade~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~62_combout\ = (\unidade[0]~59_combout\ & (((\unidade[0]~61_combout\)))) # (!\unidade[0]~59_combout\ & ((\unidade[0]~61_combout\ & (\Add4~2_combout\)) # (!\unidade[0]~61_combout\ & ((\Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add3~2_combout\,
	datac => \unidade[0]~59_combout\,
	datad => \unidade[0]~61_combout\,
	combout => \unidade~62_combout\);

-- Location: LCCOMB_X110_Y15_N6
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\q[1]~4_combout\ & (!\Add7~1\)) # (!\q[1]~4_combout\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X111_Y15_N2
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\q[1]~4_combout\ & (\Add8~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add8~1\))
-- \Add8~3\ = CARRY((!\q[1]~4_combout\ & !\Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X110_Y15_N20
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\q[1]~4_combout\ & (\Add6~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add6~1\))
-- \Add6~3\ = CARRY((!\q[1]~4_combout\ & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X111_Y15_N14
\unidade~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~64_combout\ = (\unidade[0]~159_combout\ & (((\unidade[0]~63_combout\) # (\Add6~2_combout\)))) # (!\unidade[0]~159_combout\ & (\Add8~2_combout\ & (!\unidade[0]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~159_combout\,
	datab => \Add8~2_combout\,
	datac => \unidade[0]~63_combout\,
	datad => \Add6~2_combout\,
	combout => \unidade~64_combout\);

-- Location: LCCOMB_X111_Y15_N28
\unidade~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~65_combout\ = (\unidade[0]~63_combout\ & ((\unidade~64_combout\ & (\Add7~2_combout\)) # (!\unidade~64_combout\ & ((\Add9~2_combout\))))) # (!\unidade[0]~63_combout\ & (((\unidade~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \unidade[0]~63_combout\,
	datac => \unidade~64_combout\,
	datad => \Add9~2_combout\,
	combout => \unidade~65_combout\);

-- Location: LCCOMB_X111_Y17_N28
\unidade~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~66_combout\ = (\unidade~62_combout\ & (((\unidade~65_combout\) # (!\unidade[0]~59_combout\)))) # (!\unidade~62_combout\ & (\Add5~2_combout\ & ((\unidade[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \unidade~62_combout\,
	datac => \unidade~65_combout\,
	datad => \unidade[0]~59_combout\,
	combout => \unidade~66_combout\);

-- Location: LCCOMB_X111_Y17_N14
\unidade~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~71_combout\ = (\unidade[0]~69_combout\ & ((\unidade~70_combout\ & (\Add1~2_combout\)) # (!\unidade~70_combout\ & ((\unidade~66_combout\))))) # (!\unidade[0]~69_combout\ & (\unidade~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~69_combout\,
	datab => \unidade~70_combout\,
	datac => \Add1~2_combout\,
	datad => \unidade~66_combout\,
	combout => \unidade~71_combout\);

-- Location: LCCOMB_X109_Y18_N20
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\q[1]~4_combout\ & (!\Add12~1\)) # (!\q[1]~4_combout\ & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X109_Y18_N6
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\q[1]~4_combout\ & (!\Add10~1\)) # (!\q[1]~4_combout\ & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X110_Y18_N6
\unidade~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~56_combout\ = (\unidade[0]~55_combout\ & (((\Add10~2_combout\) # (\unidade[0]~54_combout\)))) # (!\unidade[0]~55_combout\ & (\Add12~2_combout\ & ((!\unidade[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \unidade[0]~55_combout\,
	datac => \Add10~2_combout\,
	datad => \unidade[0]~54_combout\,
	combout => \unidade~56_combout\);

-- Location: LCCOMB_X109_Y14_N18
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (\q[1]~4_combout\ & (\Add15~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add15~1\))
-- \Add15~3\ = CARRY((!\q[1]~4_combout\ & !\Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X110_Y17_N14
\Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (\q[1]~4_combout\ & (!\Add16~1\)) # (!\q[1]~4_combout\ & ((\Add16~1\) # (GND)))
-- \Add16~3\ = CARRY((!\Add16~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X109_Y14_N2
\Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (\q[1]~4_combout\ & (\Add17~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add17~1\))
-- \Add17~3\ = CARRY((!\q[1]~4_combout\ & !\Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add17~1\,
	combout => \Add17~2_combout\,
	cout => \Add17~3\);

-- Location: LCCOMB_X110_Y16_N20
\Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (\q[1]~4_combout\ & (!\Add18~1\)) # (!\q[1]~4_combout\ & ((\Add18~1\) # (GND)))
-- \Add18~3\ = CARRY((!\Add18~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add18~1\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X113_Y17_N16
\unidade~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~50_combout\ = (\unidade[0]~49_combout\ & ((\unidade[0]~158_combout\) # ((\Add19~2_combout\)))) # (!\unidade[0]~49_combout\ & (!\unidade[0]~158_combout\ & ((\Add18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~49_combout\,
	datab => \unidade[0]~158_combout\,
	datac => \Add19~2_combout\,
	datad => \Add18~2_combout\,
	combout => \unidade~50_combout\);

-- Location: LCCOMB_X113_Y17_N22
\unidade~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~51_combout\ = (\unidade[0]~158_combout\ & ((\unidade~50_combout\ & ((\Add17~2_combout\))) # (!\unidade~50_combout\ & (\Add16~2_combout\)))) # (!\unidade[0]~158_combout\ & (((\unidade~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datab => \unidade[0]~158_combout\,
	datac => \Add17~2_combout\,
	datad => \unidade~50_combout\,
	combout => \unidade~51_combout\);

-- Location: LCCOMB_X113_Y14_N20
\Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (\q[1]~4_combout\ & (!\Add14~1\)) # (!\q[1]~4_combout\ & ((\Add14~1\) # (GND)))
-- \Add14~3\ = CARRY((!\Add14~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X112_Y14_N6
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\q[1]~4_combout\ & (\Add13~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add13~1\))
-- \Add13~3\ = CARRY((!\q[1]~4_combout\ & !\Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X113_Y17_N18
\unidade~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~47_combout\ = (\unidade[0]~45_combout\ & (((\unidade[0]~154_combout\)))) # (!\unidade[0]~45_combout\ & ((\unidade[0]~154_combout\ & (\Add14~2_combout\)) # (!\unidade[0]~154_combout\ & ((\Add13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~45_combout\,
	datab => \Add14~2_combout\,
	datac => \unidade[0]~154_combout\,
	datad => \Add13~2_combout\,
	combout => \unidade~47_combout\);

-- Location: LCCOMB_X113_Y17_N24
\unidade~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~52_combout\ = (\unidade[0]~45_combout\ & ((\unidade~47_combout\ & ((\unidade~51_combout\))) # (!\unidade~47_combout\ & (\Add15~2_combout\)))) # (!\unidade[0]~45_combout\ & (((\unidade~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~45_combout\,
	datab => \Add15~2_combout\,
	datac => \unidade~51_combout\,
	datad => \unidade~47_combout\,
	combout => \unidade~52_combout\);

-- Location: LCCOMB_X113_Y16_N10
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\q[1]~4_combout\ & (\Add11~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add11~1\))
-- \Add11~3\ = CARRY((!\q[1]~4_combout\ & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X111_Y17_N22
\unidade~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~57_combout\ = (\unidade~56_combout\ & (((\Add11~2_combout\)) # (!\unidade[0]~54_combout\))) # (!\unidade~56_combout\ & (\unidade[0]~54_combout\ & (\unidade~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~56_combout\,
	datab => \unidade[0]~54_combout\,
	datac => \unidade~52_combout\,
	datad => \Add11~2_combout\,
	combout => \unidade~57_combout\);

-- Location: LCCOMB_X111_Y17_N0
\unidade~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~73_combout\ = (\unidade~72_combout\ & ((\unidade~57_combout\) # ((\unidade~71_combout\ & \dezena~15_combout\)))) # (!\unidade~72_combout\ & (\unidade~71_combout\ & ((\dezena~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~72_combout\,
	datab => \unidade~71_combout\,
	datac => \unidade~57_combout\,
	datad => \dezena~15_combout\,
	combout => \unidade~73_combout\);

-- Location: FF_X111_Y17_N1
\unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade~73_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(1));

-- Location: LCCOMB_X113_Y16_N12
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

-- Location: LCCOMB_X109_Y18_N22
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (q(2) & (\Add12~3\ $ (GND))) # (!q(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((q(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X109_Y18_N8
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (q(2) & ((GND) # (!\Add10~3\))) # (!q(2) & (\Add10~3\ $ (GND)))
-- \Add10~5\ = CARRY((q(2)) # (!\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X109_Y18_N0
\unidade~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~84_combout\ = (\unidade[0]~55_combout\ & (((\Add10~4_combout\) # (\unidade[0]~54_combout\)))) # (!\unidade[0]~55_combout\ & (\Add12~4_combout\ & ((!\unidade[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datab => \Add10~4_combout\,
	datac => \unidade[0]~55_combout\,
	datad => \unidade[0]~54_combout\,
	combout => \unidade~84_combout\);

-- Location: LCCOMB_X113_Y14_N22
\Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = (q(2) & ((GND) # (!\Add14~3\))) # (!q(2) & (\Add14~3\ $ (GND)))
-- \Add14~5\ = CARRY((q(2)) # (!\Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X109_Y14_N4
\Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = (q(2) & (\Add17~3\ $ (GND))) # (!q(2) & (!\Add17~3\ & VCC))
-- \Add17~5\ = CARRY((q(2) & !\Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add17~3\,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X110_Y17_N16
\Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = (q(2) & (\Add16~3\ $ (GND))) # (!q(2) & (!\Add16~3\ & VCC))
-- \Add16~5\ = CARRY((q(2) & !\Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X110_Y16_N22
\Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = (q(2) & ((GND) # (!\Add18~3\))) # (!q(2) & (\Add18~3\ $ (GND)))
-- \Add18~5\ = CARRY((q(2)) # (!\Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X113_Y17_N14
\unidade~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~81_combout\ = (\unidade[0]~158_combout\ & ((\Add16~4_combout\) # ((\unidade[0]~49_combout\)))) # (!\unidade[0]~158_combout\ & (((!\unidade[0]~49_combout\ & \Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~4_combout\,
	datab => \unidade[0]~158_combout\,
	datac => \unidade[0]~49_combout\,
	datad => \Add18~4_combout\,
	combout => \unidade~81_combout\);

-- Location: LCCOMB_X113_Y17_N8
\unidade~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~82_combout\ = (\unidade[0]~49_combout\ & ((\unidade~81_combout\ & (\Add17~4_combout\)) # (!\unidade~81_combout\ & ((\Add19~4_combout\))))) # (!\unidade[0]~49_combout\ & (((\unidade~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~4_combout\,
	datab => \unidade[0]~49_combout\,
	datac => \unidade~81_combout\,
	datad => \Add19~4_combout\,
	combout => \unidade~82_combout\);

-- Location: LCCOMB_X109_Y14_N20
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

-- Location: LCCOMB_X112_Y14_N8
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (q(2) & (\Add13~3\ $ (GND))) # (!q(2) & (!\Add13~3\ & VCC))
-- \Add13~5\ = CARRY((q(2) & !\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X112_Y14_N18
\unidade~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~80_combout\ = (\unidade[0]~45_combout\ & ((\Add15~4_combout\) # ((\unidade[0]~154_combout\)))) # (!\unidade[0]~45_combout\ & (((\Add13~4_combout\ & !\unidade[0]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~4_combout\,
	datab => \Add13~4_combout\,
	datac => \unidade[0]~45_combout\,
	datad => \unidade[0]~154_combout\,
	combout => \unidade~80_combout\);

-- Location: LCCOMB_X113_Y17_N30
\unidade~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~83_combout\ = (\unidade[0]~154_combout\ & ((\unidade~80_combout\ & ((\unidade~82_combout\))) # (!\unidade~80_combout\ & (\Add14~4_combout\)))) # (!\unidade[0]~154_combout\ & (((\unidade~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~154_combout\,
	datab => \Add14~4_combout\,
	datac => \unidade~82_combout\,
	datad => \unidade~80_combout\,
	combout => \unidade~83_combout\);

-- Location: LCCOMB_X113_Y17_N4
\unidade~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~85_combout\ = (\unidade[0]~54_combout\ & ((\unidade~84_combout\ & (\Add11~4_combout\)) # (!\unidade~84_combout\ & ((\unidade~83_combout\))))) # (!\unidade[0]~54_combout\ & (((\unidade~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \unidade[0]~54_combout\,
	datac => \unidade~84_combout\,
	datad => \unidade~83_combout\,
	combout => \unidade~85_combout\);

-- Location: LCCOMB_X109_Y17_N4
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

-- Location: LCCOMB_X109_Y17_N22
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (q(2) & ((GND) # (!\Add0~3\))) # (!q(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((q(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X112_Y17_N0
\unidade~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~78_combout\ = (\unidade[0]~67_combout\ & (((\Add0~4_combout\) # (\unidade[0]~69_combout\)))) # (!\unidade[0]~67_combout\ & (\Add2~4_combout\ & ((!\unidade[0]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \unidade[0]~67_combout\,
	datac => \Add0~4_combout\,
	datad => \unidade[0]~69_combout\,
	combout => \unidade~78_combout\);

-- Location: LCCOMB_X112_Y17_N22
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

-- Location: LCCOMB_X111_Y16_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (q(2) & ((GND) # (!\Add3~3\))) # (!q(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((q(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X112_Y15_N18
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (q(2) & (\Add5~3\ $ (GND))) # (!q(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((q(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X111_Y16_N26
\unidade~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~74_combout\ = (\unidade[0]~61_combout\ & (((\unidade[0]~59_combout\)))) # (!\unidade[0]~61_combout\ & ((\unidade[0]~59_combout\ & ((\Add5~4_combout\))) # (!\unidade[0]~59_combout\ & (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~61_combout\,
	datab => \Add3~4_combout\,
	datac => \unidade[0]~59_combout\,
	datad => \Add5~4_combout\,
	combout => \unidade~74_combout\);

-- Location: LCCOMB_X110_Y15_N8
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (q(2) & ((GND) # (!\Add7~3\))) # (!q(2) & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((q(2)) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X110_Y15_N22
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

-- Location: LCCOMB_X111_Y15_N4
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

-- Location: LCCOMB_X112_Y17_N10
\unidade~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~75_combout\ = (\unidade[0]~159_combout\ & (((\unidade[0]~63_combout\)))) # (!\unidade[0]~159_combout\ & ((\unidade[0]~63_combout\ & ((\Add9~4_combout\))) # (!\unidade[0]~63_combout\ & (\Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \unidade[0]~159_combout\,
	datac => \Add9~4_combout\,
	datad => \unidade[0]~63_combout\,
	combout => \unidade~75_combout\);

-- Location: LCCOMB_X112_Y17_N8
\unidade~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~76_combout\ = (\unidade[0]~159_combout\ & ((\unidade~75_combout\ & (\Add7~4_combout\)) # (!\unidade~75_combout\ & ((\Add6~4_combout\))))) # (!\unidade[0]~159_combout\ & (((\unidade~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~159_combout\,
	datab => \Add7~4_combout\,
	datac => \Add6~4_combout\,
	datad => \unidade~75_combout\,
	combout => \unidade~76_combout\);

-- Location: LCCOMB_X112_Y17_N14
\unidade~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~77_combout\ = (\unidade[0]~61_combout\ & ((\unidade~74_combout\ & ((\unidade~76_combout\))) # (!\unidade~74_combout\ & (\Add4~4_combout\)))) # (!\unidade[0]~61_combout\ & (((\unidade~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~61_combout\,
	datab => \Add4~4_combout\,
	datac => \unidade~74_combout\,
	datad => \unidade~76_combout\,
	combout => \unidade~77_combout\);

-- Location: LCCOMB_X110_Y18_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (q(2) & (\Add1~3\ $ (GND))) # (!q(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((q(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X112_Y17_N6
\unidade~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~79_combout\ = (\unidade[0]~69_combout\ & ((\unidade~78_combout\ & ((\Add1~4_combout\))) # (!\unidade~78_combout\ & (\unidade~77_combout\)))) # (!\unidade[0]~69_combout\ & (\unidade~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~69_combout\,
	datab => \unidade~78_combout\,
	datac => \unidade~77_combout\,
	datad => \Add1~4_combout\,
	combout => \unidade~79_combout\);

-- Location: LCCOMB_X113_Y17_N0
\unidade~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~86_combout\ = (\unidade~72_combout\ & ((\unidade~85_combout\) # ((\unidade~79_combout\ & \dezena~15_combout\)))) # (!\unidade~72_combout\ & (((\unidade~79_combout\ & \dezena~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~72_combout\,
	datab => \unidade~85_combout\,
	datac => \unidade~79_combout\,
	datad => \dezena~15_combout\,
	combout => \unidade~86_combout\);

-- Location: FF_X113_Y17_N1
\unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade~86_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(2));

-- Location: LCCOMB_X109_Y18_N10
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

-- Location: LCCOMB_X113_Y16_N14
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (q(3) & (\Add11~5\ & VCC)) # (!q(3) & (!\Add11~5\))
-- \Add11~7\ = CARRY((!q(3) & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X109_Y18_N24
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (q(3) & (\Add12~5\ & VCC)) # (!q(3) & (!\Add12~5\))
-- \Add12~7\ = CARRY((!q(3) & !\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X109_Y14_N22
\Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (q(3) & (!\Add15~5\)) # (!q(3) & ((\Add15~5\) # (GND)))
-- \Add15~7\ = CARRY((!\Add15~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X112_Y14_N10
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (q(3) & (!\Add13~5\)) # (!q(3) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X113_Y14_N24
\Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (q(3) & (\Add14~5\ & VCC)) # (!q(3) & (!\Add14~5\))
-- \Add14~7\ = CARRY((!q(3) & !\Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X112_Y14_N28
\unidade~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~140_combout\ = (\unidade[0]~45_combout\ & (((\unidade[0]~154_combout\)))) # (!\unidade[0]~45_combout\ & ((\unidade[0]~154_combout\ & ((\Add14~6_combout\))) # (!\unidade[0]~154_combout\ & (\Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \unidade[0]~45_combout\,
	datac => \unidade[0]~154_combout\,
	datad => \Add14~6_combout\,
	combout => \unidade~140_combout\);

-- Location: LCCOMB_X109_Y14_N6
\Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (q(3) & (\Add17~5\ & VCC)) # (!q(3) & (!\Add17~5\))
-- \Add17~7\ = CARRY((!q(3) & !\Add17~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X110_Y16_N24
\Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (q(3) & (!\Add18~5\)) # (!q(3) & ((\Add18~5\) # (GND)))
-- \Add18~7\ = CARRY((!\Add18~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X112_Y16_N26
\unidade~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~141_combout\ = (\unidade[0]~158_combout\ & (((\unidade[0]~49_combout\)))) # (!\unidade[0]~158_combout\ & ((\unidade[0]~49_combout\ & ((\Add19~6_combout\))) # (!\unidade[0]~49_combout\ & (\Add18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~6_combout\,
	datab => \unidade[0]~158_combout\,
	datac => \unidade[0]~49_combout\,
	datad => \Add19~6_combout\,
	combout => \unidade~141_combout\);

-- Location: LCCOMB_X110_Y17_N18
\Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (q(3) & (!\Add16~5\)) # (!q(3) & ((\Add16~5\) # (GND)))
-- \Add16~7\ = CARRY((!\Add16~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X112_Y16_N20
\unidade~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~142_combout\ = (\unidade[0]~158_combout\ & ((\unidade~141_combout\ & (\Add17~6_combout\)) # (!\unidade~141_combout\ & ((\Add16~6_combout\))))) # (!\unidade[0]~158_combout\ & (((\unidade~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~6_combout\,
	datab => \unidade[0]~158_combout\,
	datac => \unidade~141_combout\,
	datad => \Add16~6_combout\,
	combout => \unidade~142_combout\);

-- Location: LCCOMB_X112_Y16_N6
\unidade~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~143_combout\ = (\unidade[0]~45_combout\ & ((\unidade~140_combout\ & ((\unidade~142_combout\))) # (!\unidade~140_combout\ & (\Add15~6_combout\)))) # (!\unidade[0]~45_combout\ & (((\unidade~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~6_combout\,
	datab => \unidade[0]~45_combout\,
	datac => \unidade~140_combout\,
	datad => \unidade~142_combout\,
	combout => \unidade~143_combout\);

-- Location: LCCOMB_X112_Y16_N24
\unidade~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~144_combout\ = (\unidade[0]~55_combout\ & (((\unidade[0]~54_combout\)))) # (!\unidade[0]~55_combout\ & ((\unidade[0]~54_combout\ & ((\unidade~143_combout\))) # (!\unidade[0]~54_combout\ & (\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \unidade[0]~55_combout\,
	datac => \unidade[0]~54_combout\,
	datad => \unidade~143_combout\,
	combout => \unidade~144_combout\);

-- Location: LCCOMB_X112_Y16_N2
\unidade~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~145_combout\ = (\unidade[0]~55_combout\ & ((\unidade~144_combout\ & ((\Add11~6_combout\))) # (!\unidade~144_combout\ & (\Add10~6_combout\)))) # (!\unidade[0]~55_combout\ & (((\unidade~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add11~6_combout\,
	datac => \unidade[0]~55_combout\,
	datad => \unidade~144_combout\,
	combout => \unidade~145_combout\);

-- Location: LCCOMB_X112_Y16_N4
\unidade~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~146_combout\ = (\Equal1~6_combout\) # (\unidade~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~6_combout\,
	datad => \unidade~145_combout\,
	combout => \unidade~146_combout\);

-- Location: LCCOMB_X110_Y18_N14
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

-- Location: LCCOMB_X109_Y17_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (q(3) & (\Add2~5\ & VCC)) # (!q(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!q(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X112_Y15_N20
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

-- Location: LCCOMB_X111_Y16_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (q(3) & (!\Add3~5\)) # (!q(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X112_Y17_N24
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (q(3) & (\Add4~5\ & VCC)) # (!q(3) & (!\Add4~5\))
-- \Add4~7\ = CARRY((!q(3) & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X111_Y16_N30
\unidade~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~147_combout\ = (\unidade[0]~61_combout\ & ((\unidade[0]~59_combout\) # ((\Add4~6_combout\)))) # (!\unidade[0]~61_combout\ & (!\unidade[0]~59_combout\ & (\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~61_combout\,
	datab => \unidade[0]~59_combout\,
	datac => \Add3~6_combout\,
	datad => \Add4~6_combout\,
	combout => \unidade~147_combout\);

-- Location: LCCOMB_X110_Y15_N10
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (q(3) & (\Add7~5\ & VCC)) # (!q(3) & (!\Add7~5\))
-- \Add7~7\ = CARRY((!q(3) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X111_Y15_N6
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (q(3) & (!\Add8~5\)) # (!q(3) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X110_Y15_N24
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (q(3) & (!\Add6~5\)) # (!q(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X111_Y16_N28
\unidade~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~148_combout\ = (\unidade[0]~159_combout\ & (((\Add6~6_combout\) # (\unidade[0]~63_combout\)))) # (!\unidade[0]~159_combout\ & (\Add8~6_combout\ & ((!\unidade[0]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \unidade[0]~159_combout\,
	datac => \Add6~6_combout\,
	datad => \unidade[0]~63_combout\,
	combout => \unidade~148_combout\);

-- Location: LCCOMB_X111_Y16_N18
\unidade~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~149_combout\ = (\unidade[0]~63_combout\ & ((\unidade~148_combout\ & ((\Add7~6_combout\))) # (!\unidade~148_combout\ & (\Add9~6_combout\)))) # (!\unidade[0]~63_combout\ & (((\unidade~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \unidade[0]~63_combout\,
	datac => \Add7~6_combout\,
	datad => \unidade~148_combout\,
	combout => \unidade~149_combout\);

-- Location: LCCOMB_X111_Y16_N24
\unidade~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~150_combout\ = (\unidade[0]~59_combout\ & ((\unidade~147_combout\ & ((\unidade~149_combout\))) # (!\unidade~147_combout\ & (\Add5~6_combout\)))) # (!\unidade[0]~59_combout\ & (((\unidade~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~59_combout\,
	datab => \Add5~6_combout\,
	datac => \unidade~147_combout\,
	datad => \unidade~149_combout\,
	combout => \unidade~150_combout\);

-- Location: LCCOMB_X111_Y16_N22
\unidade~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~151_combout\ = (\unidade[0]~67_combout\ & (((\unidade[0]~69_combout\)))) # (!\unidade[0]~67_combout\ & ((\unidade[0]~69_combout\ & ((\unidade~150_combout\))) # (!\unidade[0]~69_combout\ & (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \unidade[0]~67_combout\,
	datac => \unidade[0]~69_combout\,
	datad => \unidade~150_combout\,
	combout => \unidade~151_combout\);

-- Location: LCCOMB_X109_Y17_N24
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (q(3) & (!\Add0~5\)) # (!q(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X111_Y16_N20
\unidade~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~152_combout\ = (\unidade[0]~67_combout\ & ((\unidade~151_combout\ & (\Add1~6_combout\)) # (!\unidade~151_combout\ & ((\Add0~6_combout\))))) # (!\unidade[0]~67_combout\ & (((\unidade~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \unidade[0]~67_combout\,
	datac => \unidade~151_combout\,
	datad => \Add0~6_combout\,
	combout => \unidade~152_combout\);

-- Location: LCCOMB_X111_Y16_N14
\unidade~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~157_combout\ = (!\Equal0~1_combout\ & (!\sentido_contagem~input_o\ & \unidade~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \sentido_contagem~input_o\,
	datad => \unidade~152_combout\,
	combout => \unidade~157_combout\);

-- Location: LCCOMB_X112_Y16_N0
\unidade[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~3_combout\ = \q[0]~1_combout\ $ (((\unidade~157_combout\) # ((\sentido_contagem~input_o\ & \unidade~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \q[0]~1_combout\,
	datac => \unidade~146_combout\,
	datad => \unidade~157_combout\,
	combout => \unidade[3]~3_combout\);

-- Location: FF_X112_Y16_N1
\unidade[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade[3]~_emulated_q\);

-- Location: LCCOMB_X112_Y16_N22
\unidade[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~2_combout\ = (\reset~input_o\ & ((\unidade[3]~_emulated_q\ $ (\q[0]~1_combout\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \unidade[3]~_emulated_q\,
	datac => \q[0]~1_combout\,
	datad => \reset~input_o\,
	combout => \unidade[3]~2_combout\);

-- Location: LCCOMB_X109_Y18_N12
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

-- Location: LCCOMB_X109_Y18_N26
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (q(4) & ((GND) # (!\Add12~7\))) # (!q(4) & (\Add12~7\ $ (GND)))
-- \Add12~9\ = CARRY((q(4)) # (!\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X113_Y14_N26
\Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = (q(4) & (\Add14~7\ $ (GND))) # (!q(4) & (!\Add14~7\ & VCC))
-- \Add14~9\ = CARRY((q(4) & !\Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X109_Y14_N8
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

-- Location: LCCOMB_X110_Y17_N20
\Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = (q(4) & (\Add16~7\ $ (GND))) # (!q(4) & (!\Add16~7\ & VCC))
-- \Add16~9\ = CARRY((q(4) & !\Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X110_Y16_N26
\Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = (q(4) & ((GND) # (!\Add18~7\))) # (!q(4) & (\Add18~7\ $ (GND)))
-- \Add18~9\ = CARRY((q(4)) # (!\Add18~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X110_Y17_N8
\unidade~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~94_combout\ = (\unidade[0]~158_combout\ & ((\unidade[0]~49_combout\) # ((\Add16~8_combout\)))) # (!\unidade[0]~158_combout\ & (!\unidade[0]~49_combout\ & ((\Add18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~158_combout\,
	datab => \unidade[0]~49_combout\,
	datac => \Add16~8_combout\,
	datad => \Add18~8_combout\,
	combout => \unidade~94_combout\);

-- Location: LCCOMB_X110_Y17_N26
\unidade~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~95_combout\ = (\unidade[0]~49_combout\ & ((\unidade~94_combout\ & (\Add17~8_combout\)) # (!\unidade~94_combout\ & ((\Add19~8_combout\))))) # (!\unidade[0]~49_combout\ & (((\unidade~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~8_combout\,
	datab => \unidade[0]~49_combout\,
	datac => \unidade~94_combout\,
	datad => \Add19~8_combout\,
	combout => \unidade~95_combout\);

-- Location: LCCOMB_X109_Y14_N24
\Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = (q(4) & ((GND) # (!\Add15~7\))) # (!q(4) & (\Add15~7\ $ (GND)))
-- \Add15~9\ = CARRY((q(4)) # (!\Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X112_Y14_N12
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (q(4) & (\Add13~7\ $ (GND))) # (!q(4) & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((q(4) & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X110_Y17_N2
\unidade~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~93_combout\ = (\unidade[0]~45_combout\ & ((\Add15~8_combout\) # ((\unidade[0]~154_combout\)))) # (!\unidade[0]~45_combout\ & (((!\unidade[0]~154_combout\ & \Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~8_combout\,
	datab => \unidade[0]~45_combout\,
	datac => \unidade[0]~154_combout\,
	datad => \Add13~8_combout\,
	combout => \unidade~93_combout\);

-- Location: LCCOMB_X110_Y17_N6
\unidade~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~96_combout\ = (\unidade[0]~154_combout\ & ((\unidade~93_combout\ & ((\unidade~95_combout\))) # (!\unidade~93_combout\ & (\Add14~8_combout\)))) # (!\unidade[0]~154_combout\ & (((\unidade~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~154_combout\,
	datab => \Add14~8_combout\,
	datac => \unidade~95_combout\,
	datad => \unidade~93_combout\,
	combout => \unidade~96_combout\);

-- Location: LCCOMB_X110_Y17_N4
\unidade~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~97_combout\ = (\unidade[0]~54_combout\ & (((\unidade[0]~55_combout\) # (\unidade~96_combout\)))) # (!\unidade[0]~54_combout\ & (\Add12~8_combout\ & (!\unidade[0]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~54_combout\,
	datab => \Add12~8_combout\,
	datac => \unidade[0]~55_combout\,
	datad => \unidade~96_combout\,
	combout => \unidade~97_combout\);

-- Location: LCCOMB_X113_Y16_N16
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (q(4) & (\Add11~7\ $ (GND))) # (!q(4) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((q(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X110_Y17_N30
\unidade~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~98_combout\ = (\unidade[0]~55_combout\ & ((\unidade~97_combout\ & ((\Add11~8_combout\))) # (!\unidade~97_combout\ & (\Add10~8_combout\)))) # (!\unidade[0]~55_combout\ & (((\unidade~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \unidade[0]~55_combout\,
	datac => \unidade~97_combout\,
	datad => \Add11~8_combout\,
	combout => \unidade~98_combout\);

-- Location: LCCOMB_X110_Y18_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (q(4) & ((GND) # (!\Add1~7\))) # (!q(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((q(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X109_Y17_N26
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (q(4) & (\Add0~7\ $ (GND))) # (!q(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((q(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X109_Y17_N8
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

-- Location: LCCOMB_X112_Y17_N26
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

-- Location: LCCOMB_X111_Y16_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (q(4) & (\Add3~7\ $ (GND))) # (!q(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((q(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X112_Y15_N22
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (q(4) & ((GND) # (!\Add5~7\))) # (!q(4) & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((q(4)) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X111_Y15_N26
\unidade~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~87_combout\ = (\unidade[0]~61_combout\ & (\unidade[0]~59_combout\)) # (!\unidade[0]~61_combout\ & ((\unidade[0]~59_combout\ & ((\Add5~8_combout\))) # (!\unidade[0]~59_combout\ & (\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~61_combout\,
	datab => \unidade[0]~59_combout\,
	datac => \Add3~8_combout\,
	datad => \Add5~8_combout\,
	combout => \unidade~87_combout\);

-- Location: LCCOMB_X110_Y15_N26
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (q(4) & (\Add6~7\ $ (GND))) # (!q(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((q(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X110_Y15_N12
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (q(4) & (\Add7~7\ $ (GND))) # (!q(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((q(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X111_Y15_N8
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (q(4) & ((GND) # (!\Add8~7\))) # (!q(4) & (\Add8~7\ $ (GND)))
-- \Add8~9\ = CARRY((q(4)) # (!\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X111_Y15_N20
\unidade~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~88_combout\ = (\unidade[0]~159_combout\ & (((\unidade[0]~63_combout\)))) # (!\unidade[0]~159_combout\ & ((\unidade[0]~63_combout\ & ((\Add9~8_combout\))) # (!\unidade[0]~63_combout\ & (\Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~159_combout\,
	datab => \Add8~8_combout\,
	datac => \unidade[0]~63_combout\,
	datad => \Add9~8_combout\,
	combout => \unidade~88_combout\);

-- Location: LCCOMB_X111_Y15_N18
\unidade~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~89_combout\ = (\unidade[0]~159_combout\ & ((\unidade~88_combout\ & ((\Add7~8_combout\))) # (!\unidade~88_combout\ & (\Add6~8_combout\)))) # (!\unidade[0]~159_combout\ & (((\unidade~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \unidade[0]~159_combout\,
	datac => \Add7~8_combout\,
	datad => \unidade~88_combout\,
	combout => \unidade~89_combout\);

-- Location: LCCOMB_X111_Y15_N16
\unidade~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~90_combout\ = (\unidade[0]~61_combout\ & ((\unidade~87_combout\ & ((\unidade~89_combout\))) # (!\unidade~87_combout\ & (\Add4~8_combout\)))) # (!\unidade[0]~61_combout\ & (((\unidade~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~61_combout\,
	datab => \Add4~8_combout\,
	datac => \unidade~87_combout\,
	datad => \unidade~89_combout\,
	combout => \unidade~90_combout\);

-- Location: LCCOMB_X110_Y17_N10
\unidade~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~91_combout\ = (\unidade[0]~69_combout\ & (((\unidade[0]~67_combout\) # (\unidade~90_combout\)))) # (!\unidade[0]~69_combout\ & (\Add2~8_combout\ & (!\unidade[0]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~69_combout\,
	datab => \Add2~8_combout\,
	datac => \unidade[0]~67_combout\,
	datad => \unidade~90_combout\,
	combout => \unidade~91_combout\);

-- Location: LCCOMB_X110_Y17_N0
\unidade~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~92_combout\ = (\unidade[0]~67_combout\ & ((\unidade~91_combout\ & (\Add1~8_combout\)) # (!\unidade~91_combout\ & ((\Add0~8_combout\))))) # (!\unidade[0]~67_combout\ & (((\unidade~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~67_combout\,
	datab => \Add1~8_combout\,
	datac => \Add0~8_combout\,
	datad => \unidade~91_combout\,
	combout => \unidade~92_combout\);

-- Location: LCCOMB_X110_Y17_N28
\unidade~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~99_combout\ = (\unidade~72_combout\ & ((\unidade~98_combout\) # ((\dezena~15_combout\ & \unidade~92_combout\)))) # (!\unidade~72_combout\ & (\dezena~15_combout\ & ((\unidade~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~72_combout\,
	datab => \dezena~15_combout\,
	datac => \unidade~98_combout\,
	datad => \unidade~92_combout\,
	combout => \unidade~99_combout\);

-- Location: FF_X110_Y17_N29
\unidade[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade~99_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(4));

-- Location: LCCOMB_X109_Y18_N14
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\q[5]~6_combout\ & (\Add10~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add10~9\))
-- \Add10~11\ = CARRY((!\q[5]~6_combout\ & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X109_Y18_N28
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\q[5]~6_combout\ & (\Add12~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add12~9\))
-- \Add12~11\ = CARRY((!\q[5]~6_combout\ & !\Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X109_Y18_N2
\unidade~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~110_combout\ = (\unidade[0]~55_combout\ & ((\Add10~10_combout\) # ((\unidade[0]~54_combout\)))) # (!\unidade[0]~55_combout\ & (((\Add12~10_combout\ & !\unidade[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \Add12~10_combout\,
	datac => \unidade[0]~55_combout\,
	datad => \unidade[0]~54_combout\,
	combout => \unidade~110_combout\);

-- Location: LCCOMB_X113_Y16_N18
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\q[5]~6_combout\ & (\Add11~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add11~9\))
-- \Add11~11\ = CARRY((!\q[5]~6_combout\ & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X109_Y14_N26
\Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (\q[5]~6_combout\ & (!\Add15~9\)) # (!\q[5]~6_combout\ & ((\Add15~9\) # (GND)))
-- \Add15~11\ = CARRY((!\Add15~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X110_Y17_N22
\Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (\q[5]~6_combout\ & (\Add16~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add16~9\))
-- \Add16~11\ = CARRY((!\q[5]~6_combout\ & !\Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X109_Y14_N10
\Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = (\q[5]~6_combout\ & (\Add17~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add17~9\))
-- \Add17~11\ = CARRY((!\q[5]~6_combout\ & !\Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add17~9\,
	combout => \Add17~10_combout\,
	cout => \Add17~11\);

-- Location: LCCOMB_X110_Y16_N28
\Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (\q[5]~6_combout\ & (\Add18~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add18~9\))
-- \Add18~11\ = CARRY((!\q[5]~6_combout\ & !\Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X112_Y18_N24
\unidade~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~107_combout\ = (\unidade[0]~158_combout\ & (((\unidade[0]~49_combout\)))) # (!\unidade[0]~158_combout\ & ((\unidade[0]~49_combout\ & (\Add19~10_combout\)) # (!\unidade[0]~49_combout\ & ((\Add18~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~158_combout\,
	datab => \Add19~10_combout\,
	datac => \unidade[0]~49_combout\,
	datad => \Add18~10_combout\,
	combout => \unidade~107_combout\);

-- Location: LCCOMB_X112_Y18_N14
\unidade~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~108_combout\ = (\unidade[0]~158_combout\ & ((\unidade~107_combout\ & ((\Add17~10_combout\))) # (!\unidade~107_combout\ & (\Add16~10_combout\)))) # (!\unidade[0]~158_combout\ & (((\unidade~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~10_combout\,
	datab => \Add17~10_combout\,
	datac => \unidade[0]~158_combout\,
	datad => \unidade~107_combout\,
	combout => \unidade~108_combout\);

-- Location: LCCOMB_X113_Y14_N28
\Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (\q[5]~6_combout\ & (!\Add14~9\)) # (!\q[5]~6_combout\ & ((\Add14~9\) # (GND)))
-- \Add14~11\ = CARRY((!\Add14~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X112_Y14_N14
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\q[5]~6_combout\ & (!\Add13~9\)) # (!\q[5]~6_combout\ & ((\Add13~9\) # (GND)))
-- \Add13~11\ = CARRY((!\Add13~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X113_Y14_N12
\unidade~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~106_combout\ = (\unidade[0]~154_combout\ & ((\Add14~10_combout\) # ((\unidade[0]~45_combout\)))) # (!\unidade[0]~154_combout\ & (((\Add13~10_combout\ & !\unidade[0]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~10_combout\,
	datab => \Add13~10_combout\,
	datac => \unidade[0]~154_combout\,
	datad => \unidade[0]~45_combout\,
	combout => \unidade~106_combout\);

-- Location: LCCOMB_X112_Y18_N4
\unidade~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~109_combout\ = (\unidade[0]~45_combout\ & ((\unidade~106_combout\ & ((\unidade~108_combout\))) # (!\unidade~106_combout\ & (\Add15~10_combout\)))) # (!\unidade[0]~45_combout\ & (((\unidade~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~10_combout\,
	datab => \unidade[0]~45_combout\,
	datac => \unidade~108_combout\,
	datad => \unidade~106_combout\,
	combout => \unidade~109_combout\);

-- Location: LCCOMB_X112_Y18_N22
\unidade~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~111_combout\ = (\unidade~110_combout\ & ((\Add11~10_combout\) # ((!\unidade[0]~54_combout\)))) # (!\unidade~110_combout\ & (((\unidade~109_combout\ & \unidade[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~110_combout\,
	datab => \Add11~10_combout\,
	datac => \unidade~109_combout\,
	datad => \unidade[0]~54_combout\,
	combout => \unidade~111_combout\);

-- Location: LCCOMB_X110_Y18_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\q[5]~6_combout\ & (\Add1~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\q[5]~6_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X109_Y17_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\q[5]~6_combout\ & (\Add2~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\q[5]~6_combout\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X109_Y17_N28
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\q[5]~6_combout\ & (\Add0~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add0~9\))
-- \Add0~11\ = CARRY((!\q[5]~6_combout\ & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X112_Y18_N28
\unidade~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~104_combout\ = (\unidade[0]~69_combout\ & (((\unidade[0]~67_combout\)))) # (!\unidade[0]~69_combout\ & ((\unidade[0]~67_combout\ & ((\Add0~10_combout\))) # (!\unidade[0]~67_combout\ & (\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add0~10_combout\,
	datac => \unidade[0]~69_combout\,
	datad => \unidade[0]~67_combout\,
	combout => \unidade~104_combout\);

-- Location: LCCOMB_X112_Y15_N24
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\q[5]~6_combout\ & (!\Add5~9\)) # (!\q[5]~6_combout\ & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X110_Y15_N14
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\q[5]~6_combout\ & (\Add7~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\q[5]~6_combout\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X111_Y15_N10
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\q[5]~6_combout\ & (\Add8~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add8~9\))
-- \Add8~11\ = CARRY((!\q[5]~6_combout\ & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X110_Y15_N28
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\q[5]~6_combout\ & (\Add6~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add6~9\))
-- \Add6~11\ = CARRY((!\q[5]~6_combout\ & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X111_Y15_N22
\unidade~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~101_combout\ = (\unidade[0]~159_combout\ & (((\unidade[0]~63_combout\) # (\Add6~10_combout\)))) # (!\unidade[0]~159_combout\ & (\Add8~10_combout\ & (!\unidade[0]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \unidade[0]~159_combout\,
	datac => \unidade[0]~63_combout\,
	datad => \Add6~10_combout\,
	combout => \unidade~101_combout\);

-- Location: LCCOMB_X112_Y18_N8
\unidade~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~102_combout\ = (\unidade[0]~63_combout\ & ((\unidade~101_combout\ & ((\Add7~10_combout\))) # (!\unidade~101_combout\ & (\Add9~10_combout\)))) # (!\unidade[0]~63_combout\ & (((\unidade~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~63_combout\,
	datab => \Add9~10_combout\,
	datac => \Add7~10_combout\,
	datad => \unidade~101_combout\,
	combout => \unidade~102_combout\);

-- Location: LCCOMB_X112_Y17_N28
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\q[5]~6_combout\ & (!\Add4~9\)) # (!\q[5]~6_combout\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X111_Y16_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\q[5]~6_combout\ & (!\Add3~9\)) # (!\q[5]~6_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X112_Y17_N4
\unidade~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~100_combout\ = (\unidade[0]~61_combout\ & ((\Add4~10_combout\) # ((\unidade[0]~59_combout\)))) # (!\unidade[0]~61_combout\ & (((!\unidade[0]~59_combout\ & \Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~61_combout\,
	datab => \Add4~10_combout\,
	datac => \unidade[0]~59_combout\,
	datad => \Add3~10_combout\,
	combout => \unidade~100_combout\);

-- Location: LCCOMB_X112_Y18_N26
\unidade~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~103_combout\ = (\unidade[0]~59_combout\ & ((\unidade~100_combout\ & ((\unidade~102_combout\))) # (!\unidade~100_combout\ & (\Add5~10_combout\)))) # (!\unidade[0]~59_combout\ & (((\unidade~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~59_combout\,
	datab => \Add5~10_combout\,
	datac => \unidade~102_combout\,
	datad => \unidade~100_combout\,
	combout => \unidade~103_combout\);

-- Location: LCCOMB_X112_Y18_N30
\unidade~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~105_combout\ = (\unidade~104_combout\ & ((\Add1~10_combout\) # ((!\unidade[0]~69_combout\)))) # (!\unidade~104_combout\ & (((\unidade[0]~69_combout\ & \unidade~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \unidade~104_combout\,
	datac => \unidade[0]~69_combout\,
	datad => \unidade~103_combout\,
	combout => \unidade~105_combout\);

-- Location: LCCOMB_X112_Y18_N16
\unidade~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~112_combout\ = (\unidade~111_combout\ & ((\unidade~72_combout\) # ((\dezena~15_combout\ & \unidade~105_combout\)))) # (!\unidade~111_combout\ & (\dezena~15_combout\ & ((\unidade~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~111_combout\,
	datab => \dezena~15_combout\,
	datac => \unidade~72_combout\,
	datad => \unidade~105_combout\,
	combout => \unidade~112_combout\);

-- Location: FF_X112_Y18_N17
\unidade[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade~112_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(5));

-- Location: LCCOMB_X109_Y18_N16
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = \q[6]~8_combout\ $ (!\Add10~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	cin => \Add10~11\,
	combout => \Add10~12_combout\);

-- Location: LCCOMB_X109_Y18_N30
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = \q[6]~8_combout\ $ (!\Add12~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add12~11\,
	combout => \Add12~12_combout\);

-- Location: LCCOMB_X113_Y14_N30
\Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = \Add14~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add14~11\,
	combout => \Add14~12_combout\);

-- Location: LCCOMB_X112_Y14_N16
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = \q[6]~8_combout\ $ (\Add13~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add13~11\,
	combout => \Add13~12_combout\);

-- Location: LCCOMB_X109_Y14_N28
\Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = \q[6]~8_combout\ $ (\Add15~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add15~11\,
	combout => \Add15~12_combout\);

-- Location: LCCOMB_X112_Y14_N0
\unidade~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~119_combout\ = (\unidade[0]~154_combout\ & (((\unidade[0]~45_combout\)))) # (!\unidade[0]~154_combout\ & ((\unidade[0]~45_combout\ & ((\Add15~12_combout\))) # (!\unidade[0]~45_combout\ & (\Add13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~154_combout\,
	datab => \Add13~12_combout\,
	datac => \unidade[0]~45_combout\,
	datad => \Add15~12_combout\,
	combout => \unidade~119_combout\);

-- Location: LCCOMB_X109_Y14_N12
\Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~12_combout\ = \q[6]~8_combout\ $ (\Add17~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add17~11\,
	combout => \Add17~12_combout\);

-- Location: LCCOMB_X110_Y17_N24
\Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = \q[6]~8_combout\ $ (\Add16~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	cin => \Add16~11\,
	combout => \Add16~12_combout\);

-- Location: LCCOMB_X110_Y16_N30
\Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = \Add18~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add18~11\,
	combout => \Add18~12_combout\);

-- Location: LCCOMB_X111_Y18_N26
\unidade~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~120_combout\ = (\unidade[0]~158_combout\ & ((\Add16~12_combout\) # ((\unidade[0]~49_combout\)))) # (!\unidade[0]~158_combout\ & (((!\unidade[0]~49_combout\ & \Add18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~158_combout\,
	datab => \Add16~12_combout\,
	datac => \unidade[0]~49_combout\,
	datad => \Add18~12_combout\,
	combout => \unidade~120_combout\);

-- Location: LCCOMB_X111_Y18_N24
\unidade~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~121_combout\ = (\unidade~120_combout\ & ((\Add17~12_combout\) # ((!\unidade[0]~49_combout\)))) # (!\unidade~120_combout\ & (((\Add19~12_combout\ & \unidade[0]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~12_combout\,
	datab => \Add19~12_combout\,
	datac => \unidade~120_combout\,
	datad => \unidade[0]~49_combout\,
	combout => \unidade~121_combout\);

-- Location: LCCOMB_X111_Y18_N22
\unidade~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~122_combout\ = (\unidade[0]~154_combout\ & ((\unidade~119_combout\ & ((\unidade~121_combout\))) # (!\unidade~119_combout\ & (\Add14~12_combout\)))) # (!\unidade[0]~154_combout\ & (((\unidade~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~154_combout\,
	datab => \Add14~12_combout\,
	datac => \unidade~119_combout\,
	datad => \unidade~121_combout\,
	combout => \unidade~122_combout\);

-- Location: LCCOMB_X111_Y18_N4
\unidade~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~123_combout\ = (\unidade[0]~54_combout\ & (((\unidade~122_combout\) # (\unidade[0]~55_combout\)))) # (!\unidade[0]~54_combout\ & (\Add12~12_combout\ & ((!\unidade[0]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~54_combout\,
	datab => \Add12~12_combout\,
	datac => \unidade~122_combout\,
	datad => \unidade[0]~55_combout\,
	combout => \unidade~123_combout\);

-- Location: LCCOMB_X113_Y16_N20
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = \q[6]~8_combout\ $ (!\Add11~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add11~11\,
	combout => \Add11~12_combout\);

-- Location: LCCOMB_X111_Y18_N30
\unidade~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~124_combout\ = (\unidade[0]~55_combout\ & ((\unidade~123_combout\ & ((\Add11~12_combout\))) # (!\unidade~123_combout\ & (\Add10~12_combout\)))) # (!\unidade[0]~55_combout\ & (((\unidade~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => \unidade[0]~55_combout\,
	datac => \unidade~123_combout\,
	datad => \Add11~12_combout\,
	combout => \unidade~124_combout\);

-- Location: LCCOMB_X110_Y18_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X109_Y17_N30
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11\ $ (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X109_Y17_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \q[6]~8_combout\ $ (!\Add2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X112_Y17_N30
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = \q[6]~8_combout\ $ (\Add4~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X112_Y15_N26
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = \Add5~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add5~11\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X111_Y16_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = \Add3~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add3~11\,
	combout => \Add3~12_combout\);

-- Location: LCCOMB_X112_Y15_N10
\unidade~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~113_combout\ = (\unidade[0]~59_combout\ & ((\Add5~12_combout\) # ((\unidade[0]~61_combout\)))) # (!\unidade[0]~59_combout\ & (((\Add3~12_combout\ & !\unidade[0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~59_combout\,
	datab => \Add5~12_combout\,
	datac => \Add3~12_combout\,
	datad => \unidade[0]~61_combout\,
	combout => \unidade~113_combout\);

-- Location: LCCOMB_X110_Y15_N30
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = \Add6~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add6~11\,
	combout => \Add6~12_combout\);

-- Location: LCCOMB_X110_Y15_N16
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = \Add7~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add7~11\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X111_Y15_N12
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = \Add8~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X110_Y15_N0
\unidade~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~114_combout\ = (\unidade[0]~159_combout\ & (\unidade[0]~63_combout\)) # (!\unidade[0]~159_combout\ & ((\unidade[0]~63_combout\ & ((\Add9~12_combout\))) # (!\unidade[0]~63_combout\ & (\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~159_combout\,
	datab => \unidade[0]~63_combout\,
	datac => \Add8~12_combout\,
	datad => \Add9~12_combout\,
	combout => \unidade~114_combout\);

-- Location: LCCOMB_X110_Y15_N2
\unidade~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~115_combout\ = (\unidade[0]~159_combout\ & ((\unidade~114_combout\ & ((\Add7~12_combout\))) # (!\unidade~114_combout\ & (\Add6~12_combout\)))) # (!\unidade[0]~159_combout\ & (((\unidade~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~159_combout\,
	datab => \Add6~12_combout\,
	datac => \Add7~12_combout\,
	datad => \unidade~114_combout\,
	combout => \unidade~115_combout\);

-- Location: LCCOMB_X111_Y18_N6
\unidade~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~116_combout\ = (\unidade[0]~61_combout\ & ((\unidade~113_combout\ & ((\unidade~115_combout\))) # (!\unidade~113_combout\ & (\Add4~12_combout\)))) # (!\unidade[0]~61_combout\ & (((\unidade~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \unidade[0]~61_combout\,
	datac => \unidade~113_combout\,
	datad => \unidade~115_combout\,
	combout => \unidade~116_combout\);

-- Location: LCCOMB_X111_Y18_N28
\unidade~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~117_combout\ = (\unidade[0]~67_combout\ & (((\unidade[0]~69_combout\)))) # (!\unidade[0]~67_combout\ & ((\unidade[0]~69_combout\ & ((\unidade~116_combout\))) # (!\unidade[0]~69_combout\ & (\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~67_combout\,
	datab => \Add2~12_combout\,
	datac => \unidade[0]~69_combout\,
	datad => \unidade~116_combout\,
	combout => \unidade~117_combout\);

-- Location: LCCOMB_X111_Y18_N2
\unidade~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~118_combout\ = (\unidade[0]~67_combout\ & ((\unidade~117_combout\ & (\Add1~12_combout\)) # (!\unidade~117_combout\ & ((\Add0~12_combout\))))) # (!\unidade[0]~67_combout\ & (((\unidade~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[0]~67_combout\,
	datab => \Add1~12_combout\,
	datac => \Add0~12_combout\,
	datad => \unidade~117_combout\,
	combout => \unidade~118_combout\);

-- Location: LCCOMB_X111_Y18_N0
\unidade~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~125_combout\ = (\unidade~72_combout\ & ((\unidade~124_combout\) # ((\dezena~15_combout\ & \unidade~118_combout\)))) # (!\unidade~72_combout\ & (\dezena~15_combout\ & ((\unidade~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~72_combout\,
	datab => \dezena~15_combout\,
	datac => \unidade~124_combout\,
	datad => \unidade~118_combout\,
	combout => \unidade~125_combout\);

-- Location: FF_X111_Y18_N1
\unidade[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \unidade~125_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(6));

-- Location: LCCOMB_X114_Y14_N24
\dezena~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~27_combout\ = (!q(4) & (!\LessThan16~0_combout\ & ((!q(3)) # (!\LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => q(3),
	datac => q(4),
	datad => \LessThan16~0_combout\,
	combout => \dezena~27_combout\);

-- Location: LCCOMB_X114_Y14_N6
\dezena~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~28_combout\ = (\q[6]~8_combout\ & (((\dezena~27_combout\) # (\q[5]~6_combout\)) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \dezena~27_combout\,
	datac => \q[6]~8_combout\,
	datad => \q[5]~6_combout\,
	combout => \dezena~28_combout\);

-- Location: LCCOMB_X113_Y14_N2
\dezena~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~23_combout\ = (q(3) & (((\Equal1~4_combout\) # (q(4))))) # (!q(3) & (((!q(4))) # (!\LessThan9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~4_combout\,
	datab => \Equal1~4_combout\,
	datac => q(3),
	datad => q(4),
	combout => \dezena~23_combout\);

-- Location: LCCOMB_X113_Y14_N14
\dezena~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~35_combout\ = (!\q[5]~6_combout\ & (!\q[6]~8_combout\ & ((!\dezena~23_combout\) # (!\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \LessThan12~0_combout\,
	datac => \q[6]~8_combout\,
	datad => \dezena~23_combout\,
	combout => \dezena~35_combout\);

-- Location: LCCOMB_X113_Y14_N16
\dezena~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~29_combout\ = (q(3) & (((q(4))))) # (!q(3) & ((q(4) & (!\Equal1~4_combout\)) # (!q(4) & ((!\LessThan15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => \Equal1~4_combout\,
	datac => \LessThan15~1_combout\,
	datad => q(4),
	combout => \dezena~29_combout\);

-- Location: LCCOMB_X114_Y14_N4
\dezena~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~30_combout\ = (\dezena~29_combout\ & (\LessThan9~5_combout\ & \q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~29_combout\,
	datac => \LessThan9~5_combout\,
	datad => \q[5]~6_combout\,
	combout => \dezena~30_combout\);

-- Location: LCCOMB_X114_Y14_N30
\dezena~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~31_combout\ = (\dezena~15_combout\ & ((\dezena~28_combout\) # ((\dezena~35_combout\) # (\dezena~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~28_combout\,
	datab => \dezena~35_combout\,
	datac => \dezena~30_combout\,
	datad => \dezena~15_combout\,
	combout => \dezena~31_combout\);

-- Location: LCCOMB_X114_Y14_N8
\unidade~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~126_combout\ = (!\Equal1~6_combout\ & (((\LessThan9~5_combout\ & !\q[5]~6_combout\)) # (!\q[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \LessThan9~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \q[5]~6_combout\,
	combout => \unidade~126_combout\);

-- Location: LCCOMB_X114_Y14_N18
\dezena~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~24_combout\ = (q(4) & (((\LessThan16~0_combout\)))) # (!q(4) & (!\LessThan9~4_combout\ & (q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~4_combout\,
	datab => q(3),
	datac => q(4),
	datad => \LessThan16~0_combout\,
	combout => \dezena~24_combout\);

-- Location: LCCOMB_X114_Y14_N28
\dezena~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~25_combout\ = (\q[5]~6_combout\ & (\dezena~23_combout\)) # (!\q[5]~6_combout\ & (((\dezena~24_combout\) # (!\LessThan15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~23_combout\,
	datab => \dezena~24_combout\,
	datac => \LessThan15~0_combout\,
	datad => \q[5]~6_combout\,
	combout => \dezena~25_combout\);

-- Location: LCCOMB_X113_Y14_N6
\LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (q(2) & ((\q[0]~2_combout\) # (\q[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datac => q(2),
	datad => \q[1]~4_combout\,
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X113_Y14_N8
\unidade[0]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~153_combout\ = (!\q[6]~8_combout\ & (((!\LessThan13~0_combout\) # (!\LessThan12~1_combout\)) # (!\q[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \LessThan12~1_combout\,
	datac => \LessThan13~0_combout\,
	datad => \q[6]~8_combout\,
	combout => \unidade[0]~153_combout\);

-- Location: LCCOMB_X114_Y14_N0
\dezena~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~22_combout\ = (\q[6]~8_combout\ & (\LessThan10~0_combout\ & ((\LessThan15~1_combout\) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan15~1_combout\,
	datad => \LessThan10~0_combout\,
	combout => \dezena~22_combout\);

-- Location: LCCOMB_X114_Y14_N22
\dezena~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~26_combout\ = ((\dezena~22_combout\) # ((\dezena~25_combout\ & \unidade[0]~153_combout\))) # (!\unidade~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~126_combout\,
	datab => \dezena~25_combout\,
	datac => \unidade[0]~153_combout\,
	datad => \dezena~22_combout\,
	combout => \dezena~26_combout\);

-- Location: LCCOMB_X114_Y14_N12
\dezena[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[0]~2_combout\ = \q[0]~1_combout\ $ (((\dezena~31_combout\) # ((\sentido_contagem~input_o\ & \dezena~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \dezena~31_combout\,
	datac => \dezena~26_combout\,
	datad => \q[0]~1_combout\,
	combout => \dezena[0]~2_combout\);

-- Location: FF_X114_Y14_N13
\dezena[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \dezena[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena[0]~_emulated_q\);

-- Location: LCCOMB_X114_Y14_N26
\dezena[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[0]~1_combout\ = (\reset~input_o\ & (\dezena[0]~_emulated_q\ $ (((\q[0]~1_combout\))))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena[0]~_emulated_q\,
	datab => \reset~input_o\,
	datac => \sentido_contagem~input_o\,
	datad => \q[0]~1_combout\,
	combout => \dezena[0]~1_combout\);

-- Location: LCCOMB_X114_Y18_N22
\dezena~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~16_combout\ = (\q[5]~6_combout\ & ((\LessThan11~0_combout\) # ((!\LessThan9~5_combout\)))) # (!\q[5]~6_combout\ & (((\unidade[0]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \unidade[0]~159_combout\,
	datac => \LessThan9~5_combout\,
	datad => \q[5]~6_combout\,
	combout => \dezena~16_combout\);

-- Location: LCCOMB_X114_Y18_N20
\dezena[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[1]~0_combout\ = (\q[6]~8_combout\ & ((\LessThan1~0_combout\))) # (!\q[6]~8_combout\ & (\dezena~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \dezena~16_combout\,
	datad => \LessThan1~0_combout\,
	combout => \dezena[1]~0_combout\);

-- Location: LCCOMB_X113_Y14_N4
\dezena~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~17_combout\ = (q(4) & ((q(3) & ((\LessThan12~1_combout\) # (!\q[5]~6_combout\))) # (!q(3) & (!\q[5]~6_combout\ & \LessThan12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => \q[5]~6_combout\,
	datac => \LessThan12~1_combout\,
	datad => q(4),
	combout => \dezena~17_combout\);

-- Location: LCCOMB_X113_Y14_N10
\dezena~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~18_combout\ = (!\q[6]~8_combout\ & ((\dezena~17_combout\) # ((\q[5]~6_combout\ & \LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \dezena~17_combout\,
	datad => \LessThan14~0_combout\,
	combout => \dezena~18_combout\);

-- Location: LCCOMB_X114_Y14_N14
\dezena~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~19_combout\ = (\unidade~126_combout\ & ((\dezena~18_combout\) # ((\q[6]~8_combout\ & \LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~18_combout\,
	datab => \q[6]~8_combout\,
	datac => \unidade~126_combout\,
	datad => \LessThan10~0_combout\,
	combout => \dezena~19_combout\);

-- Location: FF_X114_Y18_N21
\dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \dezena[1]~0_combout\,
	asdata => \dezena~19_combout\,
	clrn => \reset~input_o\,
	sload => \sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(1));

-- Location: LCCOMB_X113_Y18_N24
\dezena~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~33_combout\ = (\q[5]~6_combout\ & ((q(4)) # ((!\Equal1~4_combout\ & q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => q(3),
	datac => \q[5]~6_combout\,
	datad => q(4),
	combout => \dezena~33_combout\);

-- Location: LCCOMB_X114_Y14_N16
\dezena~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~34_combout\ = (\q[5]~6_combout\ & ((\LessThan15~1_combout\) # ((q(4)) # (q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => \q[5]~6_combout\,
	datac => q(4),
	datad => q(3),
	combout => \dezena~34_combout\);

-- Location: LCCOMB_X114_Y18_N24
\dezena~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~20_combout\ = (\q[6]~8_combout\ & (((\LessThan1~0_combout\) # (\sentido_contagem~input_o\)))) # (!\q[6]~8_combout\ & (\dezena~34_combout\ & ((!\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~34_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan1~0_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena~20_combout\);

-- Location: LCCOMB_X114_Y18_N26
\dezena~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~21_combout\ = (\dezena~20_combout\ & (((\LessThan10~0_combout\) # (!\sentido_contagem~input_o\)))) # (!\dezena~20_combout\ & (\dezena~33_combout\ & ((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~33_combout\,
	datab => \LessThan10~0_combout\,
	datac => \dezena~20_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena~21_combout\);

-- Location: FF_X114_Y18_N27
\dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \dezena~21_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(2));

-- Location: LCCOMB_X112_Y18_N0
\dezena~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~36_combout\ = (!\sentido_contagem~input_o\ & (!\Equal0~1_combout\ & \unidade[0]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datac => \Equal0~1_combout\,
	datad => \unidade[0]~67_combout\,
	combout => \dezena~36_combout\);

-- Location: LCCOMB_X114_Y18_N10
\dezena~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~32_combout\ = (\Equal1~6_combout\) # ((\q[6]~8_combout\ & ((!\LessThan9~5_combout\) # (!\LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan9~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \dezena~32_combout\);

-- Location: LCCOMB_X114_Y18_N14
\dezena[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[3]~4_combout\ = \q[0]~1_combout\ $ (((\dezena~36_combout\) # ((\dezena~32_combout\ & \sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~36_combout\,
	datab => \dezena~32_combout\,
	datac => \q[0]~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena[3]~4_combout\);

-- Location: FF_X114_Y18_N15
\dezena[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \dezena[3]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena[3]~_emulated_q\);

-- Location: LCCOMB_X114_Y18_N28
\dezena[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[3]~3_combout\ = (\reset~input_o\ & (\dezena[3]~_emulated_q\ $ ((\q[0]~1_combout\)))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dezena[3]~_emulated_q\,
	datac => \q[0]~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena[3]~3_combout\);

-- Location: LCCOMB_X114_Y18_N16
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\dezena[3]~3_combout\) # ((dezena(2) & ((!\dezena[0]~1_combout\) # (!dezena(1)))) # (!dezena(2) & (dezena(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (dezena(2) & ((\dezena[3]~3_combout\) # ((dezena(1) & \dezena[0]~1_combout\)))) # (!dezena(2) & ((dezena(1)) # ((\dezena[0]~1_combout\ & !\dezena[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\dezena[0]~1_combout\) # ((dezena(1) & ((\dezena[3]~3_combout\))) # (!dezena(1) & (dezena(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (dezena(2) & ((\dezena[3]~3_combout\) # (dezena(1) $ (!\dezena[0]~1_combout\)))) # (!dezena(2) & ((dezena(1) & ((\dezena[3]~3_combout\))) # (!dezena(1) & (\dezena[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X114_Y18_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (dezena(2) & (((\dezena[3]~3_combout\)))) # (!dezena(2) & (dezena(1) & ((\dezena[3]~3_combout\) # (!\dezena[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X114_Y18_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (dezena(2) & ((\dezena[3]~3_combout\) # (dezena(1) $ (\dezena[0]~1_combout\)))) # (!dezena(2) & (dezena(1) & ((\dezena[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (dezena(1) & (((\dezena[3]~3_combout\)))) # (!dezena(1) & (dezena(2) $ (((\dezena[0]~1_combout\ & !\dezena[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[0]~1_combout\,
	datad => \dezena[3]~3_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y34_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\unidade[3]~2_combout\) # ((unidade(2) & ((!unidade(1)) # (!\unidade[0]~0_combout\))) # (!unidade(2) & ((unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X114_Y34_N14
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

-- Location: LCCOMB_X114_Y34_N12
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\unidade[0]~0_combout\ & ((unidade(1)) # (\unidade[3]~2_combout\ $ (!unidade(2))))) # (!\unidade[0]~0_combout\ & ((unidade(2) & (\unidade[3]~2_combout\)) # (!unidade(2) & ((unidade(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X114_Y34_N2
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

-- Location: LCCOMB_X114_Y34_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\unidade[0]~0_combout\) # ((unidade(1) & (\unidade[3]~2_combout\)) # (!unidade(1) & ((unidade(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X114_Y34_N18
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

-- Location: LCCOMB_X114_Y34_N4
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\unidade[0]~0_combout\ & ((\unidade[3]~2_combout\) # (unidade(2) $ (!unidade(1))))) # (!\unidade[0]~0_combout\ & ((unidade(1) & (\unidade[3]~2_combout\)) # (!unidade(1) & ((unidade(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X114_Y34_N30
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (unidade(6)) # ((unidade(5)) # ((\Mux10~0_combout\) # (unidade(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(6),
	datab => unidade(5),
	datac => \Mux10~0_combout\,
	datad => unidade(4),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X114_Y34_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (unidade(2) & (\unidade[3]~2_combout\)) # (!unidade(2) & (unidade(1) & ((\unidade[3]~2_combout\) # (!\unidade[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X114_Y34_N22
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (unidade(4)) # ((\Mux9~0_combout\) # ((unidade(6)) # (unidade(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => \Mux9~0_combout\,
	datac => unidade(6),
	datad => unidade(5),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X114_Y34_N16
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\unidade[3]~2_combout\ & (((unidade(2)) # (unidade(1))))) # (!\unidade[3]~2_combout\ & (unidade(2) & (\unidade[0]~0_combout\ $ (unidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X114_Y34_N6
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (unidade(4)) # ((unidade(5)) # ((unidade(6)) # (\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(4),
	datab => unidade(5),
	datac => unidade(6),
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X114_Y34_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (unidade(1) & (\unidade[3]~2_combout\)) # (!unidade(1) & (unidade(2) $ (((!\unidade[3]~2_combout\ & \unidade[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~2_combout\,
	datab => \unidade[0]~0_combout\,
	datac => unidade(2),
	datad => unidade(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X114_Y34_N10
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


