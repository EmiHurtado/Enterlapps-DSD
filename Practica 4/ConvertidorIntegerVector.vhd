LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY ConvertidorIntegerVector IS
	PORT (
		value : IN INTEGER RANGE 0 TO 256;
		a, b, c, d, e, f, g : OUT STD_LOGIC
	);
END ConvertidorIntegerVector;

ARCHITECTURE ConvIntVec OF ConvertidorIntegerVector IS
	SIGNAL salidaVector : STD_LOGIC_VECTOR(0 TO 7);
BEGIN
	salidaVector <= std_logic_vector(to_unsigned(value, salidaVector'length));
    a <= salidaVector(0);
    b <= salidaVector(1);
    c <= salidaVector(2);
    d <= salidaVector(3);
    e <= salidaVector(4);
    f <= salidaVector(5);
    g <= salidaVector(6);
END ConvIntVec;