library ieee;
use ieee.std_logic_1164.all;

entity convertidordisplay is
	port(
		a, b, c, d, e, f, g : out std_logic;
		entradaVector : in std_logic_vector(0 to 6)
	);
end convertidordisplay; 

architecture convdis of convertidordisplay is

begin
	a <= entradaVector(0);
	b <= entradaVector(1);
	c <= entradaVector(2);
	d <= entradaVector(3);
	e <= entradaVector(4);
	f <= entradaVector(5);
	g <= entradaVector(6);
	
end convdis;