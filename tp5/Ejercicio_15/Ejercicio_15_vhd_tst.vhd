-- Copyright (C) 1991-2009 Altera Corporation
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/29/2015 19:10:17"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_15
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY Ejercicio_15_vhd_tst IS
END Ejercicio_15_vhd_tst;
ARCHITECTURE Ejercicio_15_arch OF Ejercicio_15_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CS : STD_LOGIC;
SIGNAL Dato : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL M : STD_LOGIC;
SIGNAL Posicion : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Ejercicio_15
	PORT (
	CS : IN STD_LOGIC;
	Dato : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	M : IN STD_LOGIC;
	Posicion : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_15
	PORT MAP (
-- list connections between master ports and signals
	CS => CS,
	Dato => Dato,
	M => M,
	Posicion => Posicion
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations 
variable numero : integer;                                     
BEGIN                                                         
     numero := 300;
	  -- Escribo las primeras 6 posiciones de la memoria
	  CS <= '1';
	  M <= '1';
	  for i in 0 to 6 loop
	  Posicion <= std_logic_vector(to_unsigned(i , 8));
	  Dato <= std_logic_vector(to_unsigned(numero , 16));
	  numero := numero / 2;
	  wait for 10ns;
	  end loop;
	  -- Intento Scribir con havilitacion en 0
	  CS <= '0';
	  M <= '1';
	  Dato <= x"FFFF"; -- Con esta linea leo el puerto inout
	  Posicion <= x"00";
	  wait for 10ns;
	  
	  -- Leo la poscion 0 para ver si cambio
	  CS <= '1';
	  M <= '0';
	  Dato <= (others => 'Z');
	  wait for 10ns;
	  -- Intento Leer los primeros 3 valores con la havilitacion en 0
	  CS <= '0';
	  for j in 0 to 3 loop
	  Posicion <= std_logic_vector(to_unsigned(j , 8));
	  wait for 5ns;
	  end loop;
	  
	  -- Escrivo la posicion 3
		CS <= '1';
		M <= '1';
		Dato <= x"AAAA"; -- Con esta linea leo el puerto inout
		Posicion <= x"03";
		wait for 10ns;
		
		--Leo toda los primeros 5 valores
		CS <= '1';
		M <= '0';
		Dato <= (others => 'Z'); --Sino no puedo ver las se�ales en el ModelSim
		
		for t in 0 to 6 loop
		Posicion <= std_logic_vector(to_unsigned(t , 8));
		wait for 10ns;
		end loop;
		
		CS <= '1';
		M  <= '0';
		Posicion <= x"00";
		--Datos <= (others => 'Z'); --Sino no puedo ver las se�ales en el ModelSim
		wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_15_arch;
