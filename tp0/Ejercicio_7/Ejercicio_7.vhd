library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_7 is
port (A : in std_logic ;
	  B : in std_logic ;
	  C : in std_logic ;
	  Y : out std_logic ;
	  V : out std_logic );
end Ejercicio_7;

architecture Arch_Ejercicio_7 of Ejercicio_7 is 

begin 
	-- Y = (c . B . A ) + (C . /B . A ) + ( C . B . /A )
	-- Utilizando el resultado obtenido en el problema 1)a del tp2
	-- la funcion simplificada es Y = C . ( A + B )
	
Y <= C and ( A or B );
V <= C or ( A and B);
	
end Arch_Ejercicio_7;
			