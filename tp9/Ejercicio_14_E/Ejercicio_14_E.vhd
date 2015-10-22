library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_14_E is
	port(ck : in std_logic;
		  salida : out std_logic);
end Ejercicio_14_E;

architecture Ejercicio_14_E_Arch of Ejercicio_14_E is
signal sSalida : unsigned(9 downto 0) := "0110010100";
begin

	process(ck)
	begin
	if falling_edge(ck) then
		sSalida <= sSalida rol 1 ;
	end if;
	end process;

	salida <= sSalida(9);


end Ejercicio_14_E_Arch;