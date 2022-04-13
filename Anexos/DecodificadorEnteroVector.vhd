LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DecodifiadorEnteroVector IS
GENERIC (
		bits : INTEGER RANGE 0 to 16 := 1;
	);
	PORT (
		value : IN INTEGER RANGE 0 TO 2 ** bits;
		vectorOut : out std_logic_vector(0 to bits)
	);
END DecodifiadorEnteroVector;

ARCHITECTURE DecoEntVect OF DecodifiadorEnteroVector IS
BEGIN
    vectorOut <= std_logic_vector(to_unsigned(value, vectorOut'length));
END DecoEntVect;