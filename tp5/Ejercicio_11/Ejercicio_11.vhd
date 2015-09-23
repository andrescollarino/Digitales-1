library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_11 is
	generic( n : integer := 5);

	port( A : in std_logic_vector(n downto 0);
			B : in std_logic_vector(n downto 0);
			Exp : in std_logic_vector(2 downto 0);
			Salida : out std_logic_vector(2 downto 0)); --( A < B , A = B , A > B )
end Ejercicio_11;

architecture Arch_Ejercicio_11 of Ejercicio_11 is
signal scomp : std_logic_vector(2 downto 0);
begin

		scomp <= "001" when unsigned(A) > unsigned(B) else -- A > B
					"100" when unsigned(A) < unsigned(B) else -- A < B
					"010" ; -- A = B 
		
		Salida <= scomp when scomp(1) = '0' else --Si no son iguales Reviso el resto
					 "001" when Exp(0) = '1' else
					 "100" when Exp(2) = '1' else
					 "010";

end Arch_Ejercicio_11;