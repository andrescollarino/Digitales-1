library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_4 is
port(bcd : in std_logic_vector(3 downto 0);
	 Biquinario : out std_logic_vector(6 downto 0));
end Ejercicio_4;

architecture Arch_Ejercicio_4 of Ejercicio_4 is
signal sTmp : std_logic_vector(15 downto 0);
begin
-- Uso process para poder asignar una señal multiples veces
process(bcd)
begin
		sTmp <= x"0000";
		sTmp(to_integer(unsigned(bcd))) <= '1';
end process;
	
Biquinario <= "01" & sTmp(4 downto 0) when to_integer(unsigned(bcd)) < 5 else
			  "10" & sTmp(9 downto 5) when to_integer(unsigned(bcd)) < 10 else
			  "XXXXXXX";
end Arch_Ejercicio_4;
