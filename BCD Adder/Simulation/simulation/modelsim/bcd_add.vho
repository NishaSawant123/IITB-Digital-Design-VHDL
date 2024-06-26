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

-- DATE "06/11/2024 12:01:47"

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
	output_vector : BUFFER std_logic_vector(4 DOWNTO 0)
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
SIGNAL ww_output_vector : std_logic_vector(4 DOWNTO 0);
SIGNAL \add_instance|inst1|inst4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst6|inst4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst2|inst9|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst3|inst9|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst12|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst12|Y~1_combout\ : std_logic;
SIGNAL \add_instance|inst6|inst4|Y~1_combout\ : std_logic;
SIGNAL \add_instance|inst7|inst4|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst7|inst8|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst8|inst8|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst8|inst8|Y~1_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X12_Y1_N5
\add_instance|inst1|inst4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst1|inst4|Y~0_combout\ = ((\input_vector~combout\(0) $ (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst1|inst4|Y~0_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X12_Y1_N2
\add_instance|inst6|inst4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst6|inst4|Y~0_combout\ = \input_vector~combout\(1) $ (\input_vector~combout\(5) $ (((\input_vector~combout\(0) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst6|inst4|Y~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X12_Y1_N4
\add_instance|inst2|inst9|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst2|inst9|Y~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(5)) # ((\input_vector~combout\(0) & \input_vector~combout\(4))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(5) & (\input_vector~combout\(0) & 
-- \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst2|inst9|Y~0_combout\);

-- Location: LC_X15_Y3_N5
\add_instance|inst3|inst9|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst3|inst9|Y~0_combout\ = (\input_vector~combout\(6) & ((\input_vector~combout\(2)) # ((\add_instance|inst2|inst9|Y~0_combout\)))) # (!\input_vector~combout\(6) & (\input_vector~combout\(2) & (\add_instance|inst2|inst9|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(2),
	datac => \add_instance|inst2|inst9|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst3|inst9|Y~0_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X15_Y3_N4
\add_instance|inst12|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst12|Y~0_combout\ = (!\add_instance|inst6|inst4|Y~0_combout\ & (\add_instance|inst2|inst9|Y~0_combout\ $ (\input_vector~combout\(2) $ (!\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0069",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst2|inst9|Y~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(6),
	datad => \add_instance|inst6|inst4|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst12|Y~0_combout\);

-- Location: LC_X15_Y3_N9
\add_instance|inst12|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst12|Y~1_combout\ = (\add_instance|inst3|inst9|Y~0_combout\ & ((\input_vector~combout\(7)) # ((\input_vector~combout\(3)) # (!\add_instance|inst12|Y~0_combout\)))) # (!\add_instance|inst3|inst9|Y~0_combout\ & ((\input_vector~combout\(7) & 
-- ((\input_vector~combout\(3)) # (!\add_instance|inst12|Y~0_combout\))) # (!\input_vector~combout\(7) & (\input_vector~combout\(3) & !\add_instance|inst12|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst3|inst9|Y~0_combout\,
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(3),
	datad => \add_instance|inst12|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst12|Y~1_combout\);

-- Location: LC_X15_Y3_N2
\add_instance|inst6|inst4|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst6|inst4|Y~1_combout\ = \add_instance|inst6|inst4|Y~0_combout\ $ ((((\add_instance|inst12|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst6|inst4|Y~0_combout\,
	datad => \add_instance|inst12|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst6|inst4|Y~1_combout\);

-- Location: LC_X15_Y3_N7
\add_instance|inst7|inst4|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst7|inst4|Y~0_combout\ = \input_vector~combout\(6) $ (\input_vector~combout\(2) $ ((\add_instance|inst2|inst9|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(2),
	datac => \add_instance|inst2|inst9|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst7|inst4|Y~0_combout\);

-- Location: LC_X15_Y3_N8
\add_instance|inst7|inst8|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst7|inst8|Y~0_combout\ = (\add_instance|inst7|inst4|Y~0_combout\ $ (((!\add_instance|inst6|inst4|Y~0_combout\ & \add_instance|inst12|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst6|inst4|Y~0_combout\,
	datac => \add_instance|inst7|inst4|Y~0_combout\,
	datad => \add_instance|inst12|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst7|inst8|Y~0_combout\);

-- Location: LC_X15_Y3_N6
\add_instance|inst8|inst8|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst8|inst8|Y~0_combout\ = \input_vector~combout\(3) $ (\input_vector~combout\(7) $ (((\add_instance|inst3|inst9|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(7),
	datad => \add_instance|inst3|inst9|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst8|inst8|Y~0_combout\);

-- Location: LC_X15_Y3_N0
\add_instance|inst8|inst8|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst8|inst8|Y~1_combout\ = \add_instance|inst8|inst8|Y~0_combout\ $ (((\add_instance|inst12|Y~1_combout\ & ((\add_instance|inst6|inst4|Y~0_combout\) # (\add_instance|inst7|inst4|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst6|inst4|Y~0_combout\,
	datab => \add_instance|inst7|inst4|Y~0_combout\,
	datac => \add_instance|inst8|inst8|Y~0_combout\,
	datad => \add_instance|inst12|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst8|inst8|Y~1_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst1|inst4|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst6|inst4|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst7|inst8|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst8|inst8|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst12|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(4));
END structure;


