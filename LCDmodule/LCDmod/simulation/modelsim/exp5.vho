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

-- DATE "04/17/2019 04:34:28"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	LCD_ON : BUFFER std_logic;
	LCD_BLON : BUFFER std_logic;
	LCD_RW : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_RS : BUFFER std_logic;
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	pb : IN std_logic;
	reset : IN std_logic;
	i : IN std_logic
	);
END top;

-- Design Ports Information
-- LCD_ON	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_pb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dis|Add0~77_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dis|Add0~78\ : std_logic;
SIGNAL \dis|Add0~73_sumout\ : std_logic;
SIGNAL \dis|Add0~74\ : std_logic;
SIGNAL \dis|Add0~21_sumout\ : std_logic;
SIGNAL \dis|Add0~22\ : std_logic;
SIGNAL \dis|Add0~17_sumout\ : std_logic;
SIGNAL \dis|Add0~18\ : std_logic;
SIGNAL \dis|Add0~13_sumout\ : std_logic;
SIGNAL \dis|clk_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~14\ : std_logic;
SIGNAL \dis|Add0~9_sumout\ : std_logic;
SIGNAL \dis|Add0~10\ : std_logic;
SIGNAL \dis|Add0~37_sumout\ : std_logic;
SIGNAL \dis|clk_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~38\ : std_logic;
SIGNAL \dis|Add0~33_sumout\ : std_logic;
SIGNAL \dis|clk_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~34\ : std_logic;
SIGNAL \dis|Add0~29_sumout\ : std_logic;
SIGNAL \dis|clk_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~30\ : std_logic;
SIGNAL \dis|Add0~25_sumout\ : std_logic;
SIGNAL \dis|Add0~26\ : std_logic;
SIGNAL \dis|Add0~5_sumout\ : std_logic;
SIGNAL \dis|Add0~6\ : std_logic;
SIGNAL \dis|Add0~1_sumout\ : std_logic;
SIGNAL \dis|Add0~2\ : std_logic;
SIGNAL \dis|Add0~53_sumout\ : std_logic;
SIGNAL \dis|clk_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~54\ : std_logic;
SIGNAL \dis|Add0~49_sumout\ : std_logic;
SIGNAL \dis|Add0~50\ : std_logic;
SIGNAL \dis|Add0~45_sumout\ : std_logic;
SIGNAL \dis|clk_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~46\ : std_logic;
SIGNAL \dis|Add0~41_sumout\ : std_logic;
SIGNAL \dis|clk_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~42\ : std_logic;
SIGNAL \dis|Add0~65_sumout\ : std_logic;
SIGNAL \dis|clk_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~66\ : std_logic;
SIGNAL \dis|Add0~61_sumout\ : std_logic;
SIGNAL \dis|clk_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Add0~62\ : std_logic;
SIGNAL \dis|Add0~57_sumout\ : std_logic;
SIGNAL \dis|Add0~58\ : std_logic;
SIGNAL \dis|Add0~69_sumout\ : std_logic;
SIGNAL \dis|LessThan0~3_combout\ : std_logic;
SIGNAL \dis|LessThan0~2_combout\ : std_logic;
SIGNAL \dis|LessThan0~0_combout\ : std_logic;
SIGNAL \dis|LessThan0~1_combout\ : std_logic;
SIGNAL \dis|LessThan0~4_combout\ : std_logic;
SIGNAL \dis|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \dis|CLK_400HZ~q\ : std_logic;
SIGNAL \dis|state.DROP_LCD_E~DUPLICATE_q\ : std_logic;
SIGNAL \dis|state.HOLD~DUPLICATE_q\ : std_logic;
SIGNAL \dis|LCD_RS~0_combout\ : std_logic;
SIGNAL \dis|state.DROP_LCD_E~q\ : std_logic;
SIGNAL \dis|state.HOLD~q\ : std_logic;
SIGNAL \dis|state.RESET~feeder_combout\ : std_logic;
SIGNAL \dis|state.RESET~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Selector10~0_combout\ : std_logic;
SIGNAL \dis|next_command.FUNC_SET~q\ : std_logic;
SIGNAL \dis|state~30_combout\ : std_logic;
SIGNAL \dis|state.FUNC_SET~q\ : std_logic;
SIGNAL \dis|Selector15~0_combout\ : std_logic;
SIGNAL \dis|next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \dis|state~31_combout\ : std_logic;
SIGNAL \dis|state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \dis|Selector16~0_combout\ : std_logic;
SIGNAL \dis|next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \dis|state~28_combout\ : std_logic;
SIGNAL \dis|state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \dis|state.RESET~q\ : std_logic;
SIGNAL \dis|Selector19~0_combout\ : std_logic;
SIGNAL \dis|Selector21~0_combout\ : std_logic;
SIGNAL \dis|Selector20~0_combout\ : std_logic;
SIGNAL \dis|Selector14~0_combout\ : std_logic;
SIGNAL \dis|next_command.RETURN~q\ : std_logic;
SIGNAL \dis|state~27_combout\ : std_logic;
SIGNAL \dis|state.RETURN~q\ : std_logic;
SIGNAL \dis|Selector13~1_combout\ : std_logic;
SIGNAL \dis|state.DISPLAY_CLEAR~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Selector11~0_combout\ : std_logic;
SIGNAL \dis|next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \dis|state~29_combout\ : std_logic;
SIGNAL \dis|state.DISPLAY_ON~q\ : std_logic;
SIGNAL \dis|Selector12~0_combout\ : std_logic;
SIGNAL \dis|next_command.MODE_SET~q\ : std_logic;
SIGNAL \dis|state~26_combout\ : std_logic;
SIGNAL \dis|state.MODE_SET~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Selector13~0_combout\ : std_logic;
SIGNAL \dis|next_command.PRINT_STRING~q\ : std_logic;
SIGNAL \dis|state~25_combout\ : std_logic;
SIGNAL \dis|state.PRINT_STRING~q\ : std_logic;
SIGNAL \db|Add0~33_sumout\ : std_logic;
SIGNAL \db|Add0~74\ : std_logic;
SIGNAL \db|Add0~37_sumout\ : std_logic;
SIGNAL \db|counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \db|Add0~38\ : std_logic;
SIGNAL \db|Add0~61_sumout\ : std_logic;
SIGNAL \db|Add0~62\ : std_logic;
SIGNAL \db|Add0~57_sumout\ : std_logic;
SIGNAL \db|Add0~58\ : std_logic;
SIGNAL \db|Add0~65_sumout\ : std_logic;
SIGNAL \db|Add0~66\ : std_logic;
SIGNAL \db|Add0~69_sumout\ : std_logic;
SIGNAL \db|Add0~70\ : std_logic;
SIGNAL \db|Add0~77_sumout\ : std_logic;
SIGNAL \db|Add0~78\ : std_logic;
SIGNAL \db|Add0~81_sumout\ : std_logic;
SIGNAL \db|Add0~82\ : std_logic;
SIGNAL \db|Add0~85_sumout\ : std_logic;
SIGNAL \db|Add0~86\ : std_logic;
SIGNAL \db|Add0~89_sumout\ : std_logic;
SIGNAL \db|Add0~90\ : std_logic;
SIGNAL \db|Add0~93_sumout\ : std_logic;
SIGNAL \db|Add0~94\ : std_logic;
SIGNAL \db|Add0~97_sumout\ : std_logic;
SIGNAL \db|Add0~98\ : std_logic;
SIGNAL \db|Add0~101_sumout\ : std_logic;
SIGNAL \db|Add0~102\ : std_logic;
SIGNAL \db|Add0~105_sumout\ : std_logic;
SIGNAL \db|LessThan0~4_combout\ : std_logic;
SIGNAL \db|LessThan0~5_combout\ : std_logic;
SIGNAL \db|LessThan0~2_combout\ : std_logic;
SIGNAL \db|LessThan0~0_combout\ : std_logic;
SIGNAL \db|LessThan0~1_combout\ : std_logic;
SIGNAL \db|LessThan0~6_combout\ : std_logic;
SIGNAL \db|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \db|Add0~34\ : std_logic;
SIGNAL \db|Add0~29_sumout\ : std_logic;
SIGNAL \db|Add0~30\ : std_logic;
SIGNAL \db|Add0~25_sumout\ : std_logic;
SIGNAL \db|Add0~26\ : std_logic;
SIGNAL \db|Add0~21_sumout\ : std_logic;
SIGNAL \db|Add0~22\ : std_logic;
SIGNAL \db|Add0~17_sumout\ : std_logic;
SIGNAL \db|counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \db|Add0~18\ : std_logic;
SIGNAL \db|Add0~13_sumout\ : std_logic;
SIGNAL \db|Add0~14\ : std_logic;
SIGNAL \db|Add0~9_sumout\ : std_logic;
SIGNAL \db|Add0~10\ : std_logic;
SIGNAL \db|Add0~5_sumout\ : std_logic;
SIGNAL \db|Add0~6\ : std_logic;
SIGNAL \db|Add0~1_sumout\ : std_logic;
SIGNAL \db|Add0~2\ : std_logic;
SIGNAL \db|Add0~53_sumout\ : std_logic;
SIGNAL \db|Add0~54\ : std_logic;
SIGNAL \db|Add0~41_sumout\ : std_logic;
SIGNAL \db|Add0~42\ : std_logic;
SIGNAL \db|Add0~45_sumout\ : std_logic;
SIGNAL \db|counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \db|Add0~46\ : std_logic;
SIGNAL \db|Add0~49_sumout\ : std_logic;
SIGNAL \db|counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \db|Add0~50\ : std_logic;
SIGNAL \db|Add0~73_sumout\ : std_logic;
SIGNAL \db|counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \db|LessThan0~3_combout\ : std_logic;
SIGNAL \db|slow_clk~0_combout\ : std_logic;
SIGNAL \db|slow_clk~q\ : std_logic;
SIGNAL \pb~input_o\ : std_logic;
SIGNAL \db|d1|Q~feeder_combout\ : std_logic;
SIGNAL \db|d1|Q~q\ : std_logic;
SIGNAL \db|d2|Q~feeder_combout\ : std_logic;
SIGNAL \db|d2|Q~q\ : std_logic;
SIGNAL \db|out~combout\ : std_logic;
SIGNAL \i~input_o\ : std_logic;
SIGNAL \m|count~1_combout\ : std_logic;
SIGNAL \m|count~0_combout\ : std_logic;
SIGNAL \m|count~2_combout\ : std_logic;
SIGNAL \dis|Selector9~1_combout\ : std_logic;
SIGNAL \dis|Selector9~0_combout\ : std_logic;
SIGNAL \dis|state.MODE_SET~q\ : std_logic;
SIGNAL \dis|Selector8~1_combout\ : std_logic;
SIGNAL \dis|Selector8~0_combout\ : std_logic;
SIGNAL \dis|Selector7~1_combout\ : std_logic;
SIGNAL \dis|state.DISPLAY_ON~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Selector7~0_combout\ : std_logic;
SIGNAL \dis|Selector6~1_combout\ : std_logic;
SIGNAL \dis|Selector6~0_combout\ : std_logic;
SIGNAL \dis|Selector5~1_combout\ : std_logic;
SIGNAL \dis|Selector5~0_combout\ : std_logic;
SIGNAL \dis|Selector4~1_combout\ : std_logic;
SIGNAL \dis|Selector4~0_combout\ : std_logic;
SIGNAL \dis|Selector3~0_combout\ : std_logic;
SIGNAL \dis|state.RETURN~DUPLICATE_q\ : std_logic;
SIGNAL \dis|Selector2~0_combout\ : std_logic;
SIGNAL \dis|LCD_E~0_combout\ : std_logic;
SIGNAL \dis|LCD_E~q\ : std_logic;
SIGNAL \dis|Selector1~0_combout\ : std_logic;
SIGNAL \dis|LCD_RS~q\ : std_logic;
SIGNAL \dis|clk_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dis|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \db|counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \dis|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \m|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \db|ALT_INV_counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \dis|ALT_INV_clk_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dis|ALT_INV_state.RESET~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_state.DISPLAY_ON~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_state.DISPLAY_CLEAR~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_state.RETURN~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_state.MODE_SET~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_state.HOLD~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\ : std_logic;
SIGNAL \db|ALT_INV_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \db|ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \db|ALT_INV_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \db|ALT_INV_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \db|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \db|ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \dis|ALT_INV_clk_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_pb~input_o\ : std_logic;
SIGNAL \ALT_INV_i~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \dis|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \db|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \db|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \db|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \db|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \db|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \db|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \db|ALT_INV_slow_clk~q\ : std_logic;
SIGNAL \db|d2|ALT_INV_Q~q\ : std_logic;
SIGNAL \db|d1|ALT_INV_Q~q\ : std_logic;
SIGNAL \dis|ALT_INV_next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \dis|ALT_INV_next_command.FUNC_SET~q\ : std_logic;
SIGNAL \dis|ALT_INV_next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \dis|ALT_INV_next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \dis|ALT_INV_next_command.RETURN~q\ : std_logic;
SIGNAL \dis|ALT_INV_next_command.MODE_SET~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.FUNC_SET~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.RESET~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.DISPLAY_ON~q\ : std_logic;
SIGNAL \m|ALT_INV_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dis|ALT_INV_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dis|ALT_INV_state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.RETURN~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.MODE_SET~q\ : std_logic;
SIGNAL \dis|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dis|ALT_INV_next_command.PRINT_STRING~q\ : std_logic;
SIGNAL \dis|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \dis|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \dis|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \dis|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \dis|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dis|ALT_INV_state.PRINT_STRING~q\ : std_logic;
SIGNAL \dis|ALT_INV_CLK_400HZ~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.HOLD~q\ : std_logic;
SIGNAL \dis|ALT_INV_state.DROP_LCD_E~q\ : std_logic;
SIGNAL \dis|ALT_INV_LCD_RS~q\ : std_logic;
SIGNAL \dis|ALT_INV_LCD_E~q\ : std_logic;

BEGIN

LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
LCD_DATA <= ww_LCD_DATA;
ww_CLOCK_50 <= CLOCK_50;
ww_pb <= pb;
ww_reset <= reset;
ww_i <= i;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\db|ALT_INV_counter\(26) <= NOT \db|counter\(26);
\db|ALT_INV_counter\(25) <= NOT \db|counter\(25);
\db|ALT_INV_counter\(24) <= NOT \db|counter\(24);
\db|ALT_INV_counter\(23) <= NOT \db|counter\(23);
\db|ALT_INV_counter\(22) <= NOT \db|counter\(22);
\db|ALT_INV_counter\(21) <= NOT \db|counter\(21);
\db|ALT_INV_counter\(20) <= NOT \db|counter\(20);
\db|ALT_INV_counter\(19) <= NOT \db|counter\(19);
\db|ALT_INV_counter\(13) <= NOT \db|counter\(13);
\db|ALT_INV_counter\(18) <= NOT \db|counter\(18);
\db|ALT_INV_counter\(17) <= NOT \db|counter\(17);
\db|ALT_INV_counter\(15) <= NOT \db|counter\(15);
\db|ALT_INV_counter\(16) <= NOT \db|counter\(16);
\db|ALT_INV_counter\(9) <= NOT \db|counter\(9);
\db|ALT_INV_counter\(12) <= NOT \db|counter\(12);
\db|ALT_INV_counter\(11) <= NOT \db|counter\(11);
\db|ALT_INV_counter\(10) <= NOT \db|counter\(10);
\db|ALT_INV_counter\(14) <= NOT \db|counter\(14);
\db|ALT_INV_counter\(0) <= NOT \db|counter\(0);
\db|ALT_INV_counter\(1) <= NOT \db|counter\(1);
\db|ALT_INV_counter\(2) <= NOT \db|counter\(2);
\db|ALT_INV_counter\(3) <= NOT \db|counter\(3);
\db|ALT_INV_counter\(4) <= NOT \db|counter\(4);
\db|ALT_INV_counter\(5) <= NOT \db|counter\(5);
\db|ALT_INV_counter\(6) <= NOT \db|counter\(6);
\db|ALT_INV_counter\(7) <= NOT \db|counter\(7);
\db|ALT_INV_counter\(8) <= NOT \db|counter\(8);
\dis|ALT_INV_clk_counter\(0) <= NOT \dis|clk_counter\(0);
\dis|ALT_INV_clk_counter\(1) <= NOT \dis|clk_counter\(1);
\dis|ALT_INV_clk_counter\(19) <= NOT \dis|clk_counter\(19);
\dis|ALT_INV_clk_counter\(16) <= NOT \dis|clk_counter\(16);
\dis|ALT_INV_clk_counter\(17) <= NOT \dis|clk_counter\(17);
\dis|ALT_INV_clk_counter\(18) <= NOT \dis|clk_counter\(18);
\dis|ALT_INV_clk_counter\(12) <= NOT \dis|clk_counter\(12);
\dis|ALT_INV_clk_counter\(13) <= NOT \dis|clk_counter\(13);
\dis|ALT_INV_clk_counter\(14) <= NOT \dis|clk_counter\(14);
\dis|ALT_INV_clk_counter\(15) <= NOT \dis|clk_counter\(15);
\dis|ALT_INV_clk_counter\(6) <= NOT \dis|clk_counter\(6);
\dis|ALT_INV_clk_counter\(7) <= NOT \dis|clk_counter\(7);
\dis|ALT_INV_clk_counter\(8) <= NOT \dis|clk_counter\(8);
\dis|ALT_INV_clk_counter\(9) <= NOT \dis|clk_counter\(9);
\dis|ALT_INV_clk_counter\(2) <= NOT \dis|clk_counter\(2);
\dis|ALT_INV_clk_counter\(3) <= NOT \dis|clk_counter\(3);
\dis|ALT_INV_clk_counter\(4) <= NOT \dis|clk_counter\(4);
\dis|ALT_INV_clk_counter\(5) <= NOT \dis|clk_counter\(5);
\dis|ALT_INV_clk_counter\(10) <= NOT \dis|clk_counter\(10);
\dis|ALT_INV_clk_counter\(11) <= NOT \dis|clk_counter\(11);
\dis|ALT_INV_state.RESET~DUPLICATE_q\ <= NOT \dis|state.RESET~DUPLICATE_q\;
\dis|ALT_INV_state.DISPLAY_ON~DUPLICATE_q\ <= NOT \dis|state.DISPLAY_ON~DUPLICATE_q\;
\dis|ALT_INV_state.DISPLAY_CLEAR~DUPLICATE_q\ <= NOT \dis|state.DISPLAY_CLEAR~DUPLICATE_q\;
\dis|ALT_INV_state.RETURN~DUPLICATE_q\ <= NOT \dis|state.RETURN~DUPLICATE_q\;
\dis|ALT_INV_state.MODE_SET~DUPLICATE_q\ <= NOT \dis|state.MODE_SET~DUPLICATE_q\;
\dis|ALT_INV_state.HOLD~DUPLICATE_q\ <= NOT \dis|state.HOLD~DUPLICATE_q\;
\dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\ <= NOT \dis|state.DROP_LCD_E~DUPLICATE_q\;
\db|ALT_INV_counter[15]~DUPLICATE_q\ <= NOT \db|counter[15]~DUPLICATE_q\;
\db|ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \db|counter[12]~DUPLICATE_q\;
\db|ALT_INV_counter[11]~DUPLICATE_q\ <= NOT \db|counter[11]~DUPLICATE_q\;
\db|ALT_INV_counter[14]~DUPLICATE_q\ <= NOT \db|counter[14]~DUPLICATE_q\;
\db|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \db|counter[0]~DUPLICATE_q\;
\db|ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \db|counter[4]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[17]~DUPLICATE_q\ <= NOT \dis|clk_counter[17]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[18]~DUPLICATE_q\ <= NOT \dis|clk_counter[18]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[12]~DUPLICATE_q\ <= NOT \dis|clk_counter[12]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[14]~DUPLICATE_q\ <= NOT \dis|clk_counter[14]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[15]~DUPLICATE_q\ <= NOT \dis|clk_counter[15]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[6]~DUPLICATE_q\ <= NOT \dis|clk_counter[6]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[7]~DUPLICATE_q\ <= NOT \dis|clk_counter[7]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[8]~DUPLICATE_q\ <= NOT \dis|clk_counter[8]~DUPLICATE_q\;
\dis|ALT_INV_clk_counter[4]~DUPLICATE_q\ <= NOT \dis|clk_counter[4]~DUPLICATE_q\;
\ALT_INV_pb~input_o\ <= NOT \pb~input_o\;
\ALT_INV_i~input_o\ <= NOT \i~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\dis|ALT_INV_Selector4~1_combout\ <= NOT \dis|Selector4~1_combout\;
\dis|ALT_INV_Selector5~1_combout\ <= NOT \dis|Selector5~1_combout\;
\dis|ALT_INV_Selector6~1_combout\ <= NOT \dis|Selector6~1_combout\;
\dis|ALT_INV_Selector7~1_combout\ <= NOT \dis|Selector7~1_combout\;
\dis|ALT_INV_Selector8~1_combout\ <= NOT \dis|Selector8~1_combout\;
\dis|ALT_INV_Selector9~1_combout\ <= NOT \dis|Selector9~1_combout\;
\dis|ALT_INV_Selector13~1_combout\ <= NOT \dis|Selector13~1_combout\;
\db|ALT_INV_LessThan0~5_combout\ <= NOT \db|LessThan0~5_combout\;
\db|ALT_INV_LessThan0~4_combout\ <= NOT \db|LessThan0~4_combout\;
\db|ALT_INV_LessThan0~3_combout\ <= NOT \db|LessThan0~3_combout\;
\db|ALT_INV_LessThan0~2_combout\ <= NOT \db|LessThan0~2_combout\;
\db|ALT_INV_LessThan0~1_combout\ <= NOT \db|LessThan0~1_combout\;
\db|ALT_INV_LessThan0~0_combout\ <= NOT \db|LessThan0~0_combout\;
\db|ALT_INV_slow_clk~q\ <= NOT \db|slow_clk~q\;
\db|d2|ALT_INV_Q~q\ <= NOT \db|d2|Q~q\;
\db|d1|ALT_INV_Q~q\ <= NOT \db|d1|Q~q\;
\dis|ALT_INV_next_command.DISPLAY_OFF~q\ <= NOT \dis|next_command.DISPLAY_OFF~q\;
\dis|ALT_INV_next_command.FUNC_SET~q\ <= NOT \dis|next_command.FUNC_SET~q\;
\dis|ALT_INV_next_command.DISPLAY_ON~q\ <= NOT \dis|next_command.DISPLAY_ON~q\;
\dis|ALT_INV_next_command.DISPLAY_CLEAR~q\ <= NOT \dis|next_command.DISPLAY_CLEAR~q\;
\dis|ALT_INV_next_command.RETURN~q\ <= NOT \dis|next_command.RETURN~q\;
\dis|ALT_INV_next_command.MODE_SET~q\ <= NOT \dis|next_command.MODE_SET~q\;
\dis|ALT_INV_state.DISPLAY_OFF~q\ <= NOT \dis|state.DISPLAY_OFF~q\;
\dis|ALT_INV_state.FUNC_SET~q\ <= NOT \dis|state.FUNC_SET~q\;
\dis|ALT_INV_state.RESET~q\ <= NOT \dis|state.RESET~q\;
\dis|ALT_INV_state.DISPLAY_ON~q\ <= NOT \dis|state.DISPLAY_ON~q\;
\m|ALT_INV_count\(1) <= NOT \m|count\(1);
\m|ALT_INV_count\(0) <= NOT \m|count\(0);
\m|ALT_INV_count\(2) <= NOT \m|count\(2);
\dis|ALT_INV_index\(0) <= NOT \dis|index\(0);
\dis|ALT_INV_state.DISPLAY_CLEAR~q\ <= NOT \dis|state.DISPLAY_CLEAR~q\;
\dis|ALT_INV_index\(1) <= NOT \dis|index\(1);
\dis|ALT_INV_index\(2) <= NOT \dis|index\(2);
\dis|ALT_INV_state.RETURN~q\ <= NOT \dis|state.RETURN~q\;
\dis|ALT_INV_state.MODE_SET~q\ <= NOT \dis|state.MODE_SET~q\;
\dis|ALT_INV_DATA_BUS_VALUE\(7) <= NOT \dis|DATA_BUS_VALUE\(7);
\dis|ALT_INV_DATA_BUS_VALUE\(6) <= NOT \dis|DATA_BUS_VALUE\(6);
\dis|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \dis|DATA_BUS_VALUE\(5);
\dis|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \dis|DATA_BUS_VALUE\(4);
\dis|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \dis|DATA_BUS_VALUE\(3);
\dis|ALT_INV_DATA_BUS_VALUE\(2) <= NOT \dis|DATA_BUS_VALUE\(2);
\dis|ALT_INV_DATA_BUS_VALUE\(1) <= NOT \dis|DATA_BUS_VALUE\(1);
\dis|ALT_INV_DATA_BUS_VALUE\(0) <= NOT \dis|DATA_BUS_VALUE\(0);
\dis|ALT_INV_next_command.PRINT_STRING~q\ <= NOT \dis|next_command.PRINT_STRING~q\;
\dis|ALT_INV_LessThan0~4_combout\ <= NOT \dis|LessThan0~4_combout\;
\dis|ALT_INV_LessThan0~3_combout\ <= NOT \dis|LessThan0~3_combout\;
\dis|ALT_INV_LessThan0~2_combout\ <= NOT \dis|LessThan0~2_combout\;
\dis|ALT_INV_LessThan0~1_combout\ <= NOT \dis|LessThan0~1_combout\;
\dis|ALT_INV_LessThan0~0_combout\ <= NOT \dis|LessThan0~0_combout\;
\dis|ALT_INV_state.PRINT_STRING~q\ <= NOT \dis|state.PRINT_STRING~q\;
\dis|ALT_INV_CLK_400HZ~q\ <= NOT \dis|CLK_400HZ~q\;
\dis|ALT_INV_state.HOLD~q\ <= NOT \dis|state.HOLD~q\;
\dis|ALT_INV_state.DROP_LCD_E~q\ <= NOT \dis|state.DROP_LCD_E~q\;
\dis|ALT_INV_LCD_RS~q\ <= NOT \dis|LCD_RS~q\;
\dis|ALT_INV_LCD_E~q\ <= NOT \dis|LCD_E~q\;

-- Location: IOOBUF_X89_Y6_N22
\LCD_ON~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_ON);

-- Location: IOOBUF_X74_Y81_N42
\LCD_BLON~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_BLON);

-- Location: IOOBUF_X58_Y0_N42
\LCD_RW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_RW);

-- Location: IOOBUF_X89_Y35_N45
\LCD_EN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|LCD_E~q\,
	devoe => ww_devoe,
	o => ww_LCD_EN);

-- Location: IOOBUF_X89_Y36_N5
\LCD_RS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|LCD_RS~q\,
	devoe => ww_devoe,
	o => ww_LCD_RS);

-- Location: IOOBUF_X89_Y38_N39
\LCD_DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(0));

-- Location: IOOBUF_X89_Y36_N56
\LCD_DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(1));

-- Location: IOOBUF_X89_Y36_N39
\LCD_DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(2));

-- Location: IOOBUF_X89_Y38_N5
\LCD_DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(3));

-- Location: IOOBUF_X89_Y36_N22
\LCD_DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(4));

-- Location: IOOBUF_X89_Y35_N96
\LCD_DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(5));

-- Location: IOOBUF_X89_Y37_N5
\LCD_DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(6));

-- Location: IOOBUF_X89_Y37_N22
\LCD_DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dis|DATA_BUS_VALUE\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_LCD_DATA(7));

-- Location: IOIBUF_X89_Y35_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X85_Y35_N0
\dis|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~77_sumout\ = SUM(( \dis|clk_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \dis|Add0~78\ = CARRY(( \dis|clk_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_clk_counter\(0),
	cin => GND,
	sumout => \dis|Add0~77_sumout\,
	cout => \dis|Add0~78\);

-- Location: IOIBUF_X89_Y37_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X85_Y35_N2
\dis|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(0));

-- Location: LABCELL_X85_Y35_N3
\dis|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~73_sumout\ = SUM(( \dis|clk_counter\(1) ) + ( GND ) + ( \dis|Add0~78\ ))
-- \dis|Add0~74\ = CARRY(( \dis|clk_counter\(1) ) + ( GND ) + ( \dis|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_clk_counter\(1),
	cin => \dis|Add0~78\,
	sumout => \dis|Add0~73_sumout\,
	cout => \dis|Add0~74\);

-- Location: FF_X85_Y35_N5
\dis|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(1));

-- Location: LABCELL_X85_Y35_N6
\dis|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~21_sumout\ = SUM(( \dis|clk_counter\(2) ) + ( GND ) + ( \dis|Add0~74\ ))
-- \dis|Add0~22\ = CARRY(( \dis|clk_counter\(2) ) + ( GND ) + ( \dis|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_clk_counter\(2),
	cin => \dis|Add0~74\,
	sumout => \dis|Add0~21_sumout\,
	cout => \dis|Add0~22\);

-- Location: FF_X85_Y35_N7
\dis|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(2));

-- Location: LABCELL_X85_Y35_N9
\dis|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~17_sumout\ = SUM(( \dis|clk_counter\(3) ) + ( GND ) + ( \dis|Add0~22\ ))
-- \dis|Add0~18\ = CARRY(( \dis|clk_counter\(3) ) + ( GND ) + ( \dis|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(3),
	cin => \dis|Add0~22\,
	sumout => \dis|Add0~17_sumout\,
	cout => \dis|Add0~18\);

-- Location: FF_X85_Y35_N11
\dis|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(3));

-- Location: LABCELL_X85_Y35_N12
\dis|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~13_sumout\ = SUM(( \dis|clk_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~18\ ))
-- \dis|Add0~14\ = CARRY(( \dis|clk_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_clk_counter[4]~DUPLICATE_q\,
	cin => \dis|Add0~18\,
	sumout => \dis|Add0~13_sumout\,
	cout => \dis|Add0~14\);

-- Location: FF_X85_Y35_N14
\dis|clk_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N15
\dis|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~9_sumout\ = SUM(( \dis|clk_counter\(5) ) + ( GND ) + ( \dis|Add0~14\ ))
-- \dis|Add0~10\ = CARRY(( \dis|clk_counter\(5) ) + ( GND ) + ( \dis|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(5),
	cin => \dis|Add0~14\,
	sumout => \dis|Add0~9_sumout\,
	cout => \dis|Add0~10\);

-- Location: FF_X85_Y35_N17
\dis|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(5));

-- Location: LABCELL_X85_Y35_N18
\dis|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~37_sumout\ = SUM(( \dis|clk_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~10\ ))
-- \dis|Add0~38\ = CARRY(( \dis|clk_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter[6]~DUPLICATE_q\,
	cin => \dis|Add0~10\,
	sumout => \dis|Add0~37_sumout\,
	cout => \dis|Add0~38\);

-- Location: FF_X85_Y35_N20
\dis|clk_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N21
\dis|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~33_sumout\ = SUM(( \dis|clk_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~38\ ))
-- \dis|Add0~34\ = CARRY(( \dis|clk_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_clk_counter[7]~DUPLICATE_q\,
	cin => \dis|Add0~38\,
	sumout => \dis|Add0~33_sumout\,
	cout => \dis|Add0~34\);

-- Location: FF_X85_Y35_N23
\dis|clk_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N24
\dis|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~29_sumout\ = SUM(( \dis|clk_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~34\ ))
-- \dis|Add0~30\ = CARRY(( \dis|clk_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter[8]~DUPLICATE_q\,
	cin => \dis|Add0~34\,
	sumout => \dis|Add0~29_sumout\,
	cout => \dis|Add0~30\);

-- Location: FF_X85_Y35_N26
\dis|clk_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N27
\dis|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~25_sumout\ = SUM(( \dis|clk_counter\(9) ) + ( GND ) + ( \dis|Add0~30\ ))
-- \dis|Add0~26\ = CARRY(( \dis|clk_counter\(9) ) + ( GND ) + ( \dis|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_clk_counter\(9),
	cin => \dis|Add0~30\,
	sumout => \dis|Add0~25_sumout\,
	cout => \dis|Add0~26\);

-- Location: FF_X85_Y35_N29
\dis|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(9));

-- Location: LABCELL_X85_Y35_N30
\dis|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~5_sumout\ = SUM(( \dis|clk_counter\(10) ) + ( GND ) + ( \dis|Add0~26\ ))
-- \dis|Add0~6\ = CARRY(( \dis|clk_counter\(10) ) + ( GND ) + ( \dis|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(10),
	cin => \dis|Add0~26\,
	sumout => \dis|Add0~5_sumout\,
	cout => \dis|Add0~6\);

-- Location: FF_X85_Y35_N31
\dis|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(10));

-- Location: LABCELL_X85_Y35_N33
\dis|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~1_sumout\ = SUM(( \dis|clk_counter\(11) ) + ( GND ) + ( \dis|Add0~6\ ))
-- \dis|Add0~2\ = CARRY(( \dis|clk_counter\(11) ) + ( GND ) + ( \dis|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_clk_counter\(11),
	cin => \dis|Add0~6\,
	sumout => \dis|Add0~1_sumout\,
	cout => \dis|Add0~2\);

-- Location: FF_X85_Y35_N35
\dis|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(11));

-- Location: LABCELL_X85_Y35_N36
\dis|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~53_sumout\ = SUM(( \dis|clk_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~2\ ))
-- \dis|Add0~54\ = CARRY(( \dis|clk_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_clk_counter[12]~DUPLICATE_q\,
	cin => \dis|Add0~2\,
	sumout => \dis|Add0~53_sumout\,
	cout => \dis|Add0~54\);

-- Location: FF_X85_Y35_N38
\dis|clk_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N39
\dis|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~49_sumout\ = SUM(( \dis|clk_counter\(13) ) + ( GND ) + ( \dis|Add0~54\ ))
-- \dis|Add0~50\ = CARRY(( \dis|clk_counter\(13) ) + ( GND ) + ( \dis|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(13),
	cin => \dis|Add0~54\,
	sumout => \dis|Add0~49_sumout\,
	cout => \dis|Add0~50\);

-- Location: FF_X85_Y35_N41
\dis|clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(13));

-- Location: LABCELL_X85_Y35_N42
\dis|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~45_sumout\ = SUM(( \dis|clk_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~50\ ))
-- \dis|Add0~46\ = CARRY(( \dis|clk_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_clk_counter[14]~DUPLICATE_q\,
	cin => \dis|Add0~50\,
	sumout => \dis|Add0~45_sumout\,
	cout => \dis|Add0~46\);

-- Location: FF_X85_Y35_N44
\dis|clk_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N45
\dis|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~41_sumout\ = SUM(( \dis|clk_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~46\ ))
-- \dis|Add0~42\ = CARRY(( \dis|clk_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter[15]~DUPLICATE_q\,
	cin => \dis|Add0~46\,
	sumout => \dis|Add0~41_sumout\,
	cout => \dis|Add0~42\);

-- Location: FF_X85_Y35_N47
\dis|clk_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N48
\dis|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~65_sumout\ = SUM(( \dis|clk_counter\(16) ) + ( GND ) + ( \dis|Add0~42\ ))
-- \dis|Add0~66\ = CARRY(( \dis|clk_counter\(16) ) + ( GND ) + ( \dis|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(16),
	cin => \dis|Add0~42\,
	sumout => \dis|Add0~65_sumout\,
	cout => \dis|Add0~66\);

-- Location: FF_X85_Y35_N50
\dis|clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(16));

-- Location: FF_X85_Y35_N56
\dis|clk_counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[18]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N51
\dis|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~61_sumout\ = SUM(( \dis|clk_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~66\ ))
-- \dis|Add0~62\ = CARRY(( \dis|clk_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_clk_counter[17]~DUPLICATE_q\,
	cin => \dis|Add0~66\,
	sumout => \dis|Add0~61_sumout\,
	cout => \dis|Add0~62\);

-- Location: FF_X85_Y35_N53
\dis|clk_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y35_N54
\dis|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~57_sumout\ = SUM(( \dis|clk_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~62\ ))
-- \dis|Add0~58\ = CARRY(( \dis|clk_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \dis|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter[18]~DUPLICATE_q\,
	cin => \dis|Add0~62\,
	sumout => \dis|Add0~57_sumout\,
	cout => \dis|Add0~58\);

-- Location: FF_X85_Y35_N55
\dis|clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(18));

-- Location: FF_X85_Y35_N52
\dis|clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(17));

-- Location: LABCELL_X85_Y35_N57
\dis|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Add0~69_sumout\ = SUM(( \dis|clk_counter\(19) ) + ( GND ) + ( \dis|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(19),
	cin => \dis|Add0~58\,
	sumout => \dis|Add0~69_sumout\);

-- Location: FF_X85_Y35_N59
\dis|clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(19));

-- Location: MLABCELL_X87_Y35_N15
\dis|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LessThan0~3_combout\ = ( !\dis|clk_counter\(17) & ( !\dis|clk_counter\(19) & ( (!\dis|clk_counter\(16) & !\dis|clk_counter\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_clk_counter\(16),
	datad => \dis|ALT_INV_clk_counter\(18),
	datae => \dis|ALT_INV_clk_counter\(17),
	dataf => \dis|ALT_INV_clk_counter\(19),
	combout => \dis|LessThan0~3_combout\);

-- Location: FF_X85_Y35_N37
\dis|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(12));

-- Location: FF_X85_Y35_N43
\dis|clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(14));

-- Location: FF_X85_Y35_N46
\dis|clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(15));

-- Location: MLABCELL_X87_Y35_N45
\dis|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LessThan0~2_combout\ = ( \dis|clk_counter\(15) & ( (\dis|clk_counter\(13) & (\dis|clk_counter\(12) & \dis|clk_counter\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_clk_counter\(13),
	datac => \dis|ALT_INV_clk_counter\(12),
	datad => \dis|ALT_INV_clk_counter\(14),
	dataf => \dis|ALT_INV_clk_counter\(15),
	combout => \dis|LessThan0~2_combout\);

-- Location: FF_X85_Y35_N13
\dis|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(4));

-- Location: MLABCELL_X87_Y35_N3
\dis|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LessThan0~0_combout\ = ( \dis|clk_counter\(5) & ( ((\dis|clk_counter\(4)) # (\dis|clk_counter\(3))) # (\dis|clk_counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_clk_counter\(2),
	datac => \dis|ALT_INV_clk_counter\(3),
	datad => \dis|ALT_INV_clk_counter\(4),
	dataf => \dis|ALT_INV_clk_counter\(5),
	combout => \dis|LessThan0~0_combout\);

-- Location: FF_X85_Y35_N22
\dis|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(7));

-- Location: FF_X85_Y35_N19
\dis|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(6));

-- Location: FF_X85_Y35_N25
\dis|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \dis|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \dis|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|clk_counter\(8));

-- Location: MLABCELL_X87_Y35_N48
\dis|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LessThan0~1_combout\ = ( !\dis|clk_counter\(8) & ( (!\dis|clk_counter\(9) & (!\dis|clk_counter\(7) & !\dis|clk_counter\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_clk_counter\(9),
	datac => \dis|ALT_INV_clk_counter\(7),
	datad => \dis|ALT_INV_clk_counter\(6),
	dataf => \dis|ALT_INV_clk_counter\(8),
	combout => \dis|LessThan0~1_combout\);

-- Location: MLABCELL_X87_Y35_N30
\dis|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LessThan0~4_combout\ = ( \dis|LessThan0~0_combout\ & ( \dis|LessThan0~1_combout\ & ( (!\dis|LessThan0~3_combout\) # ((\dis|LessThan0~2_combout\ & ((\dis|clk_counter\(11)) # (\dis|clk_counter\(10))))) ) ) ) # ( !\dis|LessThan0~0_combout\ & ( 
-- \dis|LessThan0~1_combout\ & ( (!\dis|LessThan0~3_combout\) # ((\dis|clk_counter\(11) & \dis|LessThan0~2_combout\)) ) ) ) # ( \dis|LessThan0~0_combout\ & ( !\dis|LessThan0~1_combout\ & ( (!\dis|LessThan0~3_combout\) # ((\dis|LessThan0~2_combout\ & 
-- ((\dis|clk_counter\(11)) # (\dis|clk_counter\(10))))) ) ) ) # ( !\dis|LessThan0~0_combout\ & ( !\dis|LessThan0~1_combout\ & ( (!\dis|LessThan0~3_combout\) # ((\dis|LessThan0~2_combout\ & ((\dis|clk_counter\(11)) # (\dis|clk_counter\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011111110011001101111111001100110011111100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_clk_counter\(10),
	datab => \dis|ALT_INV_LessThan0~3_combout\,
	datac => \dis|ALT_INV_clk_counter\(11),
	datad => \dis|ALT_INV_LessThan0~2_combout\,
	datae => \dis|ALT_INV_LessThan0~0_combout\,
	dataf => \dis|ALT_INV_LessThan0~1_combout\,
	combout => \dis|LessThan0~4_combout\);

-- Location: LABCELL_X88_Y35_N27
\dis|CLK_400HZ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|CLK_400HZ~0_combout\ = ( \dis|LessThan0~4_combout\ & ( !\dis|CLK_400HZ~q\ ) ) # ( !\dis|LessThan0~4_combout\ & ( \dis|CLK_400HZ~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_CLK_400HZ~q\,
	dataf => \dis|ALT_INV_LessThan0~4_combout\,
	combout => \dis|CLK_400HZ~0_combout\);

-- Location: FF_X88_Y35_N17
\dis|CLK_400HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \dis|CLK_400HZ~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|CLK_400HZ~q\);

-- Location: FF_X87_Y35_N34
\dis|state.DROP_LCD_E~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|LCD_RS~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DROP_LCD_E~DUPLICATE_q\);

-- Location: FF_X87_Y36_N11
\dis|state.HOLD~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|state.DROP_LCD_E~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.HOLD~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N0
\dis|LCD_RS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LCD_RS~0_combout\ = ( !\dis|state.DROP_LCD_E~q\ & ( !\dis|state.HOLD~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.DROP_LCD_E~q\,
	combout => \dis|LCD_RS~0_combout\);

-- Location: FF_X87_Y35_N35
\dis|state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|LCD_RS~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DROP_LCD_E~q\);

-- Location: FF_X87_Y36_N10
\dis|state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|state.DROP_LCD_E~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.HOLD~q\);

-- Location: MLABCELL_X87_Y36_N36
\dis|state.RESET~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \dis|state.RESET~feeder_combout\);

-- Location: FF_X87_Y36_N38
\dis|state.RESET~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state.RESET~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.RESET~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y34_N9
\dis|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector10~0_combout\ = ( \dis|state.RESET~DUPLICATE_q\ & ( \dis|state.DROP_LCD_E~q\ & ( \dis|next_command.FUNC_SET~q\ ) ) ) # ( \dis|state.RESET~DUPLICATE_q\ & ( !\dis|state.DROP_LCD_E~q\ & ( (!\dis|state.HOLD~q\) # (\dis|next_command.FUNC_SET~q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_next_command.FUNC_SET~q\,
	datad => \dis|ALT_INV_state.HOLD~q\,
	datae => \dis|ALT_INV_state.RESET~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.DROP_LCD_E~q\,
	combout => \dis|Selector10~0_combout\);

-- Location: FF_X87_Y34_N14
\dis|next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector10~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.FUNC_SET~q\);

-- Location: MLABCELL_X87_Y35_N57
\dis|state~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~30_combout\ = ( !\dis|next_command.FUNC_SET~q\ & ( \dis|state.HOLD~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	dataf => \dis|ALT_INV_next_command.FUNC_SET~q\,
	combout => \dis|state~30_combout\);

-- Location: FF_X87_Y35_N59
\dis|state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.FUNC_SET~q\);

-- Location: LABCELL_X88_Y36_N39
\dis|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector15~0_combout\ = ( \dis|state.HOLD~DUPLICATE_q\ & ( (\dis|state.FUNC_SET~q\) # (\dis|next_command.DISPLAY_OFF~q\) ) ) # ( !\dis|state.HOLD~DUPLICATE_q\ & ( ((\dis|next_command.DISPLAY_OFF~q\ & \dis|state.DROP_LCD_E~DUPLICATE_q\)) # 
-- (\dis|state.FUNC_SET~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_next_command.DISPLAY_OFF~q\,
	datab => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	datac => \dis|ALT_INV_state.FUNC_SET~q\,
	dataf => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	combout => \dis|Selector15~0_combout\);

-- Location: FF_X88_Y36_N29
\dis|next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector15~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.DISPLAY_OFF~q\);

-- Location: MLABCELL_X87_Y36_N12
\dis|state~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~31_combout\ = ( \dis|next_command.DISPLAY_OFF~q\ & ( \dis|state.HOLD~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	dataf => \dis|ALT_INV_next_command.DISPLAY_OFF~q\,
	combout => \dis|state~31_combout\);

-- Location: FF_X87_Y36_N26
\dis|state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|state~31_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DISPLAY_OFF~q\);

-- Location: LABCELL_X88_Y36_N6
\dis|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector16~0_combout\ = ( \dis|state.DISPLAY_OFF~q\ ) # ( !\dis|state.DISPLAY_OFF~q\ & ( (\dis|next_command.DISPLAY_CLEAR~q\ & ((\dis|state.DROP_LCD_E~DUPLICATE_q\) # (\dis|state.HOLD~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_state.HOLD~q\,
	datac => \dis|ALT_INV_next_command.DISPLAY_CLEAR~q\,
	datad => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.DISPLAY_OFF~q\,
	combout => \dis|Selector16~0_combout\);

-- Location: FF_X88_Y36_N41
\dis|next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector16~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.DISPLAY_CLEAR~q\);

-- Location: LABCELL_X88_Y36_N15
\dis|state~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~28_combout\ = ( \dis|next_command.DISPLAY_CLEAR~q\ & ( \dis|state.HOLD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_state.HOLD~q\,
	dataf => \dis|ALT_INV_next_command.DISPLAY_CLEAR~q\,
	combout => \dis|state~28_combout\);

-- Location: FF_X88_Y36_N17
\dis|state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DISPLAY_CLEAR~q\);

-- Location: FF_X87_Y36_N37
\dis|state.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state.RESET~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.RESET~q\);

-- Location: LABCELL_X88_Y36_N42
\dis|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector19~0_combout\ = ( \dis|state.PRINT_STRING~q\ & ( (!\dis|index\(2) & (\dis|index\(0) & \dis|index\(1))) # (\dis|index\(2) & ((!\dis|index\(1)))) ) ) # ( !\dis|state.PRINT_STRING~q\ & ( (\dis|index\(2) & \dis|state.RESET~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011010001000011001101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_index\(0),
	datab => \dis|ALT_INV_index\(2),
	datac => \dis|ALT_INV_state.RESET~q\,
	datad => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_state.PRINT_STRING~q\,
	combout => \dis|Selector19~0_combout\);

-- Location: FF_X88_Y36_N32
\dis|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector19~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|index\(2));

-- Location: MLABCELL_X87_Y36_N45
\dis|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector21~0_combout\ = ( \dis|index\(2) & ( (!\dis|index\(0) & (!\dis|index\(1) & (\dis|state.PRINT_STRING~q\))) # (\dis|index\(0) & (((!\dis|state.PRINT_STRING~q\ & \dis|state.RESET~DUPLICATE_q\)))) ) ) # ( !\dis|index\(2) & ( (!\dis|index\(0) & 
-- (\dis|state.PRINT_STRING~q\)) # (\dis|index\(0) & (!\dis|state.PRINT_STRING~q\ & \dis|state.RESET~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011010000010100101101000001000010110000000100001011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_index\(0),
	datab => \dis|ALT_INV_index\(1),
	datac => \dis|ALT_INV_state.PRINT_STRING~q\,
	datad => \dis|ALT_INV_state.RESET~DUPLICATE_q\,
	dataf => \dis|ALT_INV_index\(2),
	combout => \dis|Selector21~0_combout\);

-- Location: FF_X87_Y36_N20
\dis|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector21~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|index\(0));

-- Location: LABCELL_X88_Y36_N54
\dis|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector20~0_combout\ = ( \dis|state.PRINT_STRING~q\ & ( (!\dis|index\(0) & (!\dis|index\(2) & \dis|index\(1))) # (\dis|index\(0) & ((!\dis|index\(1)))) ) ) # ( !\dis|state.PRINT_STRING~q\ & ( (\dis|state.RESET~q\ & \dis|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101100010000101010110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_index\(0),
	datab => \dis|ALT_INV_index\(2),
	datac => \dis|ALT_INV_state.RESET~q\,
	datad => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_state.PRINT_STRING~q\,
	combout => \dis|Selector20~0_combout\);

-- Location: FF_X88_Y36_N44
\dis|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector20~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|index\(1));

-- Location: MLABCELL_X87_Y36_N21
\dis|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector14~0_combout\ = ( \dis|index\(1) & ( \dis|index\(2) & ( ((\dis|next_command.RETURN~q\ & ((\dis|state.DROP_LCD_E~q\) # (\dis|state.HOLD~DUPLICATE_q\)))) # (\dis|state.PRINT_STRING~q\) ) ) ) # ( !\dis|index\(1) & ( \dis|index\(2) & ( 
-- (\dis|next_command.RETURN~q\ & ((\dis|state.DROP_LCD_E~q\) # (\dis|state.HOLD~DUPLICATE_q\))) ) ) ) # ( \dis|index\(1) & ( !\dis|index\(2) & ( (\dis|next_command.RETURN~q\ & ((\dis|state.DROP_LCD_E~q\) # (\dis|state.HOLD~DUPLICATE_q\))) ) ) ) # ( 
-- !\dis|index\(1) & ( !\dis|index\(2) & ( (\dis|next_command.RETURN~q\ & ((\dis|state.DROP_LCD_E~q\) # (\dis|state.HOLD~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010100010001010101010001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_next_command.RETURN~q\,
	datab => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	datac => \dis|ALT_INV_state.PRINT_STRING~q\,
	datad => \dis|ALT_INV_state.DROP_LCD_E~q\,
	datae => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_index\(2),
	combout => \dis|Selector14~0_combout\);

-- Location: FF_X87_Y36_N35
\dis|next_command.RETURN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector14~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.RETURN~q\);

-- Location: MLABCELL_X87_Y35_N21
\dis|state~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~27_combout\ = (\dis|state.HOLD~DUPLICATE_q\ & \dis|next_command.RETURN~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	datad => \dis|ALT_INV_next_command.RETURN~q\,
	combout => \dis|state~27_combout\);

-- Location: FF_X87_Y35_N23
\dis|state.RETURN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~27_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.RETURN~q\);

-- Location: LABCELL_X88_Y36_N36
\dis|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector13~1_combout\ = ( \dis|state.PRINT_STRING~q\ & ( (!\dis|index\(2)) # (!\dis|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_index\(2),
	datad => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_state.PRINT_STRING~q\,
	combout => \dis|Selector13~1_combout\);

-- Location: FF_X88_Y36_N16
\dis|state.DISPLAY_CLEAR~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DISPLAY_CLEAR~DUPLICATE_q\);

-- Location: LABCELL_X88_Y36_N12
\dis|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector11~0_combout\ = ( \dis|state.DISPLAY_CLEAR~DUPLICATE_q\ ) # ( !\dis|state.DISPLAY_CLEAR~DUPLICATE_q\ & ( (\dis|next_command.DISPLAY_ON~q\ & ((\dis|state.DROP_LCD_E~DUPLICATE_q\) # (\dis|state.HOLD~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_next_command.DISPLAY_ON~q\,
	datab => \dis|ALT_INV_state.HOLD~q\,
	datac => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.DISPLAY_CLEAR~DUPLICATE_q\,
	combout => \dis|Selector11~0_combout\);

-- Location: FF_X88_Y36_N20
\dis|next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector11~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.DISPLAY_ON~q\);

-- Location: MLABCELL_X87_Y36_N27
\dis|state~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~29_combout\ = ( \dis|next_command.DISPLAY_ON~q\ & ( \dis|state.HOLD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_state.HOLD~q\,
	dataf => \dis|ALT_INV_next_command.DISPLAY_ON~q\,
	combout => \dis|state~29_combout\);

-- Location: FF_X87_Y36_N28
\dis|state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~29_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DISPLAY_ON~q\);

-- Location: LABCELL_X88_Y36_N33
\dis|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector12~0_combout\ = ( \dis|state.DISPLAY_ON~q\ & ( \dis|state.HOLD~DUPLICATE_q\ ) ) # ( !\dis|state.DISPLAY_ON~q\ & ( \dis|state.HOLD~DUPLICATE_q\ & ( \dis|next_command.MODE_SET~q\ ) ) ) # ( \dis|state.DISPLAY_ON~q\ & ( 
-- !\dis|state.HOLD~DUPLICATE_q\ ) ) # ( !\dis|state.DISPLAY_ON~q\ & ( !\dis|state.HOLD~DUPLICATE_q\ & ( (\dis|next_command.MODE_SET~q\ & \dis|state.DROP_LCD_E~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_next_command.MODE_SET~q\,
	datad => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	datae => \dis|ALT_INV_state.DISPLAY_ON~q\,
	dataf => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	combout => \dis|Selector12~0_combout\);

-- Location: FF_X88_Y36_N23
\dis|next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector12~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.MODE_SET~q\);

-- Location: LABCELL_X88_Y36_N9
\dis|state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~26_combout\ = ( \dis|next_command.MODE_SET~q\ & ( \dis|state.HOLD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dis|ALT_INV_state.HOLD~q\,
	dataf => \dis|ALT_INV_next_command.MODE_SET~q\,
	combout => \dis|state~26_combout\);

-- Location: FF_X88_Y36_N10
\dis|state.MODE_SET~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~26_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.MODE_SET~DUPLICATE_q\);

-- Location: LABCELL_X88_Y36_N21
\dis|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector13~0_combout\ = ( \dis|Selector13~1_combout\ & ( \dis|state.MODE_SET~DUPLICATE_q\ ) ) # ( !\dis|Selector13~1_combout\ & ( \dis|state.MODE_SET~DUPLICATE_q\ ) ) # ( \dis|Selector13~1_combout\ & ( !\dis|state.MODE_SET~DUPLICATE_q\ ) ) # ( 
-- !\dis|Selector13~1_combout\ & ( !\dis|state.MODE_SET~DUPLICATE_q\ & ( ((\dis|next_command.PRINT_STRING~q\ & ((\dis|state.DROP_LCD_E~DUPLICATE_q\) # (\dis|state.HOLD~q\)))) # (\dis|state.RETURN~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_next_command.PRINT_STRING~q\,
	datab => \dis|ALT_INV_state.HOLD~q\,
	datac => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	datad => \dis|ALT_INV_state.RETURN~q\,
	datae => \dis|ALT_INV_Selector13~1_combout\,
	dataf => \dis|ALT_INV_state.MODE_SET~DUPLICATE_q\,
	combout => \dis|Selector13~0_combout\);

-- Location: FF_X88_Y36_N50
\dis|next_command.PRINT_STRING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector13~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|next_command.PRINT_STRING~q\);

-- Location: LABCELL_X88_Y36_N45
\dis|state~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|state~25_combout\ = ( \dis|state.HOLD~DUPLICATE_q\ & ( \dis|next_command.PRINT_STRING~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_next_command.PRINT_STRING~q\,
	dataf => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	combout => \dis|state~25_combout\);

-- Location: FF_X88_Y36_N14
\dis|state.PRINT_STRING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|state~25_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.PRINT_STRING~q\);

-- Location: LABCELL_X88_Y35_N30
\db|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~33_sumout\ = SUM(( \db|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \db|Add0~34\ = CARRY(( \db|counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \db|Add0~33_sumout\,
	cout => \db|Add0~34\);

-- Location: LABCELL_X88_Y34_N9
\db|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~73_sumout\ = SUM(( \db|counter\(13) ) + ( GND ) + ( \db|Add0~50\ ))
-- \db|Add0~74\ = CARRY(( \db|counter\(13) ) + ( GND ) + ( \db|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(13),
	cin => \db|Add0~50\,
	sumout => \db|Add0~73_sumout\,
	cout => \db|Add0~74\);

-- Location: LABCELL_X88_Y34_N12
\db|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~37_sumout\ = SUM(( \db|counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~74\ ))
-- \db|Add0~38\ = CARRY(( \db|counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter[14]~DUPLICATE_q\,
	cin => \db|Add0~74\,
	sumout => \db|Add0~37_sumout\,
	cout => \db|Add0~38\);

-- Location: FF_X88_Y35_N10
\db|counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \db|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y34_N15
\db|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~61_sumout\ = SUM(( \db|counter\(15) ) + ( GND ) + ( \db|Add0~38\ ))
-- \db|Add0~62\ = CARRY(( \db|counter\(15) ) + ( GND ) + ( \db|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(15),
	cin => \db|Add0~38\,
	sumout => \db|Add0~61_sumout\,
	cout => \db|Add0~62\);

-- Location: FF_X88_Y34_N17
\db|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(15));

-- Location: LABCELL_X88_Y34_N18
\db|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~57_sumout\ = SUM(( \db|counter\(16) ) + ( GND ) + ( \db|Add0~62\ ))
-- \db|Add0~58\ = CARRY(( \db|counter\(16) ) + ( GND ) + ( \db|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(16),
	cin => \db|Add0~62\,
	sumout => \db|Add0~57_sumout\,
	cout => \db|Add0~58\);

-- Location: FF_X88_Y34_N20
\db|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(16));

-- Location: LABCELL_X88_Y34_N21
\db|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~65_sumout\ = SUM(( \db|counter\(17) ) + ( GND ) + ( \db|Add0~58\ ))
-- \db|Add0~66\ = CARRY(( \db|counter\(17) ) + ( GND ) + ( \db|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(17),
	cin => \db|Add0~58\,
	sumout => \db|Add0~65_sumout\,
	cout => \db|Add0~66\);

-- Location: FF_X88_Y34_N23
\db|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(17));

-- Location: LABCELL_X88_Y34_N24
\db|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~69_sumout\ = SUM(( \db|counter\(18) ) + ( GND ) + ( \db|Add0~66\ ))
-- \db|Add0~70\ = CARRY(( \db|counter\(18) ) + ( GND ) + ( \db|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(18),
	cin => \db|Add0~66\,
	sumout => \db|Add0~69_sumout\,
	cout => \db|Add0~70\);

-- Location: FF_X88_Y34_N26
\db|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(18));

-- Location: LABCELL_X88_Y34_N27
\db|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~77_sumout\ = SUM(( \db|counter\(19) ) + ( GND ) + ( \db|Add0~70\ ))
-- \db|Add0~78\ = CARRY(( \db|counter\(19) ) + ( GND ) + ( \db|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(19),
	cin => \db|Add0~70\,
	sumout => \db|Add0~77_sumout\,
	cout => \db|Add0~78\);

-- Location: FF_X88_Y34_N29
\db|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(19));

-- Location: LABCELL_X88_Y34_N30
\db|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~81_sumout\ = SUM(( \db|counter\(20) ) + ( GND ) + ( \db|Add0~78\ ))
-- \db|Add0~82\ = CARRY(( \db|counter\(20) ) + ( GND ) + ( \db|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \db|ALT_INV_counter\(20),
	cin => \db|Add0~78\,
	sumout => \db|Add0~81_sumout\,
	cout => \db|Add0~82\);

-- Location: FF_X88_Y34_N32
\db|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(20));

-- Location: LABCELL_X88_Y34_N33
\db|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~85_sumout\ = SUM(( \db|counter\(21) ) + ( GND ) + ( \db|Add0~82\ ))
-- \db|Add0~86\ = CARRY(( \db|counter\(21) ) + ( GND ) + ( \db|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(21),
	cin => \db|Add0~82\,
	sumout => \db|Add0~85_sumout\,
	cout => \db|Add0~86\);

-- Location: FF_X88_Y34_N35
\db|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(21));

-- Location: LABCELL_X88_Y34_N36
\db|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~89_sumout\ = SUM(( \db|counter\(22) ) + ( GND ) + ( \db|Add0~86\ ))
-- \db|Add0~90\ = CARRY(( \db|counter\(22) ) + ( GND ) + ( \db|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(22),
	cin => \db|Add0~86\,
	sumout => \db|Add0~89_sumout\,
	cout => \db|Add0~90\);

-- Location: FF_X88_Y34_N38
\db|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(22));

-- Location: LABCELL_X88_Y34_N39
\db|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~93_sumout\ = SUM(( \db|counter\(23) ) + ( GND ) + ( \db|Add0~90\ ))
-- \db|Add0~94\ = CARRY(( \db|counter\(23) ) + ( GND ) + ( \db|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(23),
	cin => \db|Add0~90\,
	sumout => \db|Add0~93_sumout\,
	cout => \db|Add0~94\);

-- Location: FF_X88_Y34_N41
\db|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(23));

-- Location: LABCELL_X88_Y34_N42
\db|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~97_sumout\ = SUM(( \db|counter\(24) ) + ( GND ) + ( \db|Add0~94\ ))
-- \db|Add0~98\ = CARRY(( \db|counter\(24) ) + ( GND ) + ( \db|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \db|ALT_INV_counter\(24),
	cin => \db|Add0~94\,
	sumout => \db|Add0~97_sumout\,
	cout => \db|Add0~98\);

-- Location: FF_X88_Y34_N44
\db|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(24));

-- Location: LABCELL_X88_Y34_N45
\db|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~101_sumout\ = SUM(( \db|counter\(25) ) + ( GND ) + ( \db|Add0~98\ ))
-- \db|Add0~102\ = CARRY(( \db|counter\(25) ) + ( GND ) + ( \db|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(25),
	cin => \db|Add0~98\,
	sumout => \db|Add0~101_sumout\,
	cout => \db|Add0~102\);

-- Location: FF_X88_Y34_N47
\db|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(25));

-- Location: LABCELL_X88_Y34_N48
\db|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~105_sumout\ = SUM(( \db|counter\(26) ) + ( GND ) + ( \db|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(26),
	cin => \db|Add0~102\,
	sumout => \db|Add0~105_sumout\);

-- Location: FF_X88_Y34_N50
\db|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(26));

-- Location: LABCELL_X88_Y34_N54
\db|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~4_combout\ = ( !\db|counter\(25) & ( !\db|counter\(26) & ( (!\db|counter\(24) & !\db|counter\(23)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \db|ALT_INV_counter\(24),
	datad => \db|ALT_INV_counter\(23),
	datae => \db|ALT_INV_counter\(25),
	dataf => \db|ALT_INV_counter\(26),
	combout => \db|LessThan0~4_combout\);

-- Location: MLABCELL_X87_Y34_N51
\db|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~5_combout\ = ( !\db|counter\(19) & ( \db|LessThan0~4_combout\ & ( (!\db|counter\(20) & (!\db|counter\(22) & !\db|counter\(21))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(20),
	datac => \db|ALT_INV_counter\(22),
	datad => \db|ALT_INV_counter\(21),
	datae => \db|ALT_INV_counter\(19),
	dataf => \db|ALT_INV_LessThan0~4_combout\,
	combout => \db|LessThan0~5_combout\);

-- Location: FF_X88_Y34_N8
\db|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(12));

-- Location: FF_X88_Y35_N11
\db|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \db|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(14));

-- Location: FF_X88_Y34_N4
\db|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(11));

-- Location: LABCELL_X88_Y35_N12
\db|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~2_combout\ = ( !\db|counter\(11) & ( (!\db|counter\(12) & (!\db|counter\(9) & (!\db|counter\(10) & !\db|counter\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(12),
	datab => \db|ALT_INV_counter\(9),
	datac => \db|ALT_INV_counter\(10),
	datad => \db|ALT_INV_counter\(14),
	datae => \db|ALT_INV_counter\(11),
	combout => \db|LessThan0~2_combout\);

-- Location: FF_X88_Y35_N32
\db|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(0));

-- Location: FF_X88_Y35_N43
\db|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(4));

-- Location: LABCELL_X88_Y35_N24
\db|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~0_combout\ = ( \db|counter\(3) & ( (\db|counter\(1) & (\db|counter\(0) & (\db|counter\(2) & \db|counter\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(1),
	datab => \db|ALT_INV_counter\(0),
	datac => \db|ALT_INV_counter\(2),
	datad => \db|ALT_INV_counter\(4),
	dataf => \db|ALT_INV_counter\(3),
	combout => \db|LessThan0~0_combout\);

-- Location: LABCELL_X88_Y35_N0
\db|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~1_combout\ = ( \db|counter\(8) & ( \db|LessThan0~0_combout\ ) ) # ( \db|counter\(8) & ( !\db|LessThan0~0_combout\ & ( ((\db|counter\(5)) # (\db|counter\(6))) # (\db|counter\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(7),
	datac => \db|ALT_INV_counter\(6),
	datad => \db|ALT_INV_counter\(5),
	datae => \db|ALT_INV_counter\(8),
	dataf => \db|ALT_INV_LessThan0~0_combout\,
	combout => \db|LessThan0~1_combout\);

-- Location: MLABCELL_X87_Y35_N51
\db|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~6_combout\ = ( \db|LessThan0~3_combout\ & ( (!\db|LessThan0~5_combout\) # ((!\db|LessThan0~2_combout\) # (\db|LessThan0~1_combout\)) ) ) # ( !\db|LessThan0~3_combout\ & ( !\db|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_LessThan0~5_combout\,
	datac => \db|ALT_INV_LessThan0~2_combout\,
	datad => \db|ALT_INV_LessThan0~1_combout\,
	dataf => \db|ALT_INV_LessThan0~3_combout\,
	combout => \db|LessThan0~6_combout\);

-- Location: FF_X88_Y35_N31
\db|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N33
\db|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~29_sumout\ = SUM(( \db|counter\(1) ) + ( GND ) + ( \db|Add0~34\ ))
-- \db|Add0~30\ = CARRY(( \db|counter\(1) ) + ( GND ) + ( \db|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(1),
	cin => \db|Add0~34\,
	sumout => \db|Add0~29_sumout\,
	cout => \db|Add0~30\);

-- Location: FF_X88_Y35_N35
\db|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(1));

-- Location: LABCELL_X88_Y35_N36
\db|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~25_sumout\ = SUM(( \db|counter\(2) ) + ( GND ) + ( \db|Add0~30\ ))
-- \db|Add0~26\ = CARRY(( \db|counter\(2) ) + ( GND ) + ( \db|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(2),
	cin => \db|Add0~30\,
	sumout => \db|Add0~25_sumout\,
	cout => \db|Add0~26\);

-- Location: FF_X88_Y35_N38
\db|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(2));

-- Location: LABCELL_X88_Y35_N39
\db|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~21_sumout\ = SUM(( \db|counter\(3) ) + ( GND ) + ( \db|Add0~26\ ))
-- \db|Add0~22\ = CARRY(( \db|counter\(3) ) + ( GND ) + ( \db|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(3),
	cin => \db|Add0~26\,
	sumout => \db|Add0~21_sumout\,
	cout => \db|Add0~22\);

-- Location: FF_X88_Y35_N41
\db|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(3));

-- Location: LABCELL_X88_Y35_N42
\db|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~17_sumout\ = SUM(( \db|counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~22\ ))
-- \db|Add0~18\ = CARRY(( \db|counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \db|ALT_INV_counter[4]~DUPLICATE_q\,
	cin => \db|Add0~22\,
	sumout => \db|Add0~17_sumout\,
	cout => \db|Add0~18\);

-- Location: FF_X88_Y35_N44
\db|counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N45
\db|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~13_sumout\ = SUM(( \db|counter\(5) ) + ( GND ) + ( \db|Add0~18\ ))
-- \db|Add0~14\ = CARRY(( \db|counter\(5) ) + ( GND ) + ( \db|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(5),
	cin => \db|Add0~18\,
	sumout => \db|Add0~13_sumout\,
	cout => \db|Add0~14\);

-- Location: FF_X88_Y35_N47
\db|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(5));

-- Location: LABCELL_X88_Y35_N48
\db|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~9_sumout\ = SUM(( \db|counter\(6) ) + ( GND ) + ( \db|Add0~14\ ))
-- \db|Add0~10\ = CARRY(( \db|counter\(6) ) + ( GND ) + ( \db|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|ALT_INV_counter\(6),
	cin => \db|Add0~14\,
	sumout => \db|Add0~9_sumout\,
	cout => \db|Add0~10\);

-- Location: FF_X88_Y35_N50
\db|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(6));

-- Location: LABCELL_X88_Y35_N51
\db|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~5_sumout\ = SUM(( \db|counter\(7) ) + ( GND ) + ( \db|Add0~10\ ))
-- \db|Add0~6\ = CARRY(( \db|counter\(7) ) + ( GND ) + ( \db|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(7),
	cin => \db|Add0~10\,
	sumout => \db|Add0~5_sumout\,
	cout => \db|Add0~6\);

-- Location: FF_X88_Y35_N53
\db|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(7));

-- Location: LABCELL_X88_Y35_N54
\db|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~1_sumout\ = SUM(( \db|counter\(8) ) + ( GND ) + ( \db|Add0~6\ ))
-- \db|Add0~2\ = CARRY(( \db|counter\(8) ) + ( GND ) + ( \db|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(8),
	cin => \db|Add0~6\,
	sumout => \db|Add0~1_sumout\,
	cout => \db|Add0~2\);

-- Location: FF_X88_Y35_N56
\db|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(8));

-- Location: LABCELL_X88_Y35_N57
\db|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~53_sumout\ = SUM(( \db|counter\(9) ) + ( GND ) + ( \db|Add0~2\ ))
-- \db|Add0~54\ = CARRY(( \db|counter\(9) ) + ( GND ) + ( \db|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(9),
	cin => \db|Add0~2\,
	sumout => \db|Add0~53_sumout\,
	cout => \db|Add0~54\);

-- Location: FF_X88_Y35_N59
\db|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(9));

-- Location: LABCELL_X88_Y34_N0
\db|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~41_sumout\ = SUM(( \db|counter\(10) ) + ( GND ) + ( \db|Add0~54\ ))
-- \db|Add0~42\ = CARRY(( \db|counter\(10) ) + ( GND ) + ( \db|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter\(10),
	cin => \db|Add0~54\,
	sumout => \db|Add0~41_sumout\,
	cout => \db|Add0~42\);

-- Location: FF_X88_Y34_N2
\db|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(10));

-- Location: LABCELL_X88_Y34_N3
\db|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~45_sumout\ = SUM(( \db|counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~42\ ))
-- \db|Add0~46\ = CARRY(( \db|counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter[11]~DUPLICATE_q\,
	cin => \db|Add0~42\,
	sumout => \db|Add0~45_sumout\,
	cout => \db|Add0~46\);

-- Location: FF_X88_Y34_N5
\db|counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y34_N6
\db|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|Add0~49_sumout\ = SUM(( \db|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~46\ ))
-- \db|Add0~50\ = CARRY(( \db|counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \db|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|ALT_INV_counter[12]~DUPLICATE_q\,
	cin => \db|Add0~46\,
	sumout => \db|Add0~49_sumout\,
	cout => \db|Add0~50\);

-- Location: FF_X88_Y34_N7
\db|counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter[12]~DUPLICATE_q\);

-- Location: FF_X88_Y35_N20
\db|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \db|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter\(13));

-- Location: FF_X88_Y34_N16
\db|counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \db|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \db|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N6
\db|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|LessThan0~3_combout\ = ( \db|counter[15]~DUPLICATE_q\ & ( \db|counter\(16) & ( (\db|counter\(18) & (\db|counter\(17) & ((\db|counter\(14)) # (\db|counter\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \db|ALT_INV_counter\(13),
	datab => \db|ALT_INV_counter\(14),
	datac => \db|ALT_INV_counter\(18),
	datad => \db|ALT_INV_counter\(17),
	datae => \db|ALT_INV_counter[15]~DUPLICATE_q\,
	dataf => \db|ALT_INV_counter\(16),
	combout => \db|LessThan0~3_combout\);

-- Location: LABCELL_X88_Y35_N21
\db|slow_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|slow_clk~0_combout\ = ( \db|LessThan0~5_combout\ & ( \db|slow_clk~q\ & ( (!\db|LessThan0~3_combout\) # ((\db|LessThan0~2_combout\ & !\db|LessThan0~1_combout\)) ) ) ) # ( \db|LessThan0~5_combout\ & ( !\db|slow_clk~q\ & ( (\db|LessThan0~3_combout\ & 
-- ((!\db|LessThan0~2_combout\) # (\db|LessThan0~1_combout\))) ) ) ) # ( !\db|LessThan0~5_combout\ & ( !\db|slow_clk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100000011001100000000000000001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \db|ALT_INV_LessThan0~3_combout\,
	datac => \db|ALT_INV_LessThan0~2_combout\,
	datad => \db|ALT_INV_LessThan0~1_combout\,
	datae => \db|ALT_INV_LessThan0~5_combout\,
	dataf => \db|ALT_INV_slow_clk~q\,
	combout => \db|slow_clk~0_combout\);

-- Location: FF_X88_Y35_N5
\db|slow_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \db|slow_clk~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|slow_clk~q\);

-- Location: IOIBUF_X89_Y35_N78
\pb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb,
	o => \pb~input_o\);

-- Location: MLABCELL_X87_Y35_N9
\db|d1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|d1|Q~feeder_combout\ = ( \pb~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pb~input_o\,
	combout => \db|d1|Q~feeder_combout\);

-- Location: FF_X87_Y35_N11
\db|d1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db|slow_clk~q\,
	d => \db|d1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|d1|Q~q\);

-- Location: MLABCELL_X87_Y35_N6
\db|d2|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|d2|Q~feeder_combout\ = ( \db|d1|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \db|d1|ALT_INV_Q~q\,
	combout => \db|d2|Q~feeder_combout\);

-- Location: FF_X87_Y35_N8
\db|d2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db|slow_clk~q\,
	d => \db|d2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db|d2|Q~q\);

-- Location: MLABCELL_X87_Y36_N30
\db|out\ : cyclonev_lcell_comb
-- Equation(s):
-- \db|out~combout\ = LCELL(( !\db|d2|Q~q\ & ( \db|d1|Q~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \db|d1|ALT_INV_Q~q\,
	dataf => \db|d2|ALT_INV_Q~q\,
	combout => \db|out~combout\);

-- Location: IOIBUF_X89_Y38_N55
\i~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i,
	o => \i~input_o\);

-- Location: MLABCELL_X87_Y36_N39
\m|count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|count~1_combout\ = ( \m|count\(2) & ( \i~input_o\ ) ) # ( !\m|count\(2) & ( (\i~input_o\ & !\m|count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i~input_o\,
	datad => \m|ALT_INV_count\(0),
	dataf => \m|ALT_INV_count\(2),
	combout => \m|count~1_combout\);

-- Location: FF_X87_Y36_N5
\m|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db|out~combout\,
	asdata => \m|count~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m|count\(0));

-- Location: MLABCELL_X87_Y36_N33
\m|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|count~0_combout\ = ( \m|count\(0) & ( (\i~input_o\ & ((\m|count\(2)) # (\m|count\(1)))) ) ) # ( !\m|count\(0) & ( (\i~input_o\ & \m|count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m|ALT_INV_count\(1),
	datab => \ALT_INV_i~input_o\,
	datac => \m|ALT_INV_count\(2),
	dataf => \m|ALT_INV_count\(0),
	combout => \m|count~0_combout\);

-- Location: FF_X87_Y36_N50
\m|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db|out~combout\,
	asdata => \m|count~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m|count\(2));

-- Location: MLABCELL_X87_Y36_N15
\m|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|count~2_combout\ = ( \m|count\(0) & ( (!\m|count\(2) & (!\m|count\(1) & \i~input_o\)) ) ) # ( !\m|count\(0) & ( (!\m|count\(2) & (\m|count\(1) & \i~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m|ALT_INV_count\(2),
	datab => \m|ALT_INV_count\(1),
	datac => \ALT_INV_i~input_o\,
	dataf => \m|ALT_INV_count\(0),
	combout => \m|count~2_combout\);

-- Location: FF_X87_Y36_N56
\m|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db|out~combout\,
	asdata => \m|count~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m|count\(1));

-- Location: MLABCELL_X87_Y36_N57
\dis|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector9~1_combout\ = ( \m|count\(0) & ( \m|count\(2) & ( !\dis|index\(0) $ (!\dis|index\(1)) ) ) ) # ( !\m|count\(0) & ( \m|count\(2) & ( (!\dis|index\(0) & (\dis|index\(1) & ((!\dis|index\(2)) # (\m|count\(1))))) # (\dis|index\(0) & 
-- (((!\dis|index\(1))))) ) ) ) # ( \m|count\(0) & ( !\m|count\(2) & ( (!\dis|index\(0) & (!\dis|index\(2) & (\dis|index\(1) & \m|count\(1)))) # (\dis|index\(0) & (((!\dis|index\(1))))) ) ) ) # ( !\m|count\(0) & ( !\m|count\(2) & ( (\dis|index\(0) & 
-- !\dis|index\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011100000111000001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_index\(2),
	datab => \dis|ALT_INV_index\(0),
	datac => \dis|ALT_INV_index\(1),
	datad => \m|ALT_INV_count\(1),
	datae => \m|ALT_INV_count\(0),
	dataf => \m|ALT_INV_count\(2),
	combout => \dis|Selector9~1_combout\);

-- Location: MLABCELL_X87_Y36_N6
\dis|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector9~0_combout\ = ( \dis|state.PRINT_STRING~q\ & ( \dis|Selector9~1_combout\ ) ) # ( !\dis|state.PRINT_STRING~q\ & ( \dis|Selector9~1_combout\ & ( ((\dis|DATA_BUS_VALUE\(0) & ((\dis|state.HOLD~DUPLICATE_q\) # (\dis|state.DROP_LCD_E~q\)))) # 
-- (\dis|state.DISPLAY_CLEAR~q\) ) ) ) # ( \dis|state.PRINT_STRING~q\ & ( !\dis|Selector9~1_combout\ & ( ((\dis|DATA_BUS_VALUE\(0) & ((\dis|state.HOLD~DUPLICATE_q\) # (\dis|state.DROP_LCD_E~q\)))) # (\dis|state.DISPLAY_CLEAR~q\) ) ) ) # ( 
-- !\dis|state.PRINT_STRING~q\ & ( !\dis|Selector9~1_combout\ & ( ((\dis|DATA_BUS_VALUE\(0) & ((\dis|state.HOLD~DUPLICATE_q\) # (\dis|state.DROP_LCD_E~q\)))) # (\dis|state.DISPLAY_CLEAR~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100111111000111110011111100011111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_state.DROP_LCD_E~q\,
	datab => \dis|ALT_INV_DATA_BUS_VALUE\(0),
	datac => \dis|ALT_INV_state.DISPLAY_CLEAR~q\,
	datad => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	datae => \dis|ALT_INV_state.PRINT_STRING~q\,
	dataf => \dis|ALT_INV_Selector9~1_combout\,
	combout => \dis|Selector9~0_combout\);

-- Location: FF_X87_Y36_N17
\dis|DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector9~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(0));

-- Location: FF_X88_Y36_N11
\dis|state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~26_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.MODE_SET~q\);

-- Location: LABCELL_X88_Y36_N57
\dis|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector8~1_combout\ = ( !\dis|index\(0) & ( (\dis|index\(2) & !\dis|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_index\(2),
	datad => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_index\(0),
	combout => \dis|Selector8~1_combout\);

-- Location: LABCELL_X88_Y36_N24
\dis|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector8~0_combout\ = ( \dis|state.HOLD~q\ & ( \dis|Selector8~1_combout\ & ( ((\dis|state.PRINT_STRING~q\) # (\dis|state.MODE_SET~q\)) # (\dis|DATA_BUS_VALUE\(1)) ) ) ) # ( !\dis|state.HOLD~q\ & ( \dis|Selector8~1_combout\ & ( 
-- (((\dis|DATA_BUS_VALUE\(1) & \dis|state.DROP_LCD_E~DUPLICATE_q\)) # (\dis|state.PRINT_STRING~q\)) # (\dis|state.MODE_SET~q\) ) ) ) # ( \dis|state.HOLD~q\ & ( !\dis|Selector8~1_combout\ & ( (\dis|state.MODE_SET~q\) # (\dis|DATA_BUS_VALUE\(1)) ) ) ) # ( 
-- !\dis|state.HOLD~q\ & ( !\dis|Selector8~1_combout\ & ( ((\dis|DATA_BUS_VALUE\(1) & \dis|state.DROP_LCD_E~DUPLICATE_q\)) # (\dis|state.MODE_SET~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111011101110111011100111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_DATA_BUS_VALUE\(1),
	datab => \dis|ALT_INV_state.MODE_SET~q\,
	datac => \dis|ALT_INV_state.PRINT_STRING~q\,
	datad => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	datae => \dis|ALT_INV_state.HOLD~q\,
	dataf => \dis|ALT_INV_Selector8~1_combout\,
	combout => \dis|Selector8~0_combout\);

-- Location: FF_X88_Y36_N53
\dis|DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector8~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(1));

-- Location: MLABCELL_X87_Y36_N42
\dis|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector7~1_combout\ = ( \dis|state.PRINT_STRING~q\ & ( (!\dis|index\(1)) # (\dis|index\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dis|ALT_INV_index\(0),
	datad => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_state.PRINT_STRING~q\,
	combout => \dis|Selector7~1_combout\);

-- Location: FF_X87_Y36_N29
\dis|state.DISPLAY_ON~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~29_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.DISPLAY_ON~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y36_N51
\dis|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector7~0_combout\ = ( \dis|state.DROP_LCD_E~DUPLICATE_q\ & ( \dis|state.MODE_SET~DUPLICATE_q\ ) ) # ( !\dis|state.DROP_LCD_E~DUPLICATE_q\ & ( \dis|state.MODE_SET~DUPLICATE_q\ ) ) # ( \dis|state.DROP_LCD_E~DUPLICATE_q\ & ( 
-- !\dis|state.MODE_SET~DUPLICATE_q\ & ( ((\dis|state.DISPLAY_ON~DUPLICATE_q\) # (\dis|Selector7~1_combout\)) # (\dis|DATA_BUS_VALUE\(2)) ) ) ) # ( !\dis|state.DROP_LCD_E~DUPLICATE_q\ & ( !\dis|state.MODE_SET~DUPLICATE_q\ & ( (((\dis|DATA_BUS_VALUE\(2) & 
-- \dis|state.HOLD~DUPLICATE_q\)) # (\dis|state.DISPLAY_ON~DUPLICATE_q\)) # (\dis|Selector7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_DATA_BUS_VALUE\(2),
	datab => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	datac => \dis|ALT_INV_Selector7~1_combout\,
	datad => \dis|ALT_INV_state.DISPLAY_ON~DUPLICATE_q\,
	datae => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.MODE_SET~DUPLICATE_q\,
	combout => \dis|Selector7~0_combout\);

-- Location: FF_X87_Y36_N23
\dis|DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector7~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(2));

-- Location: MLABCELL_X87_Y36_N24
\dis|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector6~1_combout\ = ( \dis|index\(0) & ( (!\dis|state.PRINT_STRING~q\ & (!\dis|state.DISPLAY_OFF~q\ & ((!\dis|DATA_BUS_VALUE\(3)) # (!\dis|state.HOLD~DUPLICATE_q\)))) ) ) # ( !\dis|index\(0) & ( (!\dis|state.DISPLAY_OFF~q\ & 
-- ((!\dis|DATA_BUS_VALUE\(3)) # (!\dis|state.HOLD~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_DATA_BUS_VALUE\(3),
	datab => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	datac => \dis|ALT_INV_state.PRINT_STRING~q\,
	datad => \dis|ALT_INV_state.DISPLAY_OFF~q\,
	dataf => \dis|ALT_INV_index\(0),
	combout => \dis|Selector6~1_combout\);

-- Location: MLABCELL_X87_Y36_N0
\dis|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector6~0_combout\ = ( \dis|state.DROP_LCD_E~DUPLICATE_q\ & ( \dis|Selector6~1_combout\ & ( (((!\dis|state.RESET~DUPLICATE_q\) # (\dis|DATA_BUS_VALUE\(3))) # (\dis|state.FUNC_SET~q\)) # (\dis|state.DISPLAY_ON~DUPLICATE_q\) ) ) ) # ( 
-- !\dis|state.DROP_LCD_E~DUPLICATE_q\ & ( \dis|Selector6~1_combout\ & ( ((!\dis|state.RESET~DUPLICATE_q\) # (\dis|state.FUNC_SET~q\)) # (\dis|state.DISPLAY_ON~DUPLICATE_q\) ) ) ) # ( \dis|state.DROP_LCD_E~DUPLICATE_q\ & ( !\dis|Selector6~1_combout\ ) ) # ( 
-- !\dis|state.DROP_LCD_E~DUPLICATE_q\ & ( !\dis|Selector6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111101111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_state.DISPLAY_ON~DUPLICATE_q\,
	datab => \dis|ALT_INV_state.FUNC_SET~q\,
	datac => \dis|ALT_INV_state.RESET~DUPLICATE_q\,
	datad => \dis|ALT_INV_DATA_BUS_VALUE\(3),
	datae => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	dataf => \dis|ALT_INV_Selector6~1_combout\,
	combout => \dis|Selector6~0_combout\);

-- Location: FF_X87_Y36_N14
\dis|DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector6~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(3));

-- Location: LABCELL_X88_Y36_N3
\dis|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector5~1_combout\ = ( \dis|index\(0) & ( (\dis|state.PRINT_STRING~q\ & !\dis|index\(1)) ) ) # ( !\dis|index\(0) & ( (\dis|state.PRINT_STRING~q\ & ((!\dis|index\(2)) # (\dis|index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_index\(2),
	datab => \dis|ALT_INV_state.PRINT_STRING~q\,
	datac => \dis|ALT_INV_index\(1),
	dataf => \dis|ALT_INV_index\(0),
	combout => \dis|Selector5~1_combout\);

-- Location: LABCELL_X88_Y36_N48
\dis|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector5~0_combout\ = ( \dis|Selector5~1_combout\ & ( \dis|state.FUNC_SET~q\ ) ) # ( !\dis|Selector5~1_combout\ & ( \dis|state.FUNC_SET~q\ ) ) # ( \dis|Selector5~1_combout\ & ( !\dis|state.FUNC_SET~q\ ) ) # ( !\dis|Selector5~1_combout\ & ( 
-- !\dis|state.FUNC_SET~q\ & ( (!\dis|state.RESET~q\) # ((\dis|DATA_BUS_VALUE\(4) & ((\dis|state.DROP_LCD_E~DUPLICATE_q\) # (\dis|state.HOLD~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_state.RESET~q\,
	datab => \dis|ALT_INV_DATA_BUS_VALUE\(4),
	datac => \dis|ALT_INV_state.HOLD~q\,
	datad => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	datae => \dis|ALT_INV_Selector5~1_combout\,
	dataf => \dis|ALT_INV_state.FUNC_SET~q\,
	combout => \dis|Selector5~0_combout\);

-- Location: FF_X88_Y36_N47
\dis|DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector5~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(4));

-- Location: MLABCELL_X87_Y35_N54
\dis|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector4~1_combout\ = ( \dis|state.DROP_LCD_E~q\ & ( (!\dis|DATA_BUS_VALUE\(5) & ((!\dis|state.PRINT_STRING~q\) # (\dis|index\(0)))) ) ) # ( !\dis|state.DROP_LCD_E~q\ & ( (!\dis|DATA_BUS_VALUE\(5) & (((!\dis|state.PRINT_STRING~q\)) # 
-- (\dis|index\(0)))) # (\dis|DATA_BUS_VALUE\(5) & (!\dis|state.HOLD~DUPLICATE_q\ & ((!\dis|state.PRINT_STRING~q\) # (\dis|index\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000110010111110100011001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_DATA_BUS_VALUE\(5),
	datab => \dis|ALT_INV_index\(0),
	datac => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	datad => \dis|ALT_INV_state.PRINT_STRING~q\,
	dataf => \dis|ALT_INV_state.DROP_LCD_E~q\,
	combout => \dis|Selector4~1_combout\);

-- Location: MLABCELL_X87_Y35_N24
\dis|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector4~0_combout\ = ( \dis|index\(2) & ( \dis|state.FUNC_SET~q\ ) ) # ( !\dis|index\(2) & ( \dis|state.FUNC_SET~q\ ) ) # ( \dis|index\(2) & ( !\dis|state.FUNC_SET~q\ & ( (!\dis|state.RESET~DUPLICATE_q\) # ((!\dis|Selector4~1_combout\) # 
-- ((\dis|state.PRINT_STRING~q\ & !\dis|index\(1)))) ) ) ) # ( !\dis|index\(2) & ( !\dis|state.FUNC_SET~q\ & ( ((!\dis|state.RESET~DUPLICATE_q\) # (!\dis|Selector4~1_combout\)) # (\dis|state.PRINT_STRING~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_state.PRINT_STRING~q\,
	datab => \dis|ALT_INV_state.RESET~DUPLICATE_q\,
	datac => \dis|ALT_INV_Selector4~1_combout\,
	datad => \dis|ALT_INV_index\(1),
	datae => \dis|ALT_INV_index\(2),
	dataf => \dis|ALT_INV_state.FUNC_SET~q\,
	combout => \dis|Selector4~0_combout\);

-- Location: FF_X87_Y35_N26
\dis|DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|Selector4~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(5));

-- Location: MLABCELL_X87_Y35_N36
\dis|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector3~0_combout\ = ( \dis|state.HOLD~DUPLICATE_q\ & ( \dis|index\(1) & ( \dis|DATA_BUS_VALUE\(6) ) ) ) # ( !\dis|state.HOLD~DUPLICATE_q\ & ( \dis|index\(1) & ( (\dis|state.DROP_LCD_E~q\ & \dis|DATA_BUS_VALUE\(6)) ) ) ) # ( 
-- \dis|state.HOLD~DUPLICATE_q\ & ( !\dis|index\(1) & ( ((\dis|state.PRINT_STRING~q\ & !\dis|index\(0))) # (\dis|DATA_BUS_VALUE\(6)) ) ) ) # ( !\dis|state.HOLD~DUPLICATE_q\ & ( !\dis|index\(1) & ( (!\dis|state.DROP_LCD_E~q\ & (((\dis|state.PRINT_STRING~q\ & 
-- !\dis|index\(0))))) # (\dis|state.DROP_LCD_E~q\ & (((\dis|state.PRINT_STRING~q\ & !\dis|index\(0))) # (\dis|DATA_BUS_VALUE\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001001111110011001100010001000100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_state.DROP_LCD_E~q\,
	datab => \dis|ALT_INV_DATA_BUS_VALUE\(6),
	datac => \dis|ALT_INV_state.PRINT_STRING~q\,
	datad => \dis|ALT_INV_index\(0),
	datae => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	dataf => \dis|ALT_INV_index\(1),
	combout => \dis|Selector3~0_combout\);

-- Location: FF_X87_Y35_N14
\dis|DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector3~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(6));

-- Location: FF_X87_Y35_N22
\dis|state.RETURN~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	d => \dis|state~27_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|state.RETURN~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y35_N18
\dis|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector2~0_combout\ = ( \dis|state.RETURN~DUPLICATE_q\ ) # ( !\dis|state.RETURN~DUPLICATE_q\ & ( (\dis|DATA_BUS_VALUE\(7) & ((\dis|state.HOLD~DUPLICATE_q\) # (\dis|state.DROP_LCD_E~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dis|ALT_INV_DATA_BUS_VALUE\(7),
	datac => \dis|ALT_INV_state.DROP_LCD_E~q\,
	datad => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.RETURN~DUPLICATE_q\,
	combout => \dis|Selector2~0_combout\);

-- Location: FF_X87_Y35_N29
\dis|DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector2~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|DATA_BUS_VALUE\(7));

-- Location: MLABCELL_X87_Y35_N42
\dis|LCD_E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|LCD_E~0_combout\ = ( \dis|state.DROP_LCD_E~q\ & ( (\dis|LCD_E~q\ & ((!\reset~input_o\) # (\dis|state.HOLD~DUPLICATE_q\))) ) ) # ( !\dis|state.DROP_LCD_E~q\ & ( ((\reset~input_o\ & !\dis|state.HOLD~DUPLICATE_q\)) # (\dis|LCD_E~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_LCD_E~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.DROP_LCD_E~q\,
	combout => \dis|LCD_E~0_combout\);

-- Location: FF_X87_Y35_N41
\dis|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|LCD_E~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|LCD_E~q\);

-- Location: LABCELL_X88_Y36_N0
\dis|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dis|Selector1~0_combout\ = ( \dis|state.HOLD~DUPLICATE_q\ & ( (\dis|LCD_RS~q\) # (\dis|state.PRINT_STRING~q\) ) ) # ( !\dis|state.HOLD~DUPLICATE_q\ & ( ((\dis|LCD_RS~q\ & \dis|state.DROP_LCD_E~DUPLICATE_q\)) # (\dis|state.PRINT_STRING~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dis|ALT_INV_state.PRINT_STRING~q\,
	datac => \dis|ALT_INV_LCD_RS~q\,
	datad => \dis|ALT_INV_state.DROP_LCD_E~DUPLICATE_q\,
	dataf => \dis|ALT_INV_state.HOLD~DUPLICATE_q\,
	combout => \dis|Selector1~0_combout\);

-- Location: FF_X88_Y36_N26
\dis|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dis|CLK_400HZ~q\,
	asdata => \dis|Selector1~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dis|LCD_RS~q\);

-- Location: IOIBUF_X89_Y38_N38
\LCD_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\LCD_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\LCD_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\LCD_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\LCD_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\LCD_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\LCD_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\LCD_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: LABCELL_X50_Y19_N0
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


