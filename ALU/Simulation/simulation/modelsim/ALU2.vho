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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/12/2024 09:50:56"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|Mux3~2_combout\ : std_logic;
SIGNAL \add_instance|Mux3~6_combout\ : std_logic;
SIGNAL \add_instance|Mux3~11_combout\ : std_logic;
SIGNAL \add_instance|Mux3~12_combout\ : std_logic;
SIGNAL \add_instance|Mux3~7_combout\ : std_logic;
SIGNAL \add_instance|Mux3~8_combout\ : std_logic;
SIGNAL \add_instance|Mux3~9_combout\ : std_logic;
SIGNAL \add_instance|Mux0~0_combout\ : std_logic;
SIGNAL \add_instance|Mux1~0_combout\ : std_logic;
SIGNAL \add_instance|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|Mux3~1_combout\ : std_logic;
SIGNAL \add_instance|Mux3~3_combout\ : std_logic;
SIGNAL \add_instance|Mux2~0_combout\ : std_logic;
SIGNAL \add_instance|Mux3~4_combout\ : std_logic;
SIGNAL \add_instance|Mux3~5_combout\ : std_logic;
SIGNAL \add_instance|Mux3~10_combout\ : std_logic;
SIGNAL \add_instance|Mux2~2_combout\ : std_logic;
SIGNAL \add_instance|Mux2~3_combout\ : std_logic;
SIGNAL \add_instance|Mux2~1_combout\ : std_logic;
SIGNAL \add_instance|Mux2~4_combout\ : std_logic;
SIGNAL \add_instance|Mux1~1_combout\ : std_logic;
SIGNAL \add_instance|Mux1~2_combout\ : std_logic;
SIGNAL \add_instance|Mux1~3_combout\ : std_logic;
SIGNAL \add_instance|Mux0~1_combout\ : std_logic;
SIGNAL \add_instance|Mux0~2_combout\ : std_logic;
SIGNAL \add_instance|Mux0~3_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X16_Y5_N1
\add_instance|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~2_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(3)) # ((!\input_vector~combout\(0) & !\input_vector~combout\(1))))) # (!\input_vector~combout\(7) & (((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~2_combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X16_Y8_N9
\add_instance|Mux3~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~6_combout\ = (\input_vector~combout\(5) & (\input_vector~combout\(1) & (\input_vector~combout\(6) $ (!\input_vector~combout\(2))))) # (!\input_vector~combout\(5) & (!\input_vector~combout\(1) & (\input_vector~combout\(6) $ 
-- (!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~6_combout\);

-- Location: LC_X16_Y5_N9
\add_instance|Mux3~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~11_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(3) & (\add_instance|Mux3~6_combout\)) # (!\input_vector~combout\(3) & ((!\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "808a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|Mux3~6_combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~11_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X16_Y5_N7
\add_instance|Mux3~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~12_combout\ = (\add_instance|Mux3~11_combout\ & (\input_vector~combout\(0) $ (((!\input_vector~combout\(4)) # (!\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|Mux3~11_combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~12_combout\);

-- Location: LC_X16_Y8_N5
\add_instance|Mux3~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~7_combout\ = (\input_vector~combout\(6) & (((\input_vector~combout\(5) & !\input_vector~combout\(1))) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(6) & (\input_vector~combout\(5) & (!\input_vector~combout\(1) & 
-- !\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~7_combout\);

-- Location: LC_X16_Y5_N0
\add_instance|Mux3~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~8_combout\ = (\add_instance|Mux3~7_combout\) # ((!\input_vector~combout\(0) & (\add_instance|Mux3~6_combout\ & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|Mux3~6_combout\,
	datac => \add_instance|Mux3~7_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~8_combout\);

-- Location: LC_X16_Y5_N6
\add_instance|Mux3~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~9_combout\ = (\add_instance|Mux3~12_combout\) # ((\add_instance|Mux3~8_combout\ & (!\input_vector~combout\(3) & !\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux3~12_combout\,
	datab => \add_instance|Mux3~8_combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~9_combout\);

-- Location: LC_X15_Y9_N5
\add_instance|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~0_combout\ = (((\add_instance|Mux3~2_combout\ & \add_instance|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Mux3~2_combout\,
	datad => \add_instance|Mux3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~0_combout\);

-- Location: LC_X16_Y5_N5
\add_instance|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~0_combout\ = ((\input_vector~combout\(7) & (!\input_vector~combout\(3) & \input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~0_combout\);

-- Location: LC_X16_Y5_N3
\add_instance|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~0_combout\ = ((!\input_vector~combout\(0) & ((\input_vector~combout\(1))))) # (!\input_vector~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7733",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~0_combout\);

-- Location: LC_X16_Y8_N4
\add_instance|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~1_combout\ = (\add_instance|Mux1~0_combout\ & (\add_instance|Mux3~0_combout\ & (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux1~0_combout\,
	datab => \add_instance|Mux3~0_combout\,
	datac => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~1_combout\);

-- Location: LC_X16_Y5_N4
\add_instance|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~3_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(0) & (\input_vector~combout\(3) $ (\input_vector~combout\(1)))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(1)) # (!\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~3_combout\);

-- Location: LC_X16_Y5_N8
\add_instance|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~0_combout\ = (\input_vector~combout\(0) & (((!\input_vector~combout\(3) & \input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~0_combout\);

-- Location: LC_X15_Y9_N4
\add_instance|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~4_combout\ = (!\add_instance|Mux3~3_combout\ & (\input_vector~combout\(0) & (!\add_instance|Mux3~2_combout\ & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux3~3_combout\,
	datab => \input_vector~combout\(0),
	datac => \add_instance|Mux3~2_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~4_combout\);

-- Location: LC_X15_Y9_N6
\add_instance|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~5_combout\ = (\add_instance|Mux3~4_combout\) # ((\add_instance|Mux2~0_combout\ & ((\input_vector~combout\(5)) # (!\add_instance|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux3~3_combout\,
	datab => \add_instance|Mux2~0_combout\,
	datac => \add_instance|Mux3~4_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~5_combout\);

-- Location: LC_X15_Y9_N9
\add_instance|Mux3~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux3~10_combout\ = (\add_instance|Mux3~1_combout\) # ((\add_instance|Mux3~5_combout\) # ((\add_instance|Mux0~0_combout\ & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux0~0_combout\,
	datab => \add_instance|Mux3~1_combout\,
	datac => \add_instance|Mux3~5_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux3~10_combout\);

-- Location: LC_X16_Y8_N0
\add_instance|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~2_combout\ = (\input_vector~combout\(5) & (\add_instance|Mux3~0_combout\ & (!\add_instance|Mux3~2_combout\ & \input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|Mux3~0_combout\,
	datac => \add_instance|Mux3~2_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~2_combout\);

-- Location: LC_X16_Y8_N1
\add_instance|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~3_combout\ = (\add_instance|Mux2~2_combout\) # ((\add_instance|Mux1~0_combout\ & ((\add_instance|Mux3~0_combout\) # (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux1~0_combout\,
	datab => \add_instance|Mux3~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \add_instance|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~3_combout\);

-- Location: LC_X15_Y9_N2
\add_instance|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~1_combout\ = ((\add_instance|Mux2~0_combout\ & (!\add_instance|Mux3~3_combout\ & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux2~0_combout\,
	datac => \add_instance|Mux3~3_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~1_combout\);

-- Location: LC_X16_Y8_N6
\add_instance|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux2~4_combout\ = (\add_instance|Mux2~3_combout\) # ((\add_instance|Mux2~1_combout\) # ((\add_instance|Mux0~0_combout\ & \input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux0~0_combout\,
	datab => \add_instance|Mux2~3_combout\,
	datac => \add_instance|Mux2~1_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux2~4_combout\);

-- Location: LC_X16_Y8_N2
\add_instance|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~1_combout\ = (\add_instance|Mux0~0_combout\) # ((\input_vector~combout\(3) & (!\input_vector~combout\(7) & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux0~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~1_combout\);

-- Location: LC_X16_Y8_N3
\add_instance|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~2_combout\ = (\add_instance|Mux1~0_combout\ & ((\input_vector~combout\(4)) # ((\input_vector~combout\(6) & \add_instance|Mux1~1_combout\)))) # (!\add_instance|Mux1~0_combout\ & (((\input_vector~combout\(6) & 
-- \add_instance|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux1~0_combout\,
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(6),
	datad => \add_instance|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~2_combout\);

-- Location: LC_X15_Y9_N8
\add_instance|Mux1~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~3_combout\ = (\add_instance|Mux1~2_combout\) # ((\add_instance|Mux2~0_combout\ & ((\add_instance|Mux3~3_combout\) # (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux1~2_combout\,
	datab => \add_instance|Mux2~0_combout\,
	datac => \add_instance|Mux3~3_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~3_combout\);

-- Location: LC_X16_Y8_N7
\add_instance|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~1_combout\ = (\add_instance|Mux3~0_combout\ & (\input_vector~combout\(5))) # (!\add_instance|Mux3~0_combout\ & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|Mux3~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~1_combout\);

-- Location: LC_X16_Y8_N8
\add_instance|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~2_combout\ = (\add_instance|Mux3~3_combout\ & (((\add_instance|Mux0~1_combout\)))) # (!\add_instance|Mux3~3_combout\ & (!\add_instance|Mux3~0_combout\ & (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux3~3_combout\,
	datab => \add_instance|Mux3~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \add_instance|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~2_combout\);

-- Location: LC_X16_Y5_N2
\add_instance|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~3_combout\ = (\add_instance|Mux3~2_combout\ & (((\add_instance|Mux3~9_combout\ & \input_vector~combout\(7))))) # (!\add_instance|Mux3~2_combout\ & (\add_instance|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux0~2_combout\,
	datab => \add_instance|Mux3~2_combout\,
	datac => \add_instance|Mux3~9_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~3_combout\);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux3~10_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux2~4_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux1~3_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Mux0~3_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


