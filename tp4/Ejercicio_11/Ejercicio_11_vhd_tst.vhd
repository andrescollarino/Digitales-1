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
-- Generated on "09/03/2015 21:16:04"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_11
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;


ENTITY Ejercicio_11_vhd_tst IS
END Ejercicio_11_vhd_tst;
ARCHITECTURE Ejercicio_11_arch OF Ejercicio_11_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ejercicio_11
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_11
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	F => F
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS        

variable vTmp : unsigned( 15 downto 0) := x"0000";

           
BEGIN                                                         
		for i in 0 to 15	loop
			
			vTmp(0) := '1';
			vTmp := vTmp ror i;
			
			A <= std_logic_vector(vTmp);
			wait for 10ns;
			
		end loop;
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_11_arch;
