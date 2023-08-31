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

-- DATE "08/30/2023 23:14:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
	clock_50mhz : IN std_logic;
	s_decimal : BUFFER std_logic_vector(6 DOWNTO 0);
	s_unidade : BUFFER std_logic_vector(6 DOWNTO 0);
	s_dezena : BUFFER std_logic_vector(6 DOWNTO 0);
	s_clock : BUFFER std_logic;
	s_bcd7s_dezena : BUFFER std_logic_vector(0 TO 6);
	s_bcd7s_infos : BUFFER std_logic_vector(0 TO 6);
	s_bcd7s_unidade : BUFFER std_logic_vector(0 TO 6)
	);
END ContadorDecimal;

-- Design Ports Information
-- s_decimal[0]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[1]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[5]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_decimal[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[0]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[1]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[2]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[3]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[4]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_unidade[6]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[0]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[2]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[4]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_dezena[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_clock	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_dezena[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_unidade[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sentido_contagem	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clock_50mhz : std_logic;
SIGNAL ww_s_decimal : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_clock : std_logic;
SIGNAL ww_s_bcd7s_dezena : std_logic_vector(0 TO 6);
SIGNAL ww_s_bcd7s_infos : std_logic_vector(0 TO 6);
SIGNAL ww_s_bcd7s_unidade : std_logic_vector(0 TO 6);
SIGNAL \clock_50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdiv|b~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \s_clock~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_dezena[0]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[0]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_unidade[0]~output_o\ : std_logic;
SIGNAL \clock_50mhz~input_o\ : std_logic;
SIGNAL \clock_50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|Add0~0_combout\ : std_logic;
SIGNAL \clkdiv|count~10_combout\ : std_logic;
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
SIGNAL \clkdiv|count~8_combout\ : std_logic;
SIGNAL \clkdiv|Add0~13\ : std_logic;
SIGNAL \clkdiv|Add0~14_combout\ : std_logic;
SIGNAL \clkdiv|Add0~15\ : std_logic;
SIGNAL \clkdiv|Add0~16_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkdiv|Add0~17\ : std_logic;
SIGNAL \clkdiv|Add0~18_combout\ : std_logic;
SIGNAL \clkdiv|Add0~19\ : std_logic;
SIGNAL \clkdiv|Add0~20_combout\ : std_logic;
SIGNAL \clkdiv|Add0~21\ : std_logic;
SIGNAL \clkdiv|Add0~22_combout\ : std_logic;
SIGNAL \clkdiv|count~9_combout\ : std_logic;
SIGNAL \clkdiv|Add0~23\ : std_logic;
SIGNAL \clkdiv|Add0~24_combout\ : std_logic;
SIGNAL \clkdiv|count~11_combout\ : std_logic;
SIGNAL \clkdiv|Add0~25\ : std_logic;
SIGNAL \clkdiv|Add0~26_combout\ : std_logic;
SIGNAL \clkdiv|count~12_combout\ : std_logic;
SIGNAL \clkdiv|Add0~27\ : std_logic;
SIGNAL \clkdiv|Add0~28_combout\ : std_logic;
SIGNAL \clkdiv|count~13_combout\ : std_logic;
SIGNAL \clkdiv|Add0~29\ : std_logic;
SIGNAL \clkdiv|Add0~30_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~2_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~31\ : std_logic;
SIGNAL \clkdiv|Add0~32_combout\ : std_logic;
SIGNAL \clkdiv|count~14_combout\ : std_logic;
SIGNAL \clkdiv|Add0~33\ : std_logic;
SIGNAL \clkdiv|Add0~34_combout\ : std_logic;
SIGNAL \clkdiv|Add0~35\ : std_logic;
SIGNAL \clkdiv|Add0~36_combout\ : std_logic;
SIGNAL \clkdiv|count~15_combout\ : std_logic;
SIGNAL \clkdiv|Add0~37\ : std_logic;
SIGNAL \clkdiv|Add0~38_combout\ : std_logic;
SIGNAL \clkdiv|count~16_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkdiv|Add0~39\ : std_logic;
SIGNAL \clkdiv|Add0~40_combout\ : std_logic;
SIGNAL \clkdiv|count~17_combout\ : std_logic;
SIGNAL \clkdiv|Add0~41\ : std_logic;
SIGNAL \clkdiv|Add0~42_combout\ : std_logic;
SIGNAL \clkdiv|count~18_combout\ : std_logic;
SIGNAL \clkdiv|Add0~43\ : std_logic;
SIGNAL \clkdiv|Add0~44_combout\ : std_logic;
SIGNAL \clkdiv|count~19_combout\ : std_logic;
SIGNAL \clkdiv|Add0~45\ : std_logic;
SIGNAL \clkdiv|Add0~46_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~47\ : std_logic;
SIGNAL \clkdiv|Add0~48_combout\ : std_logic;
SIGNAL \clkdiv|count~20_combout\ : std_logic;
SIGNAL \clkdiv|Add0~49\ : std_logic;
SIGNAL \clkdiv|Add0~50_combout\ : std_logic;
SIGNAL \clkdiv|Add0~51\ : std_logic;
SIGNAL \clkdiv|Add0~52_combout\ : std_logic;
SIGNAL \clkdiv|Add0~53\ : std_logic;
SIGNAL \clkdiv|Add0~54_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~7_combout\ : std_logic;
SIGNAL \clkdiv|Add0~55\ : std_logic;
SIGNAL \clkdiv|Add0~56_combout\ : std_logic;
SIGNAL \clkdiv|Add0~57\ : std_logic;
SIGNAL \clkdiv|Add0~58_combout\ : std_logic;
SIGNAL \clkdiv|Add0~59\ : std_logic;
SIGNAL \clkdiv|Add0~60_combout\ : std_logic;
SIGNAL \clkdiv|Add0~61\ : std_logic;
SIGNAL \clkdiv|Add0~62_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~8_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~9_combout\ : std_logic;
SIGNAL \clkdiv|b~0_combout\ : std_logic;
SIGNAL \clkdiv|b~feeder_combout\ : std_logic;
SIGNAL \clkdiv|b~q\ : std_logic;
SIGNAL \clkdiv|b~clkctrl_outclk\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \sentido_contagem~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \q[0]~1_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
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
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \q~18_combout\ : std_logic;
SIGNAL \q[5]~7_combout\ : std_logic;
SIGNAL \q[5]~_emulated_q\ : std_logic;
SIGNAL \q[5]~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \q~19_combout\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \q[6]~9_combout\ : std_logic;
SIGNAL \q[6]~_emulated_q\ : std_logic;
SIGNAL \q[6]~8_combout\ : std_logic;
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
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \q~14_combout\ : std_logic;
SIGNAL \dezena~8_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \q~15_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \unidade[3]~121_combout\ : std_logic;
SIGNAL \unidade[3]~122_combout\ : std_logic;
SIGNAL \unidade[3]~120_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \contar~31_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \contar~29_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \contar~32_combout\ : std_logic;
SIGNAL \unidade[3]~21_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \contar~27_combout\ : std_logic;
SIGNAL \contar~28_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \unidade~92_combout\ : std_logic;
SIGNAL \unidade~93_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \contar~62_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \contar~24_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \contar~25_combout\ : std_logic;
SIGNAL \contar~26_combout\ : std_logic;
SIGNAL \contar~30_combout\ : std_logic;
SIGNAL \unidade[3]~18_combout\ : std_logic;
SIGNAL \unidade[3]~19_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \unidade~91_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \unidade~94_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \contar~63_combout\ : std_logic;
SIGNAL \unidade~95_combout\ : std_logic;
SIGNAL \unidade~96_combout\ : std_logic;
SIGNAL \unidade~97_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \contar~41_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \contar~34_combout\ : std_logic;
SIGNAL \contar~35_combout\ : std_logic;
SIGNAL \contar~36_combout\ : std_logic;
SIGNAL \contar~37_combout\ : std_logic;
SIGNAL \contar~38_combout\ : std_logic;
SIGNAL \unidade[3]~119_combout\ : std_logic;
SIGNAL \contar~39_combout\ : std_logic;
SIGNAL \unidade[3]~30_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \unidade[3]~32_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \contar~43_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \unidade~100_combout\ : std_logic;
SIGNAL \unidade~101_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \contar~40_combout\ : std_logic;
SIGNAL \unidade~99_combout\ : std_logic;
SIGNAL \unidade~102_combout\ : std_logic;
SIGNAL \unidade[3]~27_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \contar~33_combout\ : std_logic;
SIGNAL \contar~64_combout\ : std_logic;
SIGNAL \contar~42_combout\ : std_logic;
SIGNAL \unidade[3]~28_combout\ : std_logic;
SIGNAL \unidade~98_combout\ : std_logic;
SIGNAL \unidade~103_combout\ : std_logic;
SIGNAL \unidade~117_combout\ : std_logic;
SIGNAL \unidade[0]~1_combout\ : std_logic;
SIGNAL \unidade[0]~_emulated_q\ : std_logic;
SIGNAL \unidade[0]~0_combout\ : std_logic;
SIGNAL \unidade[5]~37_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \unidade~31_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \unidade~33_combout\ : std_logic;
SIGNAL \unidade~34_combout\ : std_logic;
SIGNAL \unidade~35_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \unidade~29_combout\ : std_logic;
SIGNAL \unidade~36_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \unidade~22_combout\ : std_logic;
SIGNAL \unidade~23_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \unidade~20_combout\ : std_logic;
SIGNAL \unidade~24_combout\ : std_logic;
SIGNAL \unidade~25_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \unidade~26_combout\ : std_logic;
SIGNAL \unidade~38_combout\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \unidade~40_combout\ : std_logic;
SIGNAL \unidade~41_combout\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \unidade~39_combout\ : std_logic;
SIGNAL \unidade~42_combout\ : std_logic;
SIGNAL \unidade~43_combout\ : std_logic;
SIGNAL \unidade~44_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \unidade~46_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \unidade~47_combout\ : std_logic;
SIGNAL \unidade~48_combout\ : std_logic;
SIGNAL \unidade~49_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \unidade~45_combout\ : std_logic;
SIGNAL \unidade~50_combout\ : std_logic;
SIGNAL \unidade~51_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \unidade~113_combout\ : std_logic;
SIGNAL \unidade~114_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \unidade~112_combout\ : std_logic;
SIGNAL \unidade~115_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \unidade~111_combout\ : std_logic;
SIGNAL \unidade~116_combout\ : std_logic;
SIGNAL \unidade~118_combout\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \unidade~108_combout\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \unidade~105_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \unidade~106_combout\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \unidade~104_combout\ : std_logic;
SIGNAL \unidade~107_combout\ : std_logic;
SIGNAL \unidade~109_combout\ : std_logic;
SIGNAL \unidade~110_combout\ : std_logic;
SIGNAL \unidade[3]~3_combout\ : std_logic;
SIGNAL \unidade[3]~_emulated_q\ : std_logic;
SIGNAL \unidade[3]~2_combout\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \unidade~56_combout\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \unidade~53_combout\ : std_logic;
SIGNAL \unidade~54_combout\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \unidade~52_combout\ : std_logic;
SIGNAL \unidade~55_combout\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \unidade~57_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \unidade~60_combout\ : std_logic;
SIGNAL \unidade~61_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \unidade~59_combout\ : std_logic;
SIGNAL \unidade~62_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \unidade~58_combout\ : std_logic;
SIGNAL \unidade~63_combout\ : std_logic;
SIGNAL \unidade~64_combout\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \unidade~65_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \unidade~66_combout\ : std_logic;
SIGNAL \unidade~67_combout\ : std_logic;
SIGNAL \unidade~68_combout\ : std_logic;
SIGNAL \unidade~69_combout\ : std_logic;
SIGNAL \unidade~70_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \unidade~73_combout\ : std_logic;
SIGNAL \unidade~74_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \unidade~72_combout\ : std_logic;
SIGNAL \unidade~75_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \unidade~71_combout\ : std_logic;
SIGNAL \unidade~76_combout\ : std_logic;
SIGNAL \unidade~77_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \unidade~85_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \unidade~86_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \unidade~87_combout\ : std_logic;
SIGNAL \unidade~88_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \unidade~84_combout\ : std_logic;
SIGNAL \unidade~89_combout\ : std_logic;
SIGNAL \Add17~11\ : std_logic;
SIGNAL \Add17~12_combout\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \unidade~82_combout\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \unidade~79_combout\ : std_logic;
SIGNAL \unidade~80_combout\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \unidade~78_combout\ : std_logic;
SIGNAL \unidade~81_combout\ : std_logic;
SIGNAL \unidade~83_combout\ : std_logic;
SIGNAL \unidade~90_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \contar~57_combout\ : std_logic;
SIGNAL \contar~58_combout\ : std_logic;
SIGNAL \contar~59_combout\ : std_logic;
SIGNAL \contar~60_combout\ : std_logic;
SIGNAL \dezena~14_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \dezena~11_combout\ : std_logic;
SIGNAL \dezena~10_combout\ : std_logic;
SIGNAL \contar~23_combout\ : std_logic;
SIGNAL \dezena~12_combout\ : std_logic;
SIGNAL \dezena~9_combout\ : std_logic;
SIGNAL \contar~11_combout\ : std_logic;
SIGNAL \contar~66_combout\ : std_logic;
SIGNAL \dezena~13_combout\ : std_logic;
SIGNAL \dezena[0]~3_combout\ : std_logic;
SIGNAL \dezena[0]~_emulated_q\ : std_logic;
SIGNAL \dezena[0]~2_combout\ : std_logic;
SIGNAL \contar~44_combout\ : std_logic;
SIGNAL \contar~45_combout\ : std_logic;
SIGNAL \dezena[1]~0_combout\ : std_logic;
SIGNAL \contar~48_combout\ : std_logic;
SIGNAL \contar~46_combout\ : std_logic;
SIGNAL \contar~47_combout\ : std_logic;
SIGNAL \contar~49_combout\ : std_logic;
SIGNAL \contar~50_combout\ : std_logic;
SIGNAL \contar~51_combout\ : std_logic;
SIGNAL \contar~65_combout\ : std_logic;
SIGNAL \contar~52_combout\ : std_logic;
SIGNAL \contar~53_combout\ : std_logic;
SIGNAL \contar~54_combout\ : std_logic;
SIGNAL \dezena[2]~1_combout\ : std_logic;
SIGNAL \contar~55_combout\ : std_logic;
SIGNAL \contar~56_combout\ : std_logic;
SIGNAL \dezena~16_combout\ : std_logic;
SIGNAL \dezena~17_combout\ : std_logic;
SIGNAL \contar~61_combout\ : std_logic;
SIGNAL \dezena~15_combout\ : std_logic;
SIGNAL \dezena[3]~5_combout\ : std_logic;
SIGNAL \dezena[3]~_emulated_q\ : std_logic;
SIGNAL \dezena[3]~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \s_bcd7s_infos~0_combout\ : std_logic;
SIGNAL \s_bcd7s_infos~1_combout\ : std_logic;
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
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_s_bcd7s_infos~0_combout\ : std_logic;
SIGNAL \clkdiv|ALT_INV_b~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_sentido_contagem~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sentido_contagem <= sentido_contagem;
ww_reset <= reset;
ww_clock_50mhz <= clock_50mhz;
s_decimal <= ww_s_decimal;
s_unidade <= ww_s_unidade;
s_dezena <= ww_s_dezena;
s_clock <= ww_s_clock;
s_bcd7s_dezena <= ww_s_bcd7s_dezena;
s_bcd7s_infos <= ww_s_bcd7s_infos;
s_bcd7s_unidade <= ww_s_bcd7s_unidade;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50mhz~input_o\);

\clkdiv|b~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdiv|b~q\);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_s_bcd7s_infos~0_combout\ <= NOT \s_bcd7s_infos~0_combout\;
\clkdiv|ALT_INV_b~clkctrl_outclk\ <= NOT \clkdiv|b~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_sentido_contagem~input_o\ <= NOT \sentido_contagem~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y11_N9
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

-- Location: IOOBUF_X115_Y13_N9
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

-- Location: IOOBUF_X115_Y15_N9
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

-- Location: IOOBUF_X115_Y17_N2
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

-- Location: IOOBUF_X115_Y18_N9
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

-- Location: IOOBUF_X115_Y14_N2
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

-- Location: IOOBUF_X115_Y63_N2
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y34_N23
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

-- Location: IOOBUF_X115_Y35_N23
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

-- Location: IOOBUF_X115_Y11_N2
\s_dezena[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena[0]~2_combout\,
	devoe => ww_devoe,
	o => \s_dezena[0]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
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

-- Location: IOOBUF_X115_Y12_N2
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

-- Location: IOOBUF_X115_Y16_N9
\s_dezena[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezena[3]~4_combout\,
	devoe => ww_devoe,
	o => \s_dezena[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
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

-- Location: IOOBUF_X115_Y23_N2
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

-- Location: IOOBUF_X5_Y73_N2
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

-- Location: IOOBUF_X107_Y73_N9
\s_clock~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkdiv|b~q\,
	devoe => ww_devoe,
	o => \s_clock~output_o\);

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

-- Location: IOOBUF_X115_Y21_N16
\s_bcd7s_infos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_bcd7s_infos~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\s_bcd7s_infos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_bcd7s_infos~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\s_bcd7s_infos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\s_bcd7s_infos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_reset~input_o\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\s_bcd7s_infos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_bcd7s_infos~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\s_bcd7s_infos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_bcd7s_infos~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\s_bcd7s_infos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_bcd7s_infos~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[0]~output_o\);

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

-- Location: IOIBUF_X0_Y36_N15
\clock_50mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50mhz,
	o => \clock_50mhz~input_o\);

-- Location: CLKCTRL_G4
\clock_50mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X102_Y39_N0
\clkdiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~0_combout\ = \clkdiv|count\(0) $ (VCC)
-- \clkdiv|Add0~1\ = CARRY(\clkdiv|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(0),
	datad => VCC,
	combout => \clkdiv|Add0~0_combout\,
	cout => \clkdiv|Add0~1\);

-- Location: LCCOMB_X103_Y39_N0
\clkdiv|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~10_combout\ = (\clkdiv|Add0~0_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Add0~0_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Equal0~9_combout\,
	combout => \clkdiv|count~10_combout\);

-- Location: FF_X102_Y39_N25
\clkdiv|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	asdata => \clkdiv|count~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(0));

-- Location: LCCOMB_X102_Y39_N2
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

-- Location: FF_X102_Y39_N3
\clkdiv|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(1));

-- Location: LCCOMB_X102_Y39_N4
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

-- Location: FF_X102_Y39_N5
\clkdiv|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(2));

-- Location: LCCOMB_X102_Y39_N6
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

-- Location: FF_X102_Y39_N7
\clkdiv|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(3));

-- Location: LCCOMB_X102_Y39_N8
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

-- Location: FF_X102_Y39_N9
\clkdiv|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(4));

-- Location: LCCOMB_X102_Y39_N10
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

-- Location: FF_X102_Y39_N11
\clkdiv|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(5));

-- Location: LCCOMB_X102_Y39_N12
\clkdiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~12_combout\ = (\clkdiv|count\(6) & (\clkdiv|Add0~11\ $ (GND))) # (!\clkdiv|count\(6) & (!\clkdiv|Add0~11\ & VCC))
-- \clkdiv|Add0~13\ = CARRY((\clkdiv|count\(6) & !\clkdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(6),
	datad => VCC,
	cin => \clkdiv|Add0~11\,
	combout => \clkdiv|Add0~12_combout\,
	cout => \clkdiv|Add0~13\);

-- Location: LCCOMB_X103_Y39_N24
\clkdiv|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~8_combout\ = (\clkdiv|Add0~12_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Add0~12_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Equal0~9_combout\,
	combout => \clkdiv|count~8_combout\);

-- Location: FF_X103_Y39_N25
\clkdiv|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(6));

-- Location: LCCOMB_X102_Y39_N14
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

-- Location: FF_X102_Y39_N15
\clkdiv|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(7));

-- Location: LCCOMB_X102_Y39_N16
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

-- Location: FF_X102_Y39_N17
\clkdiv|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(8));

-- Location: LCCOMB_X103_Y39_N26
\clkdiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~0_combout\ = (!\clkdiv|count\(7) & (\clkdiv|count\(6) & (!\clkdiv|count\(8) & !\clkdiv|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(7),
	datab => \clkdiv|count\(6),
	datac => \clkdiv|count\(8),
	datad => \clkdiv|count\(5),
	combout => \clkdiv|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y39_N28
\clkdiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~1_combout\ = (!\clkdiv|count\(1) & (!\clkdiv|count\(3) & (!\clkdiv|count\(2) & !\clkdiv|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(1),
	datab => \clkdiv|count\(3),
	datac => \clkdiv|count\(2),
	datad => \clkdiv|count\(4),
	combout => \clkdiv|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y39_N18
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

-- Location: FF_X102_Y39_N19
\clkdiv|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(9));

-- Location: LCCOMB_X102_Y39_N20
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

-- Location: FF_X102_Y39_N21
\clkdiv|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(10));

-- Location: LCCOMB_X102_Y39_N22
\clkdiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~22_combout\ = (\clkdiv|count\(11) & (!\clkdiv|Add0~21\)) # (!\clkdiv|count\(11) & ((\clkdiv|Add0~21\) # (GND)))
-- \clkdiv|Add0~23\ = CARRY((!\clkdiv|Add0~21\) # (!\clkdiv|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(11),
	datad => VCC,
	cin => \clkdiv|Add0~21\,
	combout => \clkdiv|Add0~22_combout\,
	cout => \clkdiv|Add0~23\);

-- Location: LCCOMB_X103_Y39_N22
\clkdiv|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~9_combout\ = (\clkdiv|Add0~22_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Add0~22_combout\,
	combout => \clkdiv|count~9_combout\);

-- Location: FF_X103_Y39_N23
\clkdiv|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(11));

-- Location: LCCOMB_X102_Y39_N24
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

-- Location: LCCOMB_X103_Y39_N10
\clkdiv|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~11_combout\ = (\clkdiv|Add0~24_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datac => \clkdiv|Add0~24_combout\,
	datad => \clkdiv|Equal0~9_combout\,
	combout => \clkdiv|count~11_combout\);

-- Location: FF_X103_Y39_N11
\clkdiv|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(12));

-- Location: LCCOMB_X102_Y39_N26
\clkdiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~26_combout\ = (\clkdiv|count\(13) & (!\clkdiv|Add0~25\)) # (!\clkdiv|count\(13) & ((\clkdiv|Add0~25\) # (GND)))
-- \clkdiv|Add0~27\ = CARRY((!\clkdiv|Add0~25\) # (!\clkdiv|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datad => VCC,
	cin => \clkdiv|Add0~25\,
	combout => \clkdiv|Add0~26_combout\,
	cout => \clkdiv|Add0~27\);

-- Location: LCCOMB_X103_Y39_N20
\clkdiv|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~12_combout\ = (\clkdiv|Add0~26_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Add0~26_combout\,
	combout => \clkdiv|count~12_combout\);

-- Location: FF_X103_Y39_N21
\clkdiv|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(13));

-- Location: LCCOMB_X102_Y39_N28
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

-- Location: LCCOMB_X103_Y39_N18
\clkdiv|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~13_combout\ = (\clkdiv|Add0~28_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Add0~28_combout\,
	combout => \clkdiv|count~13_combout\);

-- Location: FF_X103_Y39_N19
\clkdiv|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(14));

-- Location: LCCOMB_X102_Y39_N30
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

-- Location: FF_X102_Y39_N31
\clkdiv|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(15));

-- Location: LCCOMB_X103_Y39_N8
\clkdiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~3_combout\ = (\clkdiv|count\(12) & (\clkdiv|count\(14) & (\clkdiv|count\(13) & !\clkdiv|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(12),
	datab => \clkdiv|count\(14),
	datac => \clkdiv|count\(13),
	datad => \clkdiv|count\(15),
	combout => \clkdiv|Equal0~3_combout\);

-- Location: LCCOMB_X103_Y39_N12
\clkdiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~2_combout\ = (\clkdiv|count\(11) & (!\clkdiv|count\(9) & (!\clkdiv|count\(10) & !\clkdiv|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(11),
	datab => \clkdiv|count\(9),
	datac => \clkdiv|count\(10),
	datad => \clkdiv|count\(0),
	combout => \clkdiv|Equal0~2_combout\);

-- Location: LCCOMB_X103_Y39_N30
\clkdiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~4_combout\ = (\clkdiv|Equal0~0_combout\ & (\clkdiv|Equal0~1_combout\ & (\clkdiv|Equal0~3_combout\ & \clkdiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~0_combout\,
	datab => \clkdiv|Equal0~1_combout\,
	datac => \clkdiv|Equal0~3_combout\,
	datad => \clkdiv|Equal0~2_combout\,
	combout => \clkdiv|Equal0~4_combout\);

-- Location: LCCOMB_X102_Y38_N0
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

-- Location: LCCOMB_X103_Y38_N28
\clkdiv|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~14_combout\ = (\clkdiv|Add0~32_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~32_combout\,
	combout => \clkdiv|count~14_combout\);

-- Location: FF_X103_Y38_N29
\clkdiv|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(16));

-- Location: LCCOMB_X102_Y38_N2
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

-- Location: FF_X102_Y38_N3
\clkdiv|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(17));

-- Location: LCCOMB_X102_Y38_N4
\clkdiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~36_combout\ = (\clkdiv|count\(18) & (\clkdiv|Add0~35\ $ (GND))) # (!\clkdiv|count\(18) & (!\clkdiv|Add0~35\ & VCC))
-- \clkdiv|Add0~37\ = CARRY((\clkdiv|count\(18) & !\clkdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(18),
	datad => VCC,
	cin => \clkdiv|Add0~35\,
	combout => \clkdiv|Add0~36_combout\,
	cout => \clkdiv|Add0~37\);

-- Location: LCCOMB_X103_Y38_N12
\clkdiv|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~15_combout\ = (\clkdiv|Add0~36_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~36_combout\,
	combout => \clkdiv|count~15_combout\);

-- Location: FF_X103_Y38_N13
\clkdiv|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(18));

-- Location: LCCOMB_X102_Y38_N6
\clkdiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~38_combout\ = (\clkdiv|count\(19) & (!\clkdiv|Add0~37\)) # (!\clkdiv|count\(19) & ((\clkdiv|Add0~37\) # (GND)))
-- \clkdiv|Add0~39\ = CARRY((!\clkdiv|Add0~37\) # (!\clkdiv|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(19),
	datad => VCC,
	cin => \clkdiv|Add0~37\,
	combout => \clkdiv|Add0~38_combout\,
	cout => \clkdiv|Add0~39\);

-- Location: LCCOMB_X103_Y38_N24
\clkdiv|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~16_combout\ = (\clkdiv|Add0~38_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~38_combout\,
	combout => \clkdiv|count~16_combout\);

-- Location: FF_X103_Y38_N25
\clkdiv|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(19));

-- Location: LCCOMB_X103_Y38_N26
\clkdiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~5_combout\ = (!\clkdiv|count\(17) & (\clkdiv|count\(16) & (\clkdiv|count\(18) & \clkdiv|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(17),
	datab => \clkdiv|count\(16),
	datac => \clkdiv|count\(18),
	datad => \clkdiv|count\(19),
	combout => \clkdiv|Equal0~5_combout\);

-- Location: LCCOMB_X102_Y38_N8
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

-- Location: LCCOMB_X103_Y38_N8
\clkdiv|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~17_combout\ = (\clkdiv|Add0~40_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datac => \clkdiv|Equal0~9_combout\,
	datad => \clkdiv|Add0~40_combout\,
	combout => \clkdiv|count~17_combout\);

-- Location: FF_X103_Y38_N9
\clkdiv|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(20));

-- Location: LCCOMB_X102_Y38_N10
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

-- Location: LCCOMB_X103_Y38_N10
\clkdiv|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~18_combout\ = (\clkdiv|Add0~42_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datac => \clkdiv|Equal0~9_combout\,
	datad => \clkdiv|Add0~42_combout\,
	combout => \clkdiv|count~18_combout\);

-- Location: FF_X103_Y38_N11
\clkdiv|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(21));

-- Location: LCCOMB_X102_Y38_N12
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

-- Location: LCCOMB_X103_Y38_N2
\clkdiv|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~19_combout\ = (\clkdiv|Add0~44_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datac => \clkdiv|Equal0~9_combout\,
	datad => \clkdiv|Add0~44_combout\,
	combout => \clkdiv|count~19_combout\);

-- Location: FF_X103_Y38_N3
\clkdiv|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(22));

-- Location: LCCOMB_X102_Y38_N14
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

-- Location: FF_X102_Y38_N15
\clkdiv|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(23));

-- Location: LCCOMB_X103_Y38_N18
\clkdiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~6_combout\ = (\clkdiv|count\(21) & (\clkdiv|count\(22) & (\clkdiv|count\(20) & !\clkdiv|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(21),
	datab => \clkdiv|count\(22),
	datac => \clkdiv|count\(20),
	datad => \clkdiv|count\(23),
	combout => \clkdiv|Equal0~6_combout\);

-- Location: LCCOMB_X102_Y38_N16
\clkdiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~48_combout\ = (\clkdiv|count\(24) & (\clkdiv|Add0~47\ $ (GND))) # (!\clkdiv|count\(24) & (!\clkdiv|Add0~47\ & VCC))
-- \clkdiv|Add0~49\ = CARRY((\clkdiv|count\(24) & !\clkdiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(24),
	datad => VCC,
	cin => \clkdiv|Add0~47\,
	combout => \clkdiv|Add0~48_combout\,
	cout => \clkdiv|Add0~49\);

-- Location: LCCOMB_X103_Y38_N22
\clkdiv|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~20_combout\ = (\clkdiv|Add0~48_combout\ & ((!\clkdiv|Equal0~9_combout\) # (!\clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~4_combout\,
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~48_combout\,
	combout => \clkdiv|count~20_combout\);

-- Location: FF_X103_Y38_N23
\clkdiv|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|count~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(24));

-- Location: LCCOMB_X102_Y38_N18
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

-- Location: FF_X102_Y38_N19
\clkdiv|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(25));

-- Location: LCCOMB_X102_Y38_N20
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

-- Location: FF_X102_Y38_N21
\clkdiv|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(26));

-- Location: LCCOMB_X102_Y38_N22
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

-- Location: FF_X102_Y38_N23
\clkdiv|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(27));

-- Location: LCCOMB_X103_Y38_N4
\clkdiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~7_combout\ = (\clkdiv|count\(24) & (!\clkdiv|count\(27) & (!\clkdiv|count\(25) & !\clkdiv|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(24),
	datab => \clkdiv|count\(27),
	datac => \clkdiv|count\(25),
	datad => \clkdiv|count\(26),
	combout => \clkdiv|Equal0~7_combout\);

-- Location: LCCOMB_X102_Y38_N24
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

-- Location: FF_X102_Y38_N25
\clkdiv|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(28));

-- Location: LCCOMB_X102_Y38_N26
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

-- Location: FF_X102_Y38_N27
\clkdiv|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(29));

-- Location: LCCOMB_X102_Y38_N28
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

-- Location: FF_X102_Y38_N29
\clkdiv|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(30));

-- Location: LCCOMB_X102_Y38_N30
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

-- Location: FF_X102_Y38_N31
\clkdiv|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(31));

-- Location: LCCOMB_X103_Y38_N20
\clkdiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~8_combout\ = (!\clkdiv|count\(29) & (!\clkdiv|count\(31) & (!\clkdiv|count\(28) & !\clkdiv|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(29),
	datab => \clkdiv|count\(31),
	datac => \clkdiv|count\(28),
	datad => \clkdiv|count\(30),
	combout => \clkdiv|Equal0~8_combout\);

-- Location: LCCOMB_X103_Y38_N14
\clkdiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~9_combout\ = (\clkdiv|Equal0~5_combout\ & (\clkdiv|Equal0~6_combout\ & (\clkdiv|Equal0~7_combout\ & \clkdiv|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~5_combout\,
	datab => \clkdiv|Equal0~6_combout\,
	datac => \clkdiv|Equal0~7_combout\,
	datad => \clkdiv|Equal0~8_combout\,
	combout => \clkdiv|Equal0~9_combout\);

-- Location: LCCOMB_X103_Y38_N6
\clkdiv|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|b~0_combout\ = \clkdiv|b~q\ $ (((\clkdiv|Equal0~9_combout\ & \clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|b~q\,
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|b~0_combout\);

-- Location: LCCOMB_X103_Y38_N30
\clkdiv|b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|b~feeder_combout\ = \clkdiv|b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|b~0_combout\,
	combout => \clkdiv|b~feeder_combout\);

-- Location: FF_X103_Y38_N31
\clkdiv|b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \clkdiv|b~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|b~q\);

-- Location: CLKCTRL_G6
\clkdiv|b~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdiv|b~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdiv|b~clkctrl_outclk\);

-- Location: LCCOMB_X110_Y16_N10
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

-- Location: LCCOMB_X112_Y14_N6
\q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~1_combout\ = (\reset~input_o\ & ((\q[0]~1_combout\))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sentido_contagem~input_o\,
	datac => \reset~input_o\,
	datad => \q[0]~1_combout\,
	combout => \q[0]~1_combout\);

-- Location: LCCOMB_X109_Y14_N18
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

-- Location: LCCOMB_X112_Y14_N26
\q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~3_combout\ = \q[0]~1_combout\ $ (((\sentido_contagem~input_o\ & ((\Add19~0_combout\))) # (!\sentido_contagem~input_o\ & (\Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \q[0]~1_combout\,
	datac => \Add19~0_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q[0]~3_combout\);

-- Location: FF_X112_Y14_N27
\q[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N24
\q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~2_combout\ = (\reset~input_o\ & (\q[0]~_emulated_q\ $ (((\q[0]~1_combout\))))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~_emulated_q\,
	datab => \sentido_contagem~input_o\,
	datac => \reset~input_o\,
	datad => \q[0]~1_combout\,
	combout => \q[0]~2_combout\);

-- Location: LCCOMB_X109_Y14_N20
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

-- Location: LCCOMB_X110_Y16_N12
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

-- Location: LCCOMB_X112_Y14_N22
\q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~5_combout\ = \q[0]~1_combout\ $ (((\sentido_contagem~input_o\ & (\Add19~2_combout\)) # (!\sentido_contagem~input_o\ & ((\Add9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => \q[0]~1_combout\,
	datac => \Add9~2_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q[1]~5_combout\);

-- Location: FF_X112_Y14_N23
\q[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q[1]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N4
\q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~4_combout\ = (\reset~input_o\ & (\q[1]~_emulated_q\ $ (((\q[0]~1_combout\))))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~_emulated_q\,
	datab => \sentido_contagem~input_o\,
	datac => \reset~input_o\,
	datad => \q[0]~1_combout\,
	combout => \q[1]~4_combout\);

-- Location: LCCOMB_X112_Y14_N2
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!q(2) & (!\q[1]~4_combout\ & !\q[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datac => \q[1]~4_combout\,
	datad => \q[0]~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X109_Y14_N22
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

-- Location: LCCOMB_X109_Y14_N24
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

-- Location: LCCOMB_X109_Y14_N26
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

-- Location: LCCOMB_X109_Y14_N28
\Add19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (\q[5]~6_combout\ & (\Add19~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add19~9\))
-- \Add19~11\ = CARRY((!\q[5]~6_combout\ & !\Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X110_Y16_N14
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (q(2) & (\Add9~3\ $ (GND))) # (!q(2) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((q(2) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X110_Y16_N16
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

-- Location: LCCOMB_X110_Y16_N18
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (q(4) & (\Add9~7\ $ (GND))) # (!q(4) & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((q(4) & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X110_Y16_N20
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

-- Location: LCCOMB_X111_Y14_N24
\q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~18_combout\ = (\Add9~10_combout\ & (!\sentido_contagem~input_o\ & !\Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datac => \sentido_contagem~input_o\,
	datad => \Equal0~1_combout\,
	combout => \q~18_combout\);

-- Location: LCCOMB_X112_Y14_N30
\q[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~7_combout\ = \q[0]~1_combout\ $ (((\q~18_combout\) # ((\Add19~10_combout\ & \sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~10_combout\,
	datab => \q[0]~1_combout\,
	datac => \sentido_contagem~input_o\,
	datad => \q~18_combout\,
	combout => \q[5]~7_combout\);

-- Location: FF_X112_Y14_N31
\q[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q[5]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N16
\q[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~6_combout\ = (\reset~input_o\ & (\q[5]~_emulated_q\ $ (((\q[0]~1_combout\))))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~_emulated_q\,
	datab => \sentido_contagem~input_o\,
	datac => \reset~input_o\,
	datad => \q[0]~1_combout\,
	combout => \q[5]~6_combout\);

-- Location: LCCOMB_X109_Y15_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\q[1]~4_combout\ & (!q(4) & (!q(3) & \q[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(4),
	datac => q(3),
	datad => \q[0]~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X109_Y15_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\q[5]~6_combout\ & (\q[6]~8_combout\ & (\Equal0~0_combout\ & !q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \Equal0~0_combout\,
	datad => q(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X110_Y16_N22
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

-- Location: LCCOMB_X111_Y14_N14
\q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~19_combout\ = (!\Equal0~1_combout\ & (!\sentido_contagem~input_o\ & \Add9~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \sentido_contagem~input_o\,
	datad => \Add9~12_combout\,
	combout => \q~19_combout\);

-- Location: LCCOMB_X109_Y14_N30
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

-- Location: LCCOMB_X112_Y14_N14
\q[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~9_combout\ = \q[0]~1_combout\ $ (((\q~19_combout\) # ((\Add19~12_combout\ & \sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~19_combout\,
	datab => \q[0]~1_combout\,
	datac => \Add19~12_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q[6]~9_combout\);

-- Location: FF_X112_Y14_N15
\q[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q[6]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~_emulated_q\);

-- Location: LCCOMB_X112_Y14_N8
\q[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~8_combout\ = (\reset~input_o\ & ((\q[6]~_emulated_q\ $ (\q[0]~1_combout\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \q[6]~_emulated_q\,
	datac => \reset~input_o\,
	datad => \q[0]~1_combout\,
	combout => \q[6]~8_combout\);

-- Location: LCCOMB_X112_Y14_N20
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\q[6]~8_combout\ & !\q[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[6]~8_combout\,
	datad => \q[5]~6_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X109_Y14_N0
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

-- Location: LCCOMB_X112_Y14_N0
\q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~feeder_combout\ = \q~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \q~16_combout\,
	combout => \q[3]~feeder_combout\);

-- Location: FF_X112_Y14_N1
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q[3]~feeder_combout\,
	asdata => \Add9~6_combout\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: LCCOMB_X111_Y14_N18
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!q(4) & !q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datac => q(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X109_Y14_N2
\q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~17_combout\ = (\Add19~8_combout\ & (((!\Equal1~5_combout\) # (!\Equal0~2_combout\)) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add19~8_combout\,
	datad => \Equal1~5_combout\,
	combout => \q~17_combout\);

-- Location: LCCOMB_X111_Y14_N0
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

-- Location: FF_X111_Y14_N1
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q[4]~feeder_combout\,
	asdata => \Add9~8_combout\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: LCCOMB_X111_Y16_N22
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!q(4) & (\Equal1~5_combout\ & (\Equal1~4_combout\ & !q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \Equal1~5_combout\,
	datac => \Equal1~4_combout\,
	datad => q(3),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X112_Y16_N0
\q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~14_combout\ = (\Add19~4_combout\ & \sentido_contagem~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add19~4_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \q~14_combout\);

-- Location: LCCOMB_X112_Y16_N2
\dezena~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~8_combout\ = (!\Equal0~1_combout\ & !\sentido_contagem~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena~8_combout\);

-- Location: LCCOMB_X112_Y16_N28
\q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~15_combout\ = (\Equal1~6_combout\ & (((\dezena~8_combout\ & \Add9~4_combout\)))) # (!\Equal1~6_combout\ & ((\q~14_combout\) # ((\dezena~8_combout\ & \Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \q~14_combout\,
	datac => \dezena~8_combout\,
	datad => \Add9~4_combout\,
	combout => \q~15_combout\);

-- Location: FF_X112_Y16_N29
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \q~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: LCCOMB_X109_Y16_N0
\Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add17~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X109_Y15_N18
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

-- Location: LCCOMB_X113_Y16_N26
\unidade[3]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~121_combout\ = (q(3) & (((!\q[1]~4_combout\) # (!\q[0]~2_combout\)))) # (!q(3) & (((\q[0]~2_combout\) # (\q[1]~4_combout\)) # (!q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(3),
	datac => \q[0]~2_combout\,
	datad => \q[1]~4_combout\,
	combout => \unidade[3]~121_combout\);

-- Location: LCCOMB_X113_Y16_N8
\unidade[3]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~122_combout\ = (q(4) & ((q(2) & ((\unidade[3]~121_combout\))) # (!q(2) & (q(3))))) # (!q(4) & ((q(2) & (!q(3))) # (!q(2) & ((\unidade[3]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(2),
	datac => q(3),
	datad => \unidade[3]~121_combout\,
	combout => \unidade[3]~122_combout\);

-- Location: LCCOMB_X113_Y16_N28
\unidade[3]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~120_combout\ = (!\q[5]~6_combout\ & (!\q[6]~8_combout\ & \unidade[3]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \unidade[3]~122_combout\,
	combout => \unidade[3]~120_combout\);

-- Location: LCCOMB_X112_Y15_N18
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

-- Location: LCCOMB_X112_Y17_N18
\LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (!q(4) & (\Equal1~5_combout\ & ((\Equal1~4_combout\) # (!q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => \Equal1~5_combout\,
	datad => \Equal1~4_combout\,
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X111_Y14_N8
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (q(3) & q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(3),
	datad => q(4),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X111_Y14_N22
\LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (\LessThan9~0_combout\ & ((q(2)) # ((\q[1]~4_combout\ & \q[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(2),
	datac => \LessThan9~0_combout\,
	datad => \q[0]~2_combout\,
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X112_Y17_N24
\contar~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~31_combout\ = (\LessThan10~2_combout\) # ((\q[6]~8_combout\ & ((\q[5]~6_combout\) # (\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \LessThan10~2_combout\,
	datac => \q[6]~8_combout\,
	datad => \LessThan9~2_combout\,
	combout => \contar~31_combout\);

-- Location: LCCOMB_X111_Y14_N28
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (\Equal0~2_combout\ & (((!q(2)) # (!\q[0]~2_combout\)) # (!\q[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => \q[0]~2_combout\,
	datac => \Equal0~2_combout\,
	datad => q(2),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X112_Y17_N14
\contar~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~29_combout\ = (\LessThan10~2_combout\) # ((\q[6]~8_combout\ & ((\q[5]~6_combout\) # (!\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan12~0_combout\,
	datad => \LessThan10~2_combout\,
	combout => \contar~29_combout\);

-- Location: LCCOMB_X113_Y16_N18
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!q(3) & !q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(3),
	datad => q(2),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X113_Y16_N0
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = ((\LessThan11~0_combout\ & (!\q[0]~2_combout\ & !\q[1]~4_combout\))) # (!q(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \LessThan11~0_combout\,
	datac => \q[0]~2_combout\,
	datad => \q[1]~4_combout\,
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X112_Y17_N2
\contar~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~32_combout\ = (\LessThan10~2_combout\) # ((\q[6]~8_combout\ & ((\q[5]~6_combout\) # (!\LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan11~1_combout\,
	datad => \LessThan10~2_combout\,
	combout => \contar~32_combout\);

-- Location: LCCOMB_X112_Y17_N28
\unidade[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~21_combout\ = (\contar~31_combout\) # ((!\contar~29_combout\ & !\contar~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contar~31_combout\,
	datac => \contar~29_combout\,
	datad => \contar~32_combout\,
	combout => \unidade[3]~21_combout\);

-- Location: LCCOMB_X112_Y15_N4
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

-- Location: LCCOMB_X113_Y15_N8
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

-- Location: LCCOMB_X112_Y17_N26
\contar~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~27_combout\ = (\q[5]~6_combout\) # (\LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[5]~6_combout\,
	datad => \LessThan9~2_combout\,
	combout => \contar~27_combout\);

-- Location: LCCOMB_X112_Y17_N16
\contar~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~28_combout\ = (\LessThan10~2_combout\) # ((\q[6]~8_combout\ & ((\contar~27_combout\) # (!\LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \LessThan10~2_combout\,
	datac => \contar~27_combout\,
	datad => \LessThan11~1_combout\,
	combout => \contar~28_combout\);

-- Location: LCCOMB_X111_Y15_N14
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add12~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X112_Y17_N6
\unidade~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~92_combout\ = (\contar~28_combout\ & ((\Add11~0_combout\) # ((\unidade[3]~21_combout\)))) # (!\contar~28_combout\ & (((\Add12~0_combout\ & !\unidade[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => \contar~28_combout\,
	datac => \Add12~0_combout\,
	datad => \unidade[3]~21_combout\,
	combout => \unidade~92_combout\);

-- Location: LCCOMB_X112_Y17_N20
\unidade~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~93_combout\ = (\unidade[3]~21_combout\ & ((\unidade~92_combout\ & (\Add10~0_combout\)) # (!\unidade~92_combout\ & ((\Add13~0_combout\))))) # (!\unidade[3]~21_combout\ & (((\unidade~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \unidade[3]~21_combout\,
	datac => \Add13~0_combout\,
	datad => \unidade~92_combout\,
	combout => \unidade~93_combout\);

-- Location: LCCOMB_X111_Y16_N0
\LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (\q[5]~6_combout\ & ((q(4)) # ((q(3) & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(3),
	datac => \Equal1~4_combout\,
	datad => \q[5]~6_combout\,
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X111_Y14_N20
\contar~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~62_combout\ = (!q(4) & (!\q[5]~6_combout\ & ((\Equal1~4_combout\) # (!q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => \q[5]~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \contar~62_combout\);

-- Location: LCCOMB_X111_Y14_N2
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (!q(2) & ((!\q[0]~2_combout\) # (!\q[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datac => \q[1]~4_combout\,
	datad => \q[0]~2_combout\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X111_Y14_N16
\contar~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~24_combout\ = (q(4) & (\q[5]~6_combout\ & ((q(3)) # (!\LessThan9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => q(4),
	datac => \q[5]~6_combout\,
	datad => \LessThan9~1_combout\,
	combout => \contar~24_combout\);

-- Location: LCCOMB_X111_Y14_N6
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (q(2) & (\LessThan9~0_combout\ & ((\q[1]~4_combout\) # (\q[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(2),
	datac => \LessThan9~0_combout\,
	datad => \q[0]~2_combout\,
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X111_Y14_N4
\contar~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~25_combout\ = (\q[6]~8_combout\) # ((\q[5]~6_combout\ & \LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \LessThan13~0_combout\,
	combout => \contar~25_combout\);

-- Location: LCCOMB_X111_Y17_N26
\contar~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~26_combout\ = (\contar~62_combout\) # ((\LessThan10~2_combout\) # ((\contar~24_combout\) # (\contar~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~62_combout\,
	datab => \LessThan10~2_combout\,
	datac => \contar~24_combout\,
	datad => \contar~25_combout\,
	combout => \contar~26_combout\);

-- Location: LCCOMB_X111_Y14_N10
\contar~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~30_combout\ = (!\q[6]~8_combout\ & (!\contar~62_combout\ & ((!\q[5]~6_combout\) # (!\LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~0_combout\,
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \contar~62_combout\,
	combout => \contar~30_combout\);

-- Location: LCCOMB_X111_Y17_N28
\unidade[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~18_combout\ = (\contar~26_combout\ & (((\contar~29_combout\) # (\contar~28_combout\)) # (!\contar~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~30_combout\,
	datab => \contar~29_combout\,
	datac => \contar~26_combout\,
	datad => \contar~28_combout\,
	combout => \unidade[3]~18_combout\);

-- Location: LCCOMB_X111_Y17_N2
\unidade[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~19_combout\ = (\unidade[3]~18_combout\) # ((!\contar~26_combout\ & ((\q[6]~8_combout\) # (\LessThan15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \LessThan15~2_combout\,
	datac => \contar~26_combout\,
	datad => \unidade[3]~18_combout\,
	combout => \unidade[3]~19_combout\);

-- Location: LCCOMB_X110_Y18_N16
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add14~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X110_Y18_N0
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

-- Location: LCCOMB_X111_Y17_N8
\unidade~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~91_combout\ = (\unidade[3]~19_combout\ & (((\contar~26_combout\)))) # (!\unidade[3]~19_combout\ & ((\contar~26_combout\ & (\Add14~0_combout\)) # (!\contar~26_combout\ & ((\Add16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datab => \unidade[3]~19_combout\,
	datac => \contar~26_combout\,
	datad => \Add16~0_combout\,
	combout => \unidade~91_combout\);

-- Location: LCCOMB_X108_Y18_N4
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

-- Location: LCCOMB_X111_Y17_N22
\unidade~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~94_combout\ = (\unidade[3]~19_combout\ & ((\unidade~91_combout\ & (\unidade~93_combout\)) # (!\unidade~91_combout\ & ((\Add15~0_combout\))))) # (!\unidade[3]~19_combout\ & (((\unidade~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~93_combout\,
	datab => \unidade[3]~19_combout\,
	datac => \unidade~91_combout\,
	datad => \Add15~0_combout\,
	combout => \unidade~94_combout\);

-- Location: LCCOMB_X112_Y17_N0
\LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (!q(3) & (((!\q[1]~4_combout\ & !\q[0]~2_combout\)) # (!q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(3),
	datac => \q[1]~4_combout\,
	datad => \q[0]~2_combout\,
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X109_Y15_N16
\contar~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~63_combout\ = (\q[5]~6_combout\) # ((\q[6]~8_combout\) # ((q(4) & !\LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => q(4),
	datac => \LessThan17~0_combout\,
	datad => \q[6]~8_combout\,
	combout => \contar~63_combout\);

-- Location: LCCOMB_X111_Y17_N20
\unidade~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~95_combout\ = (\unidade[3]~120_combout\ & (((\contar~63_combout\)))) # (!\unidade[3]~120_combout\ & ((\contar~63_combout\ & ((\unidade~94_combout\))) # (!\contar~63_combout\ & (\Add18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~0_combout\,
	datab => \unidade[3]~120_combout\,
	datac => \unidade~94_combout\,
	datad => \contar~63_combout\,
	combout => \unidade~95_combout\);

-- Location: LCCOMB_X111_Y17_N30
\unidade~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~96_combout\ = (\unidade~95_combout\ & ((\Add17~0_combout\) # ((!\unidade[3]~120_combout\)))) # (!\unidade~95_combout\ & (((\Add19~0_combout\ & \unidade[3]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~0_combout\,
	datab => \unidade~95_combout\,
	datac => \Add19~0_combout\,
	datad => \unidade[3]~120_combout\,
	combout => \unidade~96_combout\);

-- Location: LCCOMB_X111_Y17_N4
\unidade~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~97_combout\ = (\Equal1~6_combout\) # (\unidade~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datac => \unidade~96_combout\,
	combout => \unidade~97_combout\);

-- Location: LCCOMB_X110_Y14_N18
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add7~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X112_Y17_N12
\contar~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~41_combout\ = (\q[6]~8_combout\) # ((\LessThan10~2_combout\) # ((\q[5]~6_combout\ & !\LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \q[5]~6_combout\,
	datac => \LessThan12~0_combout\,
	datad => \LessThan10~2_combout\,
	combout => \contar~41_combout\);

-- Location: LCCOMB_X113_Y17_N24
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\q[5]~6_combout\ & (q(4) & ((q(3)) # (!\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => q(4),
	datac => q(3),
	datad => \Equal1~4_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X112_Y14_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\q[0]~2_combout\) # (!\q[1]~4_combout\)) # (!q(3))) # (!q(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(3),
	datac => \q[1]~4_combout\,
	datad => \q[0]~2_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X112_Y14_N18
\contar~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~34_combout\ = (\q[6]~8_combout\ & ((q(4)) # ((\q[5]~6_combout\) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \LessThan1~0_combout\,
	combout => \contar~34_combout\);

-- Location: LCCOMB_X111_Y14_N12
\contar~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~35_combout\ = (\q[6]~8_combout\ & ((\q[5]~6_combout\) # ((\LessThan9~0_combout\ & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~0_combout\,
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \Equal1~4_combout\,
	combout => \contar~35_combout\);

-- Location: LCCOMB_X112_Y14_N28
\contar~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~36_combout\ = (!q(4) & !\q[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(4),
	datad => \q[5]~6_combout\,
	combout => \contar~36_combout\);

-- Location: LCCOMB_X112_Y17_N10
\contar~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~37_combout\ = (\LessThan10~2_combout\) # ((\q[6]~8_combout\ & ((!\contar~36_combout\) # (!\LessThan17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \LessThan17~0_combout\,
	datac => \contar~36_combout\,
	datad => \LessThan10~2_combout\,
	combout => \contar~37_combout\);

-- Location: LCCOMB_X112_Y17_N4
\contar~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~38_combout\ = (\contar~34_combout\) # ((\LessThan10~2_combout\) # ((\contar~35_combout\) # (\contar~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~34_combout\,
	datab => \LessThan10~2_combout\,
	datac => \contar~35_combout\,
	datad => \contar~37_combout\,
	combout => \contar~38_combout\);

-- Location: LCCOMB_X111_Y17_N14
\unidade[3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~119_combout\ = (!\q[6]~8_combout\ & !\LessThan10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datad => \LessThan10~2_combout\,
	combout => \unidade[3]~119_combout\);

-- Location: LCCOMB_X112_Y17_N22
\contar~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~39_combout\ = (\contar~38_combout\) # (((\q[5]~6_combout\ & \LessThan9~2_combout\)) # (!\unidade[3]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \LessThan9~2_combout\,
	datac => \contar~38_combout\,
	datad => \unidade[3]~119_combout\,
	combout => \contar~39_combout\);

-- Location: LCCOMB_X112_Y17_N30
\unidade[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~30_combout\ = (\contar~39_combout\) # ((\contar~41_combout\ & (!\LessThan4~0_combout\ & \unidade[3]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~41_combout\,
	datab => \LessThan4~0_combout\,
	datac => \contar~39_combout\,
	datad => \unidade[3]~119_combout\,
	combout => \unidade[3]~30_combout\);

-- Location: LCCOMB_X109_Y18_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add5~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X109_Y14_N4
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

-- Location: LCCOMB_X113_Y17_N4
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

-- Location: LCCOMB_X112_Y17_N8
\unidade[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~32_combout\ = (\LessThan10~2_combout\) # ((\contar~35_combout\) # ((!\contar~34_combout\ & \contar~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~34_combout\,
	datab => \LessThan10~2_combout\,
	datac => \contar~35_combout\,
	datad => \contar~37_combout\,
	combout => \unidade[3]~32_combout\);

-- Location: LCCOMB_X109_Y17_N18
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

-- Location: LCCOMB_X109_Y17_N4
\contar~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~43_combout\ = (\LessThan10~2_combout\) # ((\contar~35_combout\) # (\contar~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~2_combout\,
	datac => \contar~35_combout\,
	datad => \contar~34_combout\,
	combout => \contar~43_combout\);

-- Location: LCCOMB_X108_Y17_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X109_Y17_N0
\unidade~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~100_combout\ = (\unidade[3]~32_combout\ & (((\contar~43_combout\)))) # (!\unidade[3]~32_combout\ & ((\contar~43_combout\ & ((\Add1~0_combout\))) # (!\contar~43_combout\ & (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~32_combout\,
	datab => \Add3~0_combout\,
	datac => \contar~43_combout\,
	datad => \Add1~0_combout\,
	combout => \unidade~100_combout\);

-- Location: LCCOMB_X109_Y17_N10
\unidade~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~101_combout\ = (\unidade[3]~32_combout\ & ((\unidade~100_combout\ & ((\Add0~0_combout\))) # (!\unidade~100_combout\ & (\Add2~0_combout\)))) # (!\unidade[3]~32_combout\ & (((\unidade~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add0~0_combout\,
	datac => \unidade[3]~32_combout\,
	datad => \unidade~100_combout\,
	combout => \unidade~101_combout\);

-- Location: LCCOMB_X110_Y14_N4
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

-- Location: LCCOMB_X111_Y18_N14
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \q[0]~2_combout\ $ (VCC)
-- \Add6~1\ = CARRY(\q[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~2_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X110_Y17_N14
\contar~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~40_combout\ = ((\contar~39_combout\) # ((\q[5]~6_combout\ & !\LessThan11~1_combout\))) # (!\unidade[3]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \LessThan11~1_combout\,
	datac => \unidade[3]~119_combout\,
	datad => \contar~39_combout\,
	combout => \contar~40_combout\);

-- Location: LCCOMB_X111_Y17_N10
\unidade~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~99_combout\ = (\unidade[3]~30_combout\ & (((\contar~40_combout\)))) # (!\unidade[3]~30_combout\ & ((\contar~40_combout\ & (\Add4~0_combout\)) # (!\contar~40_combout\ & ((\Add6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add6~0_combout\,
	datac => \unidade[3]~30_combout\,
	datad => \contar~40_combout\,
	combout => \unidade~99_combout\);

-- Location: LCCOMB_X111_Y17_N16
\unidade~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~102_combout\ = (\unidade[3]~30_combout\ & ((\unidade~99_combout\ & ((\unidade~101_combout\))) # (!\unidade~99_combout\ & (\Add5~0_combout\)))) # (!\unidade[3]~30_combout\ & (((\unidade~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~30_combout\,
	datab => \Add5~0_combout\,
	datac => \unidade~101_combout\,
	datad => \unidade~99_combout\,
	combout => \unidade~102_combout\);

-- Location: LCCOMB_X108_Y17_N4
\unidade[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~27_combout\ = (\Equal1~5_combout\ & (((!q(3) & \LessThan9~1_combout\)) # (!q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => \Equal1~5_combout\,
	datac => q(4),
	datad => \LessThan9~1_combout\,
	combout => \unidade[3]~27_combout\);

-- Location: LCCOMB_X109_Y16_N14
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

-- Location: LCCOMB_X112_Y14_N10
\contar~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~33_combout\ = (q(4)) # (((q(3) & !\Equal1~4_combout\)) # (!\Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => q(3),
	datac => \Equal1~4_combout\,
	datad => \Equal1~5_combout\,
	combout => \contar~33_combout\);

-- Location: LCCOMB_X111_Y14_N26
\contar~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~64_combout\ = (!\q[6]~8_combout\ & (!\q[5]~6_combout\ & !\LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	datab => \q[5]~6_combout\,
	datad => \LessThan13~0_combout\,
	combout => \contar~64_combout\);

-- Location: LCCOMB_X111_Y17_N12
\contar~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~42_combout\ = (\contar~41_combout\) # ((\LessThan10~2_combout\) # ((\contar~40_combout\) # (!\contar~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~41_combout\,
	datab => \LessThan10~2_combout\,
	datac => \contar~64_combout\,
	datad => \contar~40_combout\,
	combout => \contar~42_combout\);

-- Location: LCCOMB_X111_Y17_N18
\unidade[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~28_combout\ = (\unidade[3]~27_combout\ & (\contar~33_combout\)) # (!\unidade[3]~27_combout\ & ((\contar~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contar~33_combout\,
	datac => \unidade[3]~27_combout\,
	datad => \contar~42_combout\,
	combout => \unidade[3]~28_combout\);

-- Location: LCCOMB_X108_Y17_N6
\unidade~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~98_combout\ = (\unidade[3]~27_combout\ & ((\unidade[3]~28_combout\ & ((\Add8~0_combout\))) # (!\unidade[3]~28_combout\ & (\Add9~0_combout\)))) # (!\unidade[3]~27_combout\ & (((\unidade[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \Add8~0_combout\,
	datac => \unidade[3]~27_combout\,
	datad => \unidade[3]~28_combout\,
	combout => \unidade~98_combout\);

-- Location: LCCOMB_X111_Y17_N6
\unidade~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~103_combout\ = (\unidade[3]~27_combout\ & (((\unidade~98_combout\)))) # (!\unidade[3]~27_combout\ & ((\unidade~98_combout\ & ((\unidade~102_combout\))) # (!\unidade~98_combout\ & (\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \unidade~102_combout\,
	datac => \unidade[3]~27_combout\,
	datad => \unidade~98_combout\,
	combout => \unidade~103_combout\);

-- Location: LCCOMB_X111_Y17_N24
\unidade~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~117_combout\ = (!\Equal0~1_combout\ & (!\sentido_contagem~input_o\ & \unidade~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \sentido_contagem~input_o\,
	datad => \unidade~103_combout\,
	combout => \unidade~117_combout\);

-- Location: LCCOMB_X111_Y17_N0
\unidade[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~1_combout\ = \q[0]~1_combout\ $ (((\unidade~117_combout\) # ((\sentido_contagem~input_o\ & \unidade~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \q[0]~1_combout\,
	datac => \unidade~97_combout\,
	datad => \unidade~117_combout\,
	combout => \unidade[0]~1_combout\);

-- Location: FF_X111_Y17_N1
\unidade[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade[0]~_emulated_q\);

-- Location: LCCOMB_X114_Y17_N4
\unidade[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[0]~0_combout\ = (\reset~input_o\ & (\unidade[0]~_emulated_q\ $ ((\q[0]~1_combout\)))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \unidade[0]~_emulated_q\,
	datac => \q[0]~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \unidade[0]~0_combout\);

-- Location: LCCOMB_X110_Y15_N10
\unidade[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[5]~37_combout\ = (\sentido_contagem~input_o\ & ((\Equal1~6_combout\))) # (!\sentido_contagem~input_o\ & (\Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal1~6_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \unidade[5]~37_combout\);

-- Location: LCCOMB_X109_Y16_N16
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

-- Location: LCCOMB_X110_Y14_N6
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

-- Location: LCCOMB_X111_Y18_N16
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

-- Location: LCCOMB_X110_Y15_N0
\unidade~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~31_combout\ = (\unidade[3]~30_combout\ & (((\contar~40_combout\)))) # (!\unidade[3]~30_combout\ & ((\contar~40_combout\ & (\Add4~2_combout\)) # (!\contar~40_combout\ & ((\Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add6~2_combout\,
	datac => \unidade[3]~30_combout\,
	datad => \contar~40_combout\,
	combout => \unidade~31_combout\);

-- Location: LCCOMB_X109_Y18_N2
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

-- Location: LCCOMB_X113_Y17_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\q[1]~4_combout\ & (\Add0~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\q[1]~4_combout\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X109_Y14_N6
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

-- Location: LCCOMB_X108_Y17_N10
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

-- Location: LCCOMB_X109_Y17_N20
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

-- Location: LCCOMB_X108_Y17_N30
\unidade~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~33_combout\ = (\unidade[3]~32_combout\ & (((\contar~43_combout\)))) # (!\unidade[3]~32_combout\ & ((\contar~43_combout\ & (\Add1~2_combout\)) # (!\contar~43_combout\ & ((\Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \unidade[3]~32_combout\,
	datac => \Add3~2_combout\,
	datad => \contar~43_combout\,
	combout => \unidade~33_combout\);

-- Location: LCCOMB_X109_Y17_N2
\unidade~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~34_combout\ = (\unidade[3]~32_combout\ & ((\unidade~33_combout\ & (\Add0~2_combout\)) # (!\unidade~33_combout\ & ((\Add2~2_combout\))))) # (!\unidade[3]~32_combout\ & (((\unidade~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~32_combout\,
	datab => \Add0~2_combout\,
	datac => \Add2~2_combout\,
	datad => \unidade~33_combout\,
	combout => \unidade~34_combout\);

-- Location: LCCOMB_X110_Y15_N30
\unidade~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~35_combout\ = (\unidade[3]~30_combout\ & ((\unidade~31_combout\ & ((\unidade~34_combout\))) # (!\unidade~31_combout\ & (\Add5~2_combout\)))) # (!\unidade[3]~30_combout\ & (\unidade~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~30_combout\,
	datab => \unidade~31_combout\,
	datac => \Add5~2_combout\,
	datad => \unidade~34_combout\,
	combout => \unidade~35_combout\);

-- Location: LCCOMB_X110_Y14_N20
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\q[1]~4_combout\ & (!\Add7~1\)) # (!\q[1]~4_combout\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X110_Y15_N18
\unidade~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~29_combout\ = (\unidade[3]~27_combout\ & (((\Add9~2_combout\ & !\unidade[3]~28_combout\)))) # (!\unidade[3]~27_combout\ & ((\Add7~2_combout\) # ((\unidade[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~27_combout\,
	datab => \Add7~2_combout\,
	datac => \Add9~2_combout\,
	datad => \unidade[3]~28_combout\,
	combout => \unidade~29_combout\);

-- Location: LCCOMB_X110_Y15_N4
\unidade~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~36_combout\ = (\unidade[3]~28_combout\ & ((\unidade~29_combout\ & ((\unidade~35_combout\))) # (!\unidade~29_combout\ & (\Add8~2_combout\)))) # (!\unidade[3]~28_combout\ & (((\unidade~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~28_combout\,
	datab => \Add8~2_combout\,
	datac => \unidade~35_combout\,
	datad => \unidade~29_combout\,
	combout => \unidade~36_combout\);

-- Location: LCCOMB_X109_Y15_N20
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

-- Location: LCCOMB_X108_Y18_N6
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (\q[1]~4_combout\ & (\Add15~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add15~1\))
-- \Add15~3\ = CARRY((!\q[1]~4_combout\ & !\Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X112_Y15_N6
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\q[1]~4_combout\ & (\Add13~1\ & VCC)) # (!\q[1]~4_combout\ & (!\Add13~1\))
-- \Add13~3\ = CARRY((!\q[1]~4_combout\ & !\Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X112_Y15_N20
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

-- Location: LCCOMB_X113_Y15_N10
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

-- Location: LCCOMB_X111_Y15_N16
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

-- Location: LCCOMB_X111_Y15_N28
\unidade~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~22_combout\ = (\unidade[3]~21_combout\ & (((\contar~28_combout\)))) # (!\unidade[3]~21_combout\ & ((\contar~28_combout\ & (\Add11~2_combout\)) # (!\contar~28_combout\ & ((\Add12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add12~2_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \contar~28_combout\,
	combout => \unidade~22_combout\);

-- Location: LCCOMB_X111_Y15_N2
\unidade~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~23_combout\ = (\unidade[3]~21_combout\ & ((\unidade~22_combout\ & ((\Add10~2_combout\))) # (!\unidade~22_combout\ & (\Add13~2_combout\)))) # (!\unidade[3]~21_combout\ & (((\unidade~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~21_combout\,
	datab => \Add13~2_combout\,
	datac => \Add10~2_combout\,
	datad => \unidade~22_combout\,
	combout => \unidade~23_combout\);

-- Location: LCCOMB_X110_Y18_N2
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

-- Location: LCCOMB_X110_Y18_N18
\Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (\q[1]~4_combout\ & (!\Add14~1\)) # (!\q[1]~4_combout\ & ((\Add14~1\) # (GND)))
-- \Add14~3\ = CARRY((!\Add14~1\) # (!\q[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[1]~4_combout\,
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X110_Y18_N30
\unidade~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~20_combout\ = (\contar~26_combout\ & (((\Add14~2_combout\) # (\unidade[3]~19_combout\)))) # (!\contar~26_combout\ & (\Add16~2_combout\ & ((!\unidade[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datab => \Add14~2_combout\,
	datac => \contar~26_combout\,
	datad => \unidade[3]~19_combout\,
	combout => \unidade~20_combout\);

-- Location: LCCOMB_X109_Y15_N12
\unidade~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~24_combout\ = (\unidade[3]~19_combout\ & ((\unidade~20_combout\ & ((\unidade~23_combout\))) # (!\unidade~20_combout\ & (\Add15~2_combout\)))) # (!\unidade[3]~19_combout\ & (((\unidade~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~2_combout\,
	datab => \unidade[3]~19_combout\,
	datac => \unidade~23_combout\,
	datad => \unidade~20_combout\,
	combout => \unidade~24_combout\);

-- Location: LCCOMB_X109_Y15_N14
\unidade~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~25_combout\ = (\contar~63_combout\ & (((\unidade[3]~120_combout\) # (\unidade~24_combout\)))) # (!\contar~63_combout\ & (\Add18~2_combout\ & (!\unidade[3]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~63_combout\,
	datab => \Add18~2_combout\,
	datac => \unidade[3]~120_combout\,
	datad => \unidade~24_combout\,
	combout => \unidade~25_combout\);

-- Location: LCCOMB_X109_Y16_N2
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

-- Location: LCCOMB_X109_Y15_N8
\unidade~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~26_combout\ = (\unidade[3]~120_combout\ & ((\unidade~25_combout\ & ((\Add17~2_combout\))) # (!\unidade~25_combout\ & (\Add19~2_combout\)))) # (!\unidade[3]~120_combout\ & (((\unidade~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => \unidade[3]~120_combout\,
	datac => \unidade~25_combout\,
	datad => \Add17~2_combout\,
	combout => \unidade~26_combout\);

-- Location: LCCOMB_X110_Y15_N16
\unidade~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~38_combout\ = (!\unidade[5]~37_combout\ & ((\sentido_contagem~input_o\ & ((\unidade~26_combout\))) # (!\sentido_contagem~input_o\ & (\unidade~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[5]~37_combout\,
	datab => \sentido_contagem~input_o\,
	datac => \unidade~36_combout\,
	datad => \unidade~26_combout\,
	combout => \unidade~38_combout\);

-- Location: FF_X110_Y15_N17
\unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade~38_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(1));

-- Location: LCCOMB_X109_Y16_N4
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

-- Location: LCCOMB_X109_Y15_N22
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

-- Location: LCCOMB_X112_Y15_N8
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

-- Location: LCCOMB_X112_Y15_N22
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (q(2) & ((GND) # (!\Add10~3\))) # (!q(2) & (\Add10~3\ $ (GND)))
-- \Add10~5\ = CARRY((q(2)) # (!\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X113_Y15_N12
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

-- Location: LCCOMB_X111_Y15_N18
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

-- Location: LCCOMB_X111_Y15_N0
\unidade~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~40_combout\ = (\unidade[3]~21_combout\ & (((\contar~28_combout\)))) # (!\unidade[3]~21_combout\ & ((\contar~28_combout\ & (\Add11~4_combout\)) # (!\contar~28_combout\ & ((\Add12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \Add12~4_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \contar~28_combout\,
	combout => \unidade~40_combout\);

-- Location: LCCOMB_X110_Y16_N6
\unidade~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~41_combout\ = (\unidade[3]~21_combout\ & ((\unidade~40_combout\ & ((\Add10~4_combout\))) # (!\unidade~40_combout\ & (\Add13~4_combout\)))) # (!\unidade[3]~21_combout\ & (((\unidade~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Add10~4_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \unidade~40_combout\,
	combout => \unidade~41_combout\);

-- Location: LCCOMB_X108_Y18_N8
\Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = (q(2) & ((GND) # (!\Add15~3\))) # (!q(2) & (\Add15~3\ $ (GND)))
-- \Add15~5\ = CARRY((q(2)) # (!\Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X110_Y18_N20
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

-- Location: LCCOMB_X110_Y18_N4
\Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = (q(2) & (\Add16~3\ $ (GND))) # (!q(2) & (!\Add16~3\ & VCC))
-- \Add16~5\ = CARRY((q(2) & !\Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X110_Y18_N14
\unidade~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~39_combout\ = (\contar~26_combout\ & ((\Add14~4_combout\) # ((\unidade[3]~19_combout\)))) # (!\contar~26_combout\ & (((\Add16~4_combout\ & !\unidade[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~4_combout\,
	datab => \Add16~4_combout\,
	datac => \contar~26_combout\,
	datad => \unidade[3]~19_combout\,
	combout => \unidade~39_combout\);

-- Location: LCCOMB_X110_Y16_N8
\unidade~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~42_combout\ = (\unidade[3]~19_combout\ & ((\unidade~39_combout\ & (\unidade~41_combout\)) # (!\unidade~39_combout\ & ((\Add15~4_combout\))))) # (!\unidade[3]~19_combout\ & (((\unidade~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~41_combout\,
	datab => \Add15~4_combout\,
	datac => \unidade[3]~19_combout\,
	datad => \unidade~39_combout\,
	combout => \unidade~42_combout\);

-- Location: LCCOMB_X110_Y16_N26
\unidade~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~43_combout\ = (\contar~63_combout\ & (((\unidade~42_combout\) # (\unidade[3]~120_combout\)))) # (!\contar~63_combout\ & (\Add18~4_combout\ & ((!\unidade[3]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~4_combout\,
	datab => \contar~63_combout\,
	datac => \unidade~42_combout\,
	datad => \unidade[3]~120_combout\,
	combout => \unidade~43_combout\);

-- Location: LCCOMB_X110_Y16_N4
\unidade~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~44_combout\ = (\unidade~43_combout\ & (((\Add17~4_combout\) # (!\unidade[3]~120_combout\)))) # (!\unidade~43_combout\ & (\Add19~4_combout\ & ((\unidade[3]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => \Add17~4_combout\,
	datac => \unidade~43_combout\,
	datad => \unidade[3]~120_combout\,
	combout => \unidade~44_combout\);

-- Location: LCCOMB_X110_Y14_N22
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

-- Location: LCCOMB_X110_Y14_N8
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (q(2) & ((GND) # (!\Add4~3\))) # (!q(2) & (\Add4~3\ $ (GND)))
-- \Add4~5\ = CARRY((q(2)) # (!\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X111_Y18_N18
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

-- Location: LCCOMB_X109_Y18_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (q(2) & (\Add5~3\ $ (GND))) # (!q(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((q(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X110_Y16_N2
\unidade~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~46_combout\ = (\unidade[3]~30_combout\ & (((\Add5~4_combout\) # (\contar~40_combout\)))) # (!\unidade[3]~30_combout\ & (\Add6~4_combout\ & ((!\contar~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add5~4_combout\,
	datac => \unidade[3]~30_combout\,
	datad => \contar~40_combout\,
	combout => \unidade~46_combout\);

-- Location: LCCOMB_X109_Y14_N8
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

-- Location: LCCOMB_X113_Y17_N8
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

-- Location: LCCOMB_X109_Y17_N22
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (q(2) & ((GND) # (!\Add3~3\))) # (!q(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((q(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X108_Y17_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (q(2) & (\Add1~3\ $ (GND))) # (!q(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((q(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X109_Y17_N16
\unidade~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~47_combout\ = (\contar~43_combout\ & (((\unidade[3]~32_combout\) # (\Add1~4_combout\)))) # (!\contar~43_combout\ & (\Add3~4_combout\ & (!\unidade[3]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \contar~43_combout\,
	datac => \unidade[3]~32_combout\,
	datad => \Add1~4_combout\,
	combout => \unidade~47_combout\);

-- Location: LCCOMB_X109_Y17_N14
\unidade~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~48_combout\ = (\unidade[3]~32_combout\ & ((\unidade~47_combout\ & ((\Add0~4_combout\))) # (!\unidade~47_combout\ & (\Add2~4_combout\)))) # (!\unidade[3]~32_combout\ & (((\unidade~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~32_combout\,
	datab => \Add2~4_combout\,
	datac => \Add0~4_combout\,
	datad => \unidade~47_combout\,
	combout => \unidade~48_combout\);

-- Location: LCCOMB_X110_Y16_N0
\unidade~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~49_combout\ = (\unidade~46_combout\ & (((\unidade~48_combout\) # (!\contar~40_combout\)))) # (!\unidade~46_combout\ & (\Add4~4_combout\ & ((\contar~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \unidade~46_combout\,
	datac => \unidade~48_combout\,
	datad => \contar~40_combout\,
	combout => \unidade~49_combout\);

-- Location: LCCOMB_X109_Y16_N18
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (q(2) & ((GND) # (!\Add8~3\))) # (!q(2) & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((q(2)) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X110_Y16_N24
\unidade~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~45_combout\ = (\unidade[3]~27_combout\ & ((\unidade[3]~28_combout\ & (\Add8~4_combout\)) # (!\unidade[3]~28_combout\ & ((\Add9~4_combout\))))) # (!\unidade[3]~27_combout\ & (((\unidade[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \Add9~4_combout\,
	datac => \unidade[3]~27_combout\,
	datad => \unidade[3]~28_combout\,
	combout => \unidade~45_combout\);

-- Location: LCCOMB_X110_Y16_N30
\unidade~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~50_combout\ = (\unidade[3]~27_combout\ & (((\unidade~45_combout\)))) # (!\unidade[3]~27_combout\ & ((\unidade~45_combout\ & ((\unidade~49_combout\))) # (!\unidade~45_combout\ & (\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \unidade~49_combout\,
	datac => \unidade[3]~27_combout\,
	datad => \unidade~45_combout\,
	combout => \unidade~50_combout\);

-- Location: LCCOMB_X110_Y16_N28
\unidade~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~51_combout\ = (!\unidade[5]~37_combout\ & ((\sentido_contagem~input_o\ & (\unidade~44_combout\)) # (!\sentido_contagem~input_o\ & ((\unidade~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \unidade[5]~37_combout\,
	datac => \unidade~44_combout\,
	datad => \unidade~50_combout\,
	combout => \unidade~51_combout\);

-- Location: FF_X110_Y16_N29
\unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade~51_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(2));

-- Location: LCCOMB_X109_Y16_N20
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

-- Location: LCCOMB_X109_Y18_N6
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

-- Location: LCCOMB_X113_Y17_N10
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

-- Location: LCCOMB_X109_Y14_N10
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

-- Location: LCCOMB_X109_Y17_N24
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (q(3) & (!\Add3~5\)) # (!q(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X108_Y17_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (q(3) & (!\Add1~5\)) # (!q(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X109_Y17_N12
\unidade~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~113_combout\ = (\unidade[3]~32_combout\ & (((\contar~43_combout\)))) # (!\unidade[3]~32_combout\ & ((\contar~43_combout\ & ((\Add1~6_combout\))) # (!\contar~43_combout\ & (\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~32_combout\,
	datab => \Add3~6_combout\,
	datac => \contar~43_combout\,
	datad => \Add1~6_combout\,
	combout => \unidade~113_combout\);

-- Location: LCCOMB_X110_Y17_N30
\unidade~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~114_combout\ = (\unidade[3]~32_combout\ & ((\unidade~113_combout\ & (\Add0~6_combout\)) # (!\unidade~113_combout\ & ((\Add2~6_combout\))))) # (!\unidade[3]~32_combout\ & (((\unidade~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add2~6_combout\,
	datac => \unidade[3]~32_combout\,
	datad => \unidade~113_combout\,
	combout => \unidade~114_combout\);

-- Location: LCCOMB_X111_Y18_N20
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (q(3) & (!\Add6~5\)) # (!q(3) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X110_Y14_N10
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (q(3) & (\Add4~5\ & VCC)) # (!q(3) & (!\Add4~5\))
-- \Add4~7\ = CARRY((!q(3) & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X110_Y17_N12
\unidade~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~112_combout\ = (\contar~40_combout\ & (((\Add4~6_combout\) # (\unidade[3]~30_combout\)))) # (!\contar~40_combout\ & (\Add6~6_combout\ & ((!\unidade[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Add4~6_combout\,
	datac => \contar~40_combout\,
	datad => \unidade[3]~30_combout\,
	combout => \unidade~112_combout\);

-- Location: LCCOMB_X110_Y17_N20
\unidade~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~115_combout\ = (\unidade[3]~30_combout\ & ((\unidade~112_combout\ & ((\unidade~114_combout\))) # (!\unidade~112_combout\ & (\Add5~6_combout\)))) # (!\unidade[3]~30_combout\ & (((\unidade~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~30_combout\,
	datab => \Add5~6_combout\,
	datac => \unidade~114_combout\,
	datad => \unidade~112_combout\,
	combout => \unidade~115_combout\);

-- Location: LCCOMB_X110_Y14_N24
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

-- Location: LCCOMB_X110_Y15_N12
\unidade~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~111_combout\ = (\unidade[3]~27_combout\ & (\Add9~6_combout\ & ((!\unidade[3]~28_combout\)))) # (!\unidade[3]~27_combout\ & (((\Add7~6_combout\) # (\unidade[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~27_combout\,
	datab => \Add9~6_combout\,
	datac => \Add7~6_combout\,
	datad => \unidade[3]~28_combout\,
	combout => \unidade~111_combout\);

-- Location: LCCOMB_X110_Y15_N6
\unidade~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~116_combout\ = (\unidade[3]~28_combout\ & ((\unidade~111_combout\ & ((\unidade~115_combout\))) # (!\unidade~111_combout\ & (\Add8~6_combout\)))) # (!\unidade[3]~28_combout\ & (((\unidade~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~28_combout\,
	datab => \Add8~6_combout\,
	datac => \unidade~115_combout\,
	datad => \unidade~111_combout\,
	combout => \unidade~116_combout\);

-- Location: LCCOMB_X110_Y15_N8
\unidade~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~118_combout\ = (!\sentido_contagem~input_o\ & (!\Equal0~1_combout\ & \unidade~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sentido_contagem~input_o\,
	datac => \Equal0~1_combout\,
	datad => \unidade~116_combout\,
	combout => \unidade~118_combout\);

-- Location: LCCOMB_X109_Y15_N24
\Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (q(3) & (!\Add18~5\)) # (!q(3) & ((\Add18~5\) # (GND)))
-- \Add18~7\ = CARRY((!\Add18~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X109_Y15_N6
\unidade~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~108_combout\ = (\contar~63_combout\ & (((\unidade[3]~120_combout\)))) # (!\contar~63_combout\ & ((\unidade[3]~120_combout\ & ((\Add19~6_combout\))) # (!\unidade[3]~120_combout\ & (\Add18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~6_combout\,
	datab => \contar~63_combout\,
	datac => \unidade[3]~120_combout\,
	datad => \Add19~6_combout\,
	combout => \unidade~108_combout\);

-- Location: LCCOMB_X109_Y16_N6
\Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (q(3) & (\Add17~5\ & VCC)) # (!q(3) & (!\Add17~5\))
-- \Add17~7\ = CARRY((!q(3) & !\Add17~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X108_Y18_N10
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

-- Location: LCCOMB_X112_Y15_N10
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (q(3) & (!\Add13~5\)) # (!q(3) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X113_Y15_N14
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (q(3) & (\Add11~5\ & VCC)) # (!q(3) & (!\Add11~5\))
-- \Add11~7\ = CARRY((!q(3) & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X111_Y15_N20
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

-- Location: LCCOMB_X111_Y15_N8
\unidade~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~105_combout\ = (\unidade[3]~21_combout\ & (((\contar~28_combout\)))) # (!\unidade[3]~21_combout\ & ((\contar~28_combout\ & (\Add11~6_combout\)) # (!\contar~28_combout\ & ((\Add12~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Add12~6_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \contar~28_combout\,
	combout => \unidade~105_combout\);

-- Location: LCCOMB_X112_Y15_N24
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (q(3) & (!\Add10~5\)) # (!q(3) & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X111_Y15_N10
\unidade~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~106_combout\ = (\unidade[3]~21_combout\ & ((\unidade~105_combout\ & ((\Add10~6_combout\))) # (!\unidade~105_combout\ & (\Add13~6_combout\)))) # (!\unidade[3]~21_combout\ & (((\unidade~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~21_combout\,
	datab => \Add13~6_combout\,
	datac => \unidade~105_combout\,
	datad => \Add10~6_combout\,
	combout => \unidade~106_combout\);

-- Location: LCCOMB_X110_Y18_N6
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

-- Location: LCCOMB_X110_Y18_N22
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

-- Location: LCCOMB_X110_Y15_N24
\unidade~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~104_combout\ = (\unidade[3]~19_combout\ & (((\contar~26_combout\)))) # (!\unidade[3]~19_combout\ & ((\contar~26_combout\ & ((\Add14~6_combout\))) # (!\contar~26_combout\ & (\Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~6_combout\,
	datab => \Add14~6_combout\,
	datac => \unidade[3]~19_combout\,
	datad => \contar~26_combout\,
	combout => \unidade~104_combout\);

-- Location: LCCOMB_X110_Y15_N2
\unidade~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~107_combout\ = (\unidade[3]~19_combout\ & ((\unidade~104_combout\ & ((\unidade~106_combout\))) # (!\unidade~104_combout\ & (\Add15~6_combout\)))) # (!\unidade[3]~19_combout\ & (((\unidade~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~19_combout\,
	datab => \Add15~6_combout\,
	datac => \unidade~106_combout\,
	datad => \unidade~104_combout\,
	combout => \unidade~107_combout\);

-- Location: LCCOMB_X110_Y15_N28
\unidade~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~109_combout\ = (\contar~63_combout\ & ((\unidade~108_combout\ & (\Add17~6_combout\)) # (!\unidade~108_combout\ & ((\unidade~107_combout\))))) # (!\contar~63_combout\ & (\unidade~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~63_combout\,
	datab => \unidade~108_combout\,
	datac => \Add17~6_combout\,
	datad => \unidade~107_combout\,
	combout => \unidade~109_combout\);

-- Location: LCCOMB_X110_Y15_N26
\unidade~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~110_combout\ = (\Equal1~6_combout\) # (\unidade~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~6_combout\,
	datad => \unidade~109_combout\,
	combout => \unidade~110_combout\);

-- Location: LCCOMB_X110_Y15_N20
\unidade[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade[3]~3_combout\ = \q[0]~1_combout\ $ (((\unidade~118_combout\) # ((\sentido_contagem~input_o\ & \unidade~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[0]~1_combout\,
	datab => \sentido_contagem~input_o\,
	datac => \unidade~118_combout\,
	datad => \unidade~110_combout\,
	combout => \unidade[3]~3_combout\);

-- Location: FF_X110_Y15_N21
\unidade[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unidade[3]~_emulated_q\);

-- Location: LCCOMB_X110_Y15_N14
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

-- Location: LCCOMB_X109_Y15_N26
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

-- Location: LCCOMB_X109_Y15_N10
\unidade~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~56_combout\ = (\contar~63_combout\ & (((\unidade[3]~120_combout\)))) # (!\contar~63_combout\ & ((\unidade[3]~120_combout\ & ((\Add19~8_combout\))) # (!\unidade[3]~120_combout\ & (\Add18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~8_combout\,
	datab => \contar~63_combout\,
	datac => \unidade[3]~120_combout\,
	datad => \Add19~8_combout\,
	combout => \unidade~56_combout\);

-- Location: LCCOMB_X108_Y18_N12
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

-- Location: LCCOMB_X112_Y15_N26
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

-- Location: LCCOMB_X112_Y15_N12
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (q(4) & (\Add13~7\ $ (GND))) # (!q(4) & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((q(4) & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X113_Y15_N16
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

-- Location: LCCOMB_X111_Y15_N22
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

-- Location: LCCOMB_X111_Y15_N6
\unidade~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~53_combout\ = (\unidade[3]~21_combout\ & (((\contar~28_combout\)))) # (!\unidade[3]~21_combout\ & ((\contar~28_combout\ & (\Add11~8_combout\)) # (!\contar~28_combout\ & ((\Add12~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~8_combout\,
	datab => \Add12~8_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \contar~28_combout\,
	combout => \unidade~53_combout\);

-- Location: LCCOMB_X111_Y18_N8
\unidade~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~54_combout\ = (\unidade[3]~21_combout\ & ((\unidade~53_combout\ & (\Add10~8_combout\)) # (!\unidade~53_combout\ & ((\Add13~8_combout\))))) # (!\unidade[3]~21_combout\ & (((\unidade~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~21_combout\,
	datab => \Add10~8_combout\,
	datac => \Add13~8_combout\,
	datad => \unidade~53_combout\,
	combout => \unidade~54_combout\);

-- Location: LCCOMB_X110_Y18_N8
\Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = (q(4) & (\Add16~7\ $ (GND))) # (!q(4) & (!\Add16~7\ & VCC))
-- \Add16~9\ = CARRY((q(4) & !\Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X110_Y18_N24
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

-- Location: LCCOMB_X111_Y18_N10
\unidade~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~52_combout\ = (\contar~26_combout\ & (((\Add14~8_combout\) # (\unidade[3]~19_combout\)))) # (!\contar~26_combout\ & (\Add16~8_combout\ & ((!\unidade[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~8_combout\,
	datab => \Add14~8_combout\,
	datac => \contar~26_combout\,
	datad => \unidade[3]~19_combout\,
	combout => \unidade~52_combout\);

-- Location: LCCOMB_X111_Y18_N2
\unidade~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~55_combout\ = (\unidade[3]~19_combout\ & ((\unidade~52_combout\ & ((\unidade~54_combout\))) # (!\unidade~52_combout\ & (\Add15~8_combout\)))) # (!\unidade[3]~19_combout\ & (((\unidade~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~8_combout\,
	datab => \unidade[3]~19_combout\,
	datac => \unidade~54_combout\,
	datad => \unidade~52_combout\,
	combout => \unidade~55_combout\);

-- Location: LCCOMB_X109_Y16_N8
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

-- Location: LCCOMB_X111_Y18_N4
\unidade~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~57_combout\ = (\contar~63_combout\ & ((\unidade~56_combout\ & ((\Add17~8_combout\))) # (!\unidade~56_combout\ & (\unidade~55_combout\)))) # (!\contar~63_combout\ & (\unidade~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~63_combout\,
	datab => \unidade~56_combout\,
	datac => \unidade~55_combout\,
	datad => \Add17~8_combout\,
	combout => \unidade~57_combout\);

-- Location: LCCOMB_X110_Y14_N12
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

-- Location: LCCOMB_X108_Y17_N16
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

-- Location: LCCOMB_X113_Y17_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (q(4) & (\Add0~7\ $ (GND))) # (!q(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((q(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X109_Y17_N26
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

-- Location: LCCOMB_X109_Y14_N12
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (q(4) & ((GND) # (!\Add2~7\))) # (!q(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((q(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X108_Y17_N28
\unidade~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~60_combout\ = (\unidade[3]~32_combout\ & (((\Add2~8_combout\) # (\contar~43_combout\)))) # (!\unidade[3]~32_combout\ & (\Add3~8_combout\ & ((!\contar~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~32_combout\,
	datab => \Add3~8_combout\,
	datac => \Add2~8_combout\,
	datad => \contar~43_combout\,
	combout => \unidade~60_combout\);

-- Location: LCCOMB_X108_Y17_N22
\unidade~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~61_combout\ = (\contar~43_combout\ & ((\unidade~60_combout\ & ((\Add0~8_combout\))) # (!\unidade~60_combout\ & (\Add1~8_combout\)))) # (!\contar~43_combout\ & (((\unidade~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~43_combout\,
	datab => \Add1~8_combout\,
	datac => \Add0~8_combout\,
	datad => \unidade~60_combout\,
	combout => \unidade~61_combout\);

-- Location: LCCOMB_X109_Y18_N8
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

-- Location: LCCOMB_X111_Y18_N22
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (q(4) & (\Add6~7\ $ (GND))) # (!q(4) & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((q(4) & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X111_Y18_N12
\unidade~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~59_combout\ = (\unidade[3]~30_combout\ & ((\Add5~8_combout\) # ((\contar~40_combout\)))) # (!\unidade[3]~30_combout\ & (((\Add6~8_combout\ & !\contar~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~30_combout\,
	datab => \Add5~8_combout\,
	datac => \Add6~8_combout\,
	datad => \contar~40_combout\,
	combout => \unidade~59_combout\);

-- Location: LCCOMB_X111_Y18_N0
\unidade~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~62_combout\ = (\contar~40_combout\ & ((\unidade~59_combout\ & ((\unidade~61_combout\))) # (!\unidade~59_combout\ & (\Add4~8_combout\)))) # (!\contar~40_combout\ & (((\unidade~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~40_combout\,
	datab => \Add4~8_combout\,
	datac => \unidade~61_combout\,
	datad => \unidade~59_combout\,
	combout => \unidade~62_combout\);

-- Location: LCCOMB_X109_Y16_N22
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (q(4) & ((GND) # (!\Add8~7\))) # (!q(4) & (\Add8~7\ $ (GND)))
-- \Add8~9\ = CARRY((q(4)) # (!\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => q(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X110_Y14_N26
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

-- Location: LCCOMB_X111_Y18_N6
\unidade~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~58_combout\ = (\unidade[3]~27_combout\ & (\Add9~8_combout\ & ((!\unidade[3]~28_combout\)))) # (!\unidade[3]~27_combout\ & (((\Add7~8_combout\) # (\unidade[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \unidade[3]~27_combout\,
	datac => \Add7~8_combout\,
	datad => \unidade[3]~28_combout\,
	combout => \unidade~58_combout\);

-- Location: LCCOMB_X111_Y18_N30
\unidade~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~63_combout\ = (\unidade[3]~28_combout\ & ((\unidade~58_combout\ & (\unidade~62_combout\)) # (!\unidade~58_combout\ & ((\Add8~8_combout\))))) # (!\unidade[3]~28_combout\ & (((\unidade~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~28_combout\,
	datab => \unidade~62_combout\,
	datac => \Add8~8_combout\,
	datad => \unidade~58_combout\,
	combout => \unidade~63_combout\);

-- Location: LCCOMB_X111_Y18_N28
\unidade~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~64_combout\ = (!\unidade[5]~37_combout\ & ((\sentido_contagem~input_o\ & (\unidade~57_combout\)) # (!\sentido_contagem~input_o\ & ((\unidade~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \unidade[5]~37_combout\,
	datac => \unidade~57_combout\,
	datad => \unidade~63_combout\,
	combout => \unidade~64_combout\);

-- Location: FF_X111_Y18_N29
\unidade[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade~64_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(4));

-- Location: LCCOMB_X109_Y16_N10
\Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = (\q[5]~6_combout\ & (\Add17~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add17~9\))
-- \Add17~11\ = CARRY((!\q[5]~6_combout\ & !\Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add17~9\,
	combout => \Add17~10_combout\,
	cout => \Add17~11\);

-- Location: LCCOMB_X109_Y15_N28
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

-- Location: LCCOMB_X108_Y18_N14
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

-- Location: LCCOMB_X110_Y18_N10
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

-- Location: LCCOMB_X110_Y18_N26
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

-- Location: LCCOMB_X110_Y17_N4
\unidade~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~65_combout\ = (\contar~26_combout\ & (((\unidade[3]~19_combout\) # (\Add14~10_combout\)))) # (!\contar~26_combout\ & (\Add16~10_combout\ & (!\unidade[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~26_combout\,
	datab => \Add16~10_combout\,
	datac => \unidade[3]~19_combout\,
	datad => \Add14~10_combout\,
	combout => \unidade~65_combout\);

-- Location: LCCOMB_X112_Y15_N28
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\q[5]~6_combout\ & (\Add10~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add10~9\))
-- \Add10~11\ = CARRY((!\q[5]~6_combout\ & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X113_Y15_N18
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

-- Location: LCCOMB_X112_Y15_N14
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\q[5]~6_combout\ & (!\Add13~9\)) # (!\q[5]~6_combout\ & ((\Add13~9\) # (GND)))
-- \Add13~11\ = CARRY((!\Add13~9\) # (!\q[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X111_Y15_N24
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

-- Location: LCCOMB_X111_Y15_N12
\unidade~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~66_combout\ = (\contar~28_combout\ & (((\unidade[3]~21_combout\)))) # (!\contar~28_combout\ & ((\unidade[3]~21_combout\ & (\Add13~10_combout\)) # (!\unidade[3]~21_combout\ & ((\Add12~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~28_combout\,
	datab => \Add13~10_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \Add12~10_combout\,
	combout => \unidade~66_combout\);

-- Location: LCCOMB_X111_Y15_N30
\unidade~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~67_combout\ = (\contar~28_combout\ & ((\unidade~66_combout\ & (\Add10~10_combout\)) # (!\unidade~66_combout\ & ((\Add11~10_combout\))))) # (!\contar~28_combout\ & (((\unidade~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~28_combout\,
	datab => \Add10~10_combout\,
	datac => \Add11~10_combout\,
	datad => \unidade~66_combout\,
	combout => \unidade~67_combout\);

-- Location: LCCOMB_X110_Y17_N26
\unidade~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~68_combout\ = (\unidade[3]~19_combout\ & ((\unidade~65_combout\ & ((\unidade~67_combout\))) # (!\unidade~65_combout\ & (\Add15~10_combout\)))) # (!\unidade[3]~19_combout\ & (((\unidade~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~10_combout\,
	datab => \unidade[3]~19_combout\,
	datac => \unidade~65_combout\,
	datad => \unidade~67_combout\,
	combout => \unidade~68_combout\);

-- Location: LCCOMB_X110_Y17_N28
\unidade~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~69_combout\ = (\unidade[3]~120_combout\ & (((\contar~63_combout\)))) # (!\unidade[3]~120_combout\ & ((\contar~63_combout\ & ((\unidade~68_combout\))) # (!\contar~63_combout\ & (\Add18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~10_combout\,
	datab => \unidade[3]~120_combout\,
	datac => \contar~63_combout\,
	datad => \unidade~68_combout\,
	combout => \unidade~69_combout\);

-- Location: LCCOMB_X110_Y17_N22
\unidade~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~70_combout\ = (\unidade~69_combout\ & ((\Add17~10_combout\) # ((!\unidade[3]~120_combout\)))) # (!\unidade~69_combout\ & (((\Add19~10_combout\ & \unidade[3]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~10_combout\,
	datab => \unidade~69_combout\,
	datac => \Add19~10_combout\,
	datad => \unidade[3]~120_combout\,
	combout => \unidade~70_combout\);

-- Location: LCCOMB_X110_Y14_N28
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

-- Location: LCCOMB_X109_Y18_N10
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

-- Location: LCCOMB_X113_Y17_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\q[5]~6_combout\ & (\Add0~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add0~9\))
-- \Add0~11\ = CARRY((!\q[5]~6_combout\ & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X109_Y14_N14
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

-- Location: LCCOMB_X108_Y17_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\q[5]~6_combout\ & (\Add1~9\ & VCC)) # (!\q[5]~6_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\q[5]~6_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~6_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X109_Y17_N28
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

-- Location: LCCOMB_X108_Y17_N2
\unidade~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~73_combout\ = (\contar~43_combout\ & ((\Add1~10_combout\) # ((\unidade[3]~32_combout\)))) # (!\contar~43_combout\ & (((!\unidade[3]~32_combout\ & \Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~43_combout\,
	datab => \Add1~10_combout\,
	datac => \unidade[3]~32_combout\,
	datad => \Add3~10_combout\,
	combout => \unidade~73_combout\);

-- Location: LCCOMB_X108_Y17_N24
\unidade~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~74_combout\ = (\unidade[3]~32_combout\ & ((\unidade~73_combout\ & (\Add0~10_combout\)) # (!\unidade~73_combout\ & ((\Add2~10_combout\))))) # (!\unidade[3]~32_combout\ & (((\unidade~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \unidade[3]~32_combout\,
	datac => \Add2~10_combout\,
	datad => \unidade~73_combout\,
	combout => \unidade~74_combout\);

-- Location: LCCOMB_X110_Y14_N14
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

-- Location: LCCOMB_X111_Y18_N24
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

-- Location: LCCOMB_X110_Y17_N10
\unidade~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~72_combout\ = (\unidade[3]~30_combout\ & (((\contar~40_combout\)))) # (!\unidade[3]~30_combout\ & ((\contar~40_combout\ & (\Add4~10_combout\)) # (!\contar~40_combout\ & ((\Add6~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~30_combout\,
	datab => \Add4~10_combout\,
	datac => \contar~40_combout\,
	datad => \Add6~10_combout\,
	combout => \unidade~72_combout\);

-- Location: LCCOMB_X110_Y17_N16
\unidade~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~75_combout\ = (\unidade[3]~30_combout\ & ((\unidade~72_combout\ & ((\unidade~74_combout\))) # (!\unidade~72_combout\ & (\Add5~10_combout\)))) # (!\unidade[3]~30_combout\ & (((\unidade~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~30_combout\,
	datab => \Add5~10_combout\,
	datac => \unidade~74_combout\,
	datad => \unidade~72_combout\,
	combout => \unidade~75_combout\);

-- Location: LCCOMB_X109_Y16_N24
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

-- Location: LCCOMB_X110_Y17_N8
\unidade~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~71_combout\ = (\unidade[3]~28_combout\ & ((\Add8~10_combout\) # ((!\unidade[3]~27_combout\)))) # (!\unidade[3]~28_combout\ & (((\Add9~10_combout\ & \unidade[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \unidade[3]~28_combout\,
	datac => \Add9~10_combout\,
	datad => \unidade[3]~27_combout\,
	combout => \unidade~71_combout\);

-- Location: LCCOMB_X110_Y17_N18
\unidade~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~76_combout\ = (\unidade~71_combout\ & (((\unidade~75_combout\) # (\unidade[3]~27_combout\)))) # (!\unidade~71_combout\ & (\Add7~10_combout\ & ((!\unidade[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \unidade~75_combout\,
	datac => \unidade~71_combout\,
	datad => \unidade[3]~27_combout\,
	combout => \unidade~76_combout\);

-- Location: LCCOMB_X110_Y17_N24
\unidade~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~77_combout\ = (!\unidade[5]~37_combout\ & ((\sentido_contagem~input_o\ & (\unidade~70_combout\)) # (!\sentido_contagem~input_o\ & ((\unidade~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade~70_combout\,
	datab => \unidade~76_combout\,
	datac => \unidade[5]~37_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \unidade~77_combout\);

-- Location: FF_X110_Y17_N25
\unidade[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade~77_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(5));

-- Location: LCCOMB_X109_Y16_N26
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

-- Location: LCCOMB_X110_Y14_N16
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = \Add4~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X111_Y18_N26
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

-- Location: LCCOMB_X109_Y18_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = \q[6]~8_combout\ $ (\Add5~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add5~11\,
	combout => \Add5~12_combout\);

-- Location: LCCOMB_X109_Y18_N30
\unidade~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~85_combout\ = (\contar~40_combout\ & (((\unidade[3]~30_combout\)))) # (!\contar~40_combout\ & ((\unidade[3]~30_combout\ & ((\Add5~12_combout\))) # (!\unidade[3]~30_combout\ & (\Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datab => \contar~40_combout\,
	datac => \Add5~12_combout\,
	datad => \unidade[3]~30_combout\,
	combout => \unidade~85_combout\);

-- Location: LCCOMB_X113_Y17_N16
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

-- Location: LCCOMB_X109_Y14_N16
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\ $ (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X109_Y17_N30
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

-- Location: LCCOMB_X109_Y17_N8
\unidade~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~86_combout\ = (\unidade[3]~32_combout\ & ((\contar~43_combout\) # ((\Add2~12_combout\)))) # (!\unidade[3]~32_combout\ & (!\contar~43_combout\ & ((\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~32_combout\,
	datab => \contar~43_combout\,
	datac => \Add2~12_combout\,
	datad => \Add3~12_combout\,
	combout => \unidade~86_combout\);

-- Location: LCCOMB_X108_Y17_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \q[6]~8_combout\ $ (!\Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X109_Y17_N6
\unidade~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~87_combout\ = (\contar~43_combout\ & ((\unidade~86_combout\ & (\Add0~12_combout\)) # (!\unidade~86_combout\ & ((\Add1~12_combout\))))) # (!\contar~43_combout\ & (((\unidade~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \contar~43_combout\,
	datac => \unidade~86_combout\,
	datad => \Add1~12_combout\,
	combout => \unidade~87_combout\);

-- Location: LCCOMB_X109_Y18_N16
\unidade~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~88_combout\ = (\contar~40_combout\ & ((\unidade~85_combout\ & ((\unidade~87_combout\))) # (!\unidade~85_combout\ & (\Add4~12_combout\)))) # (!\contar~40_combout\ & (((\unidade~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \contar~40_combout\,
	datac => \unidade~85_combout\,
	datad => \unidade~87_combout\,
	combout => \unidade~88_combout\);

-- Location: LCCOMB_X110_Y14_N30
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

-- Location: LCCOMB_X109_Y18_N20
\unidade~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~84_combout\ = (\unidade[3]~27_combout\ & (\Add9~12_combout\ & ((!\unidade[3]~28_combout\)))) # (!\unidade[3]~27_combout\ & (((\Add7~12_combout\) # (\unidade[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~27_combout\,
	datab => \Add9~12_combout\,
	datac => \Add7~12_combout\,
	datad => \unidade[3]~28_combout\,
	combout => \unidade~84_combout\);

-- Location: LCCOMB_X109_Y18_N26
\unidade~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~89_combout\ = (\unidade[3]~28_combout\ & ((\unidade~84_combout\ & ((\unidade~88_combout\))) # (!\unidade~84_combout\ & (\Add8~12_combout\)))) # (!\unidade[3]~28_combout\ & (((\unidade~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datab => \unidade~88_combout\,
	datac => \unidade[3]~28_combout\,
	datad => \unidade~84_combout\,
	combout => \unidade~89_combout\);

-- Location: LCCOMB_X109_Y16_N12
\Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~12_combout\ = \Add17~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add17~11\,
	combout => \Add17~12_combout\);

-- Location: LCCOMB_X109_Y15_N30
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

-- Location: LCCOMB_X109_Y15_N0
\unidade~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~82_combout\ = (\unidade[3]~120_combout\ & (((\Add19~12_combout\) # (\contar~63_combout\)))) # (!\unidade[3]~120_combout\ & (\Add18~12_combout\ & ((!\contar~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~12_combout\,
	datab => \unidade[3]~120_combout\,
	datac => \Add19~12_combout\,
	datad => \contar~63_combout\,
	combout => \unidade~82_combout\);

-- Location: LCCOMB_X110_Y18_N28
\Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = \q[6]~8_combout\ $ (\Add14~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[6]~8_combout\,
	cin => \Add14~11\,
	combout => \Add14~12_combout\);

-- Location: LCCOMB_X112_Y15_N16
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = \Add13~11\ $ (\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add13~11\,
	combout => \Add13~12_combout\);

-- Location: LCCOMB_X112_Y15_N30
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = \Add10~11\ $ (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add10~11\,
	combout => \Add10~12_combout\);

-- Location: LCCOMB_X111_Y15_N26
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = \Add12~11\ $ (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add12~11\,
	combout => \Add12~12_combout\);

-- Location: LCCOMB_X113_Y15_N20
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = \Add11~11\ $ (!\q[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[6]~8_combout\,
	cin => \Add11~11\,
	combout => \Add11~12_combout\);

-- Location: LCCOMB_X111_Y15_N4
\unidade~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~79_combout\ = (\unidade[3]~21_combout\ & (((\contar~28_combout\)))) # (!\unidade[3]~21_combout\ & ((\contar~28_combout\ & ((\Add11~12_combout\))) # (!\contar~28_combout\ & (\Add12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Add11~12_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \contar~28_combout\,
	combout => \unidade~79_combout\);

-- Location: LCCOMB_X109_Y18_N22
\unidade~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~80_combout\ = (\unidade[3]~21_combout\ & ((\unidade~79_combout\ & ((\Add10~12_combout\))) # (!\unidade~79_combout\ & (\Add13~12_combout\)))) # (!\unidade[3]~21_combout\ & (((\unidade~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datab => \Add10~12_combout\,
	datac => \unidade[3]~21_combout\,
	datad => \unidade~79_combout\,
	combout => \unidade~80_combout\);

-- Location: LCCOMB_X108_Y18_N16
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

-- Location: LCCOMB_X110_Y18_N12
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

-- Location: LCCOMB_X109_Y18_N24
\unidade~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~78_combout\ = (\contar~26_combout\ & (((\unidade[3]~19_combout\)))) # (!\contar~26_combout\ & ((\unidade[3]~19_combout\ & (\Add15~12_combout\)) # (!\unidade[3]~19_combout\ & ((\Add16~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~26_combout\,
	datab => \Add15~12_combout\,
	datac => \Add16~12_combout\,
	datad => \unidade[3]~19_combout\,
	combout => \unidade~78_combout\);

-- Location: LCCOMB_X109_Y18_N28
\unidade~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~81_combout\ = (\contar~26_combout\ & ((\unidade~78_combout\ & ((\unidade~80_combout\))) # (!\unidade~78_combout\ & (\Add14~12_combout\)))) # (!\contar~26_combout\ & (((\unidade~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~26_combout\,
	datab => \Add14~12_combout\,
	datac => \unidade~80_combout\,
	datad => \unidade~78_combout\,
	combout => \unidade~81_combout\);

-- Location: LCCOMB_X109_Y18_N14
\unidade~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~83_combout\ = (\contar~63_combout\ & ((\unidade~82_combout\ & (\Add17~12_combout\)) # (!\unidade~82_combout\ & ((\unidade~81_combout\))))) # (!\contar~63_combout\ & (((\unidade~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~12_combout\,
	datab => \contar~63_combout\,
	datac => \unidade~82_combout\,
	datad => \unidade~81_combout\,
	combout => \unidade~83_combout\);

-- Location: LCCOMB_X109_Y18_N18
\unidade~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidade~90_combout\ = (!\unidade[5]~37_combout\ & ((\sentido_contagem~input_o\ & ((\unidade~83_combout\))) # (!\sentido_contagem~input_o\ & (\unidade~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[5]~37_combout\,
	datab => \sentido_contagem~input_o\,
	datac => \unidade~89_combout\,
	datad => \unidade~83_combout\,
	combout => \unidade~90_combout\);

-- Location: FF_X109_Y18_N19
\unidade[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \unidade~90_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(6));

-- Location: LCCOMB_X111_Y16_N10
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\q[6]~8_combout\) # ((\q[5]~6_combout\ & (\LessThan9~0_combout\ & !\LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \q[6]~8_combout\,
	datac => \LessThan9~0_combout\,
	datad => \LessThan9~1_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X111_Y16_N14
\contar~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~57_combout\ = (!\LessThan3~0_combout\ & (((\LessThan12~0_combout\) # (!\LessThan11~1_combout\)) # (!\q[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[5]~6_combout\,
	datab => \LessThan11~1_combout\,
	datac => \LessThan12~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \contar~57_combout\);

-- Location: LCCOMB_X111_Y16_N16
\contar~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~58_combout\ = (\contar~34_combout\ & (!\LessThan10~2_combout\ & !\contar~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~34_combout\,
	datab => \LessThan10~2_combout\,
	datac => \contar~35_combout\,
	combout => \contar~58_combout\);

-- Location: LCCOMB_X112_Y16_N4
\contar~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~59_combout\ = (\contar~38_combout\ & (((!\contar~58_combout\)))) # (!\contar~38_combout\ & (\contar~57_combout\ & ((!\LessThan10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~57_combout\,
	datab => \contar~38_combout\,
	datac => \contar~58_combout\,
	datad => \LessThan10~2_combout\,
	combout => \contar~59_combout\);

-- Location: LCCOMB_X112_Y16_N30
\contar~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~60_combout\ = (\contar~42_combout\ & ((\contar~64_combout\ & (\dezena[0]~2_combout\)) # (!\contar~64_combout\ & ((\contar~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~64_combout\,
	datab => \dezena[0]~2_combout\,
	datac => \contar~59_combout\,
	datad => \contar~42_combout\,
	combout => \contar~60_combout\);

-- Location: LCCOMB_X112_Y16_N20
\dezena~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~14_combout\ = (\dezena~8_combout\ & ((\contar~60_combout\) # ((\unidade[3]~27_combout\ & !\contar~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~60_combout\,
	datab => \dezena~8_combout\,
	datac => \unidade[3]~27_combout\,
	datad => \contar~42_combout\,
	combout => \dezena~14_combout\);

-- Location: LCCOMB_X113_Y16_N12
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (((!\LessThan9~0_combout\) # (!\q[0]~2_combout\)) # (!q(2))) # (!\q[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(2),
	datac => \q[0]~2_combout\,
	datad => \LessThan9~0_combout\,
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X113_Y16_N20
\dezena~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~11_combout\ = ((\q[5]~6_combout\) # ((\LessThan17~0_combout\) # (!q(4)))) # (!\LessThan16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~0_combout\,
	datab => \q[5]~6_combout\,
	datac => \LessThan17~0_combout\,
	datad => q(4),
	combout => \dezena~11_combout\);

-- Location: LCCOMB_X113_Y17_N30
\dezena~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~10_combout\ = (\contar~31_combout\) # ((!\contar~32_combout\ & ((\contar~29_combout\) # (\contar~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~29_combout\,
	datab => \contar~31_combout\,
	datac => \contar~30_combout\,
	datad => \contar~32_combout\,
	combout => \dezena~10_combout\);

-- Location: LCCOMB_X111_Y16_N28
\contar~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~23_combout\ = (!\q[6]~8_combout\ & !\LessThan15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~8_combout\,
	datad => \LessThan15~2_combout\,
	combout => \contar~23_combout\);

-- Location: LCCOMB_X112_Y16_N12
\dezena~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~12_combout\ = (\contar~26_combout\ & (((\dezena~10_combout\)))) # (!\contar~26_combout\ & (\dezena~11_combout\ & ((\contar~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~11_combout\,
	datab => \dezena~10_combout\,
	datac => \contar~26_combout\,
	datad => \contar~23_combout\,
	combout => \dezena~12_combout\);

-- Location: LCCOMB_X112_Y16_N10
\dezena~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~9_combout\ = (\Equal1~6_combout\) # ((!\contar~33_combout\ & \dezena[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contar~33_combout\,
	datac => \dezena[0]~2_combout\,
	datad => \Equal1~6_combout\,
	combout => \dezena~9_combout\);

-- Location: LCCOMB_X113_Y16_N30
\contar~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~11_combout\ = ((!q(2) & ((!\q[0]~2_combout\) # (!\q[1]~4_combout\)))) # (!q(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~4_combout\,
	datab => q(3),
	datac => \q[0]~2_combout\,
	datad => q(2),
	combout => \contar~11_combout\);

-- Location: LCCOMB_X113_Y16_N24
\contar~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~66_combout\ = (!q(4) & (!\q[5]~6_combout\ & (!\q[6]~8_combout\ & \contar~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(4),
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \contar~11_combout\,
	combout => \contar~66_combout\);

-- Location: LCCOMB_X112_Y16_N6
\dezena~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~13_combout\ = (\dezena~9_combout\) # ((\dezena~12_combout\ & !\contar~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~12_combout\,
	datab => \dezena~9_combout\,
	datac => \contar~66_combout\,
	combout => \dezena~13_combout\);

-- Location: LCCOMB_X112_Y16_N22
\dezena[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[0]~3_combout\ = \q[0]~1_combout\ $ (((\dezena~14_combout\) # ((\sentido_contagem~input_o\ & \dezena~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido_contagem~input_o\,
	datab => \dezena~14_combout\,
	datac => \q[0]~1_combout\,
	datad => \dezena~13_combout\,
	combout => \dezena[0]~3_combout\);

-- Location: FF_X112_Y16_N23
\dezena[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \dezena[0]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena[0]~_emulated_q\);

-- Location: LCCOMB_X112_Y16_N8
\dezena[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[0]~2_combout\ = (\reset~input_o\ & (\dezena[0]~_emulated_q\ $ ((\q[0]~1_combout\)))) # (!\reset~input_o\ & (((\sentido_contagem~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena[0]~_emulated_q\,
	datab => \q[0]~1_combout\,
	datac => \reset~input_o\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena[0]~2_combout\);

-- Location: LCCOMB_X111_Y16_N20
\contar~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~44_combout\ = (\LessThan3~0_combout\) # ((\contar~37_combout\) # ((\LessThan12~0_combout\) # (!\q[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \contar~37_combout\,
	datac => \LessThan12~0_combout\,
	datad => \q[5]~6_combout\,
	combout => \contar~44_combout\);

-- Location: LCCOMB_X114_Y16_N18
\contar~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~45_combout\ = (\contar~64_combout\ & (((dezena(1))))) # (!\contar~64_combout\ & (\contar~44_combout\ & ((!\contar~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~44_combout\,
	datab => dezena(1),
	datac => \contar~64_combout\,
	datad => \contar~43_combout\,
	combout => \contar~45_combout\);

-- Location: LCCOMB_X114_Y16_N28
\dezena[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[1]~0_combout\ = (\contar~42_combout\ & (\contar~45_combout\)) # (!\contar~42_combout\ & ((!\unidade[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~45_combout\,
	datab => \contar~42_combout\,
	datad => \unidade[3]~27_combout\,
	combout => \dezena[1]~0_combout\);

-- Location: LCCOMB_X113_Y16_N14
\contar~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~48_combout\ = ((\q[5]~6_combout\) # ((!\LessThan17~0_combout\ & q(4)))) # (!\LessThan16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~0_combout\,
	datab => \q[5]~6_combout\,
	datac => \LessThan17~0_combout\,
	datad => q(4),
	combout => \contar~48_combout\);

-- Location: LCCOMB_X111_Y14_N30
\contar~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~46_combout\ = (\q[6]~8_combout\) # ((\contar~62_combout\) # ((\LessThan13~0_combout\ & \q[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~0_combout\,
	datab => \q[5]~6_combout\,
	datac => \q[6]~8_combout\,
	datad => \contar~62_combout\,
	combout => \contar~46_combout\);

-- Location: LCCOMB_X111_Y16_N26
\contar~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~47_combout\ = (!\contar~24_combout\ & (!\contar~46_combout\ & (!\contar~31_combout\ & \contar~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~24_combout\,
	datab => \contar~46_combout\,
	datac => \contar~31_combout\,
	datad => \contar~23_combout\,
	combout => \contar~47_combout\);

-- Location: LCCOMB_X113_Y17_N18
\contar~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~49_combout\ = (!\contar~32_combout\ & (!\contar~31_combout\ & ((\contar~29_combout\) # (!\contar~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~32_combout\,
	datab => \contar~31_combout\,
	datac => \contar~30_combout\,
	datad => \contar~29_combout\,
	combout => \contar~49_combout\);

-- Location: LCCOMB_X114_Y16_N12
\contar~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~50_combout\ = (\contar~48_combout\ & ((\contar~47_combout\) # ((\contar~26_combout\ & \contar~49_combout\)))) # (!\contar~48_combout\ & (\contar~26_combout\ & ((\contar~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~48_combout\,
	datab => \contar~26_combout\,
	datac => \contar~47_combout\,
	datad => \contar~49_combout\,
	combout => \contar~50_combout\);

-- Location: LCCOMB_X114_Y16_N6
\contar~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~51_combout\ = (\contar~50_combout\ & (((!\contar~33_combout\ & dezena(1))) # (!\contar~66_combout\))) # (!\contar~50_combout\ & (((!\contar~33_combout\ & dezena(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~50_combout\,
	datab => \contar~66_combout\,
	datac => \contar~33_combout\,
	datad => dezena(1),
	combout => \contar~51_combout\);

-- Location: FF_X114_Y16_N29
\dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \dezena[1]~0_combout\,
	asdata => \contar~51_combout\,
	clrn => \reset~input_o\,
	sclr => \unidade[5]~37_combout\,
	sload => \sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(1));

-- Location: LCCOMB_X114_Y16_N24
\contar~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~65_combout\ = (dezena(2) & (!q(4) & ((\Equal1~4_combout\) # (!q(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => q(3),
	datac => q(4),
	datad => \Equal1~4_combout\,
	combout => \contar~65_combout\);

-- Location: LCCOMB_X111_Y16_N12
\contar~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~52_combout\ = ((q(4) & ((q(3)) # (!\Equal1~4_combout\)))) # (!\LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(3),
	datab => \Equal1~4_combout\,
	datac => \LessThan12~0_combout\,
	datad => q(4),
	combout => \contar~52_combout\);

-- Location: LCCOMB_X111_Y16_N30
\contar~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~53_combout\ = ((\q[5]~6_combout\ & ((\contar~52_combout\) # (\LessThan9~2_combout\)))) # (!\unidade[3]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~52_combout\,
	datab => \q[5]~6_combout\,
	datac => \LessThan9~2_combout\,
	datad => \unidade[3]~119_combout\,
	combout => \contar~53_combout\);

-- Location: LCCOMB_X114_Y16_N20
\contar~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~54_combout\ = (\contar~64_combout\ & (((dezena(2))))) # (!\contar~64_combout\ & (\contar~53_combout\ & ((!\contar~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~64_combout\,
	datab => \contar~53_combout\,
	datac => dezena(2),
	datad => \contar~43_combout\,
	combout => \contar~54_combout\);

-- Location: LCCOMB_X114_Y16_N22
\dezena[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[2]~1_combout\ = (\contar~42_combout\ & ((\contar~54_combout\))) # (!\contar~42_combout\ & (\contar~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~65_combout\,
	datab => \contar~42_combout\,
	datad => \contar~54_combout\,
	combout => \dezena[2]~1_combout\);

-- Location: LCCOMB_X111_Y16_N24
\contar~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~55_combout\ = (\contar~26_combout\ & (!\contar~28_combout\)) # (!\contar~26_combout\ & ((\LessThan15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~28_combout\,
	datac => \contar~26_combout\,
	datad => \LessThan15~2_combout\,
	combout => \contar~55_combout\);

-- Location: LCCOMB_X114_Y16_N10
\contar~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~56_combout\ = (\contar~55_combout\ & (((!\contar~33_combout\ & dezena(2))) # (!\contar~66_combout\))) # (!\contar~55_combout\ & (!\contar~33_combout\ & (dezena(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~55_combout\,
	datab => \contar~33_combout\,
	datac => dezena(2),
	datad => \contar~66_combout\,
	combout => \contar~56_combout\);

-- Location: FF_X114_Y16_N23
\dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \dezena[2]~1_combout\,
	asdata => \contar~56_combout\,
	clrn => \reset~input_o\,
	sclr => \unidade[5]~37_combout\,
	sload => \sentido_contagem~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(2));

-- Location: LCCOMB_X113_Y16_N6
\dezena~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~16_combout\ = (\Equal1~6_combout\) # ((\dezena[3]~4_combout\ & !\contar~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena[3]~4_combout\,
	datac => \contar~33_combout\,
	datad => \Equal1~6_combout\,
	combout => \dezena~16_combout\);

-- Location: LCCOMB_X112_Y16_N26
\dezena~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~17_combout\ = (\dezena~16_combout\) # ((\contar~28_combout\ & (!\contar~66_combout\ & !\contar~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~16_combout\,
	datab => \contar~28_combout\,
	datac => \contar~66_combout\,
	datad => \contar~47_combout\,
	combout => \dezena~17_combout\);

-- Location: LCCOMB_X112_Y16_N18
\contar~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar~61_combout\ = (\contar~64_combout\ & (((\dezena[3]~4_combout\)))) # (!\contar~64_combout\ & ((\contar~34_combout\) # ((\LessThan10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~34_combout\,
	datab => \LessThan10~2_combout\,
	datac => \dezena[3]~4_combout\,
	datad => \contar~64_combout\,
	combout => \contar~61_combout\);

-- Location: LCCOMB_X112_Y16_N16
\dezena~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena~15_combout\ = \Equal0~1_combout\ $ (((\contar~61_combout\ & \contar~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar~61_combout\,
	datab => \Equal0~1_combout\,
	datad => \contar~42_combout\,
	combout => \dezena~15_combout\);

-- Location: LCCOMB_X112_Y16_N14
\dezena[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[3]~5_combout\ = \q[0]~1_combout\ $ (((\sentido_contagem~input_o\ & (\dezena~17_combout\)) # (!\sentido_contagem~input_o\ & ((\dezena~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena~17_combout\,
	datab => \dezena~15_combout\,
	datac => \q[0]~1_combout\,
	datad => \sentido_contagem~input_o\,
	combout => \dezena[3]~5_combout\);

-- Location: FF_X112_Y16_N15
\dezena[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_b~clkctrl_outclk\,
	d => \dezena[3]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dezena[3]~_emulated_q\);

-- Location: LCCOMB_X112_Y16_N24
\dezena[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezena[3]~4_combout\ = (\reset~input_o\ & ((\dezena[3]~_emulated_q\ $ (\q[0]~1_combout\)))) # (!\reset~input_o\ & (\sentido_contagem~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \sentido_contagem~input_o\,
	datac => \dezena[3]~_emulated_q\,
	datad => \q[0]~1_combout\,
	combout => \dezena[3]~4_combout\);

-- Location: LCCOMB_X114_Y16_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\dezena[3]~4_combout\) # ((dezena(2) & ((!\dezena[0]~2_combout\) # (!dezena(1)))) # (!dezena(2) & (dezena(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X114_Y16_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (dezena(2) & ((\dezena[3]~4_combout\) # ((dezena(1) & \dezena[0]~2_combout\)))) # (!dezena(2) & ((dezena(1)) # ((!\dezena[3]~4_combout\ & \dezena[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\dezena[0]~2_combout\) # ((dezena(1) & ((\dezena[3]~4_combout\))) # (!dezena(1) & (dezena(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X114_Y16_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (dezena(2) & ((\dezena[3]~4_combout\) # (dezena(1) $ (!\dezena[0]~2_combout\)))) # (!dezena(2) & ((dezena(1) & (\dezena[3]~4_combout\)) # (!dezena(1) & ((\dezena[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X114_Y16_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (dezena(2) & (((\dezena[3]~4_combout\)))) # (!dezena(2) & (dezena(1) & ((\dezena[3]~4_combout\) # (!\dezena[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X114_Y16_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (dezena(2) & ((\dezena[3]~4_combout\) # (dezena(1) $ (\dezena[0]~2_combout\)))) # (!dezena(2) & (dezena(1) & (\dezena[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X114_Y16_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (dezena(1) & (((\dezena[3]~4_combout\)))) # (!dezena(1) & (dezena(2) $ (((!\dezena[3]~4_combout\ & \dezena[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(1),
	datac => \dezena[3]~4_combout\,
	datad => \dezena[0]~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\s_bcd7s_infos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bcd7s_infos~0_combout\ = (\sentido_contagem~input_o\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \sentido_contagem~input_o\,
	combout => \s_bcd7s_infos~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\s_bcd7s_infos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_bcd7s_infos~1_combout\ = (!\sentido_contagem~input_o\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \sentido_contagem~input_o\,
	combout => \s_bcd7s_infos~1_combout\);

-- Location: LCCOMB_X112_Y41_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\unidade[3]~2_combout\) # ((unidade(2) & ((!\unidade[0]~0_combout\) # (!unidade(1)))) # (!unidade(2) & (unidade(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X112_Y41_N6
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (unidade(6)) # ((unidade(4)) # ((unidade(5)) # (\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(6),
	datab => unidade(4),
	datac => unidade(5),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X112_Y41_N4
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (unidade(2) & ((\unidade[3]~2_combout\) # ((unidade(1) & \unidade[0]~0_combout\)))) # (!unidade(2) & ((unidade(1)) # ((!\unidade[3]~2_combout\ & \unidade[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X112_Y41_N26
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (unidade(5)) # ((unidade(4)) # ((\Mux12~0_combout\) # (unidade(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(5),
	datab => unidade(4),
	datac => \Mux12~0_combout\,
	datad => unidade(6),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X112_Y41_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\unidade[0]~0_combout\) # ((unidade(1) & ((\unidade[3]~2_combout\))) # (!unidade(1) & (unidade(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X112_Y41_N2
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (unidade(5)) # ((unidade(4)) # ((\Mux11~0_combout\) # (unidade(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(5),
	datab => unidade(4),
	datac => \Mux11~0_combout\,
	datad => unidade(6),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X112_Y41_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (unidade(2) & ((\unidade[3]~2_combout\) # (unidade(1) $ (!\unidade[0]~0_combout\)))) # (!unidade(2) & ((unidade(1) & (\unidade[3]~2_combout\)) # (!unidade(1) & ((\unidade[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X112_Y41_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (unidade(6)) # ((unidade(4)) # ((unidade(5)) # (\Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(6),
	datab => unidade(4),
	datac => unidade(5),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X112_Y41_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (unidade(2) & (((\unidade[3]~2_combout\)))) # (!unidade(2) & (unidade(1) & ((\unidade[3]~2_combout\) # (!\unidade[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X112_Y41_N18
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (unidade(6)) # ((unidade(4)) # ((unidade(5)) # (\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(6),
	datab => unidade(4),
	datac => unidade(5),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X112_Y41_N20
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (unidade(2) & ((\unidade[3]~2_combout\) # (unidade(1) $ (\unidade[0]~0_combout\)))) # (!unidade(2) & (unidade(1) & (\unidade[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X112_Y41_N14
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (unidade(6)) # ((unidade(4)) # ((unidade(5)) # (\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(6),
	datab => unidade(4),
	datac => unidade(5),
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X112_Y41_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (unidade(1) & (((\unidade[3]~2_combout\)))) # (!unidade(1) & (unidade(2) $ (((!\unidade[3]~2_combout\ & \unidade[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(1),
	datac => \unidade[3]~2_combout\,
	datad => \unidade[0]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X112_Y41_N30
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (unidade(6)) # ((unidade(4)) # ((unidade(5)) # (\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(6),
	datab => unidade(4),
	datac => unidade(5),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

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

ww_s_clock <= \s_clock~output_o\;

ww_s_bcd7s_dezena(6) <= \s_bcd7s_dezena[6]~output_o\;

ww_s_bcd7s_dezena(5) <= \s_bcd7s_dezena[5]~output_o\;

ww_s_bcd7s_dezena(4) <= \s_bcd7s_dezena[4]~output_o\;

ww_s_bcd7s_dezena(3) <= \s_bcd7s_dezena[3]~output_o\;

ww_s_bcd7s_dezena(2) <= \s_bcd7s_dezena[2]~output_o\;

ww_s_bcd7s_dezena(1) <= \s_bcd7s_dezena[1]~output_o\;

ww_s_bcd7s_dezena(0) <= \s_bcd7s_dezena[0]~output_o\;

ww_s_bcd7s_infos(6) <= \s_bcd7s_infos[6]~output_o\;

ww_s_bcd7s_infos(5) <= \s_bcd7s_infos[5]~output_o\;

ww_s_bcd7s_infos(4) <= \s_bcd7s_infos[4]~output_o\;

ww_s_bcd7s_infos(3) <= \s_bcd7s_infos[3]~output_o\;

ww_s_bcd7s_infos(2) <= \s_bcd7s_infos[2]~output_o\;

ww_s_bcd7s_infos(1) <= \s_bcd7s_infos[1]~output_o\;

ww_s_bcd7s_infos(0) <= \s_bcd7s_infos[0]~output_o\;

ww_s_bcd7s_unidade(6) <= \s_bcd7s_unidade[6]~output_o\;

ww_s_bcd7s_unidade(5) <= \s_bcd7s_unidade[5]~output_o\;

ww_s_bcd7s_unidade(4) <= \s_bcd7s_unidade[4]~output_o\;

ww_s_bcd7s_unidade(3) <= \s_bcd7s_unidade[3]~output_o\;

ww_s_bcd7s_unidade(2) <= \s_bcd7s_unidade[2]~output_o\;

ww_s_bcd7s_unidade(1) <= \s_bcd7s_unidade[1]~output_o\;

ww_s_bcd7s_unidade(0) <= \s_bcd7s_unidade[0]~output_o\;
END structure;


