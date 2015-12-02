library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio_14_D is
generic(n : integer := 4);
port( 
		ck : in std_logic;
		MR : in std_logic;
		M : in std_logic_vector(1 downto 0);
		D : in std_logic_vector(n - 1 downto 0);
		Q : out std_logic_vector(n - 1 downto 0);
		SRI : in std_logic;
		SLI : in std_logic;
		SRO : out std_logic;
		SLO : out std_logic
);
end Ejercicio_14_D;

architecture Ejercicio_14_D_Arch of Ejercicio_14_D is
signal sQ : std_logic_vector(n - 1  downto 0);
signal sQF: std_logic_vector(n - 1  downto 0);
begin

	process(ck,MR)
	begin
	
	if MR = '1' then 
		sQ <= (others => '0');
	elsif falling_edge(ck) then
		sQ <= sQF;
	end if;
	
	end process;

	process(ck,M,D,SRI,SLI,MR)
	begin
	
	case M is
		when "01" => --Desplasamiento derecha
			sQF <= SRI & sQ(n - 2 downto 0);
		when "10" => -- Desplasamiento isquierda
			sQF <= sQ(n - 1 downto 1) & SLI ;
		when "11" => --Carga paralela
			sQF <= D;
		when others => sQF <= sQ; -- Retiene 
	end case;
	end process;
	
	SRO <= sQ(0);
	SLO <= sQ(n-1);
	Q <= sQ;
	
end Ejercicio_14_D_Arch;