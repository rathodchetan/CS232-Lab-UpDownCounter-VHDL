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

-- DATE "04/16/2022 01:31:22"

-- 
-- Device: Altera 5M80ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	BoothMultiplier IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END BoothMultiplier;

-- Design Ports Information


ARCHITECTURE structure OF BoothMultiplier IS
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
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \state~regout\ : std_logic;
SIGNAL \P1P0~0_combout\ : std_logic;
SIGNAL \result[0]$latch~combout\ : std_logic;
SIGNAL \P1P0~1_combout\ : std_logic;
SIGNAL \result[1]$latch~combout\ : std_logic;
SIGNAL \P1P0~2_combout\ : std_logic;
SIGNAL \P1P0~3_combout\ : std_logic;
SIGNAL \P3P2~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \result[2]$latch~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \P1P0~4_combout\ : std_logic;
SIGNAL \P1P0~5_combout\ : std_logic;
SIGNAL \P3P2~1_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_31\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \result[3]$latch~combout\ : std_logic;
SIGNAL \P3P2~2_combout\ : std_logic;
SIGNAL \P3P2~3_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \P1P0~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_32\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \result[4]$latch~combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \P1P0~7_combout\ : std_logic;
SIGNAL \P3P2~4_combout\ : std_logic;
SIGNAL \P3P2~5_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \result[5]$latch~combout\ : std_logic;
SIGNAL \P3P2~6_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_33\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \result[6]$latch~combout\ : std_logic;
SIGNAL \P3P2~7_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_34\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \result[7]$latch~combout\ : std_logic;
SIGNAL P3P2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL P1P0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_a <= a;
ww_b <= b;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state~regout\ <= NOT \state~regout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X2_Y3_N7
state : maxv_lcell
-- Equation(s):
-- \state~regout\ = DFFEAS((!\rst~combout\ & (((!\state~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \state~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state~regout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X2_Y3_N5
\P1P0~0\ : maxv_lcell
-- Equation(s):
-- \P1P0~0_combout\ = ((\a~combout\(0) & (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~0_combout\);

-- Location: LC_X2_Y3_N3
\P1P0[0]\ : maxv_lcell
-- Equation(s):
-- P1P0(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P1P0~0_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P1P0~0_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P1P0(0));

-- Location: LC_X2_Y3_N1
\result[0]$latch\ : maxv_lcell
-- Equation(s):
-- \result[0]$latch~combout\ = ((GLOBAL(\state~regout\) & ((P1P0(0)))) # (!GLOBAL(\state~regout\) & (\result[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result[0]$latch~combout\,
	datac => \state~regout\,
	datad => P1P0(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[0]$latch~combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X2_Y3_N4
\P1P0~1\ : maxv_lcell
-- Equation(s):
-- \P1P0~1_combout\ = (\b~combout\(1) & (\a~combout\(0) $ (((\a~combout\(1) & \b~combout\(0)))))) # (!\b~combout\(1) & (\a~combout\(1) & (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~1_combout\);

-- Location: LC_X2_Y3_N9
\P1P0[1]\ : maxv_lcell
-- Equation(s):
-- P1P0(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P1P0~1_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P1P0~1_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P1P0(1));

-- Location: LC_X2_Y3_N8
\result[1]$latch\ : maxv_lcell
-- Equation(s):
-- \result[1]$latch~combout\ = ((GLOBAL(\state~regout\) & ((P1P0(1)))) # (!GLOBAL(\state~regout\) & (\result[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result[1]$latch~combout\,
	datac => \state~regout\,
	datad => P1P0(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[1]$latch~combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X2_Y2_N7
\P1P0~2\ : maxv_lcell
-- Equation(s):
-- \P1P0~2_combout\ = \a~combout\(2) $ (((\a~combout\(1) & (\b~combout\(1) & !\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datac => \a~combout\(2),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~2_combout\);

-- Location: LC_X2_Y3_N6
\P1P0~3\ : maxv_lcell
-- Equation(s):
-- \P1P0~3_combout\ = (\b~combout\(0) & (((\P1P0~2_combout\)))) # (!\b~combout\(0) & (\b~combout\(1) & (\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \P1P0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~3_combout\);

-- Location: LC_X4_Y1_N3
\P1P0[2]\ : maxv_lcell
-- Equation(s):
-- P1P0(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P1P0~3_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P1P0~3_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P1P0(2));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X2_Y1_N6
\P3P2~0\ : maxv_lcell
-- Equation(s):
-- \P3P2~0_combout\ = (((\a~combout\(0) & \b~combout\(2))))

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
	datac => \a~combout\(0),
	datad => \b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~0_combout\);

-- Location: LC_X4_Y1_N8
\P3P2[0]\ : maxv_lcell
-- Equation(s):
-- P3P2(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P3P2~0_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P3P2~0_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P3P2(0));

-- Location: LC_X3_Y1_N2
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = P1P0(2) $ ((P3P2(0)))
-- \Add1~2\ = CARRY((P1P0(2) & (P3P2(0))))
-- \Add1~2COUT1_31\ = CARRY((P1P0(2) & (P3P2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => P1P0(2),
	datab => P3P2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_31\);

-- Location: LC_X4_Y1_N1
\result[2]$latch\ : maxv_lcell
-- Equation(s):
-- \result[2]$latch~combout\ = ((GLOBAL(\state~regout\) & (\Add1~0_combout\)) # (!GLOBAL(\state~regout\) & ((\result[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \state~regout\,
	datad => \result[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[2]$latch~combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X2_Y2_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!\a~combout\(2) & ((\a~combout\(0)) # (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X2_Y2_N8
\P1P0~4\ : maxv_lcell
-- Equation(s):
-- \P1P0~4_combout\ = \a~combout\(3) $ (((\b~combout\(1) & (\Add0~0_combout\ $ (!\a~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aa6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(1),
	datac => \Add0~0_combout\,
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~4_combout\);

-- Location: LC_X2_Y2_N5
\P1P0~5\ : maxv_lcell
-- Equation(s):
-- \P1P0~5_combout\ = (\b~combout\(0) & (\P1P0~4_combout\)) # (!\b~combout\(0) & (((\b~combout\(1) & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P1P0~4_combout\,
	datab => \b~combout\(1),
	datac => \a~combout\(2),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~5_combout\);

-- Location: LC_X4_Y1_N6
\P1P0[3]\ : maxv_lcell
-- Equation(s):
-- P1P0(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P1P0~5_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P1P0~5_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P1P0(3));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X2_Y1_N8
\P3P2~1\ : maxv_lcell
-- Equation(s):
-- \P3P2~1_combout\ = (\a~combout\(1) & (\b~combout\(2) $ (((\b~combout\(3) & \a~combout\(0)))))) # (!\a~combout\(1) & (\b~combout\(3) & (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(3),
	datac => \a~combout\(0),
	datad => \b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~1_combout\);

-- Location: LC_X4_Y1_N2
\P3P2[1]\ : maxv_lcell
-- Equation(s):
-- P3P2(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P3P2~1_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P3P2~1_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P3P2(1));

-- Location: LC_X3_Y1_N3
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = P1P0(3) $ (P3P2(1) $ ((\Add1~2\)))
-- \Add1~7\ = CARRY((P1P0(3) & (!P3P2(1) & !\Add1~2\)) # (!P1P0(3) & ((!\Add1~2\) # (!P3P2(1)))))
-- \Add1~7COUT1_32\ = CARRY((P1P0(3) & (!P3P2(1) & !\Add1~2COUT1_31\)) # (!P1P0(3) & ((!\Add1~2COUT1_31\) # (!P3P2(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => P1P0(3),
	datab => P3P2(1),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_32\);

-- Location: LC_X2_Y1_N1
\result[3]$latch\ : maxv_lcell
-- Equation(s):
-- \result[3]$latch~combout\ = ((GLOBAL(\state~regout\) & ((\Add1~5_combout\))) # (!GLOBAL(\state~regout\) & (\result[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result[3]$latch~combout\,
	datac => \state~regout\,
	datad => \Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[3]$latch~combout\);

-- Location: LC_X2_Y1_N9
\P3P2~2\ : maxv_lcell
-- Equation(s):
-- \P3P2~2_combout\ = \a~combout\(2) $ (((\a~combout\(1) & (!\a~combout\(0) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(2),
	datac => \a~combout\(0),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~2_combout\);

-- Location: LC_X2_Y1_N7
\P3P2~3\ : maxv_lcell
-- Equation(s):
-- \P3P2~3_combout\ = (\b~combout\(2) & (((\P3P2~2_combout\)))) # (!\b~combout\(2) & (\a~combout\(1) & ((\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(2),
	datac => \P3P2~2_combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~3_combout\);

-- Location: LC_X2_Y1_N5
\P3P2[2]\ : maxv_lcell
-- Equation(s):
-- P3P2(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P3P2~3_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P3P2~3_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P3P2(2));

-- Location: LC_X2_Y1_N2
\Add0~1\ : maxv_lcell
-- Equation(s):
-- \Add0~1_combout\ = (\a~combout\(3) & ((\a~combout\(2)) # ((\a~combout\(0) & \a~combout\(1))))) # (!\a~combout\(3) & (((!\a~combout\(1))) # (!\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \a~combout\(2),
	datac => \a~combout\(0),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X2_Y2_N3
\P1P0~6\ : maxv_lcell
-- Equation(s):
-- \P1P0~6_combout\ = (\b~combout\(1) & ((\b~combout\(0) & ((!\Add0~1_combout\))) # (!\b~combout\(0) & (\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(1),
	datac => \Add0~1_combout\,
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~6_combout\);

-- Location: LC_X4_Y1_N9
\P1P0[4]\ : maxv_lcell
-- Equation(s):
-- P1P0(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P1P0~6_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P1P0~6_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P1P0(4));

-- Location: LC_X3_Y1_N4
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = P3P2(2) $ (P1P0(4) $ ((!\Add1~7\)))
-- \Add1~12\ = CARRY((P3P2(2) & ((P1P0(4)) # (!\Add1~7COUT1_32\))) # (!P3P2(2) & (P1P0(4) & !\Add1~7COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => P3P2(2),
	datab => P1P0(4),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout => \Add1~12\);

-- Location: LC_X3_Y1_N1
\result[4]$latch\ : maxv_lcell
-- Equation(s):
-- \result[4]$latch~combout\ = ((GLOBAL(\state~regout\) & ((\Add1~10_combout\))) # (!GLOBAL(\state~regout\) & (\result[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result[4]$latch~combout\,
	datac => \state~regout\,
	datad => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[4]$latch~combout\);

-- Location: LC_X2_Y2_N1
\Add0~2\ : maxv_lcell
-- Equation(s):
-- \Add0~2_combout\ = ((!\a~combout\(2) & ((!\a~combout\(1)) # (!\a~combout\(0))))) # (!\a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "575f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~2_combout\);

-- Location: LC_X2_Y2_N9
\P1P0~7\ : maxv_lcell
-- Equation(s):
-- \P1P0~7_combout\ = (\b~combout\(1) & (\b~combout\(0) & ((!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datad => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P1P0~7_combout\);

-- Location: LC_X4_Y1_N7
\P1P0[5]\ : maxv_lcell
-- Equation(s):
-- P1P0(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P1P0~7_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P1P0~7_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P1P0(5));

-- Location: LC_X2_Y2_N2
\P3P2~4\ : maxv_lcell
-- Equation(s):
-- \P3P2~4_combout\ = \a~combout\(3) $ (((\b~combout\(3) & (\Add0~0_combout\ $ (!\a~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aa6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datac => \Add0~0_combout\,
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~4_combout\);

-- Location: LC_X2_Y2_N6
\P3P2~5\ : maxv_lcell
-- Equation(s):
-- \P3P2~5_combout\ = (\b~combout\(2) & (\P3P2~4_combout\)) # (!\b~combout\(2) & (((\a~combout\(2) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P3P2~4_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~5_combout\);

-- Location: LC_X3_Y2_N6
\P3P2[3]\ : maxv_lcell
-- Equation(s):
-- P3P2(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P3P2~5_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P3P2~5_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P3P2(3));

-- Location: LC_X3_Y1_N5
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = P1P0(5) $ (P3P2(3) $ ((\Add1~12\)))
-- \Add1~17\ = CARRY((P1P0(5) & (!P3P2(3) & !\Add1~12\)) # (!P1P0(5) & ((!\Add1~12\) # (!P3P2(3)))))
-- \Add1~17COUT1_33\ = CARRY((P1P0(5) & (!P3P2(3) & !\Add1~12\)) # (!P1P0(5) & ((!\Add1~12\) # (!P3P2(3)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => P1P0(5),
	datab => P3P2(3),
	cin => \Add1~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_33\);

-- Location: LC_X3_Y1_N9
\result[5]$latch\ : maxv_lcell
-- Equation(s):
-- \result[5]$latch~combout\ = (GLOBAL(\state~regout\) & (((\Add1~15_combout\)))) # (!GLOBAL(\state~regout\) & (((\result[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state~regout\,
	datac => \Add1~15_combout\,
	datad => \result[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[5]$latch~combout\);

-- Location: LC_X2_Y1_N4
\P3P2~6\ : maxv_lcell
-- Equation(s):
-- \P3P2~6_combout\ = (\b~combout\(3) & ((\b~combout\(2) & (!\Add0~1_combout\)) # (!\b~combout\(2) & ((\a~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~6_combout\);

-- Location: LC_X2_Y1_N3
\P3P2[4]\ : maxv_lcell
-- Equation(s):
-- P3P2(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P3P2~6_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P3P2~6_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P3P2(4));

-- Location: LC_X3_Y1_N6
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = (P3P2(4) $ ((!(!\Add1~12\ & \Add1~17\) # (\Add1~12\ & \Add1~17COUT1_33\))))
-- \Add1~22\ = CARRY(((P3P2(4) & !\Add1~17\)))
-- \Add1~22COUT1_34\ = CARRY(((P3P2(4) & !\Add1~17COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => P3P2(4),
	cin => \Add1~12\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_34\);

-- Location: LC_X3_Y1_N0
\result[6]$latch\ : maxv_lcell
-- Equation(s):
-- \result[6]$latch~combout\ = ((GLOBAL(\state~regout\) & ((\Add1~20_combout\))) # (!GLOBAL(\state~regout\) & (\result[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \result[6]$latch~combout\,
	datac => \state~regout\,
	datad => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[6]$latch~combout\);

-- Location: LC_X2_Y2_N0
\P3P2~7\ : maxv_lcell
-- Equation(s):
-- \P3P2~7_combout\ = ((\b~combout\(2) & (\b~combout\(3) & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datac => \b~combout\(3),
	datad => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \P3P2~7_combout\);

-- Location: LC_X2_Y1_N0
\P3P2[5]\ : maxv_lcell
-- Equation(s):
-- P3P2(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \rst~combout\, \P3P2~7_combout\, !GLOBAL(\state~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \P3P2~7_combout\,
	aclr => GND,
	aload => \ALT_INV_state~regout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P3P2(5));

-- Location: LC_X3_Y1_N7
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = (((!\Add1~12\ & \Add1~22\) # (\Add1~12\ & \Add1~22COUT1_34\) $ (P3P2(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => P3P2(5),
	cin => \Add1~12\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\);

-- Location: LC_X3_Y1_N8
\result[7]$latch\ : maxv_lcell
-- Equation(s):
-- \result[7]$latch~combout\ = ((GLOBAL(\state~regout\) & ((\Add1~25_combout\))) # (!GLOBAL(\state~regout\) & (\result[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \result[7]$latch~combout\,
	datac => \state~regout\,
	datad => \Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result[7]$latch~combout\);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[0]$latch~combout\,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_A1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[1]$latch~combout\,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[2]$latch~combout\,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[3]$latch~combout\,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[4]$latch~combout\,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[5]$latch~combout\,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[6]$latch~combout\,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result[7]$latch~combout\,
	oe => VCC,
	padio => ww_result(7));
END structure;


