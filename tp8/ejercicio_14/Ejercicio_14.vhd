library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14 is

	port( clk : in std_logic;
			Y : in std_logic;
			VZ : out std_logic_Vector(1 downto 0 )
		);
	
end Ejercicio_14;

architecture Ejercicio_14_Arch of Ejercicio_14 is
type Estados is (A,B,C,D,E,F,G);
signal sEstadoActual : Estados := A;
signal sEstadoFuturo : Estados := A;
begin 

	process( clk , Y)
	begin
	
	if( rising_edge(clk) ) then
		sEstadoActual <= sEstadoFuturo;
	end if;
	
	case sEstadoActual is
			when A =>
				if Y = '1'  then  sEstadoFuturo <= B;else sEstadoFuturo <= E;end if;
				VZ <= "00";
			When B =>
				if Y = '1' then sEstadoFuturo <= C; else sEstadoFuturo <= E;end if;
				VZ <= "00";
			when C => 
				if Y = '1'  then sEstadoFuturo <= D;else sEstadoFuturo <= E; end if;
				VZ <= "00";
			when D =>
				if Y = '1' then sEstadoFuturo <= D;else sEstadoFuturo <= E;	end if;
				VZ <= "10";
			when E =>
				if Y = '1'  then sEstadoFuturo <= B; else sEstadoFuturo <= F; end if;
				VZ <= "00";
			when F => 
				if Y = '1' then sEstadoFuturo <= B;else sEstadoFuturo <= G;	end if;
				VZ <= "00";
			when G =>
				if Y = '1' then sEstadoFuturo <= B; else 	sEstadoFuturo <= G; end if;
				VZ <= "01";	
	end case;
	
	end process;
end Ejercicio_14_Arch ;