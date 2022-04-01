---------------------------------- LIBRERÍAS ----------------------------------------
Library ieee;

use ieee.std_logic_1164.all; -- Librería de funciones lógicas

---------------------------------- ENTIDAD ----------------------------------------
-- Se definen las salidas y entradas del circuito.
entity  Divisor1Hz  is
	port(
		salida: out std_logic;
		clk:    in std_logic;
		reset:  in std_logic
	);
end Divisor1Hz;

-------------------------------- ARQUITECTURA ----------------------------------------
-- Se define las instrucciones a ejecutar por el FPGA.
-- Se diseña un divisor de frecuencia a 1Hz.
architecture D1Hz of Divisor1Hz is

signal  contador: integer range 0 to 49999999 :=0;    -- Declaración del wire
signal  salida_media: std_logic;  -- Declaración del wire

begin
	process(clk,reset) 		  
	begin
		if reset = '0' then
			salida_media <= '0';
			contador <= 0;  -- Reseteo del contador
		elsif rising_edge(clk) then -- Al detectar una subida en el reloj, ejecuta el siguiente código
			if contador = 49999999 then
				contador <= 0;
				salida_media <= not salida_media;
			else
				contador <= contador+1;
			end if;
		end if;
	end process;
	salida <= salida_media;
end D1Hz;