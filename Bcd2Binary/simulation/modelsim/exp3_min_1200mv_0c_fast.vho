-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "03/12/2019 11:21:36"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lpm IS
    PORT (
	r : OUT std_logic_vector(15 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0)
	);
END lpm;

-- Design Ports Information
-- r[15]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[14]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[13]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[11]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[10]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lpm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \r[15]~output_o\ : std_logic;
SIGNAL \r[14]~output_o\ : std_logic;
SIGNAL \r[13]~output_o\ : std_logic;
SIGNAL \r[12]~output_o\ : std_logic;
SIGNAL \r[11]~output_o\ : std_logic;
SIGNAL \r[10]~output_o\ : std_logic;
SIGNAL \r[9]~output_o\ : std_logic;
SIGNAL \r[8]~output_o\ : std_logic;
SIGNAL \r[7]~output_o\ : std_logic;
SIGNAL \r[6]~output_o\ : std_logic;
SIGNAL \r[5]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~9\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~11\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~29\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~30_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~28_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~26_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~24_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~22_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~20_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~18_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ : std_logic;
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(8 DOWNTO 0);

BEGIN

r <= ww_r;
ww_a <= a;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y22_N2
\r[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~30_combout\,
	devoe => ww_devoe,
	o => \r[15]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\r[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~28_combout\,
	devoe => ww_devoe,
	o => \r[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\r[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~26_combout\,
	devoe => ww_devoe,
	o => \r[13]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\r[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~24_combout\,
	devoe => ww_devoe,
	o => \r[12]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\r[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~22_combout\,
	devoe => ww_devoe,
	o => \r[11]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\r[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~20_combout\,
	devoe => ww_devoe,
	o => \r[10]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\r[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~18_combout\,
	devoe => ww_devoe,
	o => \r[9]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\r[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\,
	devoe => ww_devoe,
	o => \r[8]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\r[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	devoe => ww_devoe,
	o => \r[7]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\r[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	devoe => ww_devoe,
	o => \r[6]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\r[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	devoe => ww_devoe,
	o => \r[5]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\r[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\r[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\r[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\r[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\r[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: LCCOMB_X27_Y20_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8));

-- Location: LCCOMB_X26_Y20_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9));

-- Location: IOIBUF_X31_Y31_N8
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X27_Y20_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) = LCELL((\a[7]~input_o\ & \b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datad => \b[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7));

-- Location: IOIBUF_X16_Y0_N1
\b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X27_Y17_N24
\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = (\b[3]~input_o\) # ((\b[1]~input_o\ & \b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X27_Y17_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ = (\b[6]~input_o\ & ((\b[5]~input_o\) # ((\b[4]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \b[5]~input_o\,
	datad => \b[6]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\);

-- Location: LCCOMB_X27_Y17_N14
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = LCELL((\a[7]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[7]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: IOIBUF_X33_Y25_N8
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X27_Y20_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) = LCELL((\b[7]~input_o\ & \a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datac => \a[6]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6));

-- Location: LCCOMB_X27_Y17_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ = \b[6]~input_o\ $ (((\b[5]~input_o\) # ((\b[4]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \b[5]~input_o\,
	datad => \b[6]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\);

-- Location: LCCOMB_X27_Y17_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = LCELL((\a[6]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\) # ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & 
-- \a[7]~input_o\)))) # (!\a[6]~input_o\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datac => \a[7]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: LCCOMB_X27_Y17_N28
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) = LCELL(\b[3]~input_o\ $ (((\b[1]~input_o\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9));

-- Location: LCCOMB_X27_Y17_N6
\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ = \b[4]~input_o\ $ (((\b[3]~input_o\) # ((\b[1]~input_o\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\);

-- Location: LCCOMB_X27_Y17_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) = LCELL(\b[5]~input_o\ $ (((\b[4]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \b[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9));

-- Location: LCCOMB_X27_Y18_N14
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (\a[7]~input_o\ $ (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9)))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (((!\a[6]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7));

-- Location: LCCOMB_X27_Y17_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = LCELL((\a[7]~input_o\ & (\b[3]~input_o\ & (\b[1]~input_o\ $ (\b[2]~input_o\)))) # (!\a[7]~input_o\ & (\b[3]~input_o\ $ (((\b[1]~input_o\ & \b[2]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[7]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: IOIBUF_X33_Y27_N8
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X27_Y18_N24
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (\a[6]~input_o\ $ (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9)))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (((!\a[5]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datab => \a[6]~input_o\,
	datac => \a[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6));

-- Location: LCCOMB_X27_Y17_N2
\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ = \b[1]~input_o\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datad => \b[2]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\a[7]~input_o\ $ (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9)))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (((!\a[6]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: IOIBUF_X24_Y31_N1
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X27_Y18_N28
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & ((\a[5]~input_o\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (!\a[4]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datab => \a[4]~input_o\,
	datac => \a[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5));

-- Location: IOIBUF_X33_Y27_N1
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X27_Y18_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) = LCELL((\b[1]~input_o\ & ((\b[0]~input_o\) # (!\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8));

-- Location: LCCOMB_X27_Y18_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\a[6]~input_o\ $ (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9)))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (((!\a[5]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datab => \a[6]~input_o\,
	datac => \a[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X27_Y18_N26
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) = LCELL((\b[0]~input_o\ & (\a[7]~input_o\ $ (((\b[1]~input_o\))))) # (!\b[0]~input_o\ & (((!\a[6]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7));

-- Location: LCCOMB_X27_Y18_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & ((\a[5]~input_o\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (!\a[4]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datab => \a[4]~input_o\,
	datac => \a[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X27_Y18_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) $ (VCC))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & VCC))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) & \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	datad => VCC,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\);

-- Location: LCCOMB_X27_Y18_N2
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(8),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~1\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\);

-- Location: LCCOMB_X27_Y18_N4
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(5),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~3\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\);

-- Location: LCCOMB_X27_Y18_N6
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(6),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~5\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\);

-- Location: LCCOMB_X27_Y18_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) $ 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~9\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(7),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~7\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~9\);

-- Location: LCCOMB_X27_Y18_N10
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\ = !\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~9\
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~11\ = CARRY(!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~9\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~11\);

-- Location: LCCOMB_X27_Y20_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) = LCELL((\a[5]~input_o\ & \b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[5]~input_o\,
	datad => \b[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5));

-- Location: LCCOMB_X26_Y19_N26
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) = LCELL((\b[7]~input_o\ & \a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datac => \a[4]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4));

-- Location: IOIBUF_X33_Y24_N8
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X26_Y19_N12
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) = LCELL((\a[3]~input_o\ & \b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \b[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3));

-- Location: IOIBUF_X24_Y0_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X26_Y19_N22
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) = LCELL((\a[2]~input_o\ & \b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2));

-- Location: IOIBUF_X33_Y22_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X26_Y19_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) = LCELL((\a[1]~input_o\ & \b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \b[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1));

-- Location: IOIBUF_X33_Y14_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X26_Y19_N10
\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL((\a[0]~input_o\ & \b[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \b[7]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X27_Y17_N10
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datad => \a[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X26_Y19_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (\a[2]~input_o\ $ ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & !\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datac => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datad => \a[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X26_Y19_N6
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) $ (\a[1]~input_o\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (!\a[0]~input_o\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datac => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datad => \a[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X27_Y19_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\a[3]~input_o\ $ ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & !\a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datac => \a[2]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X27_Y17_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\b[5]~input_o\ $ (((\b[4]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\) # (\a[0]~input_o\))) # (!\b[4]~input_o\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datac => \b[5]~input_o\,
	datad => \a[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X27_Y19_N2
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\a[2]~input_o\ $ ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & !\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datab => \a[2]~input_o\,
	datac => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datad => \a[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X26_Y19_N24
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) = LCELL((\b[0]~input_o\ & (\b[1]~input_o\ $ ((\a[3]~input_o\)))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & ((!\a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3));

-- Location: LCCOMB_X26_Y19_N2
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) = LCELL((\b[0]~input_o\ & (\b[1]~input_o\ $ (((\a[2]~input_o\))))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2));

-- Location: LCCOMB_X27_Y19_N4
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) $ (VCC))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & VCC))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datad => VCC,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\);

-- Location: LCCOMB_X27_Y19_N6
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (GND)))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ = CARRY((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\);

-- Location: LCCOMB_X27_Y19_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\);

-- Location: LCCOMB_X27_Y19_N10
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\);

-- Location: LCCOMB_X27_Y19_N12
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\);

-- Location: LCCOMB_X27_Y19_N14
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[0]~0_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\);

-- Location: LCCOMB_X27_Y19_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(1),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[1]~2_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~11\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\);

-- Location: LCCOMB_X27_Y19_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(2),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[2]~4_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~13\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\);

-- Location: LCCOMB_X27_Y19_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(3),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[3]~6_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~15\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\);

-- Location: LCCOMB_X27_Y19_N22
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(4),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[4]~8_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~17\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\);

-- Location: LCCOMB_X27_Y19_N24
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~10_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(5),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~19\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\);

-- Location: LCCOMB_X27_Y19_N26
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(6),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~21\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\);

-- Location: LCCOMB_X27_Y19_N28
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(7),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~23\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\);

-- Location: LCCOMB_X27_Y19_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\ = \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\ $ 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le8a\(8),
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9),
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~25\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\);

-- Location: LCCOMB_X27_Y18_N12
\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ = !\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[5]~11\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\);

-- Location: LCCOMB_X27_Y17_N12
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) = LCELL((\a[7]~input_o\ & (\b[5]~input_o\ & (\b[4]~input_o\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # (!\a[7]~input_o\ & (\b[5]~input_o\ $ (((\b[4]~input_o\ 
-- & \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \b[5]~input_o\,
	datac => \a[7]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8));

-- Location: LCCOMB_X27_Y17_N26
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = LCELL((\a[6]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\) # ((\a[5]~input_o\ & 
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))) # (!\a[6]~input_o\ & (((\a[5]~input_o\ & \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datac => \a[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X27_Y17_N4
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = LCELL((\a[4]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\) # ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & 
-- \a[5]~input_o\)))) # (!\a[4]~input_o\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datac => \a[5]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X29_Y15_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) = LCELL(\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9));

-- Location: LCCOMB_X26_Y15_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\a[4]~input_o\) # ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & 
-- \a[3]~input_o\)))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & ((\a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \a[4]~input_o\,
	datad => \a[3]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X26_Y15_N26
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\a[3]~input_o\) # ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & 
-- \a[2]~input_o\)))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X26_Y19_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (\a[4]~input_o\ $ ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & !\a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datac => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datad => \a[3]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4));

-- Location: LCCOMB_X26_Y15_N28
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = LCELL((\a[2]~input_o\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\) # ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & 
-- \a[1]~input_o\)))) # (!\a[2]~input_o\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \a[1]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X26_Y15_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & ((\a[1]~input_o\) # ((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & 
-- \a[0]~input_o\)))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[3]~2_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs2a[3]~3_combout\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X26_Y19_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) $ (\a[3]~input_o\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\ & (!\a[2]~input_o\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~0_combout\,
	datac => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datad => \a[3]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X27_Y18_N22
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) = LCELL((\b[0]~input_o\ & (\a[6]~input_o\ $ (((\b[1]~input_o\))))) # (!\b[0]~input_o\ & (((!\a[5]~input_o\ & \b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[6]~input_o\,
	datac => \a[5]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6));

-- Location: LCCOMB_X26_Y19_N4
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) $ ((\a[4]~input_o\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((!\a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datac => \a[4]~input_o\,
	datad => \a[3]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X26_Y19_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) = LCELL((\b[0]~input_o\ & (\b[1]~input_o\ $ (((\a[5]~input_o\))))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & (!\a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[4]~input_o\,
	datac => \a[5]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5));

-- Location: LCCOMB_X26_Y19_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) = LCELL((\b[0]~input_o\ & (\b[1]~input_o\ $ (((\a[4]~input_o\))))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[4]~input_o\,
	datad => \b[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4));

-- Location: LCCOMB_X26_Y15_N2
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) $ (VCC))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) & VCC))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4),
	datad => VCC,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\);

-- Location: LCCOMB_X26_Y15_N4
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (GND)))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ = CARRY((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\);

-- Location: LCCOMB_X26_Y15_N6
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\);

-- Location: LCCOMB_X26_Y15_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\);

-- Location: LCCOMB_X26_Y15_N10
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(4),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~7\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\);

-- Location: LCCOMB_X26_Y15_N12
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~9\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\);

-- Location: LCCOMB_X26_Y15_N14
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~11\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\);

-- Location: LCCOMB_X26_Y15_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\ & VCC)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\) # (GND))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(9),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~13\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\);

-- Location: LCCOMB_X26_Y15_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(8),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~15\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\);

-- Location: LCCOMB_X26_Y15_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ & 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\) # (GND))))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\ & VCC)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le6a\(9),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|add21_result[6]~12_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~17\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\);

-- Location: LCCOMB_X26_Y15_N22
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ = \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\ $ (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\ = CARRY(!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~19\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\);

-- Location: LCCOMB_X26_Y15_N24
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ = !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~21\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\);

-- Location: LCCOMB_X26_Y17_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) $ (\a[1]~input_o\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (!\a[0]~input_o\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datac => \a[1]~input_o\,
	datad => \inst|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X27_Y17_N22
\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL(\b[3]~input_o\ $ (((\b[2]~input_o\ & ((\b[1]~input_o\) # (\a[0]~input_o\))) # (!\b[2]~input_o\ & (\b[1]~input_o\ & \a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X26_Y19_N28
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) = LCELL((\b[0]~input_o\ & ((\a[1]~input_o\ $ (\b[1]~input_o\)))) # (!\b[0]~input_o\ & (!\a[0]~input_o\ & ((\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1));

-- Location: LCCOMB_X26_Y19_N14
\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) = LCELL(\b[1]~input_o\ $ (((\b[0]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0));

-- Location: LCCOMB_X27_Y15_N0
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\b[1]~input_o\ $ (VCC))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\b[1]~input_o\ & VCC))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & \b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0),
	datab => \b[1]~input_o\,
	datad => VCC,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\);

-- Location: LCCOMB_X27_Y15_N2
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (GND)))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ = CARRY((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\);

-- Location: LCCOMB_X27_Y15_N4
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\);

-- Location: LCCOMB_X27_Y15_N6
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\);

-- Location: LCCOMB_X27_Y15_N8
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\);

-- Location: LCCOMB_X27_Y15_N10
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\);

-- Location: LCCOMB_X27_Y15_N12
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\);

-- Location: LCCOMB_X27_Y15_N14
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\);

-- Location: LCCOMB_X27_Y15_N16
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~8_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~12_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~15\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~16_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\);

-- Location: LCCOMB_X27_Y15_N18
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~18_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~10_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~14_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~17\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~18_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\);

-- Location: LCCOMB_X27_Y15_N20
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~20_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~16_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~12_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~19\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~20_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\);

-- Location: LCCOMB_X27_Y15_N22
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~22_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~14_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~18_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~21\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~22_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\);

-- Location: LCCOMB_X27_Y15_N24
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~24_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~20_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~16_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~23\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~24_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\);

-- Location: LCCOMB_X27_Y15_N26
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~26_combout\ = (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ & 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\ & VCC)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\)))) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\)) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\) # (GND)))))
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\)) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\ & ((!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~18_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~22_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~25\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~26_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\);

-- Location: LCCOMB_X27_Y15_N28
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~28_combout\ = ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ $ 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\)))) # (GND)
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~29\ = CARRY((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ & ((\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\) # 
-- (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\))) # (!\inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\ & (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\ & 
-- !\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~24_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~20_combout\,
	datad => VCC,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~27\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~28_combout\,
	cout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~29\);

-- Location: LCCOMB_X27_Y15_N30
\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~30_combout\ = \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\ $ (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\ $ 
-- (\inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_1~26_combout\,
	datab => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_2~22_combout\,
	cin => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~29\,
	combout => \inst|auto_generated|mac_mult1|auto_generated|mult1|op_5~30_combout\);

ww_r(15) <= \r[15]~output_o\;

ww_r(14) <= \r[14]~output_o\;

ww_r(13) <= \r[13]~output_o\;

ww_r(12) <= \r[12]~output_o\;

ww_r(11) <= \r[11]~output_o\;

ww_r(10) <= \r[10]~output_o\;

ww_r(9) <= \r[9]~output_o\;

ww_r(8) <= \r[8]~output_o\;

ww_r(7) <= \r[7]~output_o\;

ww_r(6) <= \r[6]~output_o\;

ww_r(5) <= \r[5]~output_o\;

ww_r(4) <= \r[4]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(0) <= \r[0]~output_o\;
END structure;


