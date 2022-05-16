library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RegCorrimiento1 is
	port (
	   CLK, RESET, CARGA : in std_logic;
		--MUX			: in std_logic_vector(2 downto 0);
		ENTRADA		: in std_logic_vector(7 downto 0);
		SALIDA		: out std_logic_vector(7 downto 0)
	);
end RegCorrimiento1;  

architecture funcion1 of RegCorrimiento1 is 
	signal REGISTRO : std_logic_vector(7 downto 0);

begin	 
	Multiplexor: process(CLK, RESET, CARGA, ENTRADA)
	begin
		--REGISTRO DE CORRIMIENTO: ENTRADA SERIE/SALIDA SERIE, DESPLAZAMIENTO A LA DERECHA
	
							if RESET = '0' then
										REGISTRO <= (others => '0');
			
							elsif(CLK'event and CLK = '1') then
									if(CARGA = '1') then
										REGISTRO <= ENTRADA(7) & REGISTRO(7 downto 1); --REGISTRO(B7,B6,...,B0)
										-- REGISTRO(E7,B7(n-1),B6,...,B0 )
									end if;
									
							end if;
		
	end process;
	SALIDA(0) <= REGISTRO(0);
end funcion1;