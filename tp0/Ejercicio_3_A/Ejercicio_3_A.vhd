library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_3_A is 
	port(A : in std_logic_vector( 3 downto 0);
		 B : in std_logic_vector( 3 downto 0);
		 Y : out std_logic_vector(2 downto 0));
end Ejercicio_3_A;

architecture Ejercicio_3_A_Arch of Ejercicio_3_A is
begin 
	Y <= o"1" when to_integer(unsigned(A)) > to_integer(unsigned(B)) else
		 o"2" when to_integer(unsigned(A)) < to_integer(unsigned(B)) else
		 o"4" when to_integer(unsigned(A)) = to_integer(unsigned(B)) else
		 o"0";
end Ejercicio_3_A_Arch;