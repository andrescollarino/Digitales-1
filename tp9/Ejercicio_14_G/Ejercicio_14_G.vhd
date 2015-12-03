library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14_G is
port(
		ck : in std_logic;
		-- W1 R1 W2 R2 W3 R3
		Salida : out std_logic_vector(5 downto 0)
);
end Ejercicio_14_G;

architecture Ejercicio_14_G_Arch of Ejercicio_14_G is
type secuencia is array (8 downto 0) of std_logic_vector(5 downto 0);

signal sSecuencia : secuencia := ( o"45",o"31" ,o"26" ,o"44" ,o"41" ,o"11",o"30",o"22", o"06");
signal sIndex : integer range 0 to 8 := 0;

begin

	process (ck)
	begin
	
		if falling_edge(ck) then
			
			if sIndex = 8 then
				sIndex <= 0;
			else 
				sIndex <= sIndex + 1;
			end if;
			
		end if;
	
	end process;

	Salida <= sSecuencia(sIndex);
	
end Ejercicio_14_G_Arch;