library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_10 is
	port( EI : in std_logic;
			I : in std_logic_vector(3 downto 0);
			BA : out std_logic_vector(1 downto 0);
			GS : out std_logic;
			EO : out std_logic
		);
end Ejercicio_10;

architecture Arhc_Ejercicio_10 of Ejercicio_10 is

signal sBA : std_logic_vector(1 downto 0);
begin

	sBA <= "11" when I(3) = '0' else
			 "10" when I(2) = '0' else
			 "01" when I(1) = '0' else
			 "00" ;
			 
	BA <= sBA when EI = '0' else "00";
	GS <= '1' when EI = '0' or I = "1111" else '0';
	EO <= '1' when EI = '0' or I /= "1111" else '0';

end Arhc_Ejercicio_10;