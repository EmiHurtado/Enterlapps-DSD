LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.MATH_REAL.ALL;

ENTITY DivisorDeFrecuencia IS
	GENERIC (
		frequency : real RANGE 0.1 TO 50000000.0 := 5.0
	);
	PORT (
		CLK, RESET : IN STD_LOGIC;
		salida : OUT STD_LOGIC
	);
END DivisorDeFrecuencia;

ARCHITECTURE DivFrec OF DivisorDeFrecuencia IS
	SIGNAL limite : INTEGER RANGE 0 TO 49999999 := INTEGER((50000000.0 / frequency) - 1.0);
	SIGNAL contador : INTEGER RANGE 0 TO limite := 0;
	SIGNAL salida_media : STD_LOGIC;
BEGIN
	PROCESS (CLK, RESET)
	BEGIN
		IF RESET = '1' THEN
			salida_media <= '0';
			contador <= 0;
		ELSIF rising_edge(CLK) THEN
			IF contador = limite THEN
				contador <= 0;
				salida_media <= NOT salida_media;
			ELSE
				contador <= contador + 1;
			END IF;
		END IF;
	END PROCESS;
	salida <= salida_media;
END DivFrec;