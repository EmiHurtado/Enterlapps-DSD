library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port(
		D, CLK : in std_logic;
		Q, QN : inout std_logic);
end FlipFlopD; 

architecture FFD of FlipFlopD is
begin
	process(CLK)
	begin
		if (CLK'EVENT and CLK = '1')
		then
			Q <= D;
		end if;
	end process;
	QN <= not Q;
end FFD;