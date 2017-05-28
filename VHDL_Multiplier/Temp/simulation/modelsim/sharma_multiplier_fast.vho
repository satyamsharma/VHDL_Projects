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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/22/2017 02:18:06"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sharma_multiplier IS
    PORT (
	a_in : IN std_logic_vector(3 DOWNTO 0);
	b_in : IN std_logic_vector(3 DOWNTO 0);
	p : OUT std_logic_vector(7 DOWNTO 0)
	);
END sharma_multiplier;

-- Design Ports Information
-- p[0]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[1]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[3]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[4]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[5]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[6]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- p[7]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a_in[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b_in[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a_in[1]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b_in[1]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b_in[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a_in[2]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b_in[3]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a_in[3]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sharma_multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL \sharma_fullAdder2|sum~combout\ : std_logic;
SIGNAL \andgate~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder0|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder1|sum~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder1|sum~1_combout\ : std_logic;
SIGNAL \sharma_fullAdder4|cout~2_combout\ : std_logic;
SIGNAL \sharma_fullAdder5|sum~combout\ : std_logic;
SIGNAL \sharma_fullAdder8|cout~2_combout\ : std_logic;
SIGNAL \sharma_fullAdder1|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder1|cout~1_combout\ : std_logic;
SIGNAL \sharma_fullAdder2|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder5|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder6|sum~combout\ : std_logic;
SIGNAL \sharma_fullAdder9|sum~combout\ : std_logic;
SIGNAL \sharma_fullAdder7|cout~3_combout\ : std_logic;
SIGNAL \sharma_fullAdder9|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder6|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder10|sum~combout\ : std_logic;
SIGNAL \sharma_fullAdder10|cout~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder7|cout~2_combout\ : std_logic;
SIGNAL \sharma_fullAdder11|sum~0_combout\ : std_logic;
SIGNAL \sharma_fullAdder11|cout~0_combout\ : std_logic;
SIGNAL andgate : std_logic_vector(15 DOWNTO 0);
SIGNAL \b_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a_in~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a_in <= a_in;
ww_b_in <= b_in;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X64_Y29_N6
\andgate[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(3) = (\a_in~combout\(3) & \b_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in~combout\(3),
	datac => \b_in~combout\(0),
	combout => andgate(3));

-- Location: LCCOMB_X64_Y29_N24
\sharma_fullAdder2|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder2|sum~combout\ = andgate(3) $ (\sharma_fullAdder1|cout~1_combout\ $ (((\a_in~combout\(2) & \b_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andgate(3),
	datab => \sharma_fullAdder1|cout~1_combout\,
	datac => \a_in~combout\(2),
	datad => \b_in~combout\(1),
	combout => \sharma_fullAdder2|sum~combout\);

-- Location: LCCOMB_X64_Y28_N6
\andgate[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(10) = (\a_in~combout\(2) & \b_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_in~combout\(2),
	datad => \b_in~combout\(2),
	combout => andgate(10));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b_in(0),
	combout => \b_in~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a_in(0),
	combout => \a_in~combout\(0));

-- Location: LCCOMB_X64_Y29_N8
\andgate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \andgate~0_combout\ = (\b_in~combout\(0) & \a_in~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(0),
	datac => \a_in~combout\(0),
	combout => \andgate~0_combout\);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b_in(1),
	combout => \b_in~combout\(1));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a_in(1),
	combout => \a_in~combout\(1));

-- Location: LCCOMB_X64_Y29_N2
\sharma_fullAdder0|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder0|cout~0_combout\ = (\b_in~combout\(1) & (\a_in~combout\(0) $ (((\b_in~combout\(0) & \a_in~combout\(1)))))) # (!\b_in~combout\(1) & (((\b_in~combout\(0) & \a_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(1),
	datab => \a_in~combout\(0),
	datac => \b_in~combout\(0),
	datad => \a_in~combout\(1),
	combout => \sharma_fullAdder0|cout~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a_in(2),
	combout => \a_in~combout\(2));

-- Location: LCCOMB_X64_Y29_N22
\sharma_fullAdder1|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder1|sum~0_combout\ = (\b_in~combout\(1) & \a_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(1),
	datad => \a_in~combout\(1),
	combout => \sharma_fullAdder1|sum~0_combout\);

-- Location: LCCOMB_X64_Y29_N0
\sharma_fullAdder1|sum~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder1|sum~1_combout\ = (\b_in~combout\(0) & (\a_in~combout\(2) $ (((!\a_in~combout\(0) & \sharma_fullAdder1|sum~0_combout\))))) # (!\b_in~combout\(0) & (((\sharma_fullAdder1|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(0),
	datab => \a_in~combout\(0),
	datac => \a_in~combout\(2),
	datad => \sharma_fullAdder1|sum~0_combout\,
	combout => \sharma_fullAdder1|sum~1_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b_in(2),
	combout => \b_in~combout\(2));

-- Location: LCCOMB_X64_Y29_N18
\sharma_fullAdder4|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder4|cout~2_combout\ = \sharma_fullAdder1|sum~1_combout\ $ (((\a_in~combout\(0) & \b_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sharma_fullAdder1|sum~1_combout\,
	datac => \a_in~combout\(0),
	datad => \b_in~combout\(2),
	combout => \sharma_fullAdder4|cout~2_combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b_in(3),
	combout => \b_in~combout\(3));

-- Location: LCCOMB_X64_Y29_N20
\andgate[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(8) = (\a_in~combout\(0) & \b_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_in~combout\(0),
	datad => \b_in~combout\(2),
	combout => andgate(8));

-- Location: LCCOMB_X64_Y29_N10
\andgate[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(9) = (\a_in~combout\(1) & \b_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in~combout\(1),
	datad => \b_in~combout\(2),
	combout => andgate(9));

-- Location: LCCOMB_X64_Y29_N28
\sharma_fullAdder5|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder5|sum~combout\ = \sharma_fullAdder2|sum~combout\ $ (andgate(9) $ (((\sharma_fullAdder1|sum~1_combout\ & andgate(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder2|sum~combout\,
	datab => \sharma_fullAdder1|sum~1_combout\,
	datac => andgate(8),
	datad => andgate(9),
	combout => \sharma_fullAdder5|sum~combout\);

-- Location: LCCOMB_X64_Y29_N12
\sharma_fullAdder8|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder8|cout~2_combout\ = \sharma_fullAdder5|sum~combout\ $ (((\a_in~combout\(0) & \b_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_in~combout\(0),
	datac => \b_in~combout\(3),
	datad => \sharma_fullAdder5|sum~combout\,
	combout => \sharma_fullAdder8|cout~2_combout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a_in(3),
	combout => \a_in~combout\(3));

-- Location: LCCOMB_X64_Y28_N28
\andgate[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(7) = (\b_in~combout\(1) & \a_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b_in~combout\(1),
	datac => \a_in~combout\(3),
	combout => andgate(7));

-- Location: LCCOMB_X64_Y29_N26
\sharma_fullAdder1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder1|cout~0_combout\ = (\b_in~combout\(0) & \a_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_in~combout\(0),
	datad => \a_in~combout\(1),
	combout => \sharma_fullAdder1|cout~0_combout\);

-- Location: LCCOMB_X64_Y29_N4
\sharma_fullAdder1|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder1|cout~1_combout\ = (\b_in~combout\(1) & (\sharma_fullAdder1|cout~0_combout\ & ((\a_in~combout\(0)) # (\a_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(1),
	datab => \a_in~combout\(0),
	datac => \a_in~combout\(2),
	datad => \sharma_fullAdder1|cout~0_combout\,
	combout => \sharma_fullAdder1|cout~1_combout\);

-- Location: LCCOMB_X64_Y29_N16
\sharma_fullAdder2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder2|cout~0_combout\ = (andgate(3) & ((\sharma_fullAdder1|cout~1_combout\) # ((\a_in~combout\(2) & \b_in~combout\(1))))) # (!andgate(3) & (\sharma_fullAdder1|cout~1_combout\ & (\a_in~combout\(2) & \b_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andgate(3),
	datab => \sharma_fullAdder1|cout~1_combout\,
	datac => \a_in~combout\(2),
	datad => \b_in~combout\(1),
	combout => \sharma_fullAdder2|cout~0_combout\);

-- Location: LCCOMB_X64_Y29_N30
\sharma_fullAdder5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder5|cout~0_combout\ = (\sharma_fullAdder2|sum~combout\ & ((andgate(9)) # ((\sharma_fullAdder1|sum~1_combout\ & andgate(8))))) # (!\sharma_fullAdder2|sum~combout\ & (\sharma_fullAdder1|sum~1_combout\ & (andgate(8) & andgate(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder2|sum~combout\,
	datab => \sharma_fullAdder1|sum~1_combout\,
	datac => andgate(8),
	datad => andgate(9),
	combout => \sharma_fullAdder5|cout~0_combout\);

-- Location: LCCOMB_X64_Y28_N16
\sharma_fullAdder6|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder6|sum~combout\ = andgate(10) $ (andgate(7) $ (\sharma_fullAdder2|cout~0_combout\ $ (\sharma_fullAdder5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andgate(10),
	datab => andgate(7),
	datac => \sharma_fullAdder2|cout~0_combout\,
	datad => \sharma_fullAdder5|cout~0_combout\,
	combout => \sharma_fullAdder6|sum~combout\);

-- Location: LCCOMB_X64_Y28_N24
\andgate[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(12) = (\a_in~combout\(0) & \b_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_in~combout\(0),
	datad => \b_in~combout\(3),
	combout => andgate(12));

-- Location: LCCOMB_X64_Y28_N10
\andgate[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(13) = (\b_in~combout\(3) & \a_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(3),
	datad => \a_in~combout\(1),
	combout => andgate(13));

-- Location: LCCOMB_X64_Y28_N2
\sharma_fullAdder9|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder9|sum~combout\ = \sharma_fullAdder6|sum~combout\ $ (andgate(13) $ (((\sharma_fullAdder5|sum~combout\ & andgate(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder6|sum~combout\,
	datab => \sharma_fullAdder5|sum~combout\,
	datac => andgate(12),
	datad => andgate(13),
	combout => \sharma_fullAdder9|sum~combout\);

-- Location: LCCOMB_X64_Y28_N22
\sharma_fullAdder7|cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder7|cout~3_combout\ = (\a_in~combout\(3) & (\b_in~combout\(2) $ (((\sharma_fullAdder2|cout~0_combout\ & \b_in~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder2|cout~0_combout\,
	datab => \b_in~combout\(1),
	datac => \a_in~combout\(3),
	datad => \b_in~combout\(2),
	combout => \sharma_fullAdder7|cout~3_combout\);

-- Location: LCCOMB_X64_Y28_N30
\sharma_fullAdder9|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder9|cout~0_combout\ = (\sharma_fullAdder6|sum~combout\ & ((andgate(13)) # ((\sharma_fullAdder5|sum~combout\ & andgate(12))))) # (!\sharma_fullAdder6|sum~combout\ & (\sharma_fullAdder5|sum~combout\ & (andgate(12) & andgate(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder6|sum~combout\,
	datab => \sharma_fullAdder5|sum~combout\,
	datac => andgate(12),
	datad => andgate(13),
	combout => \sharma_fullAdder9|cout~0_combout\);

-- Location: LCCOMB_X64_Y28_N20
\andgate[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(14) = (\b_in~combout\(3) & \a_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_in~combout\(3),
	datac => \a_in~combout\(2),
	combout => andgate(14));

-- Location: LCCOMB_X64_Y28_N0
\sharma_fullAdder6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder6|cout~0_combout\ = (andgate(10) & ((\sharma_fullAdder5|cout~0_combout\) # (andgate(7) $ (\sharma_fullAdder2|cout~0_combout\)))) # (!andgate(10) & (\sharma_fullAdder5|cout~0_combout\ & (andgate(7) $ (\sharma_fullAdder2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andgate(10),
	datab => andgate(7),
	datac => \sharma_fullAdder2|cout~0_combout\,
	datad => \sharma_fullAdder5|cout~0_combout\,
	combout => \sharma_fullAdder6|cout~0_combout\);

-- Location: LCCOMB_X64_Y28_N26
\sharma_fullAdder10|sum\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder10|sum~combout\ = \sharma_fullAdder7|cout~3_combout\ $ (\sharma_fullAdder9|cout~0_combout\ $ (andgate(14) $ (\sharma_fullAdder6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder7|cout~3_combout\,
	datab => \sharma_fullAdder9|cout~0_combout\,
	datac => andgate(14),
	datad => \sharma_fullAdder6|cout~0_combout\,
	combout => \sharma_fullAdder10|sum~combout\);

-- Location: LCCOMB_X64_Y28_N12
\sharma_fullAdder10|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder10|cout~0_combout\ = (\sharma_fullAdder9|cout~0_combout\ & ((andgate(14)) # (\sharma_fullAdder7|cout~3_combout\ $ (\sharma_fullAdder6|cout~0_combout\)))) # (!\sharma_fullAdder9|cout~0_combout\ & (andgate(14) & 
-- (\sharma_fullAdder7|cout~3_combout\ $ (\sharma_fullAdder6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder7|cout~3_combout\,
	datab => \sharma_fullAdder9|cout~0_combout\,
	datac => andgate(14),
	datad => \sharma_fullAdder6|cout~0_combout\,
	combout => \sharma_fullAdder10|cout~0_combout\);

-- Location: LCCOMB_X64_Y28_N14
\andgate[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- andgate(11) = (\a_in~combout\(3) & \b_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_in~combout\(3),
	datad => \b_in~combout\(2),
	combout => andgate(11));

-- Location: LCCOMB_X64_Y28_N8
\sharma_fullAdder7|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder7|cout~2_combout\ = (andgate(11) & ((\sharma_fullAdder6|cout~0_combout\) # ((\sharma_fullAdder2|cout~0_combout\ & andgate(7))))) # (!andgate(11) & (\sharma_fullAdder2|cout~0_combout\ & (andgate(7) & \sharma_fullAdder6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder2|cout~0_combout\,
	datab => andgate(7),
	datac => andgate(11),
	datad => \sharma_fullAdder6|cout~0_combout\,
	combout => \sharma_fullAdder7|cout~2_combout\);

-- Location: LCCOMB_X64_Y28_N18
\sharma_fullAdder11|sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder11|sum~0_combout\ = \sharma_fullAdder10|cout~0_combout\ $ (\sharma_fullAdder7|cout~2_combout\ $ (((\a_in~combout\(3) & \b_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder10|cout~0_combout\,
	datab => \sharma_fullAdder7|cout~2_combout\,
	datac => \a_in~combout\(3),
	datad => \b_in~combout\(3),
	combout => \sharma_fullAdder11|sum~0_combout\);

-- Location: LCCOMB_X64_Y28_N4
\sharma_fullAdder11|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sharma_fullAdder11|cout~0_combout\ = (\sharma_fullAdder10|cout~0_combout\ & ((\sharma_fullAdder7|cout~2_combout\) # ((\a_in~combout\(3) & \b_in~combout\(3))))) # (!\sharma_fullAdder10|cout~0_combout\ & (\sharma_fullAdder7|cout~2_combout\ & 
-- (\a_in~combout\(3) & \b_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sharma_fullAdder10|cout~0_combout\,
	datab => \sharma_fullAdder7|cout~2_combout\,
	datac => \a_in~combout\(3),
	datad => \b_in~combout\(3),
	combout => \sharma_fullAdder11|cout~0_combout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \andgate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(0));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder0|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(1));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder4|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(2));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder8|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(3));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder9|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(4));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder10|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(5));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder11|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(6));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\p[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \sharma_fullAdder11|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_p(7));
END structure;


