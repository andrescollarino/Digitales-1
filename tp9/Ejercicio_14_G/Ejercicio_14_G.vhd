library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14_G is
port(
		ck : in std_logic;
		
);
end Ejercicio_14_G;

architecture Ejercicio_14_G_Arch of Ejercicio_14_G is

begin

	process (ck)
	begin
	
		if falling_edge(ck) then
		
		end if;
	
	end process;


end Ejercicio_14_G_Arch;