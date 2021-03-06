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
-- Generated on "08/26/2015 23:30:05"
                                                            
-- Vhdl Test Bench template for design  :  Ejercicio_14
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;                               

ENTITY Ejercicio_14_vhd_tst IS
END Ejercicio_14_vhd_tst;
ARCHITECTURE Ejercicio_14_arch OF Ejercicio_14_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Ejercicio_14
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	M : IN STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Ejercicio_14
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	M => M,
	S => S,
	Y => Y
	);
init : PROCESS                                               
variable flag: integer; -- variable declarations                                     
BEGIN                                                        

A<="0010";
B<="0110";
Cin<='0';
M<='0';
S<="00";
flag:=0;

while flag=0 loop
wait for 10ns;

case S is

when "00" => if M='0' then 
				if Cin='0' then Cin<='1';
				else Cin <='0';M<='1';end if;
	         else 
				if Cin='0' then Cin<='1';
				else Cin<='0';M<='0';S<="01"; end if;
			 end if;   

when "01" => if M='0' then 
				if Cin='0' then Cin<='1';
				else Cin <='0';M<='1';end if;
	         else 
				if Cin='0' then Cin<='1';
				else Cin<='0';M<='0';S<="10";end if;
			 end if;

when "10" => if M='0' then 
				if Cin='0' then Cin<='1';
				else Cin <='0';M<='1';end if;
	         else 
				if Cin='0' then Cin<='1';
				else Cin<='0';M<='0';S<="11";end if;
			 end if;

when "11" => if M='0' then 
				if Cin='0' then Cin<='1';
				else Cin <='0';M<='1';end if;
	         else 
				if Cin='0' then Cin<='1';
				else wait for 10ns;flag:=1;end if;
			 end if;
when others => flag:=1;
end case;
end loop;        
        
        -- code that executes only once                      
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
