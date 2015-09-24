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
-- Generated on "09/23/2015 19:36:36"
                                                            
-- Vhdl Test Bench template for design  :  ejercicio_7
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ejercicio_7_vhd_tst IS
END ejercicio_7_vhd_tst;
ARCHITECTURE ejercicio_7_arch OF ejercicio_7_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LA : STD_LOGIC;
SIGNAL LB : STD_LOGIC;
SIGNAL QA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL QB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL R1 : STD_LOGIC;
SIGNAL R2 : STD_LOGIC;
SIGNAL W1 : STD_LOGIC;
SIGNAL W2 : STD_LOGIC;
COMPONENT ejercicio_7
	PORT (
	DA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LA : IN STD_LOGIC;
	LB : IN STD_LOGIC;
	QA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	QB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	R1 : IN STD_LOGIC;
	R2 : IN STD_LOGIC;
	W1 : IN STD_LOGIC;
	W2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ejercicio_7
	PORT MAP (
-- list connections between master ports and signals
	DA => DA,
	DB => DB,
	LA => LA,
	LB => LB,
	QA => QA,
	QB => QB,
	R1 => R1,
	R2 => R2,
	W1 => W1,
	W2 => W2
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN       
                                                 
	LA <= '0' , '1' after 5 ns , '0' 	after 10 ns, '1' 	after 10 ns , '0' 	after 10 ns , '1' 	after 10 ns , '0' 	after 10 ns;
	LB <= '0' , '1' after 5 ns , '0' 	after 10 ns, '1' 	after 10 ns , '0' 	after 10 ns , '1' 	after 10 ns , '0' 	after 10 ns;
	DA <= x"0",x"5" after 5 ns , x"5" 	after 10 ns, x"D" after 10 ns , x"D" 	after 10 ns , x"9"	after 10 ns , x"9" 	after 10 ns; 
	
	
	for t in 0 to 7 loop
		
		if LA = '1' then
		
			W1 <= '1';
			DB <= QA;
			wait for 2ns;
			R1 <= '1';
			W2 <= '1';
			DB <= QA;
			wait for 2ns;
			R2 <= '1';
			DB <= QA;
			wait for 8ns;
			W1 <= '0';
			R1 <= '0';
			W2 <= '0';
			R2 <= '0';
		end if;
		wait for 10ns;
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
END ejercicio_7_arch;
