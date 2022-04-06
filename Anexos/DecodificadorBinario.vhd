library ieee;
use ieee.std_logic_1164.all;

entity DecodifiadorBinario is
	port(
		value, dot : in std_logic;
		a, b, c, d, e, f, g, h : out std_logic;
		salidaVector : inout std_logic_vector(0 to 6)
	);
end DecodifiadorBinario; 

architecture DecoBin of DecodifiadorBinario is
begin
	salidaVector <=
		"0110000" when value = '1' else
        "1111110" when value = '0';
	a <= salidaVector(0);
	b <= salidaVector(1);
	c <= salidaVector(2);
	d <= salidaVector(3);
	e <= salidaVector(4);
	f <= salidaVector(5);
	g <= salidaVector(6);
	h <= dot;
end DecoBin;