library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_13 is
	port( A: in std_logic_vector(7 downto 0);
			B: in std_logic_vector(7 downto 0);
			inC : in std_logic;
			Suma : out std_logic_vector(7 downto 0);
			outC : out std_logic;
			D : out std_logic );
end Ejercicio_13;

architecture Arch_Ejercicio_13 of Ejercicio_13 is

signal sA : unsigned(8 downto 0);
signal sB : unsigned(8 downto 0);
signal sS : unsigned(8 downto 0);
signal sinC : integer range 0 to 1;
signal sSal : unsigned(7 downto 0);

begin
	
	sinC <= 1 when inC = '1' else 0;
	sA <= unsigned( '0' & A);
	sB <= unsigned( '0' & B);
	
	sS <= sA + sB + sinC;
	
	sSal <= not sS(7) & sS(6 downto 0);
	
	Suma <= std_logic_vector(sSal);
	outC <= sS(8);
	
	D <= 	'1' when (A(7) xor B(7)) = '1' and sS(8) = '1' else
			sS(7) when (A(7) xor B(7)) = '1' and sS(8) = '0' else
			'0';
 
end Arch_Ejercicio_13;