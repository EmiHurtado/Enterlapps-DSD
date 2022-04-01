library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopT is
	port(
		T, CLK : in std_logic;
		Q, QN : inout std_logic);
end FlipFlopT; 

architecture FFT of FlipFlopT is
begin
	process(CLK, T)
	begin
		if (CLK'EVENT and CLK = '1' and T = '1')
		then
			Q <= not Q;
		end if;
	end process;
	QN <= not Q;
end FFT;