library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RegCorrimiento6 is
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA		: in std_logic_vector(7 downto 0);
		SALIDA		: out std_logic_vector(7 downto 0)
	);
end RegCorrimiento6;  

architecture funcion6 of RegCorrimiento6 is 
	signal REGISTRO 	: std_logic_vector(7 downto 0);
	signal contador	: integer range 0 to 8 := 0;

begin	 
	Multiplexor: process(CLK, RESET, CARGA, ENTRADA)
	begin
		--REGISTRO DE CORRIMIENTO: ENTRADA SERIE/SALIDA SERIE, DESPLAZAMIENTO A LA DERECHA CICLICO
	
							if RESET = '0' then
										REGISTRO <= (others => '0');
			
							elsif(CLK'event and CLK = '1') then
									if(CARGA = '1') then
										REGISTRO <= ENTRADA(7) & REGISTRO(7 downto 1);
									else
										--if contador = 7 then
											--contador <= 0;
										--else
											contador <= contador + 1;
											REGISTRO <= REGISTRO(0) & REGISTRO(7 downto 1);
										--end if;
									end if;
									
							end if;
		
	end process;
	SALIDA(0) <= REGISTRO(0);
end funcion6;