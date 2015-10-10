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

-- DATE "10/09/2015 22:10:22"

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
-- Salida[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[7]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \sStado~14_combout\ : std_logic;
SIGNAL \sStado.A~q\ : std_logic;
SIGNAL \sStado~13_combout\ : std_logic;
SIGNAL \sStado.B~q\ : std_logic;
SIGNAL \sSalida~10_combout\ : std_logic;
SIGNAL \sStado.C~feeder_combout\ : std_logic;
SIGNAL \sStado.C~q\ : std_logic;
SIGNAL \sSalida~9_combout\ : std_logic;
SIGNAL \sStado.D~feeder_combout\ : std_logic;
SIGNAL \sStado.D~q\ : std_logic;
SIGNAL \sStado~12_combout\ : std_logic;
SIGNAL \sStado.E~q\ : std_logic;
SIGNAL \sSalida~6_combout\ : std_logic;
SIGNAL \sStado.F~feeder_combout\ : std_logic;
SIGNAL \sStado.F~q\ : std_logic;
SIGNAL \sStado~11_combout\ : std_logic;
SIGNAL \sStado.G~q\ : std_logic;
SIGNAL \sSalida~5_combout\ : std_logic;
SIGNAL \sSalida[0]~feeder_combout\ : std_logic;
SIGNAL \sSalida~7_combout\ : std_logic;
SIGNAL \sSalida[3]~feeder_combout\ : std_logic;
SIGNAL \sSalida~8_combout\ : std_logic;
SIGNAL sSalida : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Reset <= Reset;
Salida <= ww_Salida;
ww_ck <= ck;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);

-- Location: IOOBUF_X20_Y0_N9
\Salida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sSalida(0),
	devoe => ww_devoe,
	o => ww_Salida(0));

-- Location: IOOBUF_X29_Y31_N9
\Salida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sSalida(1),
	devoe => ww_devoe,
	o => ww_Salida(1));

-- Location: IOOBUF_X12_Y31_N9
\Salida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sSalida(2),
	devoe => ww_devoe,
	o => ww_Salida(2));

-- Location: IOOBUF_X29_Y31_N2
\Salida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sSalida(3),
	devoe => ww_devoe,
	o => ww_Salida(3));

-- Location: IOOBUF_X33_Y14_N2
\Salida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sSalida(4),
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
	i => sSalida(5),
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
	i => sSalida(6),
	devoe => ww_devoe,
	o => ww_Salida(6));

-- Location: IOOBUF_X33_Y12_N2
\Salida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sSalida(7),
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

-- Location: IOIBUF_X33_Y27_N8
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X32_Y13_N4
\sStado~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado~14_combout\ = (!\Reset~input_o\ & !\sStado.G~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.G~q\,
	combout => \sStado~14_combout\);

-- Location: FF_X32_Y13_N5
\sStado.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.A~q\);

-- Location: LCCOMB_X32_Y13_N18
\sStado~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado~13_combout\ = (!\sStado.A~q\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sStado.A~q\,
	datac => \Reset~input_o\,
	combout => \sStado~13_combout\);

-- Location: FF_X32_Y13_N19
\sStado.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.B~q\);

-- Location: LCCOMB_X32_Y13_N6
\sSalida~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida~10_combout\ = (!\Reset~input_o\ & \sStado.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.B~q\,
	combout => \sSalida~10_combout\);

-- Location: LCCOMB_X32_Y13_N16
\sStado.C~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.C~feeder_combout\ = \sSalida~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sSalida~10_combout\,
	combout => \sStado.C~feeder_combout\);

-- Location: FF_X32_Y13_N17
\sStado.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.C~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.C~q\);

-- Location: LCCOMB_X32_Y13_N12
\sSalida~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida~9_combout\ = (!\Reset~input_o\ & \sStado.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.C~q\,
	combout => \sSalida~9_combout\);

-- Location: LCCOMB_X32_Y13_N28
\sStado.D~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.D~feeder_combout\ = \sSalida~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sSalida~9_combout\,
	combout => \sStado.D~feeder_combout\);

-- Location: FF_X32_Y13_N29
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

-- Location: LCCOMB_X32_Y13_N2
\sStado~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado~12_combout\ = (!\Reset~input_o\ & \sStado.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.D~q\,
	combout => \sStado~12_combout\);

-- Location: FF_X32_Y13_N3
\sStado.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.E~q\);

-- Location: LCCOMB_X32_Y13_N20
\sSalida~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida~6_combout\ = (!\Reset~input_o\ & \sStado.E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.E~q\,
	combout => \sSalida~6_combout\);

-- Location: LCCOMB_X32_Y13_N22
\sStado.F~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado.F~feeder_combout\ = \sSalida~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sSalida~6_combout\,
	combout => \sStado.F~feeder_combout\);

-- Location: FF_X32_Y13_N23
\sStado.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado.F~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.F~q\);

-- Location: LCCOMB_X32_Y13_N24
\sStado~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sStado~11_combout\ = (!\Reset~input_o\ & \sStado.F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.F~q\,
	combout => \sStado~11_combout\);

-- Location: FF_X32_Y13_N25
\sStado.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sStado~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sStado.G~q\);

-- Location: LCCOMB_X32_Y13_N10
\sSalida~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida~5_combout\ = (!\Reset~input_o\ & \sStado.G~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \sStado.G~q\,
	combout => \sSalida~5_combout\);

-- Location: LCCOMB_X32_Y13_N8
\sSalida[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida[0]~feeder_combout\ = \sSalida~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sSalida~5_combout\,
	combout => \sSalida[0]~feeder_combout\);

-- Location: FF_X32_Y13_N9
\sSalida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(0));

-- Location: FF_X32_Y13_N11
\sSalida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(1));

-- Location: FF_X32_Y13_N21
\sSalida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(2));

-- Location: LCCOMB_X32_Y13_N0
\sSalida~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida~7_combout\ = (!\Reset~input_o\ & ((\sStado.F~q\) # (\sStado.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \sStado.F~q\,
	datad => \sStado.D~q\,
	combout => \sSalida~7_combout\);

-- Location: LCCOMB_X32_Y13_N30
\sSalida[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida[3]~feeder_combout\ = \sSalida~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sSalida~7_combout\,
	combout => \sSalida[3]~feeder_combout\);

-- Location: FF_X32_Y13_N31
\sSalida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(3));

-- Location: FF_X32_Y13_N1
\sSalida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(4));

-- Location: LCCOMB_X32_Y13_N26
\sSalida~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sSalida~8_combout\ = (!\Reset~input_o\ & ((\sStado.C~q\) # (\sStado.E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sStado.C~q\,
	datac => \Reset~input_o\,
	datad => \sStado.E~q\,
	combout => \sSalida~8_combout\);

-- Location: FF_X32_Y13_N27
\sSalida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(5));

-- Location: FF_X32_Y13_N13
\sSalida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(6));

-- Location: FF_X32_Y13_N7
\sSalida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \sSalida~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sSalida(7));
END structure;


