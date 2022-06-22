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

-- DATE "04/16/2022 01:18:24"

-- 
-- Device: Altera 5M40ZM64C4 Package MBGA64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Mod10UpDown IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	up : IN std_logic;
	count : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Mod10UpDown;

-- Design Ports Information


ARCHITECTURE structure OF Mod10UpDown IS
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
SIGNAL ww_up : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~15\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \up~combout\ : std_logic;
SIGNAL \Add0~17_cout0\ : std_logic;
SIGNAL \Add0~17COUT1_21\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_22\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_23\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \next_state~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL state : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_up <= up;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X5_Y4_N7
\state[0]\ : maxv_lcell
-- Equation(s):
-- state(0) = DFFEAS((!\rst~combout\ & (((!state(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datac => state(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\up~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_up,
	combout => \up~combout\);

-- Location: LC_X5_Y4_N0
\Add0~17\ : maxv_lcell
-- Equation(s):
-- \Add0~17_cout0\ = CARRY(((state(0))))
-- \Add0~17COUT1_21\ = CARRY(((state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15\,
	cout0 => \Add0~17_cout0\,
	cout1 => \Add0~17COUT1_21\);

-- Location: LC_X5_Y4_N1
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \up~combout\ $ (state(1) $ ((!\Add0~17_cout0\)))
-- \Add0~2\ = CARRY((\up~combout\ & ((!\Add0~17_cout0\) # (!state(1)))) # (!\up~combout\ & (!state(1) & !\Add0~17_cout0\)))
-- \Add0~2COUT1_22\ = CARRY((\up~combout\ & ((!\Add0~17COUT1_21\) # (!state(1)))) # (!\up~combout\ & (!state(1) & !\Add0~17COUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \up~combout\,
	datab => state(1),
	cin0 => \Add0~17_cout0\,
	cin1 => \Add0~17COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_22\);

-- Location: LC_X5_Y4_N2
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = state(2) $ (\up~combout\ $ ((\Add0~2\)))
-- \Add0~7\ = CARRY((state(2) & ((!\Add0~2\) # (!\up~combout\))) # (!state(2) & (!\up~combout\ & !\Add0~2\)))
-- \Add0~7COUT1_23\ = CARRY((state(2) & ((!\Add0~2COUT1_22\) # (!\up~combout\))) # (!state(2) & (!\up~combout\ & !\Add0~2COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \up~combout\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_23\);

-- Location: LC_X5_Y4_N8
\state[2]\ : maxv_lcell
-- Equation(s):
-- state(2) = DFFEAS((!\rst~combout\ & (((\next_state~1_combout\ & \Add0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datac => \next_state~1_combout\,
	datad => \Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(2));

-- Location: LC_X5_Y4_N3
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = state(3) $ (((\Add0~7\ $ (!\up~combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datad => \up~combout\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\);

-- Location: LC_X5_Y4_N4
\state[3]\ : maxv_lcell
-- Equation(s):
-- state(3) = DFFEAS((!\rst~combout\ & ((\next_state~1_combout\ & ((\Add0~10_combout\))) # (!\next_state~1_combout\ & (!\up~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5101",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \up~combout\,
	datac => \next_state~1_combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(3));

-- Location: LC_X5_Y4_N5
\next_state~0\ : maxv_lcell
-- Equation(s):
-- \next_state~0_combout\ = (((state(1)) # (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~0_combout\);

-- Location: LC_X5_Y4_N6
\next_state~1\ : maxv_lcell
-- Equation(s):
-- \next_state~1_combout\ = (\next_state~0_combout\) # ((state(0) & ((!state(3)) # (!\up~combout\))) # (!state(0) & ((\up~combout\) # (state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \up~combout\,
	datac => state(3),
	datad => \next_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~1_combout\);

-- Location: LC_X5_Y4_N9
\state[1]\ : maxv_lcell
-- Equation(s):
-- state(1) = DFFEAS((!\rst~combout\ & (((\next_state~1_combout\ & \Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datac => \next_state~1_combout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => state(0),
	oe => VCC,
	padio => ww_count(0));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => state(1),
	oe => VCC,
	padio => ww_count(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => state(2),
	oe => VCC,
	padio => ww_count(2));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\count[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => state(3),
	oe => VCC,
	padio => ww_count(3));
END structure;


