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
-- Generated on "11/15/2014 01:42:25"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_14_vhd_tst IS
END Ejercicio_14_vhd_tst;
ARCHITECTURE Ejercicio_14_arch OF Ejercicio_14_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL VZ : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC;
COMPONENT Ejercicio_14
	PORT (
	clk : IN STD_LOGIC;
	VZ : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	VZ => VZ,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations
variable auxclk : std_logic := '0';                                     
BEGIN                                                        
    
    Y <= '0' , '1' after 23ns , '0' after 75ns , '1' after 100ns , '0' after 155ns , '1' after 255ns ;
    
    for i in 0 to 50 loop
			clk <= auxclk;
			auxclk := not auxclk;
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
END Ejercicio_14_arch;
