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
signal sSalida : std_logic_vector(7 downto 0) := x"00";
begin

	process(Reset , ck)
	begin
		
		-- Salida 
		-- Rst R1 W R Wa R2 Ra W1 
		
		if( rising_edge(ck)) then
			if( Reset = '1' ) then 
				sStado <= A;
				sSalida <= x"00";
			else 
				case sStado is
					when A =>
						sSalida<= x"00";
						sStado<= B;
					when B => 
						sSalida<= x"80";
						sStado<= C;
					when C =>
						sSalida<= x"60";
						sStado<= D;
					when D =>
						sSalida<= x"18";
						sStado<= E;
					when E => 
						sSalida<= x"24";
						sStado<= F;
					when F =>
						sSalida<= x"18";
						sStado<= G;
					when G => 
						sSalida<= x"03";
						sStado<= A;
				end case;		 
			end if;
		end if;
		
		Salida <= sSalida;
		
		
	end process;
end Arch_Ejercicio_12;
			