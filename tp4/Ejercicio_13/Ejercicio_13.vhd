library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_13 is 
	Port( A : in std_logic_vector(1 downto 0);
		  B : in std_logic_vector(1 downto 0);
		  Result : out std_logic_vector(4 downto 0));
end Ejercicio_13;


architecture Arch_Ejercicio_13 of Ejercicio_13 is
signal sResult : integer range 0 to 27;
begin 

	sResult <= 1 when to_integer(unsigned(B)) = 0 else 
			   to_integer(unsigned(A)) when to_integer(unsigned(B)) = 1 else
			   to_integer(unsigned(A))**2 when to_integer(unsigned(B)) = 2 else
			   to_integer(unsigned(A))**3;
			   
	Result <= std_logic_vector(to_unsigned(sResult , 5 ));

end Arch_Ejercicio_13;