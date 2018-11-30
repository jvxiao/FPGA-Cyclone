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

-- DATE "11/30/2018 10:37:20"

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

ENTITY 	sig IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	load : IN std_logic;
	seq_last6 : OUT std_logic_vector(5 DOWNTO 0);
	led : OUT std_logic;
	state : OUT std_logic_vector(2 DOWNTO 0)
	);
END sig;

-- Design Ports Information
-- seq_last6[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seq_last6[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seq_last6[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seq_last6[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seq_last6[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seq_last6[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sig IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_seq_last6 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL ww_state : std_logic_vector(2 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1s~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seq_last6[0]~output_o\ : std_logic;
SIGNAL \seq_last6[1]~output_o\ : std_logic;
SIGNAL \seq_last6[2]~output_o\ : std_logic;
SIGNAL \seq_last6[3]~output_o\ : std_logic;
SIGNAL \seq_last6[4]~output_o\ : std_logic;
SIGNAL \seq_last6[5]~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \state[0]~output_o\ : std_logic;
SIGNAL \state[1]~output_o\ : std_logic;
SIGNAL \state[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~31_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[23]~78\ : std_logic;
SIGNAL \counter[24]~79_combout\ : std_logic;
SIGNAL \counter[24]~80\ : std_logic;
SIGNAL \counter[25]~81_combout\ : std_logic;
SIGNAL \counter[25]~82\ : std_logic;
SIGNAL \counter[26]~83_combout\ : std_logic;
SIGNAL \counter[26]~84\ : std_logic;
SIGNAL \counter[27]~85_combout\ : std_logic;
SIGNAL \counter[27]~86\ : std_logic;
SIGNAL \counter[28]~87_combout\ : std_logic;
SIGNAL \counter[28]~88\ : std_logic;
SIGNAL \counter[29]~89_combout\ : std_logic;
SIGNAL \counter[29]~90\ : std_logic;
SIGNAL \counter[30]~91_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \counter[0]~32\ : std_logic;
SIGNAL \counter[1]~33_combout\ : std_logic;
SIGNAL \counter[1]~34\ : std_logic;
SIGNAL \counter[2]~35_combout\ : std_logic;
SIGNAL \counter[2]~36\ : std_logic;
SIGNAL \counter[3]~37_combout\ : std_logic;
SIGNAL \counter[3]~38\ : std_logic;
SIGNAL \counter[4]~39_combout\ : std_logic;
SIGNAL \counter[4]~40\ : std_logic;
SIGNAL \counter[5]~41_combout\ : std_logic;
SIGNAL \counter[5]~42\ : std_logic;
SIGNAL \counter[6]~43_combout\ : std_logic;
SIGNAL \counter[6]~44\ : std_logic;
SIGNAL \counter[7]~45_combout\ : std_logic;
SIGNAL \counter[7]~46\ : std_logic;
SIGNAL \counter[8]~47_combout\ : std_logic;
SIGNAL \counter[8]~48\ : std_logic;
SIGNAL \counter[9]~49_combout\ : std_logic;
SIGNAL \counter[9]~50\ : std_logic;
SIGNAL \counter[10]~51_combout\ : std_logic;
SIGNAL \counter[10]~52\ : std_logic;
SIGNAL \counter[11]~53_combout\ : std_logic;
SIGNAL \counter[11]~54\ : std_logic;
SIGNAL \counter[12]~55_combout\ : std_logic;
SIGNAL \counter[12]~56\ : std_logic;
SIGNAL \counter[13]~57_combout\ : std_logic;
SIGNAL \counter[13]~58\ : std_logic;
SIGNAL \counter[14]~59_combout\ : std_logic;
SIGNAL \counter[14]~60\ : std_logic;
SIGNAL \counter[15]~61_combout\ : std_logic;
SIGNAL \counter[15]~62\ : std_logic;
SIGNAL \counter[16]~63_combout\ : std_logic;
SIGNAL \counter[16]~64\ : std_logic;
SIGNAL \counter[17]~65_combout\ : std_logic;
SIGNAL \counter[17]~66\ : std_logic;
SIGNAL \counter[18]~67_combout\ : std_logic;
SIGNAL \counter[18]~68\ : std_logic;
SIGNAL \counter[19]~69_combout\ : std_logic;
SIGNAL \counter[19]~70\ : std_logic;
SIGNAL \counter[20]~71_combout\ : std_logic;
SIGNAL \counter[20]~72\ : std_logic;
SIGNAL \counter[21]~73_combout\ : std_logic;
SIGNAL \counter[21]~74\ : std_logic;
SIGNAL \counter[22]~75_combout\ : std_logic;
SIGNAL \counter[22]~76\ : std_logic;
SIGNAL \counter[23]~77_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \clk_1s~0_combout\ : std_logic;
SIGNAL \clk_1s~feeder_combout\ : std_logic;
SIGNAL \clk_1s~q\ : std_logic;
SIGNAL \clk_1s~clkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \seq_n~1_combout\ : std_logic;
SIGNAL \seq_n~2_combout\ : std_logic;
SIGNAL \seq_n~3_combout\ : std_logic;
SIGNAL \seq_n~4_combout\ : std_logic;
SIGNAL \seq_n~5_combout\ : std_logic;
SIGNAL \seq_n~15_combout\ : std_logic;
SIGNAL \seq_n~14_combout\ : std_logic;
SIGNAL \seq_n~13_combout\ : std_logic;
SIGNAL \seq_n~12_combout\ : std_logic;
SIGNAL \seq_n~11_combout\ : std_logic;
SIGNAL \seq_n~10_combout\ : std_logic;
SIGNAL \seq_n~9_combout\ : std_logic;
SIGNAL \seq_n~8_combout\ : std_logic;
SIGNAL \seq_n~7_combout\ : std_logic;
SIGNAL \seq_n~6_combout\ : std_logic;
SIGNAL \seq_n~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \state[1]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \state[0]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \state[2]~reg0_q\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL seq_n : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(30 DOWNTO 0);
SIGNAL ALT_INV_seq_n : std_logic_vector(4 DOWNTO 1);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_load <= load;
seq_last6 <= ww_seq_last6;
led <= ww_led;
state <= ww_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clk_1s~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1s~q\);
ALT_INV_seq_n(4) <= NOT seq_n(4);
ALT_INV_seq_n(3) <= NOT seq_n(3);
ALT_INV_seq_n(1) <= NOT seq_n(1);

-- Location: IOOBUF_X26_Y31_N2
\seq_last6[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => seq_n(0),
	devoe => ww_devoe,
	o => \seq_last6[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\seq_last6[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seq_n(1),
	devoe => ww_devoe,
	o => \seq_last6[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\seq_last6[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => seq_n(2),
	devoe => ww_devoe,
	o => \seq_last6[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\seq_last6[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seq_n(3),
	devoe => ww_devoe,
	o => \seq_last6[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\seq_last6[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_seq_n(4),
	devoe => ww_devoe,
	o => \seq_last6[4]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\seq_last6[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => seq_n(5),
	devoe => ww_devoe,
	o => \seq_last6[5]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\led~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~0_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X22_Y31_N2
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

-- Location: IOOBUF_X20_Y31_N9
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

-- Location: IOOBUF_X20_Y31_N2
\state[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state[2]~reg0_q\,
	devoe => ww_devoe,
	o => \state[2]~output_o\);

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

-- Location: LCCOMB_X24_Y23_N2
\counter[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[0]~31_combout\ = counter(0) $ (VCC)
-- \counter[0]~32\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~31_combout\,
	cout => \counter[0]~32\);

-- Location: IOIBUF_X16_Y0_N22
\rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G19
\rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y22_N16
\counter[23]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[23]~77_combout\ = (counter(23) & (!\counter[22]~76\)) # (!counter(23) & ((\counter[22]~76\) # (GND)))
-- \counter[23]~78\ = CARRY((!\counter[22]~76\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~76\,
	combout => \counter[23]~77_combout\,
	cout => \counter[23]~78\);

-- Location: LCCOMB_X24_Y22_N18
\counter[24]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[24]~79_combout\ = (counter(24) & (\counter[23]~78\ $ (GND))) # (!counter(24) & (!\counter[23]~78\ & VCC))
-- \counter[24]~80\ = CARRY((counter(24) & !\counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~78\,
	combout => \counter[24]~79_combout\,
	cout => \counter[24]~80\);

-- Location: FF_X24_Y22_N19
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~79_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X24_Y22_N20
\counter[25]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[25]~81_combout\ = (counter(25) & (!\counter[24]~80\)) # (!counter(25) & ((\counter[24]~80\) # (GND)))
-- \counter[25]~82\ = CARRY((!\counter[24]~80\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~80\,
	combout => \counter[25]~81_combout\,
	cout => \counter[25]~82\);

-- Location: FF_X24_Y22_N21
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~81_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X24_Y22_N22
\counter[26]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[26]~83_combout\ = (counter(26) & (\counter[25]~82\ $ (GND))) # (!counter(26) & (!\counter[25]~82\ & VCC))
-- \counter[26]~84\ = CARRY((counter(26) & !\counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datad => VCC,
	cin => \counter[25]~82\,
	combout => \counter[26]~83_combout\,
	cout => \counter[26]~84\);

-- Location: FF_X24_Y22_N23
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[26]~83_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X24_Y22_N24
\counter[27]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[27]~85_combout\ = (counter(27) & (!\counter[26]~84\)) # (!counter(27) & ((\counter[26]~84\) # (GND)))
-- \counter[27]~86\ = CARRY((!\counter[26]~84\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \counter[26]~84\,
	combout => \counter[27]~85_combout\,
	cout => \counter[27]~86\);

-- Location: FF_X24_Y22_N25
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[27]~85_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X24_Y22_N26
\counter[28]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[28]~87_combout\ = (counter(28) & (\counter[27]~86\ $ (GND))) # (!counter(28) & (!\counter[27]~86\ & VCC))
-- \counter[28]~88\ = CARRY((counter(28) & !\counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \counter[27]~86\,
	combout => \counter[28]~87_combout\,
	cout => \counter[28]~88\);

-- Location: FF_X24_Y22_N27
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[28]~87_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X24_Y22_N28
\counter[29]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[29]~89_combout\ = (counter(29) & (!\counter[28]~88\)) # (!counter(29) & ((\counter[28]~88\) # (GND)))
-- \counter[29]~90\ = CARRY((!\counter[28]~88\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \counter[28]~88\,
	combout => \counter[29]~89_combout\,
	cout => \counter[29]~90\);

-- Location: FF_X24_Y22_N29
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[29]~89_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X24_Y22_N30
\counter[30]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[30]~91_combout\ = counter(30) $ (!\counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	cin => \counter[29]~90\,
	combout => \counter[30]~91_combout\);

-- Location: FF_X24_Y22_N31
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[30]~91_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X25_Y22_N12
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!counter(28) & (!counter(26) & (!counter(27) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datab => counter(26),
	datac => counter(27),
	datad => counter(25),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X25_Y22_N30
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!counter(29) & (!counter(30) & \LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datac => counter(30),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X25_Y22_N24
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(23) & (!counter(17) & !counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datac => counter(17),
	datad => counter(15),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y23_N0
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(13)) # (!counter(14))) # (!counter(11))) # (!counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(11),
	datac => counter(14),
	datad => counter(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y22_N28
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(6) & (!counter(8) & (!counter(9) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(8),
	datac => counter(9),
	datad => counter(7),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y22_N6
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((!counter(10) & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y22_N0
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((!\LessThan0~6_combout\ & !\LessThan0~3_combout\)) # (!\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~9_combout\);

-- Location: FF_X24_Y23_N3
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X24_Y23_N4
\counter[1]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[1]~33_combout\ = (counter(1) & (!\counter[0]~32\)) # (!counter(1) & ((\counter[0]~32\) # (GND)))
-- \counter[1]~34\ = CARRY((!\counter[0]~32\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~32\,
	combout => \counter[1]~33_combout\,
	cout => \counter[1]~34\);

-- Location: FF_X24_Y23_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X24_Y23_N6
\counter[2]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[2]~35_combout\ = (counter(2) & (\counter[1]~34\ $ (GND))) # (!counter(2) & (!\counter[1]~34\ & VCC))
-- \counter[2]~36\ = CARRY((counter(2) & !\counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~34\,
	combout => \counter[2]~35_combout\,
	cout => \counter[2]~36\);

-- Location: FF_X24_Y23_N7
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X24_Y23_N8
\counter[3]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[3]~37_combout\ = (counter(3) & (!\counter[2]~36\)) # (!counter(3) & ((\counter[2]~36\) # (GND)))
-- \counter[3]~38\ = CARRY((!\counter[2]~36\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~36\,
	combout => \counter[3]~37_combout\,
	cout => \counter[3]~38\);

-- Location: FF_X24_Y23_N9
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X24_Y23_N10
\counter[4]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[4]~39_combout\ = (counter(4) & (\counter[3]~38\ $ (GND))) # (!counter(4) & (!\counter[3]~38\ & VCC))
-- \counter[4]~40\ = CARRY((counter(4) & !\counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~38\,
	combout => \counter[4]~39_combout\,
	cout => \counter[4]~40\);

-- Location: FF_X24_Y23_N11
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X24_Y23_N12
\counter[5]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[5]~41_combout\ = (counter(5) & (!\counter[4]~40\)) # (!counter(5) & ((\counter[4]~40\) # (GND)))
-- \counter[5]~42\ = CARRY((!\counter[4]~40\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~40\,
	combout => \counter[5]~41_combout\,
	cout => \counter[5]~42\);

-- Location: FF_X24_Y23_N13
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~41_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X24_Y23_N14
\counter[6]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[6]~43_combout\ = (counter(6) & (\counter[5]~42\ $ (GND))) # (!counter(6) & (!\counter[5]~42\ & VCC))
-- \counter[6]~44\ = CARRY((counter(6) & !\counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~42\,
	combout => \counter[6]~43_combout\,
	cout => \counter[6]~44\);

-- Location: FF_X24_Y23_N15
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~43_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X24_Y23_N16
\counter[7]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[7]~45_combout\ = (counter(7) & (!\counter[6]~44\)) # (!counter(7) & ((\counter[6]~44\) # (GND)))
-- \counter[7]~46\ = CARRY((!\counter[6]~44\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~44\,
	combout => \counter[7]~45_combout\,
	cout => \counter[7]~46\);

-- Location: FF_X24_Y23_N17
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~45_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X24_Y23_N18
\counter[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[8]~47_combout\ = (counter(8) & (\counter[7]~46\ $ (GND))) # (!counter(8) & (!\counter[7]~46\ & VCC))
-- \counter[8]~48\ = CARRY((counter(8) & !\counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~46\,
	combout => \counter[8]~47_combout\,
	cout => \counter[8]~48\);

-- Location: FF_X24_Y23_N19
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~47_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X24_Y23_N20
\counter[9]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[9]~49_combout\ = (counter(9) & (!\counter[8]~48\)) # (!counter(9) & ((\counter[8]~48\) # (GND)))
-- \counter[9]~50\ = CARRY((!\counter[8]~48\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~48\,
	combout => \counter[9]~49_combout\,
	cout => \counter[9]~50\);

-- Location: FF_X24_Y23_N21
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~49_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X24_Y23_N22
\counter[10]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[10]~51_combout\ = (counter(10) & (\counter[9]~50\ $ (GND))) # (!counter(10) & (!\counter[9]~50\ & VCC))
-- \counter[10]~52\ = CARRY((counter(10) & !\counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~50\,
	combout => \counter[10]~51_combout\,
	cout => \counter[10]~52\);

-- Location: FF_X24_Y23_N23
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~51_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X24_Y23_N24
\counter[11]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[11]~53_combout\ = (counter(11) & (!\counter[10]~52\)) # (!counter(11) & ((\counter[10]~52\) # (GND)))
-- \counter[11]~54\ = CARRY((!\counter[10]~52\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~52\,
	combout => \counter[11]~53_combout\,
	cout => \counter[11]~54\);

-- Location: FF_X24_Y23_N25
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~53_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X24_Y23_N26
\counter[12]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[12]~55_combout\ = (counter(12) & (\counter[11]~54\ $ (GND))) # (!counter(12) & (!\counter[11]~54\ & VCC))
-- \counter[12]~56\ = CARRY((counter(12) & !\counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \counter[11]~54\,
	combout => \counter[12]~55_combout\,
	cout => \counter[12]~56\);

-- Location: FF_X24_Y23_N27
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~55_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X24_Y23_N28
\counter[13]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[13]~57_combout\ = (counter(13) & (!\counter[12]~56\)) # (!counter(13) & ((\counter[12]~56\) # (GND)))
-- \counter[13]~58\ = CARRY((!\counter[12]~56\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~56\,
	combout => \counter[13]~57_combout\,
	cout => \counter[13]~58\);

-- Location: FF_X24_Y23_N29
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~57_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X24_Y23_N30
\counter[14]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[14]~59_combout\ = (counter(14) & (\counter[13]~58\ $ (GND))) # (!counter(14) & (!\counter[13]~58\ & VCC))
-- \counter[14]~60\ = CARRY((counter(14) & !\counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~58\,
	combout => \counter[14]~59_combout\,
	cout => \counter[14]~60\);

-- Location: FF_X24_Y23_N31
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~59_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X24_Y22_N0
\counter[15]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[15]~61_combout\ = (counter(15) & (!\counter[14]~60\)) # (!counter(15) & ((\counter[14]~60\) # (GND)))
-- \counter[15]~62\ = CARRY((!\counter[14]~60\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~60\,
	combout => \counter[15]~61_combout\,
	cout => \counter[15]~62\);

-- Location: FF_X24_Y22_N1
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~61_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X24_Y22_N2
\counter[16]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[16]~63_combout\ = (counter(16) & (\counter[15]~62\ $ (GND))) # (!counter(16) & (!\counter[15]~62\ & VCC))
-- \counter[16]~64\ = CARRY((counter(16) & !\counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~62\,
	combout => \counter[16]~63_combout\,
	cout => \counter[16]~64\);

-- Location: FF_X24_Y22_N3
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~63_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X24_Y22_N4
\counter[17]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[17]~65_combout\ = (counter(17) & (!\counter[16]~64\)) # (!counter(17) & ((\counter[16]~64\) # (GND)))
-- \counter[17]~66\ = CARRY((!\counter[16]~64\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~64\,
	combout => \counter[17]~65_combout\,
	cout => \counter[17]~66\);

-- Location: FF_X24_Y22_N5
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~65_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X24_Y22_N6
\counter[18]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[18]~67_combout\ = (counter(18) & (\counter[17]~66\ $ (GND))) # (!counter(18) & (!\counter[17]~66\ & VCC))
-- \counter[18]~68\ = CARRY((counter(18) & !\counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~66\,
	combout => \counter[18]~67_combout\,
	cout => \counter[18]~68\);

-- Location: FF_X24_Y22_N7
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~67_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X24_Y22_N8
\counter[19]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[19]~69_combout\ = (counter(19) & (!\counter[18]~68\)) # (!counter(19) & ((\counter[18]~68\) # (GND)))
-- \counter[19]~70\ = CARRY((!\counter[18]~68\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~68\,
	combout => \counter[19]~69_combout\,
	cout => \counter[19]~70\);

-- Location: FF_X24_Y22_N9
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~69_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X24_Y22_N10
\counter[20]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[20]~71_combout\ = (counter(20) & (\counter[19]~70\ $ (GND))) # (!counter(20) & (!\counter[19]~70\ & VCC))
-- \counter[20]~72\ = CARRY((counter(20) & !\counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~70\,
	combout => \counter[20]~71_combout\,
	cout => \counter[20]~72\);

-- Location: FF_X24_Y22_N11
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~71_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X24_Y22_N12
\counter[21]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[21]~73_combout\ = (counter(21) & (!\counter[20]~72\)) # (!counter(21) & ((\counter[20]~72\) # (GND)))
-- \counter[21]~74\ = CARRY((!\counter[20]~72\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~72\,
	combout => \counter[21]~73_combout\,
	cout => \counter[21]~74\);

-- Location: FF_X24_Y22_N13
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~73_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X24_Y22_N14
\counter[22]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[22]~75_combout\ = (counter(22) & (\counter[21]~74\ $ (GND))) # (!counter(22) & (!\counter[21]~74\ & VCC))
-- \counter[22]~76\ = CARRY((counter(22) & !\counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~74\,
	combout => \counter[22]~75_combout\,
	cout => \counter[22]~76\);

-- Location: FF_X24_Y22_N15
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~75_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: FF_X24_Y22_N17
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~77_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X25_Y22_N4
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!counter(22)) # (!counter(21))) # (!counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datac => counter(21),
	datad => counter(22),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X25_Y22_N18
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!counter(16) & !counter(17))) # (!counter(19))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(17),
	datac => counter(18),
	datad => counter(19),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y22_N26
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!counter(23) & ((\LessThan0~5_combout\) # (\LessThan0~4_combout\)))) # (!counter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(24),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y22_N10
\clk_1s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_1s~0_combout\ = \clk_1s~q\ $ ((((!\LessThan0~6_combout\ & !\LessThan0~3_combout\)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \clk_1s~q\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~3_combout\,
	combout => \clk_1s~0_combout\);

-- Location: LCCOMB_X25_Y22_N22
\clk_1s~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_1s~feeder_combout\ = \clk_1s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1s~0_combout\,
	combout => \clk_1s~feeder_combout\);

-- Location: FF_X25_Y22_N23
clk_1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1s~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1s~q\);

-- Location: CLKCTRL_G6
\clk_1s~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1s~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1s~clkctrl_outclk\);

-- Location: IOIBUF_X26_Y31_N8
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X25_Y27_N26
\seq_n~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~1_combout\ = (\load~input_o\ & !seq_n(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(0),
	combout => \seq_n~1_combout\);

-- Location: FF_X25_Y27_N27
\seq_n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(1));

-- Location: LCCOMB_X25_Y27_N8
\seq_n~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~2_combout\ = (!seq_n(1) & \load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seq_n(1),
	datad => \load~input_o\,
	combout => \seq_n~2_combout\);

-- Location: FF_X25_Y27_N9
\seq_n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(2));

-- Location: LCCOMB_X25_Y27_N2
\seq_n~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~3_combout\ = (!seq_n(2) & \load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seq_n(2),
	datad => \load~input_o\,
	combout => \seq_n~3_combout\);

-- Location: FF_X25_Y27_N3
\seq_n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(3));

-- Location: LCCOMB_X25_Y27_N0
\seq_n~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~4_combout\ = (\load~input_o\ & seq_n(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(3),
	combout => \seq_n~4_combout\);

-- Location: FF_X25_Y27_N1
\seq_n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(4));

-- Location: LCCOMB_X25_Y27_N14
\seq_n~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~5_combout\ = (\load~input_o\ & !seq_n(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(4),
	combout => \seq_n~5_combout\);

-- Location: FF_X25_Y27_N15
\seq_n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(5));

-- Location: LCCOMB_X25_Y27_N6
\seq_n~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~15_combout\ = (!seq_n(5) & \load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seq_n(5),
	datad => \load~input_o\,
	combout => \seq_n~15_combout\);

-- Location: FF_X25_Y27_N7
\seq_n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~15_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(6));

-- Location: LCCOMB_X25_Y27_N12
\seq_n~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~14_combout\ = (\load~input_o\ & seq_n(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(6),
	combout => \seq_n~14_combout\);

-- Location: FF_X25_Y27_N13
\seq_n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(7));

-- Location: LCCOMB_X25_Y27_N22
\seq_n~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~13_combout\ = (\load~input_o\ & !seq_n(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(7),
	combout => \seq_n~13_combout\);

-- Location: FF_X25_Y27_N23
\seq_n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(8));

-- Location: LCCOMB_X25_Y27_N20
\seq_n~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~12_combout\ = (seq_n(8) & \load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seq_n(8),
	datad => \load~input_o\,
	combout => \seq_n~12_combout\);

-- Location: FF_X25_Y27_N21
\seq_n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(9));

-- Location: LCCOMB_X25_Y27_N10
\seq_n~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~11_combout\ = (\load~input_o\ & !seq_n(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(9),
	combout => \seq_n~11_combout\);

-- Location: FF_X25_Y27_N11
\seq_n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(10));

-- Location: LCCOMB_X25_Y27_N16
\seq_n~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~10_combout\ = (\load~input_o\ & !seq_n(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(10),
	combout => \seq_n~10_combout\);

-- Location: FF_X25_Y27_N17
\seq_n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(11));

-- Location: LCCOMB_X25_Y27_N18
\seq_n~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~9_combout\ = (\load~input_o\ & !seq_n(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(11),
	combout => \seq_n~9_combout\);

-- Location: FF_X25_Y27_N19
\seq_n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(12));

-- Location: LCCOMB_X25_Y27_N28
\seq_n~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~8_combout\ = (\load~input_o\ & seq_n(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(12),
	combout => \seq_n~8_combout\);

-- Location: FF_X25_Y27_N29
\seq_n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(13));

-- Location: LCCOMB_X25_Y27_N30
\seq_n~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~7_combout\ = (\load~input_o\ & seq_n(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => seq_n(13),
	combout => \seq_n~7_combout\);

-- Location: FF_X25_Y27_N31
\seq_n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(14));

-- Location: LCCOMB_X25_Y27_N4
\seq_n~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~6_combout\ = (!seq_n(14) & \load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seq_n(14),
	datad => \load~input_o\,
	combout => \seq_n~6_combout\);

-- Location: FF_X25_Y27_N5
\seq_n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(15));

-- Location: LCCOMB_X25_Y27_N24
\seq_n~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seq_n~0_combout\ = (seq_n(15) & \load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seq_n(15),
	datad => \load~input_o\,
	combout => \seq_n~0_combout\);

-- Location: FF_X25_Y27_N25
\seq_n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \seq_n~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seq_n(0));

-- Location: LCCOMB_X24_Y27_N20
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\state[1]~reg0_q\ & (!\state[0]~reg0_q\ & (!\state[2]~reg0_q\))) # (!\state[1]~reg0_q\ & (seq_n(15) & (\state[0]~reg0_q\ $ (\state[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~reg0_q\,
	datab => \state[2]~reg0_q\,
	datac => \state[1]~reg0_q\,
	datad => seq_n(15),
	combout => \Mux1~0_combout\);

-- Location: FF_X24_Y27_N21
\state[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[1]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N30
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\state[2]~reg0_q\ & (!\state[1]~reg0_q\ & (\state[0]~reg0_q\ $ (!seq_n(15))))) # (!\state[2]~reg0_q\ & (!\state[0]~reg0_q\ & (\state[1]~reg0_q\ $ (seq_n(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~reg0_q\,
	datab => \state[1]~reg0_q\,
	datac => \state[0]~reg0_q\,
	datad => seq_n(15),
	combout => \Mux2~0_combout\);

-- Location: FF_X24_Y27_N31
\state[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[0]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N24
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\state[0]~reg0_q\ & (\state[1]~reg0_q\ & (!\state[2]~reg0_q\ & seq_n(15)))) # (!\state[0]~reg0_q\ & (!\state[1]~reg0_q\ & (\state[2]~reg0_q\ & !seq_n(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[0]~reg0_q\,
	datab => \state[1]~reg0_q\,
	datac => \state[2]~reg0_q\,
	datad => seq_n(15),
	combout => \Mux0~0_combout\);

-- Location: FF_X24_Y27_N25
\state[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1s~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[2]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N22
\led~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\state[2]~reg0_q\ & (!\state[1]~reg0_q\ & (\rst_n~input_o\ & \state[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[2]~reg0_q\,
	datab => \state[1]~reg0_q\,
	datac => \rst_n~input_o\,
	datad => \state[0]~reg0_q\,
	combout => \led~0_combout\);

ww_seq_last6(0) <= \seq_last6[0]~output_o\;

ww_seq_last6(1) <= \seq_last6[1]~output_o\;

ww_seq_last6(2) <= \seq_last6[2]~output_o\;

ww_seq_last6(3) <= \seq_last6[3]~output_o\;

ww_seq_last6(4) <= \seq_last6[4]~output_o\;

ww_seq_last6(5) <= \seq_last6[5]~output_o\;

ww_led <= \led~output_o\;

ww_state(0) <= \state[0]~output_o\;

ww_state(1) <= \state[1]~output_o\;

ww_state(2) <= \state[2]~output_o\;
END structure;


