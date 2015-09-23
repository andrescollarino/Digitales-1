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
-- Generated on "09/04/2015 02:06:49"
                                                            
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
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL D : STD_LOGIC;
SIGNAL inC : STD_LOGIC;
SIGNAL outC : STD_LOGIC;
SIGNAL Suma : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Ejercicio_13
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	D : BUFFER STD_LOGIC;
	inC : IN STD_LOGIC;
	outC : BUFFER STD_LOGIC;
	Suma : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_13
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	D => D,
	inC => inC,
	outC => outC,
	Suma => Suma
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS 
                                             
variable vC : std_logic := '0';

                                
BEGIN      
	
	inC <= vC;
	
	A <= std_logic_vector(to_unsigned(120 + 2**8 ,8));
	B <= std_logic_vector(to_unsigned(100 + 2**8 ,8));
			
	wait for 10ns;
	
	A <= std_logic_vector(to_unsigned(-120 + 2**8 ,8));
	B <= std_logic_vector(to_unsigned(-90 + 2**8 ,8));
         
	wait for 10ns;
                                          
  	for i in 3 downto 0 loop
		for j in 0 to 3 loop
			A <= std_logic_vector(to_unsigned(i + 2**8 -1 ,8));
			B <= std_logic_vector(to_unsigned(j + 2**8 -1 ,8));
			
			if vC = '0' then vC :=  '1'; else vC :=  '0'; end if;
			
			inC <= vC;
			
			wait for 10ns;
			
		end loop;
	
	end loop;
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_13_arch;
