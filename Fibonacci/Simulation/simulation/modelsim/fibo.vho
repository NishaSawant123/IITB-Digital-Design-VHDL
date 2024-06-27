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

-- DATE "06/10/2024 19:48:36"

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
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \add_instance|WideNor0~0_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~6_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~1_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~7_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~2_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~5_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~8_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~9_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~4_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~3_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~10_combout\ : std_logic;
SIGNAL \add_instance|WideNor0~11_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X15_Y2_N2
\add_instance|WideNor0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~0_combout\ = ((\input_vector~combout\(6) & (\input_vector~combout\(7) & \input_vector~combout\(9))) # (!\input_vector~combout\(6) & ((\input_vector~combout\(7)) # (\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X15_Y7_N4
\add_instance|WideNor0~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~6_combout\ = (\add_instance|WideNor0~0_combout\ & (\input_vector~combout\(6) $ (((!\input_vector~combout\(4)) # (!\input_vector~combout\(8)))))) # (!\add_instance|WideNor0~0_combout\ & (\input_vector~combout\(4) & 
-- ((!\input_vector~combout\(8)) # (!\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9750",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(8),
	datac => \add_instance|WideNor0~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~6_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X15_Y7_N0
\add_instance|WideNor0~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~1_combout\ = (\input_vector~combout\(6) & (\add_instance|WideNor0~0_combout\ & (\input_vector~combout\(8) $ (!\input_vector~combout\(4))))) # (!\input_vector~combout\(6) & ((\input_vector~combout\(8)) # 
-- ((\add_instance|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d474",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(8),
	datac => \add_instance|WideNor0~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~1_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X15_Y7_N1
\add_instance|WideNor0~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~7_combout\ = (\input_vector~combout\(6) & ((\input_vector~combout\(1) $ (!\add_instance|WideNor0~1_combout\)) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(6) & (\add_instance|WideNor0~1_combout\ & 
-- ((!\input_vector~combout\(3)) # (!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "92fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \add_instance|WideNor0~1_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~7_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X15_Y7_N2
\add_instance|WideNor0~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~2_combout\ = (\add_instance|WideNor0~1_combout\ & ((\input_vector~combout\(6) & (!\input_vector~combout\(1))) # (!\input_vector~combout\(6) & ((\input_vector~combout\(3)))))) # (!\add_instance|WideNor0~1_combout\ & 
-- (\input_vector~combout\(1) & ((\input_vector~combout\(3)) # (!\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c24",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(1),
	datac => \add_instance|WideNor0~1_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~2_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X15_Y7_N7
\add_instance|WideNor0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~5_combout\ = (\input_vector~combout\(5) & (((\add_instance|WideNor0~2_combout\ & \input_vector~combout\(0))))) # (!\input_vector~combout\(5) & (\input_vector~combout\(3) & ((\add_instance|WideNor0~2_combout\) # 
-- (\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(5),
	datac => \add_instance|WideNor0~2_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~5_combout\);

-- Location: LC_X15_Y7_N6
\add_instance|WideNor0~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~8_combout\ = (\add_instance|WideNor0~6_combout\ & ((\add_instance|WideNor0~7_combout\ & (\add_instance|WideNor0~5_combout\ & \input_vector~combout\(5))) # (!\add_instance|WideNor0~7_combout\ & ((!\input_vector~combout\(5)))))) # 
-- (!\add_instance|WideNor0~6_combout\ & ((\input_vector~combout\(5)) # ((\add_instance|WideNor0~7_combout\ & \add_instance|WideNor0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d562",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~6_combout\,
	datab => \add_instance|WideNor0~7_combout\,
	datac => \add_instance|WideNor0~5_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~8_combout\);

-- Location: LC_X15_Y7_N8
\add_instance|WideNor0~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~9_combout\ = (\input_vector~combout\(5) & (\add_instance|WideNor0~5_combout\ $ (((\add_instance|WideNor0~6_combout\) # (!\add_instance|WideNor0~7_combout\))))) # (!\input_vector~combout\(5) & (\add_instance|WideNor0~7_combout\ & 
-- ((\add_instance|WideNor0~6_combout\) # (!\add_instance|WideNor0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4b8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~6_combout\,
	datab => \add_instance|WideNor0~7_combout\,
	datac => \add_instance|WideNor0~5_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~9_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X15_Y2_N4
\add_instance|WideNor0~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~4_combout\ = (\input_vector~combout\(2)) # (\input_vector~combout\(9) $ (((\input_vector~combout\(6) & \input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~4_combout\);

-- Location: LC_X15_Y7_N3
\add_instance|WideNor0~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~3_combout\ = (\add_instance|WideNor0~2_combout\ & (\input_vector~combout\(3) $ (((\input_vector~combout\(5) & !\input_vector~combout\(0)))))) # (!\add_instance|WideNor0~2_combout\ & (!\input_vector~combout\(3) & 
-- (!\input_vector~combout\(5) & \input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a160",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(5),
	datac => \add_instance|WideNor0~2_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~3_combout\);

-- Location: LC_X15_Y7_N5
\add_instance|WideNor0~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~10_combout\ = (\add_instance|WideNor0~4_combout\ & (!\add_instance|WideNor0~9_combout\ & ((\add_instance|WideNor0~3_combout\)))) # (!\add_instance|WideNor0~4_combout\ & (\add_instance|WideNor0~8_combout\ $ 
-- (((!\add_instance|WideNor0~3_combout\) # (!\add_instance|WideNor0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~9_combout\,
	datab => \add_instance|WideNor0~4_combout\,
	datac => \add_instance|WideNor0~8_combout\,
	datad => \add_instance|WideNor0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~10_combout\);

-- Location: LC_X15_Y7_N9
\add_instance|WideNor0~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideNor0~11_combout\ = (\add_instance|WideNor0~5_combout\ & ((\add_instance|WideNor0~10_combout\ & ((\add_instance|WideNor0~9_combout\))) # (!\add_instance|WideNor0~10_combout\ & (!\add_instance|WideNor0~8_combout\ & 
-- !\add_instance|WideNor0~9_combout\)))) # (!\add_instance|WideNor0~5_combout\ & (\add_instance|WideNor0~10_combout\ & ((\add_instance|WideNor0~8_combout\) # (!\add_instance|WideNor0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e034",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|WideNor0~8_combout\,
	datab => \add_instance|WideNor0~5_combout\,
	datac => \add_instance|WideNor0~10_combout\,
	datad => \add_instance|WideNor0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideNor0~11_combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideNor0~11_combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


