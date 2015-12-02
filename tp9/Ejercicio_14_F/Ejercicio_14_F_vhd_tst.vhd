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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "12/02/2015 19:56:10"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14_F
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_14_F_vhd_tst IS
END Ejercicio_14_F_vhd_tst;
ARCHITECTURE Ejercicio_14_F_arch OF Ejercicio_14_F_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL Entrada : STD_LOGIC;
SIGNAL Salida : STD_LOGIC;
COMPONENT Ejercicio_14_F
	PORT (
	ck : IN STD_LOGIC;
	Entrada : IN STD_LOGIC;
	Salida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14_F
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	Entrada => Entrada,
	Salida => Salida
	);
init : PROCESS                                               
	variable vck : std_logic := '0';
	variable vVector : std_logic_vector(27 downto 0) :=  x"AF39594";
BEGIN                                                        
   
	for i in 0 to 160 loop
	ck <= vck;
	vck := not vck;
	
	if vck = '1' then
		Entrada <= vVector(0);
		vVector := vVector(0) & vVector(27 downto 1);
	end if;
	
	wait for 5ns;
	
	end loop;
	
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
    
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_14_F_arch;
