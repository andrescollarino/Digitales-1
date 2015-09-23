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
-- Generated on "07/18/2015 19:42:30"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_13
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY Ejercicio_13_vhd_tst IS
END Ejercicio_13_vhd_tst;
ARCHITECTURE Ejercicio_13_arch OF Ejercicio_13_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT Ejercicio_13
	PORT (
	A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_13
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Result => Result
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
	

	
BEGIN                                                         
    for i in 0 to 3 loop
		for j in 0 to 3 loop
			A <= std_logic_vector(to_unsigned(j,2));
			B <= std_logic_vector(to_unsigned(i,2));
			wait for 10ns;
		end loop;
	end loop;
	
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_13_arch;
