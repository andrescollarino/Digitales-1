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
-- Generated on "06/30/2015 20:35:25"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_6
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

ENTITY Ejercicio_6_vhd_tst IS
END Ejercicio_6_vhd_tst;
ARCHITECTURE Ejercicio_6_arch OF Ejercicio_6_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL EXCESO3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ejercicio_6
	PORT (
	BCD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	EXCESO3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_6
	PORT MAP (
-- list connections between master ports and signals
	BCD => BCD,
	EXCESO3 => EXCESO3
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
BEGIN                                                         
		for J in 0 to 15 loop
			BCD <= std_logic_vector(to_unsigned(J , 4));
			wait for 10ns;
		end loop; -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_6_arch;
