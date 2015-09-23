library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Conversor BCD a EXCESO 3
entity Ejercicio_6 is
port(BCD : in std_logic_vector(3 downto 0);
	 EXCESO3 : out std_logic_vector(3 downto 0) );
end Ejercicio_6;

architecture Arch_Ejercicio_6 of Ejercicio_6 is

signal sConvert : std_logic_vector(4 downto 0);
signal sBCD : integer range 0 to 15;
signal sGrey : std_logic_vector(3 downto 0);
begin 
		sBCD <= to_integer(unsigned(BCD));
		sConvert <= '0' & std_logic_vector(to_unsigned( sBCD + 3 , 4 ));
		sGrey <= sConvert(4 downto 1 ) xor sConvert( 3 downto 0);
		EXCESO3 <= sGrey when sBCD < 9 else "XXXX" ;
end arch_Ejercicio_6;
