---------------------------------- LIBRERÍAS ----------------------------------------
Library ieee;

use ieee.std_logic_1164.all; -- Librería de funciones lógicas
use work.std_arith.all; -- Biblioteca de aritmética

---------------------------------- ENTIDAD ----------------------------------------
-- Se definen las salidas y entradas del circuito.
entity  DivisorDeFrecuencia  is
	port(
		newFreq : in integer range 0 to 50000000;
		clk, reset : in std_logic;
		salida : out std_logic
	);
end DivisorDeFrecuencia;

-------------------------------- ARQUITECTURA ----------------------------------------
-- Se define las instrucciones a ejecutar por el FPGA.
-- Se diseña un divisor de frecuencia a 1Hz.
architecture DivFrec of DivisorDeFrecuencia is

signal limite : integer range 0 to 49999999 := (50000000 / newFrec) - 1
signal contador: integer range 0 to limite := 0;    -- Declaración del wire
signal salida_media: std_logic;  -- Declaración del wire

begin
	process(clk,reset) 		  
	begin
		if reset = '0' then
			salida_media <= '0';
			contador <= 0;  -- Reseteo del contador
		elsif rising_edge(clk) then -- Al detectar una subida en el reloj, ejecuta el siguiente código
			if contador = limite then
				contador <= 0;
				salida_media <= not salida_media;
			else
				contador <= contador+1;
			end if;
		end if;
	end process;
	salida <= salida_media;
end DivFrec;