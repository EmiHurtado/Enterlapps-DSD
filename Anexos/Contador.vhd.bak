LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use IEEE.numeric_std.all;

ENTITY Contador IS
	PORT (
		CLK, RST : IN STD_LOGIC;
		salida : INOUT STD_LOGIC_VECTOR(0 TO 7)
	);

END Contador;
ARCHITECTURE ContadorArch OF Contador IS
	SIGNAL count : INTEGER RANGE 0 TO 255 := 0;
BEGIN
	PROCESS (CLK, RST)
	BEGIN
		IF rising_edge(CLK) THEN
			count <= count + 1;
		ELSIF RST = '1' THEN
			count <= 0;
		END IF;
		salida <= STD_LOGIC_VECTOR(to_unsigned(count, salida'length));
	END PROCESS;
END ContadorArch;