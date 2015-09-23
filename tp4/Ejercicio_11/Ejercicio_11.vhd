library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Ejercicio_11 is
	port(  A : in std_logic_vector(15 downto 0);
			 F : out std_logic_vector(3 downto 0)
		);
end Ejercicio_11;

architecture Arch_Ejercicio_11 of Ejercicio_11 is 

signal sF : std_logic_vector(3 downto 0);

begin
		
		sF(0) <= A(0) or A(1) or A(2) or A(3);
		sF(1) <= A(4) or A(5) or A(6) or A(7) or A(8) or A(9) or A(10);
		sF(2) <= A(11) or A(12) or A(13) or A(14) ;
		sF(3) <= A(15);
		
		F <=  "000" & sF(0) 				when sF(0) = '1' else
				"00" & sF(1 downto 0) 	when sF(1) = '1' else
				"0" & sF(2 downto 0)  	when sF(2) = '1' else
				sF;

end Arch_Ejercicio_11;