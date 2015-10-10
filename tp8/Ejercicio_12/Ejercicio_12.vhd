library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_12 is 
	port( Reset : in std_logic;
			Salida : out std_logic_vector(7 downto 0);
			ck : in std_logic);
end Ejercicio_12;

architecture Arch_Ejercicio_12 of Ejercicio_12 is 
type stados is (A,B,C,D,E,F,G);
signal sStado : stados := A;
signal sFutureStado : stados := A;
begin

	process(Reset , ck)
	begin
	
			
		if( rising_edge(ck)) then
			
			if( Reset = '1' ) then 
				sFutureStado <= A;
			end if;
			
			sStado <= sFutureStado;
		end if;
	
		-- Salida 
		-- Rst R1 W R Wa R2 Ra W1 
	
		case sStado is
			when A =>
				Salida <= x"00";
				sFutureStado <= B;
			when B => 
				Salida <= x"80";
				sFutureStado <= C;
			when C =>
				Salida <= x"60";
				sFutureStado <= D;
			when D =>
				Salida <= x"18";
				sFutureStado <= E;
			when E => 
				Salida <= x"24";
				sFutureStado <= F;
			when F =>
				Salida <= x"18";
				sFutureStado <= G;
			when G => 
				Salida <= x"03";
				sFutureStado <= A;
		end case;
	end process;
end Arch_Ejercicio_12;
			