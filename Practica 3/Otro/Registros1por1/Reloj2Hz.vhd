LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.MATH_REAL.ALL;


ENTITY DivisorDeFrecuencia IS
	PORT (
		CLK, RESET : IN STD_LOGIC;
		salida : OUT STD_LOGIC
	);
END DivisorDeFrecuencia;


ARCHITECTURE DivFrec OF DivisorDeFrecuencia IS
	SIGNAL contador : INTEGER RANGE 0 TO 49999999 := 0; 	-- En este caso queremos 25,000,000 estados, para aumentar +1 en el contador
																			-- y tener una frecuencia de 50MHz/25MHz = 2 Hz
	SIGNAL salida_media : STD_LOGIC;
	
	BEGIN
		PROCESS (CLK, RESET)
		BEGIN
			IF RESET = '0' THEN
				salida_media <= '0';	--reiniciamos la salida_media y el contador
				contador <= 0;
			ELSIF rising_edge(CLK) THEN 		--si hay flanco de subida
				IF contador = 49999999 THEN		--si llegamos al limite, reiniciamos contador
					contador <= 0;
					salida_media <= NOT salida_media; --con el reinicio negamos la señal (edo bajo)
				ELSE
					contador <= contador + 1;	--si aun no llega al limite, vamos incrementando en 1
				END IF;
			END IF;
		END PROCESS;
	salida <= salida_media;		--la salida_media determina la salida final
END DivFrec;

