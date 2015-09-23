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
-- Generated on "06/30/2015 00:19:48"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY Ejercicio_2_vhd_tst IS
END Ejercicio_2_vhd_tst;
ARCHITECTURE Ejercicio_2_arch OF Ejercicio_2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aiken : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC;
COMPONENT Ejercicio_2
	PORT (
	aiken : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_2
	PORT MAP (
-- list connections between master ports and signals
	aiken => aiken,
	Y => Y
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
       for i in 0 to 15 loop
		aiken <= std_logic_vector(to_unsigned( i , 4 ));
		wait for 10ns;
	end loop; -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_2_arch;
