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

-- DATE "12/07/2018 10:06:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	traffic IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	S : IN std_logic;
	state : OUT std_logic_vector(1 DOWNTO 0);
	main_led : OUT std_logic_vector(2 DOWNTO 0);
	country_led : OUT std_logic_vector(2 DOWNTO 0);
	SEG_s : OUT std_logic_vector(6 DOWNTO 0);
	SEG_g : OUT std_logic_vector(6 DOWNTO 0);
	cnt : OUT std_logic_vector(7 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- state[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_led[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_led[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_led[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- country_led[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- country_led[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- country_led[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_s[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_g[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_state : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_main_led : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_country_led : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SEG_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG_g : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \main_led[0]~output_o\ : std_logic;
SIGNAL \main_led[1]~output_o\ : std_logic;
SIGNAL \main_led[2]~output_o\ : std_logic;
SIGNAL \country_led[0]~output_o\ : std_logic;
SIGNAL \country_led[1]~output_o\ : std_logic;
SIGNAL \country_led[2]~output_o\ : std_logic;
SIGNAL \SEG_s[0]~output_o\ : std_logic;
SIGNAL \SEG_s[1]~output_o\ : std_logic;
SIGNAL \SEG_s[2]~output_o\ : std_logic;
SIGNAL \SEG_s[3]~output_o\ : std_logic;
SIGNAL \SEG_s[4]~output_o\ : std_logic;
SIGNAL \SEG_s[5]~output_o\ : std_logic;
SIGNAL \SEG_s[6]~output_o\ : std_logic;
SIGNAL \SEG_g[0]~output_o\ : std_logic;
SIGNAL \SEG_g[1]~output_o\ : std_logic;
SIGNAL \SEG_g[2]~output_o\ : std_logic;
SIGNAL \SEG_g[3]~output_o\ : std_logic;
SIGNAL \SEG_g[4]~output_o\ : std_logic;
SIGNAL \SEG_g[5]~output_o\ : std_logic;
SIGNAL \SEG_g[6]~output_o\ : std_logic;
SIGNAL \cnt[0]~output_o\ : std_logic;
SIGNAL \cnt[1]~output_o\ : std_logic;
SIGNAL \cnt[2]~output_o\ : std_logic;
SIGNAL \cnt[3]~output_o\ : std_logic;
SIGNAL \cnt[4]~output_o\ : std_logic;
SIGNAL \cnt[5]~output_o\ : std_logic;
SIGNAL \cnt[6]~output_o\ : std_logic;
SIGNAL \cnt[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[1]~reg0_q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \cnt[2]~reg0_q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \cnt[3]~reg0_q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \cnt[4]~reg0_q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \cnt[5]~reg0_q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \cnt[6]~reg0_q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \cnt[7]~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \state[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \cnt[7]~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \cnt[0]~reg0_q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \state[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_cnt[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_cnt[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_cnt[5]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_S <= S;
state <= ww_state;
main_led <= ww_main_led;
country_led <= ww_country_led;
SEG_s <= ww_SEG_s;
SEG_g <= ww_SEG_g;
cnt <= ww_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Decoder0~0_combout\ <= NOT \Decoder0~0_combout\;
\ALT_INV_state[1]~reg0_q\ <= NOT \state[1]~reg0_q\;
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;
\ALT_INV_cnt[0]~reg0_q\ <= NOT \cnt[0]~reg0_q\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_cnt[1]~reg0_q\ <= NOT \cnt[1]~reg0_q\;
\ALT_INV_cnt[3]~reg0_q\ <= NOT \cnt[3]~reg0_q\;
\ALT_INV_cnt[4]~reg0_q\ <= NOT \cnt[4]~reg0_q\;
\ALT_INV_cnt[5]~reg0_q\ <= NOT \cnt[5]~reg0_q\;

-- Location: IOOBUF_X29_Y31_N2
\state[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[0]~reg0_q\,
	devoe => ww_devoe,
	o => \state[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\state[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[1]~reg0_q\,
	devoe => ww_devoe,
	o => \state[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\main_led[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \main_led[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\main_led[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \main_led[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\main_led[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[1]~reg0_q\,
	devoe => ww_devoe,
	o => \main_led[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\country_led[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \country_led[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\country_led[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \country_led[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\country_led[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state[1]~reg0_q\,
	devoe => ww_devoe,
	o => \country_led[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\SEG_s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[0]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\SEG_s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\SEG_s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[2]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\SEG_s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\SEG_s[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[4]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\SEG_s[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[5]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\SEG_s[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \SEG_s[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\SEG_g[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr13~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\SEG_g[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr12~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\SEG_g[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr11~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\SEG_g[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\SEG_g[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\SEG_g[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[5]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\SEG_g[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \SEG_g[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\cnt[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cnt[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\cnt[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cnt[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\cnt[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\cnt[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cnt[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\cnt[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cnt[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\cnt[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_cnt[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\cnt[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\cnt[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cnt[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: LCCOMB_X26_Y28_N12
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \cnt[0]~reg0_q\ $ (GND)
-- \Add0~1\ = CARRY(!\cnt[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X33_Y28_N1
\S~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X27_Y28_N4
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\state[1]~reg0_q\ & ((\state[0]~reg0_q\))) # (!\state[1]~reg0_q\ & (!\S~input_o\ & !\state[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\state[0]~reg0_q\) # ((!\S~input_o\ & !\state[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\) # (\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y28_N14
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\cnt[1]~reg0_q\ & (!\Add0~1\)) # (!\cnt[1]~reg0_q\ & (\Add0~1\ & VCC))
-- \Add0~3\ = CARRY((\cnt[1]~reg0_q\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[1]~reg0_q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X26_Y28_N0
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\Add0~2_combout\ & \cnt[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \cnt[7]~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
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

-- Location: FF_X26_Y28_N1
\cnt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[1]~reg0_q\);

-- Location: LCCOMB_X26_Y28_N16
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\cnt[2]~reg0_q\ & ((GND) # (!\Add0~3\))) # (!\cnt[2]~reg0_q\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\cnt[2]~reg0_q\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X26_Y28_N30
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Add0~4_combout\ & \cnt[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => \cnt[7]~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X26_Y28_N31
\cnt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[2]~reg0_q\);

-- Location: LCCOMB_X26_Y28_N18
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\cnt[3]~reg0_q\ & (!\Add0~5\)) # (!\cnt[3]~reg0_q\ & (\Add0~5\ & VCC))
-- \Add0~7\ = CARRY((\cnt[3]~reg0_q\ & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[3]~reg0_q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y28_N28
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\cnt[7]~0_combout\ & ((!\Add0~6_combout\))) # (!\cnt[7]~0_combout\ & (!\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Add0~6_combout\,
	datad => \cnt[7]~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X26_Y28_N29
\cnt[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[3]~reg0_q\);

-- Location: LCCOMB_X26_Y28_N20
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\cnt[4]~reg0_q\ & (\Add0~7\ $ (GND))) # (!\cnt[4]~reg0_q\ & ((GND) # (!\Add0~7\)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!\cnt[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[4]~reg0_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X26_Y28_N2
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\LessThan0~2_combout\ & (((!\Mux3~0_combout\ & !\S~input_o\)) # (!\Add0~8_combout\))) # (!\LessThan0~2_combout\ & (!\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \S~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X26_Y28_N3
\cnt[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[4]~reg0_q\);

-- Location: LCCOMB_X26_Y28_N22
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\cnt[5]~reg0_q\ & (!\Add0~9\)) # (!\cnt[5]~reg0_q\ & (\Add0~9\ & VCC))
-- \Add0~11\ = CARRY((\cnt[5]~reg0_q\ & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[5]~reg0_q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y28_N4
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\cnt[7]~0_combout\ & ((!\Add0~10_combout\))) # (!\cnt[7]~0_combout\ & (!\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \Add0~10_combout\,
	datad => \cnt[7]~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X26_Y28_N5
\cnt[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[5]~reg0_q\);

-- Location: LCCOMB_X26_Y28_N24
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\cnt[6]~reg0_q\ & ((GND) # (!\Add0~11\))) # (!\cnt[6]~reg0_q\ & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((\cnt[6]~reg0_q\) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[6]~reg0_q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y28_N6
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\cnt[7]~0_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[7]~0_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X26_Y28_N7
\cnt[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[6]~reg0_q\);

-- Location: LCCOMB_X26_Y28_N26
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (!\cnt[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cnt[7]~reg0_q\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X26_Y28_N8
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add0~14_combout\ & \cnt[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \cnt[7]~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X26_Y28_N9
\cnt[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[7]~reg0_q\);

-- Location: LCCOMB_X27_Y28_N16
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\cnt[7]~reg0_q\) # ((\cnt[6]~reg0_q\) # ((!\cnt[4]~reg0_q\) # (!\cnt[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[7]~reg0_q\,
	datab => \cnt[6]~reg0_q\,
	datac => \cnt[5]~reg0_q\,
	datad => \cnt[4]~reg0_q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = \state[1]~reg0_q\ $ (((!\LessThan0~1_combout\ & (\state[0]~reg0_q\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \LessThan0~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X27_Y28_N3
\state[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[1]~reg0_q\);

-- Location: LCCOMB_X27_Y28_N24
\Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\state[1]~reg0_q\ & !\state[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X27_Y28_N22
\cnt[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[7]~0_combout\ = (\LessThan0~1_combout\ & ((\S~input_o\) # ((!\Decoder0~2_combout\)))) # (!\LessThan0~1_combout\ & (\LessThan0~0_combout\ & ((\S~input_o\) # (!\Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \S~input_o\,
	datac => \Decoder0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \cnt[7]~0_combout\);

-- Location: LCCOMB_X26_Y28_N10
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\Add0~0_combout\ & \cnt[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \cnt[7]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X26_Y28_N11
\cnt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[0]~reg0_q\);

-- Location: LCCOMB_X27_Y28_N30
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((\cnt[2]~reg0_q\) # (!\cnt[1]~reg0_q\)) # (!\cnt[3]~reg0_q\)) # (!\cnt[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \cnt[3]~reg0_q\,
	datac => \cnt[1]~reg0_q\,
	datad => \cnt[2]~reg0_q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y28_N12
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\state[0]~reg0_q\ & (\LessThan0~1_combout\)) # (!\state[0]~reg0_q\ & ((\S~input_o\ & (!\LessThan0~1_combout\)) # (!\S~input_o\ & ((\state[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \state[0]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => \S~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\LessThan0~0_combout\ & ((\state[0]~reg0_q\) # ((\Mux9~0_combout\ & !\S~input_o\)))) # (!\LessThan0~0_combout\ & (\Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \S~input_o\,
	datac => \state[0]~reg0_q\,
	datad => \LessThan0~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: FF_X27_Y28_N1
\state[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[0]~reg0_q\);

-- Location: LCCOMB_X27_Y28_N20
\Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\state[1]~reg0_q\) # (\state[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\state[1]~reg0_q\ & \state[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X27_Y28_N10
\Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\state[1]~reg0_q\ & \state[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[1]~reg0_q\,
	datad => \state[0]~reg0_q\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X25_Y28_N18
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \cnt[5]~reg0_q\ $ (GND)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\cnt[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[5]~reg0_q\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X25_Y28_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\cnt[6]~reg0_q\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\cnt[6]~reg0_q\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\cnt[6]~reg0_q\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[6]~reg0_q\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X25_Y28_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\cnt[7]~reg0_q\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\cnt[7]~reg0_q\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ 
-- & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\cnt[7]~reg0_q\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[7]~reg0_q\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X25_Y28_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X25_Y28_N26
\Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X25_Y28_N16
\Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \cnt[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \cnt[7]~reg0_q\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X24_Y28_N12
\Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X25_Y28_N28
\Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\cnt[6]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[6]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X25_Y28_N30
\Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X25_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (!\cnt[5]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[5]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X24_Y28_N26
\Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (!\cnt[4]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[4]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X24_Y28_N24
\Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\cnt[4]~reg0_q\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[4]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X25_Y28_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X25_Y28_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X25_Y28_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X25_Y28_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y28_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y28_N4
\Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\cnt[6]~reg0_q\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[6]~reg0_q\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X24_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X25_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\cnt[5]~reg0_q\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[5]~reg0_q\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X24_Y28_N28
\Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X24_Y28_N10
\Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (!\cnt[4]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[4]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X24_Y28_N8
\Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X24_Y28_N30
\Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\cnt[3]~reg0_q\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[3]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X24_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (!\cnt[3]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[3]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X24_Y28_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y28_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y28_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y28_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y28_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y28_N4
\Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X23_Y28_N8
\Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X24_Y28_N6
\Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\cnt[4]~reg0_q\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \cnt[4]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X23_Y28_N14
\Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X23_Y28_N6
\Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X23_Y28_N28
\Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (!\cnt[3]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[3]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X23_Y28_N10
\Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\cnt[2]~reg0_q\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[2]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X23_Y28_N16
\Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\cnt[2]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[2]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X23_Y28_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y28_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X23_Y28_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y28_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y28_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y28_N12
\Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X22_Y28_N20
\Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X23_Y28_N4
\Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\cnt[3]~reg0_q\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[3]~reg0_q\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X23_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \cnt[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \cnt[2]~reg0_q\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X22_Y28_N2
\Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X22_Y28_N30
\Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\cnt[1]~reg0_q\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[1]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X22_Y28_N0
\Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (!\cnt[1]~reg0_q\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[1]~reg0_q\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X22_Y28_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X22_Y28_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X22_Y28_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X22_Y28_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y28_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y28_N24
\WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X22_Y28_N28
\WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X22_Y28_N6
\WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y28_N8
\WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X22_Y28_N22
\WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X22_Y28_N4
\WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X22_Y28_N26
\WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X25_Y29_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \cnt[5]~reg0_q\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\cnt[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[5]~reg0_q\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X25_Y29_N2
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\cnt[6]~reg0_q\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\cnt[6]~reg0_q\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\cnt[6]~reg0_q\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[6]~reg0_q\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X25_Y29_N4
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\cnt[7]~reg0_q\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\cnt[7]~reg0_q\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ 
-- & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\cnt[7]~reg0_q\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[7]~reg0_q\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X25_Y29_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X25_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X25_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \cnt[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \cnt[7]~reg0_q\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X26_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\cnt[6]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[6]~reg0_q\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X25_Y29_N8
\Mod0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X25_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X25_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (!\cnt[5]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[5]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X26_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (!\cnt[4]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[4]~reg0_q\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X26_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\cnt[4]~reg0_q\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[4]~reg0_q\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X25_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X25_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X25_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X25_Y29_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y29_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y29_N14
\Mod0|auto_generated|divider|divider|StageOut[22]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\cnt[5]~reg0_q\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \cnt[5]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X25_Y29_N12
\Mod0|auto_generated|divider|divider|StageOut[23]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\cnt[6]~reg0_q\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \cnt[6]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X26_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X26_Y29_N18
\Mod0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X26_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X26_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (!\cnt[4]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[4]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X26_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\cnt[3]~reg0_q\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[3]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X26_Y29_N20
\Mod0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (!\cnt[3]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[3]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X26_Y29_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X26_Y29_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X26_Y29_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X26_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y29_N16
\Mod0|auto_generated|divider|divider|StageOut[28]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X27_Y29_N8
\Mod0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X27_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X26_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[27]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\cnt[4]~reg0_q\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \cnt[4]~reg0_q\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X27_Y29_N6
\Mod0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X27_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (!\cnt[3]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[3]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X27_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\cnt[2]~reg0_q\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X27_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\cnt[2]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X27_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X27_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X27_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X27_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X27_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X27_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[31]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ = (\cnt[2]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\);

-- Location: LCCOMB_X30_Y29_N18
\Mod0|auto_generated|divider|divider|StageOut[31]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\);

-- Location: LCCOMB_X30_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[30]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\ = (!\cnt[1]~reg0_q\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[1]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X30_Y29_N8
\Mod0|auto_generated|divider|divider|StageOut[30]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\ = (!\cnt[1]~reg0_q\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt[1]~reg0_q\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\);

-- Location: LCCOMB_X30_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~56_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X30_Y29_N22
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X27_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X30_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[33]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\);

-- Location: LCCOMB_X27_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[32]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\);

-- Location: LCCOMB_X27_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\cnt[3]~reg0_q\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \cnt[3]~reg0_q\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X30_Y29_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X30_Y29_N26
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~58_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y29_N28
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[37]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X30_Y29_N12
\Mod0|auto_generated|divider|divider|StageOut[38]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\);

-- Location: LCCOMB_X30_Y29_N16
\Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\cnt[1]~reg0_q\))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \cnt[1]~reg0_q\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X32_Y25_N24
\WideOr13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ $ (((!\cnt[0]~reg0_q\ & !\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X32_Y25_N22
\WideOr12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\) # (\cnt[0]~reg0_q\ $ (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ & \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X32_Y25_N20
\WideOr11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & ((\cnt[0]~reg0_q\) # (\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X32_Y25_N30
\WideOr10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\) # ((!\cnt[0]~reg0_q\ & \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ $ (((!\cnt[0]~reg0_q\ & !\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X32_Y25_N4
\WideOr9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\))) # (!\cnt[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X32_Y25_N14
\WideOr8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\cnt[0]~reg0_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\cnt[0]~reg0_q\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ $ 
-- (!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X32_Y25_N12
\WideOr7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ & ((\cnt[0]~reg0_q\) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~reg0_q\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	combout => \WideOr7~0_combout\);

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_main_led(0) <= \main_led[0]~output_o\;

ww_main_led(1) <= \main_led[1]~output_o\;

ww_main_led(2) <= \main_led[2]~output_o\;

ww_country_led(0) <= \country_led[0]~output_o\;

ww_country_led(1) <= \country_led[1]~output_o\;

ww_country_led(2) <= \country_led[2]~output_o\;

ww_SEG_s(0) <= \SEG_s[0]~output_o\;

ww_SEG_s(1) <= \SEG_s[1]~output_o\;

ww_SEG_s(2) <= \SEG_s[2]~output_o\;

ww_SEG_s(3) <= \SEG_s[3]~output_o\;

ww_SEG_s(4) <= \SEG_s[4]~output_o\;

ww_SEG_s(5) <= \SEG_s[5]~output_o\;

ww_SEG_s(6) <= \SEG_s[6]~output_o\;

ww_SEG_g(0) <= \SEG_g[0]~output_o\;

ww_SEG_g(1) <= \SEG_g[1]~output_o\;

ww_SEG_g(2) <= \SEG_g[2]~output_o\;

ww_SEG_g(3) <= \SEG_g[3]~output_o\;

ww_SEG_g(4) <= \SEG_g[4]~output_o\;

ww_SEG_g(5) <= \SEG_g[5]~output_o\;

ww_SEG_g(6) <= \SEG_g[6]~output_o\;

ww_cnt(0) <= \cnt[0]~output_o\;

ww_cnt(1) <= \cnt[1]~output_o\;

ww_cnt(2) <= \cnt[2]~output_o\;

ww_cnt(3) <= \cnt[3]~output_o\;

ww_cnt(4) <= \cnt[4]~output_o\;

ww_cnt(5) <= \cnt[5]~output_o\;

ww_cnt(6) <= \cnt[6]~output_o\;

ww_cnt(7) <= \cnt[7]~output_o\;
END structure;


