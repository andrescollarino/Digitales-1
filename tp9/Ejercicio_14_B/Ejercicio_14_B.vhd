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
constant CUENTA : integer := 68;
signal sC : integer range 0 to CUENTA := 0;
begin
	
	process(ck , Reset)
	begin
		
		if falling_edge(ck) then
			if Reset = '1' then
				sC <= 0;
			else
			
				if sC = CUENTA then
					sC <= 0;
				else
					sC <= sC + 1; 
				end if;
				
			end if;
		end if;
		
	end process;
	
	TC <= '1' when sC = CUENTA else '0';
	
end Ejercicio_14_B_Arch;