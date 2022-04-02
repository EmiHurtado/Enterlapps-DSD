library ieee;
use ieee.std_logic_1164.all;

entity DecodifiadorBinario is
	port(
		value : in std_logic;
		a, b, c, d, e, f, g : out std_logic;
		salidaVector : inout std_logic_vector(6 downto 0)
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
end DecoBin;