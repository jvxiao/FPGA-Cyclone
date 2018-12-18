-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "12/07/2018 11:44:48"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	digitalclock IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	ad_hr : IN std_logic;
	ad_min : IN std_logic;
	ad_sec : IN std_logic;
	Hr_s : OUT std_logic_vector(6 DOWNTO 0);
	Hr_g : OUT std_logic_vector(6 DOWNTO 0);
	Min_s : OUT std_logic_vector(6 DOWNTO 0);
	Min_g : OUT std_logic_vector(6 DOWNTO 0);
	Sec_s : OUT std_logic_vector(6 DOWNTO 0);
	Sec_g : OUT std_logic_vector(6 DOWNTO 0);
	cnt_sec : OUT std_logic_vector(7 DOWNTO 0);
	cnt_min : OUT std_logic_vector(7 DOWNTO 0);
	cnt_hr : OUT std_logic_vector(7 DOWNTO 0)
	);
END digitalclock;

-- Design Ports Information
-- ad_hr	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_min	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ad_sec	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_s[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hr_g[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_s[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[2]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[5]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Min_g[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_s[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[1]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sec_g[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_sec[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[5]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_min[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_hr[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF digitalclock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ad_hr : std_logic;
SIGNAL ww_ad_min : std_logic;
SIGNAL ww_ad_sec : std_logic;
SIGNAL ww_Hr_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hr_g : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Min_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Min_g : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Sec_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Sec_g : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt_sec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt_min : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt_hr : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ad_hr~input_o\ : std_logic;
SIGNAL \ad_min~input_o\ : std_logic;
SIGNAL \ad_sec~input_o\ : std_logic;
SIGNAL \Hr_s[0]~output_o\ : std_logic;
SIGNAL \Hr_s[1]~output_o\ : std_logic;
SIGNAL \Hr_s[2]~output_o\ : std_logic;
SIGNAL \Hr_s[3]~output_o\ : std_logic;
SIGNAL \Hr_s[4]~output_o\ : std_logic;
SIGNAL \Hr_s[5]~output_o\ : std_logic;
SIGNAL \Hr_s[6]~output_o\ : std_logic;
SIGNAL \Hr_g[0]~output_o\ : std_logic;
SIGNAL \Hr_g[1]~output_o\ : std_logic;
SIGNAL \Hr_g[2]~output_o\ : std_logic;
SIGNAL \Hr_g[3]~output_o\ : std_logic;
SIGNAL \Hr_g[4]~output_o\ : std_logic;
SIGNAL \Hr_g[5]~output_o\ : std_logic;
SIGNAL \Hr_g[6]~output_o\ : std_logic;
SIGNAL \Min_s[0]~output_o\ : std_logic;
SIGNAL \Min_s[1]~output_o\ : std_logic;
SIGNAL \Min_s[2]~output_o\ : std_logic;
SIGNAL \Min_s[3]~output_o\ : std_logic;
SIGNAL \Min_s[4]~output_o\ : std_logic;
SIGNAL \Min_s[5]~output_o\ : std_logic;
SIGNAL \Min_s[6]~output_o\ : std_logic;
SIGNAL \Min_g[0]~output_o\ : std_logic;
SIGNAL \Min_g[1]~output_o\ : std_logic;
SIGNAL \Min_g[2]~output_o\ : std_logic;
SIGNAL \Min_g[3]~output_o\ : std_logic;
SIGNAL \Min_g[4]~output_o\ : std_logic;
SIGNAL \Min_g[5]~output_o\ : std_logic;
SIGNAL \Min_g[6]~output_o\ : std_logic;
SIGNAL \Sec_s[0]~output_o\ : std_logic;
SIGNAL \Sec_s[1]~output_o\ : std_logic;
SIGNAL \Sec_s[2]~output_o\ : std_logic;
SIGNAL \Sec_s[3]~output_o\ : std_logic;
SIGNAL \Sec_s[4]~output_o\ : std_logic;
SIGNAL \Sec_s[5]~output_o\ : std_logic;
SIGNAL \Sec_s[6]~output_o\ : std_logic;
SIGNAL \Sec_g[0]~output_o\ : std_logic;
SIGNAL \Sec_g[1]~output_o\ : std_logic;
SIGNAL \Sec_g[2]~output_o\ : std_logic;
SIGNAL \Sec_g[3]~output_o\ : std_logic;
SIGNAL \Sec_g[4]~output_o\ : std_logic;
SIGNAL \Sec_g[5]~output_o\ : std_logic;
SIGNAL \Sec_g[6]~output_o\ : std_logic;
SIGNAL \cnt_sec[0]~output_o\ : std_logic;
SIGNAL \cnt_sec[1]~output_o\ : std_logic;
SIGNAL \cnt_sec[2]~output_o\ : std_logic;
SIGNAL \cnt_sec[3]~output_o\ : std_logic;
SIGNAL \cnt_sec[4]~output_o\ : std_logic;
SIGNAL \cnt_sec[5]~output_o\ : std_logic;
SIGNAL \cnt_sec[6]~output_o\ : std_logic;
SIGNAL \cnt_sec[7]~output_o\ : std_logic;
SIGNAL \cnt_min[0]~output_o\ : std_logic;
SIGNAL \cnt_min[1]~output_o\ : std_logic;
SIGNAL \cnt_min[2]~output_o\ : std_logic;
SIGNAL \cnt_min[3]~output_o\ : std_logic;
SIGNAL \cnt_min[4]~output_o\ : std_logic;
SIGNAL \cnt_min[5]~output_o\ : std_logic;
SIGNAL \cnt_min[6]~output_o\ : std_logic;
SIGNAL \cnt_min[7]~output_o\ : std_logic;
SIGNAL \cnt_hr[0]~output_o\ : std_logic;
SIGNAL \cnt_hr[1]~output_o\ : std_logic;
SIGNAL \cnt_hr[2]~output_o\ : std_logic;
SIGNAL \cnt_hr[3]~output_o\ : std_logic;
SIGNAL \cnt_hr[4]~output_o\ : std_logic;
SIGNAL \cnt_hr[5]~output_o\ : std_logic;
SIGNAL \cnt_hr[6]~output_o\ : std_logic;
SIGNAL \cnt_hr[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_sec[0]~8_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_sec[0]~9\ : std_logic;
SIGNAL \cnt_sec[1]~10_combout\ : std_logic;
SIGNAL \cnt_sec[1]~reg0_q\ : std_logic;
SIGNAL \cnt_sec[1]~11\ : std_logic;
SIGNAL \cnt_sec[2]~12_combout\ : std_logic;
SIGNAL \cnt_sec[2]~reg0_q\ : std_logic;
SIGNAL \cnt_sec[2]~13\ : std_logic;
SIGNAL \cnt_sec[3]~14_combout\ : std_logic;
SIGNAL \cnt_sec[3]~reg0_q\ : std_logic;
SIGNAL \cnt_sec[3]~15\ : std_logic;
SIGNAL \cnt_sec[4]~16_combout\ : std_logic;
SIGNAL \cnt_sec[4]~reg0_q\ : std_logic;
SIGNAL \cnt_sec[4]~17\ : std_logic;
SIGNAL \cnt_sec[5]~18_combout\ : std_logic;
SIGNAL \cnt_sec[5]~reg0_q\ : std_logic;
SIGNAL \cnt_sec[5]~19\ : std_logic;
SIGNAL \cnt_sec[6]~20_combout\ : std_logic;
SIGNAL \cnt_sec[6]~reg0_q\ : std_logic;
SIGNAL \cnt_sec[6]~21\ : std_logic;
SIGNAL \cnt_sec[7]~22_combout\ : std_logic;
SIGNAL \cnt_sec[7]~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \cnt_sec[0]~reg0_q\ : std_logic;
SIGNAL \cnt_min[0]~8_combout\ : std_logic;
SIGNAL \cnt_min[0]~9\ : std_logic;
SIGNAL \cnt_min[1]~10_combout\ : std_logic;
SIGNAL \cnt_hr[0]~8_combout\ : std_logic;
SIGNAL \cnt_min[1]~reg0_q\ : std_logic;
SIGNAL \cnt_min[1]~11\ : std_logic;
SIGNAL \cnt_min[2]~12_combout\ : std_logic;
SIGNAL \cnt_min[2]~reg0_q\ : std_logic;
SIGNAL \cnt_min[2]~13\ : std_logic;
SIGNAL \cnt_min[3]~14_combout\ : std_logic;
SIGNAL \cnt_min[3]~reg0_q\ : std_logic;
SIGNAL \cnt_min[3]~15\ : std_logic;
SIGNAL \cnt_min[4]~16_combout\ : std_logic;
SIGNAL \cnt_min[4]~reg0_q\ : std_logic;
SIGNAL \cnt_min[4]~17\ : std_logic;
SIGNAL \cnt_min[5]~18_combout\ : std_logic;
SIGNAL \cnt_min[5]~reg0_q\ : std_logic;
SIGNAL \cnt_min[5]~19\ : std_logic;
SIGNAL \cnt_min[6]~20_combout\ : std_logic;
SIGNAL \cnt_min[6]~reg0_q\ : std_logic;
SIGNAL \cnt_min[6]~21\ : std_logic;
SIGNAL \cnt_min[7]~22_combout\ : std_logic;
SIGNAL \cnt_min[7]~reg0_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \cnt_min[0]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[0]~9_combout\ : std_logic;
SIGNAL \cnt_hr[0]~10\ : std_logic;
SIGNAL \cnt_hr[1]~12_combout\ : std_logic;
SIGNAL \cnt_hr[0]~11_combout\ : std_logic;
SIGNAL \cnt_hr[1]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[1]~13\ : std_logic;
SIGNAL \cnt_hr[2]~14_combout\ : std_logic;
SIGNAL \cnt_hr[2]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[2]~15\ : std_logic;
SIGNAL \cnt_hr[3]~16_combout\ : std_logic;
SIGNAL \cnt_hr[3]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[3]~17\ : std_logic;
SIGNAL \cnt_hr[4]~18_combout\ : std_logic;
SIGNAL \cnt_hr[4]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[4]~19\ : std_logic;
SIGNAL \cnt_hr[5]~20_combout\ : std_logic;
SIGNAL \cnt_hr[5]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[5]~21\ : std_logic;
SIGNAL \cnt_hr[6]~22_combout\ : std_logic;
SIGNAL \cnt_hr[6]~reg0_q\ : std_logic;
SIGNAL \cnt_hr[6]~23\ : std_logic;
SIGNAL \cnt_hr[7]~24_combout\ : std_logic;
SIGNAL \cnt_hr[7]~reg0_q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \cnt_hr[0]~reg0_q\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_ad_hr <= ad_hr;
ww_ad_min <= ad_min;
ww_ad_sec <= ad_sec;
Hr_s <= ww_Hr_s;
Hr_g <= ww_Hr_g;
Min_s <= ww_Min_s;
Min_g <= ww_Min_g;
Sec_s <= ww_Sec_s;
Sec_g <= ww_Sec_g;
cnt_sec <= ww_cnt_sec;
cnt_min <= ww_cnt_min;
cnt_hr <= ww_cnt_hr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X43_Y41_N2
\Hr_s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\Hr_s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[1]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\Hr_s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\Hr_s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\Hr_s[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[4]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\Hr_s[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\Hr_s[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_s[6]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\Hr_g[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\Hr_g[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[1]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\Hr_g[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[2]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\Hr_g[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Hr_g[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[4]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\Hr_g[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\Hr_g[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hr_g[6]~output_o\);

-- Location: IOOBUF_X3_Y41_N2
\Min_s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\Min_s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[1]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\Min_s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[2]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\Min_s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[3]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\Min_s[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Min_s[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\Min_s[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_s[6]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\Min_g[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Min_g[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\Min_g[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Min_g[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[3]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\Min_g[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[4]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\Min_g[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Min_g[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Min_g[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Sec_s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\Sec_s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Sec_s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[2]~output_o\);

-- Location: IOOBUF_X7_Y41_N23
\Sec_s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Sec_s[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Sec_s[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\Sec_s[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_s[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\Sec_g[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\Sec_g[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Sec_g[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[2]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\Sec_g[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[3]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\Sec_g[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\Sec_g[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[5]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\Sec_g[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sec_g[6]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\cnt_sec[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[0]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\cnt_sec[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\cnt_sec[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[2]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\cnt_sec[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[3]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\cnt_sec[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[4]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\cnt_sec[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[5]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\cnt_sec[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[6]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\cnt_sec[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_sec[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_sec[7]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\cnt_min[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[0]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\cnt_min[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[1]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\cnt_min[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[2]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\cnt_min[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[3]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\cnt_min[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[4]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\cnt_min[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[5]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\cnt_min[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[6]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\cnt_min[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_min[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_min[7]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\cnt_hr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[0]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\cnt_hr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[1]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\cnt_hr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\cnt_hr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[3]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\cnt_hr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[4]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\cnt_hr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[5]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\cnt_hr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[6]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\cnt_hr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_hr[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt_hr[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X50_Y28_N16
\cnt_sec[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[0]~8_combout\ = \cnt_sec[0]~reg0_q\ $ (VCC)
-- \cnt_sec[0]~9\ = CARRY(\cnt_sec[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_sec[0]~reg0_q\,
	datad => VCC,
	combout => \cnt_sec[0]~8_combout\,
	cout => \cnt_sec[0]~9\);

-- Location: IOIBUF_X27_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y28_N18
\cnt_sec[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[1]~10_combout\ = (\cnt_sec[1]~reg0_q\ & (!\cnt_sec[0]~9\)) # (!\cnt_sec[1]~reg0_q\ & ((\cnt_sec[0]~9\) # (GND)))
-- \cnt_sec[1]~11\ = CARRY((!\cnt_sec[0]~9\) # (!\cnt_sec[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_sec[1]~reg0_q\,
	datad => VCC,
	cin => \cnt_sec[0]~9\,
	combout => \cnt_sec[1]~10_combout\,
	cout => \cnt_sec[1]~11\);

-- Location: FF_X50_Y28_N19
\cnt_sec[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[1]~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[1]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N20
\cnt_sec[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[2]~12_combout\ = (\cnt_sec[2]~reg0_q\ & (\cnt_sec[1]~11\ $ (GND))) # (!\cnt_sec[2]~reg0_q\ & (!\cnt_sec[1]~11\ & VCC))
-- \cnt_sec[2]~13\ = CARRY((\cnt_sec[2]~reg0_q\ & !\cnt_sec[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_sec[2]~reg0_q\,
	datad => VCC,
	cin => \cnt_sec[1]~11\,
	combout => \cnt_sec[2]~12_combout\,
	cout => \cnt_sec[2]~13\);

-- Location: FF_X50_Y28_N21
\cnt_sec[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[2]~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[2]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N22
\cnt_sec[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[3]~14_combout\ = (\cnt_sec[3]~reg0_q\ & (!\cnt_sec[2]~13\)) # (!\cnt_sec[3]~reg0_q\ & ((\cnt_sec[2]~13\) # (GND)))
-- \cnt_sec[3]~15\ = CARRY((!\cnt_sec[2]~13\) # (!\cnt_sec[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_sec[3]~reg0_q\,
	datad => VCC,
	cin => \cnt_sec[2]~13\,
	combout => \cnt_sec[3]~14_combout\,
	cout => \cnt_sec[3]~15\);

-- Location: FF_X50_Y28_N23
\cnt_sec[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[3]~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[3]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N24
\cnt_sec[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[4]~16_combout\ = (\cnt_sec[4]~reg0_q\ & (\cnt_sec[3]~15\ $ (GND))) # (!\cnt_sec[4]~reg0_q\ & (!\cnt_sec[3]~15\ & VCC))
-- \cnt_sec[4]~17\ = CARRY((\cnt_sec[4]~reg0_q\ & !\cnt_sec[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_sec[4]~reg0_q\,
	datad => VCC,
	cin => \cnt_sec[3]~15\,
	combout => \cnt_sec[4]~16_combout\,
	cout => \cnt_sec[4]~17\);

-- Location: FF_X50_Y28_N25
\cnt_sec[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[4]~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[4]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N26
\cnt_sec[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[5]~18_combout\ = (\cnt_sec[5]~reg0_q\ & (!\cnt_sec[4]~17\)) # (!\cnt_sec[5]~reg0_q\ & ((\cnt_sec[4]~17\) # (GND)))
-- \cnt_sec[5]~19\ = CARRY((!\cnt_sec[4]~17\) # (!\cnt_sec[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_sec[5]~reg0_q\,
	datad => VCC,
	cin => \cnt_sec[4]~17\,
	combout => \cnt_sec[5]~18_combout\,
	cout => \cnt_sec[5]~19\);

-- Location: FF_X50_Y28_N27
\cnt_sec[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[5]~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[5]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N28
\cnt_sec[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[6]~20_combout\ = (\cnt_sec[6]~reg0_q\ & (\cnt_sec[5]~19\ $ (GND))) # (!\cnt_sec[6]~reg0_q\ & (!\cnt_sec[5]~19\ & VCC))
-- \cnt_sec[6]~21\ = CARRY((\cnt_sec[6]~reg0_q\ & !\cnt_sec[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_sec[6]~reg0_q\,
	datad => VCC,
	cin => \cnt_sec[5]~19\,
	combout => \cnt_sec[6]~20_combout\,
	cout => \cnt_sec[6]~21\);

-- Location: FF_X50_Y28_N29
\cnt_sec[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[6]~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[6]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N30
\cnt_sec[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_sec[7]~22_combout\ = \cnt_sec[7]~reg0_q\ $ (\cnt_sec[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_sec[7]~reg0_q\,
	cin => \cnt_sec[6]~21\,
	combout => \cnt_sec[7]~22_combout\);

-- Location: FF_X50_Y28_N31
\cnt_sec[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[7]~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[7]~reg0_q\);

-- Location: LCCOMB_X50_Y28_N12
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!\cnt_sec[4]~reg0_q\) # (!\cnt_sec[5]~reg0_q\)) # (!\cnt_sec[2]~reg0_q\)) # (!\cnt_sec[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_sec[3]~reg0_q\,
	datab => \cnt_sec[2]~reg0_q\,
	datac => \cnt_sec[5]~reg0_q\,
	datad => \cnt_sec[4]~reg0_q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y28_N2
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\cnt_sec[6]~reg0_q\) # ((\cnt_sec[7]~reg0_q\) # (!\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_sec[6]~reg0_q\,
	datac => \cnt_sec[7]~reg0_q\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X50_Y28_N17
\cnt_sec[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_sec[0]~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_sec[0]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N16
\cnt_min[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[0]~8_combout\ = \cnt_min[0]~reg0_q\ $ (VCC)
-- \cnt_min[0]~9\ = CARRY(\cnt_min[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[0]~reg0_q\,
	datad => VCC,
	combout => \cnt_min[0]~8_combout\,
	cout => \cnt_min[0]~9\);

-- Location: LCCOMB_X51_Y28_N18
\cnt_min[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[1]~10_combout\ = (\cnt_min[1]~reg0_q\ & (!\cnt_min[0]~9\)) # (!\cnt_min[1]~reg0_q\ & ((\cnt_min[0]~9\) # (GND)))
-- \cnt_min[1]~11\ = CARRY((!\cnt_min[0]~9\) # (!\cnt_min[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[1]~reg0_q\,
	datad => VCC,
	cin => \cnt_min[0]~9\,
	combout => \cnt_min[1]~10_combout\,
	cout => \cnt_min[1]~11\);

-- Location: LCCOMB_X50_Y28_N4
\cnt_hr[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[0]~8_combout\ = (\rst~input_o\ & ((\cnt_sec[6]~reg0_q\) # ((\cnt_sec[7]~reg0_q\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \cnt_sec[6]~reg0_q\,
	datac => \cnt_sec[7]~reg0_q\,
	datad => \LessThan0~0_combout\,
	combout => \cnt_hr[0]~8_combout\);

-- Location: FF_X51_Y28_N19
\cnt_min[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[1]~10_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[1]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N20
\cnt_min[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[2]~12_combout\ = (\cnt_min[2]~reg0_q\ & (\cnt_min[1]~11\ $ (GND))) # (!\cnt_min[2]~reg0_q\ & (!\cnt_min[1]~11\ & VCC))
-- \cnt_min[2]~13\ = CARRY((\cnt_min[2]~reg0_q\ & !\cnt_min[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[2]~reg0_q\,
	datad => VCC,
	cin => \cnt_min[1]~11\,
	combout => \cnt_min[2]~12_combout\,
	cout => \cnt_min[2]~13\);

-- Location: FF_X51_Y28_N21
\cnt_min[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[2]~12_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[2]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N22
\cnt_min[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[3]~14_combout\ = (\cnt_min[3]~reg0_q\ & (!\cnt_min[2]~13\)) # (!\cnt_min[3]~reg0_q\ & ((\cnt_min[2]~13\) # (GND)))
-- \cnt_min[3]~15\ = CARRY((!\cnt_min[2]~13\) # (!\cnt_min[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_min[3]~reg0_q\,
	datad => VCC,
	cin => \cnt_min[2]~13\,
	combout => \cnt_min[3]~14_combout\,
	cout => \cnt_min[3]~15\);

-- Location: FF_X51_Y28_N23
\cnt_min[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[3]~14_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[3]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N24
\cnt_min[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[4]~16_combout\ = (\cnt_min[4]~reg0_q\ & (\cnt_min[3]~15\ $ (GND))) # (!\cnt_min[4]~reg0_q\ & (!\cnt_min[3]~15\ & VCC))
-- \cnt_min[4]~17\ = CARRY((\cnt_min[4]~reg0_q\ & !\cnt_min[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[4]~reg0_q\,
	datad => VCC,
	cin => \cnt_min[3]~15\,
	combout => \cnt_min[4]~16_combout\,
	cout => \cnt_min[4]~17\);

-- Location: FF_X51_Y28_N25
\cnt_min[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[4]~16_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[4]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N26
\cnt_min[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[5]~18_combout\ = (\cnt_min[5]~reg0_q\ & (!\cnt_min[4]~17\)) # (!\cnt_min[5]~reg0_q\ & ((\cnt_min[4]~17\) # (GND)))
-- \cnt_min[5]~19\ = CARRY((!\cnt_min[4]~17\) # (!\cnt_min[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[5]~reg0_q\,
	datad => VCC,
	cin => \cnt_min[4]~17\,
	combout => \cnt_min[5]~18_combout\,
	cout => \cnt_min[5]~19\);

-- Location: FF_X51_Y28_N27
\cnt_min[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[5]~18_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[5]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N28
\cnt_min[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[6]~20_combout\ = (\cnt_min[6]~reg0_q\ & (\cnt_min[5]~19\ $ (GND))) # (!\cnt_min[6]~reg0_q\ & (!\cnt_min[5]~19\ & VCC))
-- \cnt_min[6]~21\ = CARRY((\cnt_min[6]~reg0_q\ & !\cnt_min[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[6]~reg0_q\,
	datad => VCC,
	cin => \cnt_min[5]~19\,
	combout => \cnt_min[6]~20_combout\,
	cout => \cnt_min[6]~21\);

-- Location: FF_X51_Y28_N29
\cnt_min[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[6]~20_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[6]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N30
\cnt_min[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_min[7]~22_combout\ = \cnt_min[7]~reg0_q\ $ (\cnt_min[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_min[7]~reg0_q\,
	cin => \cnt_min[6]~21\,
	combout => \cnt_min[7]~22_combout\);

-- Location: FF_X51_Y28_N31
\cnt_min[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[7]~22_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[7]~reg0_q\);

-- Location: LCCOMB_X51_Y28_N12
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\cnt_min[4]~reg0_q\) # (!\cnt_min[5]~reg0_q\)) # (!\cnt_min[2]~reg0_q\)) # (!\cnt_min[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_min[3]~reg0_q\,
	datab => \cnt_min[2]~reg0_q\,
	datac => \cnt_min[5]~reg0_q\,
	datad => \cnt_min[4]~reg0_q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X51_Y28_N2
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\cnt_min[6]~reg0_q\) # ((\cnt_min[7]~reg0_q\) # (!\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_min[6]~reg0_q\,
	datac => \cnt_min[7]~reg0_q\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: FF_X51_Y28_N17
\cnt_min[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_min[0]~8_combout\,
	sclr => \LessThan1~1_combout\,
	ena => \cnt_hr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_min[0]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N10
\cnt_hr[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[0]~9_combout\ = \cnt_hr[0]~reg0_q\ $ (VCC)
-- \cnt_hr[0]~10\ = CARRY(\cnt_hr[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_hr[0]~reg0_q\,
	datad => VCC,
	combout => \cnt_hr[0]~9_combout\,
	cout => \cnt_hr[0]~10\);

-- Location: LCCOMB_X49_Y28_N12
\cnt_hr[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[1]~12_combout\ = (\cnt_hr[1]~reg0_q\ & (!\cnt_hr[0]~10\)) # (!\cnt_hr[1]~reg0_q\ & ((\cnt_hr[0]~10\) # (GND)))
-- \cnt_hr[1]~13\ = CARRY((!\cnt_hr[0]~10\) # (!\cnt_hr[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_hr[1]~reg0_q\,
	datad => VCC,
	cin => \cnt_hr[0]~10\,
	combout => \cnt_hr[1]~12_combout\,
	cout => \cnt_hr[1]~13\);

-- Location: LCCOMB_X49_Y28_N4
\cnt_hr[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[0]~11_combout\ = (\cnt_hr[0]~8_combout\ & ((\cnt_min[6]~reg0_q\) # ((\cnt_min[7]~reg0_q\) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_min[6]~reg0_q\,
	datab => \cnt_min[7]~reg0_q\,
	datac => \LessThan1~0_combout\,
	datad => \cnt_hr[0]~8_combout\,
	combout => \cnt_hr[0]~11_combout\);

-- Location: FF_X49_Y28_N13
\cnt_hr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[1]~12_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[1]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N14
\cnt_hr[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[2]~14_combout\ = (\cnt_hr[2]~reg0_q\ & (\cnt_hr[1]~13\ $ (GND))) # (!\cnt_hr[2]~reg0_q\ & (!\cnt_hr[1]~13\ & VCC))
-- \cnt_hr[2]~15\ = CARRY((\cnt_hr[2]~reg0_q\ & !\cnt_hr[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_hr[2]~reg0_q\,
	datad => VCC,
	cin => \cnt_hr[1]~13\,
	combout => \cnt_hr[2]~14_combout\,
	cout => \cnt_hr[2]~15\);

-- Location: FF_X49_Y28_N15
\cnt_hr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[2]~14_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[2]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N16
\cnt_hr[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[3]~16_combout\ = (\cnt_hr[3]~reg0_q\ & (!\cnt_hr[2]~15\)) # (!\cnt_hr[3]~reg0_q\ & ((\cnt_hr[2]~15\) # (GND)))
-- \cnt_hr[3]~17\ = CARRY((!\cnt_hr[2]~15\) # (!\cnt_hr[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_hr[3]~reg0_q\,
	datad => VCC,
	cin => \cnt_hr[2]~15\,
	combout => \cnt_hr[3]~16_combout\,
	cout => \cnt_hr[3]~17\);

-- Location: FF_X49_Y28_N17
\cnt_hr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[3]~16_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[3]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N18
\cnt_hr[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[4]~18_combout\ = (\cnt_hr[4]~reg0_q\ & (\cnt_hr[3]~17\ $ (GND))) # (!\cnt_hr[4]~reg0_q\ & (!\cnt_hr[3]~17\ & VCC))
-- \cnt_hr[4]~19\ = CARRY((\cnt_hr[4]~reg0_q\ & !\cnt_hr[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_hr[4]~reg0_q\,
	datad => VCC,
	cin => \cnt_hr[3]~17\,
	combout => \cnt_hr[4]~18_combout\,
	cout => \cnt_hr[4]~19\);

-- Location: FF_X49_Y28_N19
\cnt_hr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[4]~18_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[4]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N20
\cnt_hr[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[5]~20_combout\ = (\cnt_hr[5]~reg0_q\ & (!\cnt_hr[4]~19\)) # (!\cnt_hr[5]~reg0_q\ & ((\cnt_hr[4]~19\) # (GND)))
-- \cnt_hr[5]~21\ = CARRY((!\cnt_hr[4]~19\) # (!\cnt_hr[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt_hr[5]~reg0_q\,
	datad => VCC,
	cin => \cnt_hr[4]~19\,
	combout => \cnt_hr[5]~20_combout\,
	cout => \cnt_hr[5]~21\);

-- Location: FF_X49_Y28_N21
\cnt_hr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[5]~20_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[5]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N22
\cnt_hr[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[6]~22_combout\ = (\cnt_hr[6]~reg0_q\ & (\cnt_hr[5]~21\ $ (GND))) # (!\cnt_hr[6]~reg0_q\ & (!\cnt_hr[5]~21\ & VCC))
-- \cnt_hr[6]~23\ = CARRY((\cnt_hr[6]~reg0_q\ & !\cnt_hr[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_hr[6]~reg0_q\,
	datad => VCC,
	cin => \cnt_hr[5]~21\,
	combout => \cnt_hr[6]~22_combout\,
	cout => \cnt_hr[6]~23\);

-- Location: FF_X49_Y28_N23
\cnt_hr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[6]~22_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[6]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N24
\cnt_hr[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt_hr[7]~24_combout\ = \cnt_hr[6]~23\ $ (\cnt_hr[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cnt_hr[7]~reg0_q\,
	cin => \cnt_hr[6]~23\,
	combout => \cnt_hr[7]~24_combout\);

-- Location: FF_X49_Y28_N25
\cnt_hr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[7]~24_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[7]~reg0_q\);

-- Location: LCCOMB_X49_Y28_N0
\LessThan2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\cnt_hr[6]~reg0_q\ & (!\cnt_hr[5]~reg0_q\ & ((!\cnt_hr[4]~reg0_q\) # (!\cnt_hr[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt_hr[6]~reg0_q\,
	datab => \cnt_hr[3]~reg0_q\,
	datac => \cnt_hr[4]~reg0_q\,
	datad => \cnt_hr[5]~reg0_q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X49_Y28_N6
\LessThan2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\cnt_hr[7]~reg0_q\) # (!\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt_hr[7]~reg0_q\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: FF_X49_Y28_N11
\cnt_hr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_hr[0]~9_combout\,
	sclr => \LessThan2~1_combout\,
	ena => \cnt_hr[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hr[0]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N8
\ad_hr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ad_hr,
	o => \ad_hr~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\ad_min~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ad_min,
	o => \ad_min~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\ad_sec~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ad_sec,
	o => \ad_sec~input_o\);

ww_Hr_s(0) <= \Hr_s[0]~output_o\;

ww_Hr_s(1) <= \Hr_s[1]~output_o\;

ww_Hr_s(2) <= \Hr_s[2]~output_o\;

ww_Hr_s(3) <= \Hr_s[3]~output_o\;

ww_Hr_s(4) <= \Hr_s[4]~output_o\;

ww_Hr_s(5) <= \Hr_s[5]~output_o\;

ww_Hr_s(6) <= \Hr_s[6]~output_o\;

ww_Hr_g(0) <= \Hr_g[0]~output_o\;

ww_Hr_g(1) <= \Hr_g[1]~output_o\;

ww_Hr_g(2) <= \Hr_g[2]~output_o\;

ww_Hr_g(3) <= \Hr_g[3]~output_o\;

ww_Hr_g(4) <= \Hr_g[4]~output_o\;

ww_Hr_g(5) <= \Hr_g[5]~output_o\;

ww_Hr_g(6) <= \Hr_g[6]~output_o\;

ww_Min_s(0) <= \Min_s[0]~output_o\;

ww_Min_s(1) <= \Min_s[1]~output_o\;

ww_Min_s(2) <= \Min_s[2]~output_o\;

ww_Min_s(3) <= \Min_s[3]~output_o\;

ww_Min_s(4) <= \Min_s[4]~output_o\;

ww_Min_s(5) <= \Min_s[5]~output_o\;

ww_Min_s(6) <= \Min_s[6]~output_o\;

ww_Min_g(0) <= \Min_g[0]~output_o\;

ww_Min_g(1) <= \Min_g[1]~output_o\;

ww_Min_g(2) <= \Min_g[2]~output_o\;

ww_Min_g(3) <= \Min_g[3]~output_o\;

ww_Min_g(4) <= \Min_g[4]~output_o\;

ww_Min_g(5) <= \Min_g[5]~output_o\;

ww_Min_g(6) <= \Min_g[6]~output_o\;

ww_Sec_s(0) <= \Sec_s[0]~output_o\;

ww_Sec_s(1) <= \Sec_s[1]~output_o\;

ww_Sec_s(2) <= \Sec_s[2]~output_o\;

ww_Sec_s(3) <= \Sec_s[3]~output_o\;

ww_Sec_s(4) <= \Sec_s[4]~output_o\;

ww_Sec_s(5) <= \Sec_s[5]~output_o\;

ww_Sec_s(6) <= \Sec_s[6]~output_o\;

ww_Sec_g(0) <= \Sec_g[0]~output_o\;

ww_Sec_g(1) <= \Sec_g[1]~output_o\;

ww_Sec_g(2) <= \Sec_g[2]~output_o\;

ww_Sec_g(3) <= \Sec_g[3]~output_o\;

ww_Sec_g(4) <= \Sec_g[4]~output_o\;

ww_Sec_g(5) <= \Sec_g[5]~output_o\;

ww_Sec_g(6) <= \Sec_g[6]~output_o\;

ww_cnt_sec(0) <= \cnt_sec[0]~output_o\;

ww_cnt_sec(1) <= \cnt_sec[1]~output_o\;

ww_cnt_sec(2) <= \cnt_sec[2]~output_o\;

ww_cnt_sec(3) <= \cnt_sec[3]~output_o\;

ww_cnt_sec(4) <= \cnt_sec[4]~output_o\;

ww_cnt_sec(5) <= \cnt_sec[5]~output_o\;

ww_cnt_sec(6) <= \cnt_sec[6]~output_o\;

ww_cnt_sec(7) <= \cnt_sec[7]~output_o\;

ww_cnt_min(0) <= \cnt_min[0]~output_o\;

ww_cnt_min(1) <= \cnt_min[1]~output_o\;

ww_cnt_min(2) <= \cnt_min[2]~output_o\;

ww_cnt_min(3) <= \cnt_min[3]~output_o\;

ww_cnt_min(4) <= \cnt_min[4]~output_o\;

ww_cnt_min(5) <= \cnt_min[5]~output_o\;

ww_cnt_min(6) <= \cnt_min[6]~output_o\;

ww_cnt_min(7) <= \cnt_min[7]~output_o\;

ww_cnt_hr(0) <= \cnt_hr[0]~output_o\;

ww_cnt_hr(1) <= \cnt_hr[1]~output_o\;

ww_cnt_hr(2) <= \cnt_hr[2]~output_o\;

ww_cnt_hr(3) <= \cnt_hr[3]~output_o\;

ww_cnt_hr(4) <= \cnt_hr[4]~output_o\;

ww_cnt_hr(5) <= \cnt_hr[5]~output_o\;

ww_cnt_hr(6) <= \cnt_hr[6]~output_o\;

ww_cnt_hr(7) <= \cnt_hr[7]~output_o\;
END structure;


