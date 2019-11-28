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

-- DATE "02/27/2019 01:09:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	div11 IS
    PORT (
	result : OUT std_logic;
	a0 : IN std_logic_vector(3 DOWNTO 0);
	a1 : IN std_logic_vector(3 DOWNTO 0);
	a2 : IN std_logic_vector(3 DOWNTO 0);
	a3 : IN std_logic_vector(3 DOWNTO 0)
	);
END div11;

-- Design Ports Information
-- result	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF div11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_result : std_logic;
SIGNAL ww_a0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a3[0]~input_o\ : std_logic;
SIGNAL \a2[0]~input_o\ : std_logic;
SIGNAL \inst4|FA0|HA_1|xor~0_combout\ : std_logic;
SIGNAL \a1[1]~input_o\ : std_logic;
SIGNAL \a2[1]~input_o\ : std_logic;
SIGNAL \a3[1]~input_o\ : std_logic;
SIGNAL \inst5|FA1|HA_1|xor~combout\ : std_logic;
SIGNAL \a1[0]~input_o\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \inst6|FA1|or_cout~combout\ : std_logic;
SIGNAL \a2[2]~input_o\ : std_logic;
SIGNAL \a3[3]~input_o\ : std_logic;
SIGNAL \a2[3]~input_o\ : std_logic;
SIGNAL \a1[3]~input_o\ : std_logic;
SIGNAL \inst4|FA1|or_cout~combout\ : std_logic;
SIGNAL \a3[2]~input_o\ : std_logic;
SIGNAL \inst5|FA3|HA_1|xor~combout\ : std_logic;
SIGNAL \a1[2]~input_o\ : std_logic;
SIGNAL \inst5|FA1|or_cout~combout\ : std_logic;
SIGNAL \inst5|FA2|or_cout~combout\ : std_logic;
SIGNAL \inst5|FA2|HA_2|xor~combout\ : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \inst6|FA3|HA_2|xor~combout\ : std_logic;
SIGNAL \inst6|FA2|HA_2|xor~combout\ : std_logic;
SIGNAL \inst6|FA1|HA_2|xor~combout\ : std_logic;
SIGNAL \inst6|FA0|HA_1|xor~combout\ : std_logic;
SIGNAL \inst4|FA3|or_cout~combout\ : std_logic;
SIGNAL \inst6|FA2|or_cout~combout\ : std_logic;
SIGNAL \inst4|FA3|HA_2|xor~combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \inst26~1_combout\ : std_logic;
SIGNAL \inst5|FA2|ALT_INV_or_cout~combout\ : std_logic;
SIGNAL \inst5|FA3|HA_1|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst6|FA0|HA_1|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst6|FA2|HA_2|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst6|FA1|ALT_INV_or_cout~combout\ : std_logic;
SIGNAL \inst4|FA0|HA_1|ALT_INV_xor~0_combout\ : std_logic;
SIGNAL \inst5|FA1|HA_1|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst5|FA2|HA_2|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst5|FA1|ALT_INV_or_cout~combout\ : std_logic;
SIGNAL \inst4|FA1|ALT_INV_or_cout~combout\ : std_logic;
SIGNAL \ALT_INV_a3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inst26~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \inst4|FA3|ALT_INV_or_cout~combout\ : std_logic;
SIGNAL \inst6|FA2|ALT_INV_or_cout~combout\ : std_logic;
SIGNAL \inst4|FA3|HA_2|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst6|FA1|HA_2|ALT_INV_xor~combout\ : std_logic;
SIGNAL \inst6|FA3|HA_2|ALT_INV_xor~combout\ : std_logic;

BEGIN

result <= ww_result;
ww_a0 <= a0;
ww_a1 <= a1;
ww_a2 <= a2;
ww_a3 <= a3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|FA2|ALT_INV_or_cout~combout\ <= NOT \inst5|FA2|or_cout~combout\;
\inst5|FA3|HA_1|ALT_INV_xor~combout\ <= NOT \inst5|FA3|HA_1|xor~combout\;
\inst6|FA0|HA_1|ALT_INV_xor~combout\ <= NOT \inst6|FA0|HA_1|xor~combout\;
\inst6|FA2|HA_2|ALT_INV_xor~combout\ <= NOT \inst6|FA2|HA_2|xor~combout\;
\inst6|FA1|ALT_INV_or_cout~combout\ <= NOT \inst6|FA1|or_cout~combout\;
\inst4|FA0|HA_1|ALT_INV_xor~0_combout\ <= NOT \inst4|FA0|HA_1|xor~0_combout\;
\inst5|FA1|HA_1|ALT_INV_xor~combout\ <= NOT \inst5|FA1|HA_1|xor~combout\;
\inst5|FA2|HA_2|ALT_INV_xor~combout\ <= NOT \inst5|FA2|HA_2|xor~combout\;
\inst5|FA1|ALT_INV_or_cout~combout\ <= NOT \inst5|FA1|or_cout~combout\;
\inst4|FA1|ALT_INV_or_cout~combout\ <= NOT \inst4|FA1|or_cout~combout\;
\ALT_INV_a3[3]~input_o\ <= NOT \a3[3]~input_o\;
\ALT_INV_a2[3]~input_o\ <= NOT \a2[3]~input_o\;
\ALT_INV_a1[3]~input_o\ <= NOT \a1[3]~input_o\;
\ALT_INV_a0[3]~input_o\ <= NOT \a0[3]~input_o\;
\ALT_INV_a0[0]~input_o\ <= NOT \a0[0]~input_o\;
\ALT_INV_a0[1]~input_o\ <= NOT \a0[1]~input_o\;
\ALT_INV_a1[0]~input_o\ <= NOT \a1[0]~input_o\;
\ALT_INV_a1[1]~input_o\ <= NOT \a1[1]~input_o\;
\ALT_INV_a1[2]~input_o\ <= NOT \a1[2]~input_o\;
\ALT_INV_a3[0]~input_o\ <= NOT \a3[0]~input_o\;
\ALT_INV_a2[0]~input_o\ <= NOT \a2[0]~input_o\;
\ALT_INV_a3[1]~input_o\ <= NOT \a3[1]~input_o\;
\ALT_INV_a2[1]~input_o\ <= NOT \a2[1]~input_o\;
\ALT_INV_a3[2]~input_o\ <= NOT \a3[2]~input_o\;
\ALT_INV_a2[2]~input_o\ <= NOT \a2[2]~input_o\;
\ALT_INV_a0[2]~input_o\ <= NOT \a0[2]~input_o\;
\ALT_INV_inst26~0_combout\ <= NOT \inst26~0_combout\;
\ALT_INV_inst10~0_combout\ <= NOT \inst10~0_combout\;
\inst4|FA3|ALT_INV_or_cout~combout\ <= NOT \inst4|FA3|or_cout~combout\;
\inst6|FA2|ALT_INV_or_cout~combout\ <= NOT \inst6|FA2|or_cout~combout\;
\inst4|FA3|HA_2|ALT_INV_xor~combout\ <= NOT \inst4|FA3|HA_2|xor~combout\;
\inst6|FA1|HA_2|ALT_INV_xor~combout\ <= NOT \inst6|FA1|HA_2|xor~combout\;
\inst6|FA3|HA_2|ALT_INV_xor~combout\ <= NOT \inst6|FA3|HA_2|xor~combout\;

-- Location: IOOBUF_X89_Y38_N5
\result~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~1_combout\,
	devoe => ww_devoe,
	o => ww_result);

-- Location: IOIBUF_X89_Y35_N61
\a3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(0),
	o => \a3[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\a2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(0),
	o => \a2[0]~input_o\);

-- Location: LABCELL_X88_Y35_N18
\inst4|FA0|HA_1|xor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|FA0|HA_1|xor~0_combout\ = ( \a2[0]~input_o\ & ( !\a3[0]~input_o\ ) ) # ( !\a2[0]~input_o\ & ( \a3[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a3[0]~input_o\,
	datae => \ALT_INV_a2[0]~input_o\,
	combout => \inst4|FA0|HA_1|xor~0_combout\);

-- Location: IOIBUF_X89_Y35_N95
\a1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(1),
	o => \a1[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\a2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(1),
	o => \a2[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\a3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(1),
	o => \a3[1]~input_o\);

-- Location: LABCELL_X88_Y35_N15
\inst5|FA1|HA_1|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|FA1|HA_1|xor~combout\ = ( \a2[0]~input_o\ & ( \a3[1]~input_o\ & ( !\a1[1]~input_o\ $ (!\a2[1]~input_o\) ) ) ) # ( !\a2[0]~input_o\ & ( \a3[1]~input_o\ & ( !\a1[1]~input_o\ $ (!\a2[1]~input_o\ $ (\a3[0]~input_o\)) ) ) ) # ( \a2[0]~input_o\ & ( 
-- !\a3[1]~input_o\ & ( !\a1[1]~input_o\ $ (\a2[1]~input_o\) ) ) ) # ( !\a2[0]~input_o\ & ( !\a3[1]~input_o\ & ( !\a1[1]~input_o\ $ (!\a2[1]~input_o\ $ (!\a3[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001011010010101011010101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a1[1]~input_o\,
	datac => \ALT_INV_a2[1]~input_o\,
	datad => \ALT_INV_a3[0]~input_o\,
	datae => \ALT_INV_a2[0]~input_o\,
	dataf => \ALT_INV_a3[1]~input_o\,
	combout => \inst5|FA1|HA_1|xor~combout\);

-- Location: IOIBUF_X89_Y36_N21
\a1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(0),
	o => \a1[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\a0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\a0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: LABCELL_X88_Y35_N57
\inst6|FA1|or_cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|FA1|or_cout~combout\ = ( \a0[0]~input_o\ & ( (!\inst5|FA1|HA_1|xor~combout\ & (((\inst4|FA0|HA_1|xor~0_combout\ & !\a1[0]~input_o\)) # (\a0[1]~input_o\))) # (\inst5|FA1|HA_1|xor~combout\ & ((!\inst4|FA0|HA_1|xor~0_combout\ & (\a1[0]~input_o\)) # 
-- (\inst4|FA0|HA_1|xor~0_combout\ & (!\a1[0]~input_o\ & \a0[1]~input_o\)))) ) ) # ( !\a0[0]~input_o\ & ( (\a0[1]~input_o\ & (!\inst5|FA1|HA_1|xor~combout\ $ (((!\inst4|FA0|HA_1|xor~0_combout\ & \a1[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000110000000001100011001000010110111100100001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|FA0|HA_1|ALT_INV_xor~0_combout\,
	datab => \inst5|FA1|HA_1|ALT_INV_xor~combout\,
	datac => \ALT_INV_a1[0]~input_o\,
	datad => \ALT_INV_a0[1]~input_o\,
	dataf => \ALT_INV_a0[0]~input_o\,
	combout => \inst6|FA1|or_cout~combout\);

-- Location: IOIBUF_X89_Y37_N55
\a2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(2),
	o => \a2[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\a3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(3),
	o => \a3[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\a2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(3),
	o => \a2[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\a1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(3),
	o => \a1[3]~input_o\);

-- Location: LABCELL_X88_Y35_N0
\inst4|FA1|or_cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|FA1|or_cout~combout\ = ( \a2[0]~input_o\ & ( (!\a2[1]~input_o\ & \a3[1]~input_o\) ) ) # ( !\a2[0]~input_o\ & ( (!\a3[0]~input_o\ & (!\a2[1]~input_o\ & \a3[1]~input_o\)) # (\a3[0]~input_o\ & ((!\a2[1]~input_o\) # (\a3[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101000011000000110001001101010011010000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a3[0]~input_o\,
	datab => \ALT_INV_a2[1]~input_o\,
	datac => \ALT_INV_a3[1]~input_o\,
	datae => \ALT_INV_a2[0]~input_o\,
	combout => \inst4|FA1|or_cout~combout\);

-- Location: IOIBUF_X89_Y38_N38
\a3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(2),
	o => \a3[2]~input_o\);

-- Location: LABCELL_X88_Y37_N12
\inst5|FA3|HA_1|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|FA3|HA_1|xor~combout\ = ( \inst4|FA1|or_cout~combout\ & ( \a3[2]~input_o\ & ( !\a3[3]~input_o\ $ (!\a2[3]~input_o\ $ (\a1[3]~input_o\)) ) ) ) # ( !\inst4|FA1|or_cout~combout\ & ( \a3[2]~input_o\ & ( !\a2[2]~input_o\ $ (!\a3[3]~input_o\ $ 
-- (!\a2[3]~input_o\ $ (!\a1[3]~input_o\))) ) ) ) # ( \inst4|FA1|or_cout~combout\ & ( !\a3[2]~input_o\ & ( !\a2[2]~input_o\ $ (!\a3[3]~input_o\ $ (!\a2[3]~input_o\ $ (!\a1[3]~input_o\))) ) ) ) # ( !\inst4|FA1|or_cout~combout\ & ( !\a3[2]~input_o\ & ( 
-- !\a3[3]~input_o\ $ (!\a2[3]~input_o\ $ (!\a1[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100011010011001011001101001100101100011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a2[2]~input_o\,
	datab => \ALT_INV_a3[3]~input_o\,
	datac => \ALT_INV_a2[3]~input_o\,
	datad => \ALT_INV_a1[3]~input_o\,
	datae => \inst4|FA1|ALT_INV_or_cout~combout\,
	dataf => \ALT_INV_a3[2]~input_o\,
	combout => \inst5|FA3|HA_1|xor~combout\);

-- Location: IOIBUF_X89_Y37_N21
\a1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(2),
	o => \a1[2]~input_o\);

-- Location: LABCELL_X88_Y35_N6
\inst5|FA1|or_cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|FA1|or_cout~combout\ = ( \a2[0]~input_o\ & ( \a3[1]~input_o\ & ( (!\a2[1]~input_o\ & (\a3[0]~input_o\ & (\a1[1]~input_o\ & \a1[0]~input_o\))) # (\a2[1]~input_o\ & (((\a3[0]~input_o\ & \a1[0]~input_o\)) # (\a1[1]~input_o\))) ) ) ) # ( 
-- !\a2[0]~input_o\ & ( \a3[1]~input_o\ & ( (!\a2[1]~input_o\ & (\a1[1]~input_o\ & ((\a1[0]~input_o\) # (\a3[0]~input_o\)))) # (\a2[1]~input_o\ & (!\a3[0]~input_o\ & ((\a1[0]~input_o\) # (\a1[1]~input_o\)))) ) ) ) # ( \a2[0]~input_o\ & ( !\a3[1]~input_o\ & ( 
-- (!\a2[1]~input_o\ & (((\a3[0]~input_o\ & \a1[0]~input_o\)) # (\a1[1]~input_o\))) # (\a2[1]~input_o\ & (\a3[0]~input_o\ & (\a1[1]~input_o\ & \a1[0]~input_o\))) ) ) ) # ( !\a2[0]~input_o\ & ( !\a3[1]~input_o\ & ( (!\a2[1]~input_o\ & (!\a3[0]~input_o\ & 
-- ((\a1[0]~input_o\) # (\a1[1]~input_o\)))) # (\a2[1]~input_o\ & (\a1[1]~input_o\ & ((\a1[0]~input_o\) # (\a3[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110001011000011000100110100000110001011100000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a3[0]~input_o\,
	datab => \ALT_INV_a2[1]~input_o\,
	datac => \ALT_INV_a1[1]~input_o\,
	datad => \ALT_INV_a1[0]~input_o\,
	datae => \ALT_INV_a2[0]~input_o\,
	dataf => \ALT_INV_a3[1]~input_o\,
	combout => \inst5|FA1|or_cout~combout\);

-- Location: LABCELL_X88_Y37_N51
\inst5|FA2|or_cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|FA2|or_cout~combout\ = ( \inst4|FA1|or_cout~combout\ & ( \a3[2]~input_o\ & ( (!\a1[2]~input_o\ & ((!\inst5|FA1|or_cout~combout\) # (\a2[2]~input_o\))) # (\a1[2]~input_o\ & (!\inst5|FA1|or_cout~combout\ & \a2[2]~input_o\)) ) ) ) # ( 
-- !\inst4|FA1|or_cout~combout\ & ( \a3[2]~input_o\ & ( (!\a1[2]~input_o\ & ((!\inst5|FA1|or_cout~combout\) # (!\a2[2]~input_o\))) # (\a1[2]~input_o\ & (!\inst5|FA1|or_cout~combout\ & !\a2[2]~input_o\)) ) ) ) # ( \inst4|FA1|or_cout~combout\ & ( 
-- !\a3[2]~input_o\ & ( (!\a1[2]~input_o\ & ((!\inst5|FA1|or_cout~combout\) # (!\a2[2]~input_o\))) # (\a1[2]~input_o\ & (!\inst5|FA1|or_cout~combout\ & !\a2[2]~input_o\)) ) ) ) # ( !\inst4|FA1|or_cout~combout\ & ( !\a3[2]~input_o\ & ( (!\a1[2]~input_o\ & 
-- ((!\inst5|FA1|or_cout~combout\) # (\a2[2]~input_o\))) # (\a1[2]~input_o\ & (!\inst5|FA1|or_cout~combout\ & \a2[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111010111110101010000011111010101000001010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a1[2]~input_o\,
	datac => \inst5|FA1|ALT_INV_or_cout~combout\,
	datad => \ALT_INV_a2[2]~input_o\,
	datae => \inst4|FA1|ALT_INV_or_cout~combout\,
	dataf => \ALT_INV_a3[2]~input_o\,
	combout => \inst5|FA2|or_cout~combout\);

-- Location: LABCELL_X88_Y37_N30
\inst5|FA2|HA_2|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|FA2|HA_2|xor~combout\ = ( \inst4|FA1|or_cout~combout\ & ( \a3[2]~input_o\ & ( !\a2[2]~input_o\ $ (!\inst5|FA1|or_cout~combout\ $ (\a1[2]~input_o\)) ) ) ) # ( !\inst4|FA1|or_cout~combout\ & ( \a3[2]~input_o\ & ( !\a2[2]~input_o\ $ 
-- (!\inst5|FA1|or_cout~combout\ $ (!\a1[2]~input_o\)) ) ) ) # ( \inst4|FA1|or_cout~combout\ & ( !\a3[2]~input_o\ & ( !\a2[2]~input_o\ $ (!\inst5|FA1|or_cout~combout\ $ (!\a1[2]~input_o\)) ) ) ) # ( !\inst4|FA1|or_cout~combout\ & ( !\a3[2]~input_o\ & ( 
-- !\a2[2]~input_o\ $ (!\inst5|FA1|or_cout~combout\ $ (\a1[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a2[2]~input_o\,
	datab => \inst5|FA1|ALT_INV_or_cout~combout\,
	datac => \ALT_INV_a1[2]~input_o\,
	datae => \inst4|FA1|ALT_INV_or_cout~combout\,
	dataf => \ALT_INV_a3[2]~input_o\,
	combout => \inst5|FA2|HA_2|xor~combout\);

-- Location: IOIBUF_X89_Y37_N4
\a0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\a0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: LABCELL_X88_Y37_N24
\inst6|FA3|HA_2|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|FA3|HA_2|xor~combout\ = ( \a0[3]~input_o\ & ( \a0[2]~input_o\ & ( !\inst5|FA3|HA_1|xor~combout\ $ (!\inst5|FA2|or_cout~combout\ $ (((!\inst6|FA1|or_cout~combout\ & !\inst5|FA2|HA_2|xor~combout\)))) ) ) ) # ( !\a0[3]~input_o\ & ( \a0[2]~input_o\ & ( 
-- !\inst5|FA3|HA_1|xor~combout\ $ (!\inst5|FA2|or_cout~combout\ $ (((\inst5|FA2|HA_2|xor~combout\) # (\inst6|FA1|or_cout~combout\)))) ) ) ) # ( \a0[3]~input_o\ & ( !\a0[2]~input_o\ & ( !\inst5|FA3|HA_1|xor~combout\ $ (!\inst5|FA2|or_cout~combout\ $ 
-- (((!\inst6|FA1|or_cout~combout\) # (!\inst5|FA2|HA_2|xor~combout\)))) ) ) ) # ( !\a0[3]~input_o\ & ( !\a0[2]~input_o\ & ( !\inst5|FA3|HA_1|xor~combout\ $ (!\inst5|FA2|or_cout~combout\ $ (((\inst6|FA1|or_cout~combout\ & \inst5|FA2|HA_2|xor~combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001110000111001011001101001110000111001011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|FA1|ALT_INV_or_cout~combout\,
	datab => \inst5|FA3|HA_1|ALT_INV_xor~combout\,
	datac => \inst5|FA2|ALT_INV_or_cout~combout\,
	datad => \inst5|FA2|HA_2|ALT_INV_xor~combout\,
	datae => \ALT_INV_a0[3]~input_o\,
	dataf => \ALT_INV_a0[2]~input_o\,
	combout => \inst6|FA3|HA_2|xor~combout\);

-- Location: LABCELL_X88_Y37_N6
\inst6|FA2|HA_2|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|FA2|HA_2|xor~combout\ = ( \a0[2]~input_o\ & ( !\inst6|FA1|or_cout~combout\ $ (\inst5|FA2|HA_2|xor~combout\) ) ) # ( !\a0[2]~input_o\ & ( !\inst6|FA1|or_cout~combout\ $ (!\inst5|FA2|HA_2|xor~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|FA1|ALT_INV_or_cout~combout\,
	datab => \inst5|FA2|HA_2|ALT_INV_xor~combout\,
	dataf => \ALT_INV_a0[2]~input_o\,
	combout => \inst6|FA2|HA_2|xor~combout\);

-- Location: LABCELL_X88_Y35_N54
\inst6|FA1|HA_2|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|FA1|HA_2|xor~combout\ = ( \a0[0]~input_o\ & ( !\inst5|FA1|HA_1|xor~combout\ $ (!\a0[1]~input_o\ $ (((!\inst4|FA0|HA_1|xor~0_combout\) # (\a1[0]~input_o\)))) ) ) # ( !\a0[0]~input_o\ & ( !\inst5|FA1|HA_1|xor~combout\ $ (!\a0[1]~input_o\ $ 
-- (((!\a1[0]~input_o\) # (\inst4|FA0|HA_1|xor~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011000111001110001100011100110011100011000111001110001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|FA0|HA_1|ALT_INV_xor~0_combout\,
	datab => \inst5|FA1|HA_1|ALT_INV_xor~combout\,
	datac => \ALT_INV_a1[0]~input_o\,
	datad => \ALT_INV_a0[1]~input_o\,
	dataf => \ALT_INV_a0[0]~input_o\,
	combout => \inst6|FA1|HA_2|xor~combout\);

-- Location: LABCELL_X88_Y35_N33
\inst6|FA0|HA_1|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|FA0|HA_1|xor~combout\ = ( \a0[0]~input_o\ & ( !\inst4|FA0|HA_1|xor~0_combout\ $ (\a1[0]~input_o\) ) ) # ( !\a0[0]~input_o\ & ( !\inst4|FA0|HA_1|xor~0_combout\ $ (!\a1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|FA0|HA_1|ALT_INV_xor~0_combout\,
	datac => \ALT_INV_a1[0]~input_o\,
	dataf => \ALT_INV_a0[0]~input_o\,
	combout => \inst6|FA0|HA_1|xor~combout\);

-- Location: LABCELL_X88_Y37_N3
\inst4|FA3|or_cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|FA3|or_cout~combout\ = ( \a2[3]~input_o\ & ( (!\a3[3]~input_o\) # ((!\a2[2]~input_o\ & (!\a3[2]~input_o\ & !\inst4|FA1|or_cout~combout\)) # (\a2[2]~input_o\ & ((!\a3[2]~input_o\) # (!\inst4|FA1|or_cout~combout\)))) ) ) # ( !\a2[3]~input_o\ & ( 
-- (!\a3[3]~input_o\ & ((!\a2[2]~input_o\ & (!\a3[2]~input_o\ & !\inst4|FA1|or_cout~combout\)) # (\a2[2]~input_o\ & ((!\a3[2]~input_o\) # (!\inst4|FA1|or_cout~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001000000110100000100000011111101111101001111110111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a2[2]~input_o\,
	datab => \ALT_INV_a3[2]~input_o\,
	datac => \ALT_INV_a3[3]~input_o\,
	datad => \inst4|FA1|ALT_INV_or_cout~combout\,
	dataf => \ALT_INV_a2[3]~input_o\,
	combout => \inst4|FA3|or_cout~combout\);

-- Location: LABCELL_X88_Y37_N9
\inst6|FA2|or_cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|FA2|or_cout~combout\ = ( \a0[2]~input_o\ & ( (\inst5|FA2|HA_2|xor~combout\) # (\inst6|FA1|or_cout~combout\) ) ) # ( !\a0[2]~input_o\ & ( (\inst6|FA1|or_cout~combout\ & \inst5|FA2|HA_2|xor~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|FA1|ALT_INV_or_cout~combout\,
	datab => \inst5|FA2|HA_2|ALT_INV_xor~combout\,
	dataf => \ALT_INV_a0[2]~input_o\,
	combout => \inst6|FA2|or_cout~combout\);

-- Location: LABCELL_X88_Y37_N0
\inst4|FA3|HA_2|xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|FA3|HA_2|xor~combout\ = ( \a3[3]~input_o\ & ( !\a2[3]~input_o\ $ (((!\a2[2]~input_o\ & (!\a3[2]~input_o\ & !\inst4|FA1|or_cout~combout\)) # (\a2[2]~input_o\ & ((!\a3[2]~input_o\) # (!\inst4|FA1|or_cout~combout\))))) ) ) # ( !\a3[3]~input_o\ & ( 
-- !\a2[3]~input_o\ $ (((!\a2[2]~input_o\ & ((\inst4|FA1|or_cout~combout\) # (\a3[2]~input_o\))) # (\a2[2]~input_o\ & (\a3[2]~input_o\ & \inst4|FA1|or_cout~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001001001011110100100100101100101101101101000010110110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a2[2]~input_o\,
	datab => \ALT_INV_a3[2]~input_o\,
	datac => \ALT_INV_a2[3]~input_o\,
	datad => \inst4|FA1|ALT_INV_or_cout~combout\,
	dataf => \ALT_INV_a3[3]~input_o\,
	combout => \inst4|FA3|HA_2|xor~combout\);

-- Location: LABCELL_X88_Y37_N36
\inst10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = ( \a1[3]~input_o\ & ( \inst5|FA2|or_cout~combout\ & ( (!\inst6|FA2|or_cout~combout\ & (!\inst4|FA3|or_cout~combout\ $ (((\inst4|FA3|HA_2|xor~combout\ & !\a0[3]~input_o\))))) # (\inst6|FA2|or_cout~combout\ & 
-- (!\inst4|FA3|or_cout~combout\ & ((!\a0[3]~input_o\) # (\inst4|FA3|HA_2|xor~combout\)))) ) ) ) # ( !\a1[3]~input_o\ & ( \inst5|FA2|or_cout~combout\ & ( (!\inst4|FA3|or_cout~combout\ & ((!\inst6|FA2|or_cout~combout\ & ((!\a0[3]~input_o\) # 
-- (\inst4|FA3|HA_2|xor~combout\))) # (\inst6|FA2|or_cout~combout\ & (\inst4|FA3|HA_2|xor~combout\ & !\a0[3]~input_o\)))) ) ) ) # ( \a1[3]~input_o\ & ( !\inst5|FA2|or_cout~combout\ & ( !\inst4|FA3|or_cout~combout\ $ (((!\inst6|FA2|or_cout~combout\ & 
-- ((!\a0[3]~input_o\) # (\inst4|FA3|HA_2|xor~combout\))) # (\inst6|FA2|or_cout~combout\ & (\inst4|FA3|HA_2|xor~combout\ & !\a0[3]~input_o\)))) ) ) ) # ( !\a1[3]~input_o\ & ( !\inst5|FA2|or_cout~combout\ & ( (!\inst6|FA2|or_cout~combout\ & 
-- (!\inst4|FA3|or_cout~combout\ $ (((\inst4|FA3|HA_2|xor~combout\ & !\a0[3]~input_o\))))) # (\inst6|FA2|or_cout~combout\ & (!\inst4|FA3|or_cout~combout\ & ((!\a0[3]~input_o\) # (\inst4|FA3|HA_2|xor~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010001010011001011010011010001010000010001010011010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|FA3|ALT_INV_or_cout~combout\,
	datab => \inst6|FA2|ALT_INV_or_cout~combout\,
	datac => \inst4|FA3|HA_2|ALT_INV_xor~combout\,
	datad => \ALT_INV_a0[3]~input_o\,
	datae => \ALT_INV_a1[3]~input_o\,
	dataf => \inst5|FA2|ALT_INV_or_cout~combout\,
	combout => \inst10~0_combout\);

-- Location: LABCELL_X88_Y37_N42
\inst26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = ( \a1[3]~input_o\ & ( \inst5|FA2|or_cout~combout\ & ( (!\inst6|FA2|or_cout~combout\ & (\inst4|FA3|or_cout~combout\ & ((!\inst4|FA3|HA_2|xor~combout\) # (\a0[3]~input_o\)))) # (\inst6|FA2|or_cout~combout\ & 
-- (!\inst4|FA3|or_cout~combout\ $ (((!\a0[3]~input_o\) # (\inst4|FA3|HA_2|xor~combout\))))) ) ) ) # ( !\a1[3]~input_o\ & ( \inst5|FA2|or_cout~combout\ & ( !\inst4|FA3|or_cout~combout\ $ (((!\inst6|FA2|or_cout~combout\ & ((!\a0[3]~input_o\) # 
-- (\inst4|FA3|HA_2|xor~combout\))) # (\inst6|FA2|or_cout~combout\ & (\inst4|FA3|HA_2|xor~combout\ & !\a0[3]~input_o\)))) ) ) ) # ( \a1[3]~input_o\ & ( !\inst5|FA2|or_cout~combout\ & ( (\inst4|FA3|or_cout~combout\ & ((!\inst6|FA2|or_cout~combout\ & 
-- (!\inst4|FA3|HA_2|xor~combout\ & \a0[3]~input_o\)) # (\inst6|FA2|or_cout~combout\ & ((!\inst4|FA3|HA_2|xor~combout\) # (\a0[3]~input_o\))))) ) ) ) # ( !\a1[3]~input_o\ & ( !\inst5|FA2|or_cout~combout\ & ( (!\inst6|FA2|or_cout~combout\ & 
-- (\inst4|FA3|or_cout~combout\ & ((!\inst4|FA3|HA_2|xor~combout\) # (\a0[3]~input_o\)))) # (\inst6|FA2|or_cout~combout\ & (!\inst4|FA3|or_cout~combout\ $ (((!\a0[3]~input_o\) # (\inst4|FA3|HA_2|xor~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101100101000100000101000101100101101001100101000101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|FA3|ALT_INV_or_cout~combout\,
	datab => \inst6|FA2|ALT_INV_or_cout~combout\,
	datac => \inst4|FA3|HA_2|ALT_INV_xor~combout\,
	datad => \ALT_INV_a0[3]~input_o\,
	datae => \ALT_INV_a1[3]~input_o\,
	dataf => \inst5|FA2|ALT_INV_or_cout~combout\,
	combout => \inst26~0_combout\);

-- Location: LABCELL_X88_Y37_N18
\inst26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26~1_combout\ = ( \inst10~0_combout\ & ( \inst26~0_combout\ & ( (!\inst6|FA3|HA_2|xor~combout\ & (!\inst6|FA1|HA_2|xor~combout\ & (!\inst6|FA2|HA_2|xor~combout\ $ (\inst6|FA0|HA_1|xor~combout\)))) # (\inst6|FA3|HA_2|xor~combout\ & 
-- (!\inst6|FA2|HA_2|xor~combout\ & (\inst6|FA1|HA_2|xor~combout\ & \inst6|FA0|HA_1|xor~combout\))) ) ) ) # ( !\inst10~0_combout\ & ( \inst26~0_combout\ & ( (!\inst6|FA2|HA_2|xor~combout\ & ((!\inst6|FA3|HA_2|xor~combout\ & (!\inst6|FA1|HA_2|xor~combout\ & 
-- !\inst6|FA0|HA_1|xor~combout\)) # (\inst6|FA3|HA_2|xor~combout\ & (\inst6|FA1|HA_2|xor~combout\ & \inst6|FA0|HA_1|xor~combout\)))) ) ) ) # ( \inst10~0_combout\ & ( !\inst26~0_combout\ & ( (!\inst6|FA3|HA_2|xor~combout\ & (\inst6|FA2|HA_2|xor~combout\ & 
-- (!\inst6|FA1|HA_2|xor~combout\ & \inst6|FA0|HA_1|xor~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000010000000000001001000000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|FA3|HA_2|ALT_INV_xor~combout\,
	datab => \inst6|FA2|HA_2|ALT_INV_xor~combout\,
	datac => \inst6|FA1|HA_2|ALT_INV_xor~combout\,
	datad => \inst6|FA0|HA_1|ALT_INV_xor~combout\,
	datae => \ALT_INV_inst10~0_combout\,
	dataf => \ALT_INV_inst26~0_combout\,
	combout => \inst26~1_combout\);

-- Location: LABCELL_X48_Y13_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


