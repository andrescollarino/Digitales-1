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
-- Generated on "11/08/2015 19:55:28"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14_C
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_14_C_vhd_tst IS
END Ejercicio_14_C_vhd_tst;
ARCHITECTURE Ejercicio_14_C_arch OF Ejercicio_14_C_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL Division : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL fo : STD_LOGIC;
COMPONENT Ejercicio_14_C
	PORT (
	ck : IN STD_LOGIC;
	Division : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	fo : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14_C
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	Division => Division,
	fo => fo
	);
init : PROCESS                                               
variable vCk : std_logic := '0';
BEGIN                       
		
      Division <= x"03";
		
		for j in 0 to 160 loop
		ck <= vCk;
		vCk := not vCk;
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
END Ejercicio_14_C_arch;
