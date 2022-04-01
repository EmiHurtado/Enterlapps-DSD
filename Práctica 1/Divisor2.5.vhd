Library ieee;

use ieee.std_logic_1164.all;
entity Reloj is
	port(
		clk, reset: in std_logic;
		salida: out std_logic
	);
end Reloj;

architecture divisor of Reloj is

signal  contador: integer range 0 to 19999999 := 0; 
signal  salida_media: std_logic;

begin
	process(clk, reset) 
	begin
		if (reset = '0')
		then
			salida_media <= '0';
			contador <= 0;  -- se resetea el contador
		elsif rising_edge(clk) then -- puede ser clk'event 
			if (contador = 24999999)
			then
				contador <= 0;
				salida_media <= not salida_media;
			else
				contador <= contador+1;
			end if;
		end if;
	end process;
	salida<=salida_media;
end divisor;