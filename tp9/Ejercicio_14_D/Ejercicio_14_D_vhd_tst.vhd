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
-- Generated on "12/02/2015 21:30:26"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14_D
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Ejercicio_14_D_vhd_tst IS
END Ejercicio_14_D_vhd_tst;
ARCHITECTURE Ejercicio_14_D_arch OF Ejercicio_14_D_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ck : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL M : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MR : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SLI : STD_LOGIC;
SIGNAL SLO : STD_LOGIC;
SIGNAL SRI : STD_LOGIC;
SIGNAL SRO : STD_LOGIC;
COMPONENT Ejercicio_14_D
	PORT (
	ck : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	M : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	MR : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SLI : IN STD_LOGIC;
	SLO : OUT STD_LOGIC;
	SRI : IN STD_LOGIC;
	SRO : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14_D
	PORT MAP (
-- list connections between master ports and signals
	ck => ck,
	D => D,
	M => M,
	MR => MR,
	Q => Q,
	SLI => SLI,
	SLO => SLO,
	SRI => SRI,
	SRO => SRO
	);
init : PROCESS                                               
variable vck : std_logic := '0';    
variable vt : std_logic   := '0';             
BEGIN                       

		D <= x"F" , x"0" after 30 ns , x"A" after 70ns; 
		MR <= '1' , '0' after 10 ns , '1' after 50ns , 
				'0' after 60ns , '1' after 120 ns , '0' after 130ns;
		
		M <= "11" , "01" after 20ns , "10" after 70ns , "00" after 100ns,
				"11" after 110ns , "01" after 120ns , "00" after 170ns;
		
                                 
		for i in 0 to 34 loop
		
			if vck = '0' then
				SRI <= vt;
				SLI <= not vt;
				vt := not vt;
			end if;
			
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
END Ejercicio_14_D_arch;
