library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14_A is
port(
		ck : in std_logic;
		sal : out std_logic_vector(2 downto 0)
);
end Ejercicio_14_A;

architecture Ejercicio_14_A_Arch of Ejercicio_14_A is
type secuencia is array(6 downto 0) of std_logic_vector(2 downto 0);
signal sSalida : secuencia := (o"1",o"0",o"2",o"3",o"4",o"7",o"5");
signal sIndex : integer range 0 to 7 := 0;
begin

	process(ck)
	begin
	
		if falling_edge(ck) then
			sIndex <= sIndex + 1;
		end if;
	
	end process;
	
	sal <= sSalida(sIndex);
	
end Ejercicio_14_A_Arch;