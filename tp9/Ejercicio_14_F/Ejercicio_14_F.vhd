library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14_F is
port(
		ck : in std_logic;
		Entrada : in std_logic;
		Salida : out std_logic
);
end Ejercicio_14_F;

architecture Ejercicio_14_F_Arch of Ejercicio_14_F is
constant SECUENCIA : std_logic_vector(9 downto 0) := "0110010100";
signal sBuffer : std_logic_vector(9 downto 0) :=  "0000000000";
begin


	process(ck)
	
	begin
	
		if falling_edge(ck) then
			
			sBuffer <= sBuffer(8 downto 0) & Entrada;
		
		end if;
	
	end process;


	Salida <=  '1' when SECUENCIA = sBuffer else '0';
	
end Ejercicio_14_F_Arch; 