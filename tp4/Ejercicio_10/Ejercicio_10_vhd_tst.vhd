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
-- Generated on "09/18/2015 10:31:31"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_10
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY Ejercicio_10_vhd_tst IS
END Ejercicio_10_vhd_tst;
ARCHITECTURE Ejercicio_10_arch OF Ejercicio_10_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL EI : STD_LOGIC;
SIGNAL EO : STD_LOGIC;
SIGNAL GS : STD_LOGIC;
SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ejercicio_10
	PORT (
	BA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	EI : IN STD_LOGIC;
	EO : OUT STD_LOGIC;
	GS : OUT STD_LOGIC;
	I : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_10
	PORT MAP (
-- list connections between master ports and signals
	BA => BA,
	EI => EI,
	EO => EO,
	GS => GS,
	I => I
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
                                   
BEGIN                                                         
 
 for t in 0 to 16 loop
 
 if t < 3 then EI <= '1'; else EI <= '0'; end if;
 
 I <= std_logic_vector(to_unsigned(t , 4));
 
 wait for 10ns;
 end loop;
 
 
WAIT;                                                        
END PROCESS always;                                          
END Ejercicio_10_arch;
