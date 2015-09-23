library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_5 is
port(I: in std_logic_vector(3 downto 0);
	 T: out std_logic;
	 Q : out std_logic_vector(1 downto 0));
end Ejercicio_5;

architecture Arch_Ejercicio_5 of Ejercicio_5 is 
begin
		
		Q <= "11" when I(3) = '1' else
			 "10" when I(2) = '1' else
			 "01" when I(1) = '1' else
			 "00" when I(0) = '1' else
			 "ZZ";
			 
		T <= '1' when I = x"0" else '0';
end arch_Ejercicio_5;