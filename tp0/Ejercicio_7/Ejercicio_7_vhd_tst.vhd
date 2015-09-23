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
-- Generated on "06/30/2015 20:49:11"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_7
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;      
USE ieee.numeric_std.all;                          

ENTITY Ejercicio_7_vhd_tst IS
END Ejercicio_7_vhd_tst;
ARCHITECTURE Ejercicio_7_arch OF Ejercicio_7_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL V : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT Ejercicio_7
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	V : OUT STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_7
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	V => V,
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
variable vOut : std_logic_vector( 2 downto 0);                              
BEGIN                                                         
        for J in 0 to 7 loop
	
		vOut := std_logic_vector(to_unsigned(J , 3));
	
		A <= vOut(0);
		B <= vOut(1);
		C <= vOut(2);
	
		wait for 10ns;
	
		end loop;-- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_7_arch;
