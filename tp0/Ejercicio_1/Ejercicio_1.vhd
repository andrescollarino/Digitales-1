library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Decodificador 
entity Ejercicio_1 is
port( E : in std_logic ;
	  I : in std_logic_vector(1 downto 0);
	  Y : out std_logic_vector(3 downto 0));
end Ejercicio_1;

architecture Ejercicio_1_arch of Ejercicio_1 is
signal ssal : std_logic_vector(3 downto 0);
begin
-- Uso process para poder asignar dos veces la señal
process(E , I)
	begin
		ssal <= x"0" ;
		ssal(to_integer(unsigned(I))) <= '1';
end process;
-- Compruebo la habilitación 
Y <= x"0" when E = '0' else ssal;
end architecture;