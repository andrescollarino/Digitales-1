-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
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
-- Generated on "10/22/2015 20:14:36"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14_E
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_14_E_vhd_tst IS
END Ejercicio_14_E_vhd_tst;
ARCHITECTURE Ejercicio_14_E_arch OF Ejercicio_14_E_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL salida : STD_LOGIC;
COMPONENT Ejercicio_14_E
	PORT (
	ck : IN STD_LOGIC;
	salida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14_E
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	salida => salida
	);
init : PROCESS                                               
variable vck : std_logic := '0';
BEGIN                                                        
		for i in 0 to 160 loop
			vck  := not vck;
			ck <= vck;
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
END Ejercicio_14_E_arch;
