library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Memoria RAM 256
entity Ejercicio_15 is
	port( CS : in std_logic; -- Havilitacion
		  M : in std_logic ; -- Modo R = 0 , W = 1
		  Posicion : in std_logic_vector(7 downto 0);
		  Dato : inout std_logic_vector(15 downto 0));
end Ejercicio_15;

architecture Arch_Ejercicio_15 of Ejercicio_15 is
type memoria is array ( 255 downto 0 ) of std_logic_vector(15 downto 0);

signal ram : memoria;
--signal sDato : std_logic_vector(15 downto 0);

begin
	
	ram(to_integer(unsigned(Posicion))) <= Dato when (M = '1' and CS = '1') else ram(to_integer(unsigned(Posicion)));
	Dato <= ram(to_integer(unsigned(Posicion))) when  (M = '0' and CS = '1') else (others => 'Z');
	

end Arch_Ejercicio_15;