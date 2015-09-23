library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ejercicio_14 is
port(A,B: in std_logic_vector (3 downto 0); --Palabras: A3,A2,A1,A0-B3,B2,B1,B0 
	 S: in std_logic_vector (1 downto 0);	--Selecion: S1,S0
	 M: in std_logic;						--Modo '0' logico,'1' matematico
	 Cin: in std_logic;						--Acarreo de entrada
	 Y: out std_logic_vector (3 downto 0);	--Salida: Y3,Y2,Y1,Y0
	 Cout: out std_logic);					--Acarreo de salida
end Ejercicio_14;

architecture Operador of Ejercicio_14 is
begin
process (A,B,S,M,Cin)
variable nA: integer range -16 to 15;
variable nB: integer range -16 to 15;
variable nS: std_logic_vector (4 downto 0);
variable Ca1A,Ca1B,Ca2A,Ca2B: std_logic_vector (3 downto 0);
begin
	case S is
	when "00" => if M='0' then Y<= A or B;
				 else nA:= to_integer(unsigned (A)); nB:= to_integer(unsigned (B));
					  nS:= std_logic_vector(to_unsigned(nA+nB,5));
					  Y(3 downto 0)<= nS(3 downto 0); Cout<= nS(4);
					  Cout<='0'; end if;	  
					  
	when "01" => if M='0' then Y<= A and B;
				 else nA:= to_integer(unsigned (A)); nB:= to_integer(unsigned (B));
					  nS:= std_logic_vector(to_signed(nA-nB,5));
					  Y(3 downto 0)<= nS(3 downto 0);Cout<= nS(4); end if;
	
	when "10" => if M='0' then Y<= A xor B;
				 else Y<= not A;
					  Cout<='0'; end if;
	 
	when "11" => if M='0' then Y<= not B;
				 else nB:= to_integer(unsigned (not B))+1;
				 Y<= std_logic_vector(to_signed(nB,4));
				 Cout<='0'; end if;
	
	when others => Y<="ZZZZ";Cout<='0';end case;
end process;
end Operador;