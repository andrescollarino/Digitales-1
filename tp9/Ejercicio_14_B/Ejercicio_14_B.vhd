library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14_B is
port(
		ck : in std_logic;
		Reset : in std_logic;
		TC : out std_logic
);
end Ejercicio_14_B;

architecture Ejercicio_14_B_Arch of Ejercicio_14_B is
signal sC : integer range 0 to 68 := 0;
begin
	
	process(ck , Reset)
	begin
		
		if falling_edge(ck) then
			if Reset = '1' then
				sC <= 0;
			else
				sC <= sC + 1;
			end if;
		end if;
		
	end process;
	
	TC <= '1' when sC = 68 else '0';
	
end Ejercicio_14_B_Arch;