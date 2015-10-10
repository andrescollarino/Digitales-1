-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 153 11/29/2010 SJ Web Edition"

-- DATE "10/09/2015 21:46:17"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ejercicio_12 IS
    PORT (
	Reset : IN std_logic;
	Salida : OUT std_logic_vector(7 DOWNTO 0);
	ck : IN std_logic
	);
END Ejercicio_12;

-- Design Ports Information
-- Reset	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ejercicio_12 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Salida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ck : std_logic;
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \sStado.A~0_combout\ : std_logic;
SIGNAL \sStado.A~q\ : std_logic;
SIGNAL \sStado.B~0_combout\ : std_logic;
SIGNAL \sStado.B~q\ : std_logic;
SIGNAL \sStado.C~q\ : std_logic;
SIGNAL \sStado.D~feeder_combout\ : std_logic;
SIGNAL \sStado.D~q\ : std_logic;
SIGNAL \sStado.E~feeder_combout\ : std_logic;
SIGNAL \sStado.E~q\ : std_logic;
SIGNAL \sStado.F~q\ : std_logic;
SIGNAL \sStado.G~feeder_combout\ : std_logic;
SIGNAL \sStado.G~q\ : std_logic;
SIGNAL \Salida~6_combout\ : std_logic;
SIGNAL \Salida~7_combout\ : std_logic;

BEGIN

ww_Reset <= Reset;
Salida <= ww_Salida;
ww_ck <= ck;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);

-- Location: IOOBUF_X33_Y11_N2
\Salida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sStado.G~q\,
	devoe => ww_devoe,
	o => ww_Salida(0));

-- Location: IOOBUF_X33_Y10_N2
\Salida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sStado.G~q\,
	devoe => ww_devoe,
	o => ww_Salida(1));

-- Location: IOOBUF_X33_Y14_N2
\Salida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sStado.E~q\,
	devoe => ww_devoe,
	o => ww_Salida(2));

-- Location: IOOBUF_X33_Y11_N9
\Salida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Salida~6_combout\,
	devoe => ww_devoe,
	o => ww_Salida(3));

-- Location: IOOBUF_X33_Y12_N2
\Salida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Salida~6_combout\,
	devoe => ww_devoe,
	o => ww_Salida(4));

-- Location: IOOBUF_X33_Y12_N9
\Salida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Salida~7_combout\,
	devoe => ww_devoe,
	o => ww_Salida(5));

-- Location: IOOBUF_X33_Y14_N9
\Salida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sStado.C~q\,
	devoe => ww_devoe,
	o => ww_Salida(6));

-- Location: IOOBUF_X29_Y0_N2
\Salida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sStado.B~q\,
	devoe => ww_devoe,
	o => ww_Salida(7));

-- Location: IOIBUF_X16_Y0_N15
\ck~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G17
\ck~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y14_N12
\sStado.A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.A~0_combout\ = !\sStado.G~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sStado.G~q\,
	combout => \sStado.A~0_combout\);

-- Location: FF_X32_Y14_N13
\sStado.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.A~q\);

-- Location: LCCOMB_X32_Y14_N26
\sStado.B~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.B~0_combout\ = !\sStado.A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sStado.A~q\,
	combout => \sStado.B~0_combout\);

-- Location: FF_X32_Y14_N27
\sStado.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.B~q\);

-- Location: FF_X32_Y14_N9
\sStado.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \sStado.B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.C~q\);

-- Location: LCCOMB_X32_Y14_N28
\sStado.D~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.D~feeder_combout\ = \sStado.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sStado.C~q\,
	combout => \sStado.D~feeder_combout\);

-- Location: FF_X32_Y14_N29
\sStado.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.D~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.D~q\);

-- Location: LCCOMB_X32_Y14_N10
\sStado.E~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.E~feeder_combout\ = \sStado.D~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sStado.D~q\,
	combout => \sStado.E~feeder_combout\);

-- Location: FF_X32_Y14_N11
\sStado.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.E~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.E~q\);

-- Location: FF_X32_Y14_N23
\sStado.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \sStado.E~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.F~q\);

-- Location: LCCOMB_X32_Y14_N16
\sStado.G~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.G~feeder_combout\ = \sStado.F~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sStado.F~q\,
	combout => \sStado.G~feeder_combout\);

-- Location: FF_X32_Y14_N17
\sStado.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.G~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.G~q\);

-- Location: LCCOMB_X32_Y14_N22
\Salida~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Salida~6_combout\ = (\sStado.F~q\) # (\sStado.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sStado.F~q\,
	datad => \sStado.D~q\,
	combout => \Salida~6_combout\);

-- Location: LCCOMB_X32_Y14_N8
\Salida~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Salida~7_combout\ = (\sStado.E~q\) # (\sStado.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sStado.E~q\,
	datac => \sStado.C~q\,
	combout => \Salida~7_combout\);

-- Location: IOIBUF_X12_Y0_N8
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);
END structure;


