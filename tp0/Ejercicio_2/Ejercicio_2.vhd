library ieee;
use ieee.std_logic_1164.all;

-- Detector palabra aiken
entity Ejercicio_2 is 
	port(	aiken : in std_logic_vector(3 downto 0);
				Y : out std_logic
				);
end Ejercicio_2;

architecture Ejercicio_2_arch of Ejercicio_2 is

begin 

	Y <= '1' when aiken(3 downto 2) = "00" else
			 '1' when aiken(3 downto 2) = "11" else
			 not aiken(1) and not aiken(0)  when aiken(3 downto 2) = "01"  else
			 aiken(1) and aiken(0) when aiken(3 downto 2) = "10" else
			 '0';
			 
end architecture;