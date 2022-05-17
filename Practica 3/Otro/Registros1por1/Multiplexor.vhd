library ieee;
use ieee.std_logic_1164.all;

entity Multiplexor is
	port (
		MUX			: in std_logic_vector(2 downto 0);
		Salida		: out std_logic_vector(7 downto 0);	
		Entrada1,Entrada2,Entrada3		: in std_logic_vector(7 downto 0);
		Entrada4,Entrada5,Entrada6		: in std_logic_vector(7 downto 0);
		Entrada7								: in std_logic_vector(7 downto 0)
	);
end Multiplexor;  

architecture funcion of Multiplexor is 

begin	 
	Multiplexor: process(MUX,Entrada1,Entrada2,Entrada3,Entrada4,Entrada5,Entrada6,Entrada7)
	begin
		case(MUX) is
			when "000" =>
				Salida	<=	Entrada1;
			when "001" =>
				Salida	<=	Entrada2;
			when "010" =>
				Salida	<=	Entrada3;
			when "011" => 
				Salida	<=	Entrada4;
			when "100" =>
				Salida	<=	Entrada5;
			when "101" =>
				Salida	<=	Entrada6;
			when others =>
				Salida	<=	Entrada7;
		end case;
	end process;
end funcion;