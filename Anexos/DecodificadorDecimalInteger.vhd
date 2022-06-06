library ieee;
use ieee.std_logic_1164.all;

-- i Este código recibe un entero como entrada
-- i y lo transforma a la salida específica y
-- i funcional para un display de 7 segmentos
entity DecodifiadorDecimalInteger is
	port(
		value : in integer range 0 to 9;
		dot : in std_logic;
		a, b, c, d, e, f, g, h : out std_logic;
		salidaVector : inout std_logic_vector(0 to 6)
	);
end DecodifiadorDecimalInteger; 

architecture DecoDecInt of DecodifiadorDecimalInteger is
begin
	salidaVector <=
		"1111110" when value = 0 else
		"0110000" when value = 1 else
		"1101101" when value = 2 else
		"1111001" when value = 3 else
		"0110011" when value = 4 else
		"1011011" when value = 5 else
		"1011111" when value = 6 else
		"1110000" when value = 7 else
		"1111111" when value = 8 else
		"1111011" when value = 9 else
        "0000001";
	a <= salidaVector(0);
	b <= salidaVector(1);
	c <= salidaVector(2);
	d <= salidaVector(3);
	e <= salidaVector(4);
	f <= salidaVector(5);
	g <= salidaVector(6);
	h <= dot;
end DecoDecInt;