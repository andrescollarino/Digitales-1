library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_13_B is 
	Port( A : in std_logic_vector(1 downto 0);
		  B : in std_logic_vector(1 downto 0);
		  Result : out std_logic_vector(4 downto 0));
end Ejercicio_13_B;

architecture Arch_Ejercicio_13_B of Ejercicio_13_B is

begin

	Result <= "00001" when B = "00" else
			  "000" & A when B = "01" or A = "00" or A = "01" else
			  "00100" when B = "10" and A = "10" else
			  "01001" when B = "10" and A = "11" else
			  "01000" when B = "11" and A = "10" else
			  "11011" when B = "11" and A = "11" else
			  "ZZZZZ"; 
			  

end Arch_Ejercicio_13_B;