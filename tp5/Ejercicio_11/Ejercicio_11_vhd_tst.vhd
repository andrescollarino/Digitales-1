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
-- Generated on "09/04/2015 01:21:09"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_11
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;  

ENTITY Ejercicio_11_vhd_tst IS
END Ejercicio_11_vhd_tst;
ARCHITECTURE Ejercicio_11_arch OF Ejercicio_11_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Exp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Salida : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Ejercicio_11
	PORT (
	A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	Exp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Salida : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_11
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Exp => Exp,
	Salida => Salida
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
	
variable j : integer range 0 to 5 := 5;
variable vExp : unsigned(3 downto 0) := "1000";
BEGIN        

	
	A <= o"33";
	B <= o"33";
	
	for t in 0 to 3 loop
	
	Exp <= std_logic_vector(vExp(2 downto 0));
	vExp := vExp ror 1;
	
	wait for 10ns;
	
	end loop;
	
	
	for i in 0 to 5 loop
		
		A <= std_logic_vector(to_unsigned(j, 6));
		B <= std_logic_vector(to_unsigned(i , 6));
	
		j := j - 1;
		
		Exp <= std_logic_vector(vExp(2 downto 0));
		vExp := vExp ror 1;
		
		wait for 10ns;
		
	end loop;
	
	
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_11_arch;
