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

-- DATE "02/26/2019 23:45:07"

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

ENTITY 	div3 IS
    PORT (
	result : OUT std_logic;
	a2 : IN std_logic_vector(3 DOWNTO 0);
	a1 : IN std_logic_vector(3 DOWNTO 0);
	a0 : IN std_logic_vector(3 DOWNTO 0);
	a3 : IN std_logic_vector(3 DOWNTO 0)
	);
END div3;

-- Design Ports Information
-- result	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[3]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF div3 IS
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
SIGNAL ww_a2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \inst17~5_combout\ : std_logic;
SIGNAL \a2[0]~input_o\ : std_logic;
SIGNAL \a2[1]~input_o\ : std_logic;
SIGNAL \a2[2]~input_o\ : std_logic;
SIGNAL \a2[3]~input_o\ : std_logic;
SIGNAL \inst17~2_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \a1[0]~input_o\ : std_logic;
SIGNAL \a1[1]~input_o\ : std_logic;
SIGNAL \a1[2]~input_o\ : std_logic;
SIGNAL \a1[3]~input_o\ : std_logic;
SIGNAL \inst17~3_combout\ : std_logic;
SIGNAL \inst17~1_combout\ : std_logic;
SIGNAL \inst17~4_combout\ : std_logic;
SIGNAL \inst17~6_combout\ : std_logic;
SIGNAL \a3[2]~input_o\ : std_logic;
SIGNAL \inst17~7_combout\ : std_logic;
SIGNAL \a3[1]~input_o\ : std_logic;
SIGNAL \a3[3]~input_o\ : std_logic;
SIGNAL \a3[0]~input_o\ : std_logic;
SIGNAL \inst17~8_combout\ : std_logic;
SIGNAL \ALT_INV_a2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inst17~8_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~7_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~6_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~5_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~4_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~3_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst17~0_combout\ : std_logic;

BEGIN

result <= ww_result;
ww_a2 <= a2;
ww_a1 <= a1;
ww_a0 <= a0;
ww_a3 <= a3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a2[0]~input_o\ <= NOT \a2[0]~input_o\;
\ALT_INV_a2[1]~input_o\ <= NOT \a2[1]~input_o\;
\ALT_INV_a2[2]~input_o\ <= NOT \a2[2]~input_o\;
\ALT_INV_a2[3]~input_o\ <= NOT \a2[3]~input_o\;
\ALT_INV_a1[1]~input_o\ <= NOT \a1[1]~input_o\;
\ALT_INV_a1[2]~input_o\ <= NOT \a1[2]~input_o\;
\ALT_INV_a1[3]~input_o\ <= NOT \a1[3]~input_o\;
\ALT_INV_a1[0]~input_o\ <= NOT \a1[0]~input_o\;
\ALT_INV_a0[0]~input_o\ <= NOT \a0[0]~input_o\;
\ALT_INV_a0[1]~input_o\ <= NOT \a0[1]~input_o\;
\ALT_INV_a0[2]~input_o\ <= NOT \a0[2]~input_o\;
\ALT_INV_a0[3]~input_o\ <= NOT \a0[3]~input_o\;
\ALT_INV_a3[2]~input_o\ <= NOT \a3[2]~input_o\;
\ALT_INV_a3[1]~input_o\ <= NOT \a3[1]~input_o\;
\ALT_INV_a3[3]~input_o\ <= NOT \a3[3]~input_o\;
\ALT_INV_a3[0]~input_o\ <= NOT \a3[0]~input_o\;
\ALT_INV_inst17~8_combout\ <= NOT \inst17~8_combout\;
\ALT_INV_inst17~7_combout\ <= NOT \inst17~7_combout\;
\ALT_INV_inst17~6_combout\ <= NOT \inst17~6_combout\;
\ALT_INV_inst17~5_combout\ <= NOT \inst17~5_combout\;
\ALT_INV_inst17~4_combout\ <= NOT \inst17~4_combout\;
\ALT_INV_inst17~3_combout\ <= NOT \inst17~3_combout\;
\ALT_INV_inst17~2_combout\ <= NOT \inst17~2_combout\;
\ALT_INV_inst17~1_combout\ <= NOT \inst17~1_combout\;
\ALT_INV_inst17~0_combout\ <= NOT \inst17~0_combout\;

-- Location: IOOBUF_X89_Y9_N56
\result~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst17~8_combout\,
	devoe => ww_devoe,
	o => ww_result);

-- Location: IOIBUF_X89_Y36_N55
\a0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\a0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\a0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\a0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: LABCELL_X88_Y36_N33
\inst17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~5_combout\ = ( \a0[1]~input_o\ & ( (!\a0[3]~input_o\ & (!\a0[0]~input_o\ & !\a0[2]~input_o\)) ) ) # ( !\a0[1]~input_o\ & ( (!\a0[3]~input_o\ & (\a0[0]~input_o\ & \a0[2]~input_o\)) # (\a0[3]~input_o\ & (!\a0[0]~input_o\ & !\a0[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a0[3]~input_o\,
	datab => \ALT_INV_a0[0]~input_o\,
	datad => \ALT_INV_a0[2]~input_o\,
	dataf => \ALT_INV_a0[1]~input_o\,
	combout => \inst17~5_combout\);

-- Location: IOIBUF_X89_Y37_N21
\a2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(0),
	o => \a2[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\a2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(1),
	o => \a2[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\a2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(2),
	o => \a2[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\a2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(3),
	o => \a2[3]~input_o\);

-- Location: LABCELL_X88_Y36_N45
\inst17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~2_combout\ = ( \a2[3]~input_o\ & ( (!\a2[0]~input_o\ & (!\a2[1]~input_o\ & !\a2[2]~input_o\)) ) ) # ( !\a2[3]~input_o\ & ( (!\a2[0]~input_o\ & (!\a2[1]~input_o\ $ (!\a2[2]~input_o\))) # (\a2[0]~input_o\ & ((!\a2[1]~input_o\) # (\a2[2]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110101010110101111010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a2[0]~input_o\,
	datac => \ALT_INV_a2[1]~input_o\,
	datad => \ALT_INV_a2[2]~input_o\,
	dataf => \ALT_INV_a2[3]~input_o\,
	combout => \inst17~2_combout\);

-- Location: LABCELL_X88_Y36_N30
\inst17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = ( \a0[1]~input_o\ & ( (!\a0[3]~input_o\ & (!\a0[0]~input_o\ $ (\a0[2]~input_o\))) ) ) # ( !\a0[1]~input_o\ & ( !\a0[3]~input_o\ $ (((!\a0[0]~input_o\ & !\a0[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a0[3]~input_o\,
	datab => \ALT_INV_a0[0]~input_o\,
	datac => \ALT_INV_a0[2]~input_o\,
	dataf => \ALT_INV_a0[1]~input_o\,
	combout => \inst17~0_combout\);

-- Location: IOIBUF_X89_Y38_N4
\a1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(0),
	o => \a1[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
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
\a1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(2),
	o => \a1[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\a1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(3),
	o => \a1[3]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\inst17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~3_combout\ = ( \a1[3]~input_o\ & ( (!\a1[0]~input_o\ & (!\a1[1]~input_o\ & !\a1[2]~input_o\)) ) ) # ( !\a1[3]~input_o\ & ( (!\a1[0]~input_o\ & (!\a1[1]~input_o\ $ (!\a1[2]~input_o\))) # (\a1[0]~input_o\ & ((!\a1[1]~input_o\) # (\a1[2]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011011101011001101101110110001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a1[0]~input_o\,
	datab => \ALT_INV_a1[1]~input_o\,
	datad => \ALT_INV_a1[2]~input_o\,
	dataf => \ALT_INV_a1[3]~input_o\,
	combout => \inst17~3_combout\);

-- Location: LABCELL_X88_Y36_N36
\inst17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~1_combout\ = ( \a1[3]~input_o\ & ( (!\a1[0]~input_o\ & (!\a1[1]~input_o\ & !\a1[2]~input_o\)) ) ) # ( !\a1[3]~input_o\ & ( (!\a1[0]~input_o\ & (\a1[1]~input_o\ & !\a1[2]~input_o\)) # (\a1[0]~input_o\ & (!\a1[1]~input_o\ & \a1[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a1[0]~input_o\,
	datab => \ALT_INV_a1[1]~input_o\,
	datac => \ALT_INV_a1[2]~input_o\,
	dataf => \ALT_INV_a1[3]~input_o\,
	combout => \inst17~1_combout\);

-- Location: LABCELL_X88_Y36_N42
\inst17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~4_combout\ = ( \a2[3]~input_o\ & ( (!\a2[0]~input_o\ & (!\a2[2]~input_o\ & !\a2[1]~input_o\)) ) ) # ( !\a2[3]~input_o\ & ( (!\a2[0]~input_o\ & (!\a2[2]~input_o\ & \a2[1]~input_o\)) # (\a2[0]~input_o\ & (\a2[2]~input_o\ & !\a2[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a2[0]~input_o\,
	datac => \ALT_INV_a2[2]~input_o\,
	datad => \ALT_INV_a2[1]~input_o\,
	dataf => \ALT_INV_a2[3]~input_o\,
	combout => \inst17~4_combout\);

-- Location: LABCELL_X88_Y36_N18
\inst17~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~6_combout\ = ( \inst17~1_combout\ & ( \inst17~4_combout\ & ( (!\inst17~5_combout\ & ((!\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)) # (\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))))) # (\inst17~5_combout\ & 
-- ((!\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))) # (\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)))) ) ) ) # ( !\inst17~1_combout\ & ( \inst17~4_combout\ & ( (!\inst17~5_combout\ & ((!\inst17~2_combout\ & 
-- (!\inst17~0_combout\ & !\inst17~3_combout\)) # (\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)))) # (\inst17~5_combout\ & ((!\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)) # (\inst17~2_combout\ & (!\inst17~0_combout\ $ 
-- (!\inst17~3_combout\))))) ) ) ) # ( \inst17~1_combout\ & ( !\inst17~4_combout\ & ( (!\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)) # (\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)))) # 
-- (\inst17~5_combout\ & ((!\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)) # (\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))))) ) ) ) # ( !\inst17~1_combout\ & ( !\inst17~4_combout\ & ( (!\inst17~5_combout\ & 
-- ((!\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))) # (\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)))) # (\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)) # 
-- (\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100010000001100000010001011010000001000101100001011001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~5_combout\,
	datab => \ALT_INV_inst17~2_combout\,
	datac => \ALT_INV_inst17~0_combout\,
	datad => \ALT_INV_inst17~3_combout\,
	datae => \ALT_INV_inst17~1_combout\,
	dataf => \ALT_INV_inst17~4_combout\,
	combout => \inst17~6_combout\);

-- Location: IOIBUF_X89_Y35_N95
\a3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(2),
	o => \a3[2]~input_o\);

-- Location: LABCELL_X88_Y36_N24
\inst17~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~7_combout\ = ( \inst17~1_combout\ & ( \inst17~4_combout\ & ( (!\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)) # (\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)))) # (\inst17~5_combout\ & 
-- ((!\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)) # (\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))))) ) ) ) # ( !\inst17~1_combout\ & ( \inst17~4_combout\ & ( (!\inst17~5_combout\ & ((!\inst17~2_combout\ & 
-- (!\inst17~0_combout\ $ (!\inst17~3_combout\))) # (\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)))) # (\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)) # (\inst17~2_combout\ & (\inst17~0_combout\ 
-- & \inst17~3_combout\)))) ) ) ) # ( \inst17~1_combout\ & ( !\inst17~4_combout\ & ( (!\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))) # (\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)))) # 
-- (\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)) # (\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)))) ) ) ) # ( !\inst17~1_combout\ & ( !\inst17~4_combout\ & ( (!\inst17~5_combout\ & 
-- ((!\inst17~2_combout\ & (\inst17~0_combout\ & \inst17~3_combout\)) # (\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))))) # (\inst17~5_combout\ & ((!\inst17~2_combout\ & (!\inst17~0_combout\ $ (!\inst17~3_combout\))) # 
-- (\inst17~2_combout\ & (!\inst17~0_combout\ & !\inst17~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001101000011010001000000101101000100000011000000100010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~5_combout\,
	datab => \ALT_INV_inst17~2_combout\,
	datac => \ALT_INV_inst17~0_combout\,
	datad => \ALT_INV_inst17~3_combout\,
	datae => \ALT_INV_inst17~1_combout\,
	dataf => \ALT_INV_inst17~4_combout\,
	combout => \inst17~7_combout\);

-- Location: IOIBUF_X89_Y36_N38
\a3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(1),
	o => \a3[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\a3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(3),
	o => \a3[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\a3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(0),
	o => \a3[0]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\inst17~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~8_combout\ = ( \a3[3]~input_o\ & ( \a3[0]~input_o\ & ( (\inst17~7_combout\) # (\inst17~6_combout\) ) ) ) # ( !\a3[3]~input_o\ & ( \a3[0]~input_o\ & ( (!\inst17~7_combout\ & ((!\inst17~6_combout\ & ((!\a3[1]~input_o\) # (\a3[2]~input_o\))) # 
-- (\inst17~6_combout\ & ((!\a3[2]~input_o\) # (\a3[1]~input_o\))))) # (\inst17~7_combout\ & ((!\a3[2]~input_o\ $ (!\a3[1]~input_o\)))) ) ) ) # ( \a3[3]~input_o\ & ( !\a3[0]~input_o\ & ( (!\inst17~6_combout\ $ (((\a3[1]~input_o\) # (\a3[2]~input_o\)))) # 
-- (\inst17~7_combout\) ) ) ) # ( !\a3[3]~input_o\ & ( !\a3[0]~input_o\ & ( (!\a3[2]~input_o\ & ((!\inst17~6_combout\ $ (!\a3[1]~input_o\)) # (\inst17~7_combout\))) # (\a3[2]~input_o\ & ((!\inst17~7_combout\ & ((!\a3[1]~input_o\) # (\inst17~6_combout\))) # 
-- (\inst17~7_combout\ & ((\a3[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110010011111100111110101111111100011011111000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst17~6_combout\,
	datab => \ALT_INV_a3[2]~input_o\,
	datac => \ALT_INV_inst17~7_combout\,
	datad => \ALT_INV_a3[1]~input_o\,
	datae => \ALT_INV_a3[3]~input_o\,
	dataf => \ALT_INV_a3[0]~input_o\,
	combout => \inst17~8_combout\);

-- Location: LABCELL_X56_Y5_N0
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


