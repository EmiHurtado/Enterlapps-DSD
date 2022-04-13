
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Contador IS
	PORT (
		CLK, RST : IN STD_LOGIC;
		salida : INOUT INTEGER RANGE 0 TO 999 := 0
	);

END Contador;
ARCHITECTURE ContArch OF Contador IS
BEGIN
	PROCESS (CLK)
	BEGIN
		IF rising_edge(CLK)
			THEN
			IF (RST = '1') THEN
				salida <= 0;
			ELSE
				salida <= salida + 1;
			END IF;
		END IF;
	END PROCESS;
END ContArch;