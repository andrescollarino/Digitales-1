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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/09/2015 21:41:02"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_12
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_12_vhd_tst IS
END Ejercicio_12_vhd_tst;
ARCHITECTURE Ejercicio_12_arch OF Ejercicio_12_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL Salida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Ejercicio_12
	PORT (
	ck : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	Salida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_12
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	Reset => Reset,
	Salida => Salida
	);
init : PROCESS                                               
-- variable declarations                                     
variable c : std_logic := '0';

BEGIN                                                        
              
	Reset <= '0' , '1' after 10ns, '0' after 40ns;			  
	for i in 0 to 150 loop

	ck <= c;
	c := not c;
	wait for 10ns;
	end loop;
						 
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_12_arch;
