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
-- Generated on "12/02/2015 20:51:26"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14_B
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_14_B_vhd_tst IS
END Ejercicio_14_B_vhd_tst;
ARCHITECTURE Ejercicio_14_B_arch OF Ejercicio_14_B_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL TC : STD_LOGIC;
COMPONENT Ejercicio_14_B
	PORT (
	ck : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	TC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14_B
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	Reset => Reset,
	TC => TC
	);
init : PROCESS                                               
variable vck : std_logic := '0';
BEGIN           
	
	Reset <= '1' , '0' after 30ns; 
                                             
	for i in 0 to 160 loop
	ck <= vck;
	vck := not vck;
	wait for 5ns;
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
END Ejercicio_14_B_arch;
