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
-- Generated on "06/28/2015 21:16:22"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY Ejercicio_1_vhd_tst IS
END Ejercicio_1_vhd_tst;
ARCHITECTURE Ejercicio_1_arch OF Ejercicio_1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC;
SIGNAL I : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ejercicio_1
	PORT (
	E : IN STD_LOGIC;
	I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_1
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	I => I,
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
    E <= '1';
    for a in 0 to 3 loop
		I <= std_logic_vector(to_unsigned(a,2)); 
		wait for 10ns;
	end loop;
	
	E <= '0';
    for a in 0 to 3 loop
		I <= std_logic_vector(to_unsigned(a,2)); 
		wait for 10ns;
	end loop;
	
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_1_arch;
