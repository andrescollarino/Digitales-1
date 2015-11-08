library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_14_C is
	generic
	(
		n : integer := 8
	);
	port
	(
		ck : in std_logic;
		fo : out std_logic;
		Division : in std_logic_vector(n - 1 downto 0)
	);
	
end Ejercicio_14_C;

architecture Ejercicio_14_C_Arch of Ejercicio_14_C is 
signal sFo : std_logic := '0';
begin


	process(ck , Division)
	variable vContador : integer range 0 to 2**n := 0;
	begin
		
		if falling_edge(ck) then
			vContador := vContador + 1;
			
			-- Reset de la variable contador
			if vContador > to_integer(unsigned(Division)) then
				vContador := 0;
			elsif vContador = to_integer(unsigned(Division)) then
				sFo <= not sFo;
			else 
				vContador := vContador;
			end if;
					
		end if;
	
	end process;

	fo <= sFo;
	
end Ejercicio_14_C_Arch;