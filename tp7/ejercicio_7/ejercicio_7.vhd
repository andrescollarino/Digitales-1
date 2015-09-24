library ieee;
use ieee.std_logic_1164.all;


entity ejercicio_7 is
	port(	DA : in std_logic_vector(3 downto 0);
			QA : out std_logic_vector(3 downto 0);
			W1 : in std_logic;
			R1 : in std_logic;
			W2 : in std_logic;
			R2 : in std_logic;
			DB : in std_logic_vector(3 downto 0);
			QB : out std_logic_vector(3 downto 0);
			LA : in std_logic;
			LB : in std_logic);
end ejercicio_7;

architecture Arhc_Ejercicio_7 of ejercicio_7 is

signal A : std_logic_vector(3 downto 0);
signal B : std_logic_vector(3 downto 0);

begin

	A <= DA when W1 = '1' and LA = '1' else A;
	B <= DB when W2 = '1' and LB = '1' else B;
	
	QA <= A when R1 = '1' and LA = '1' else "0000";
	QB <= B when R2 = '1' and LB = '1' else "ZZZZ";
	
end Arhc_Ejercicio_7;