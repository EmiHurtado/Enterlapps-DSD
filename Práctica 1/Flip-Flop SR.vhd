library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopSR is
	port(
		S, R, CLK : in std_logic;
		Q, QN : inout std_logic);
end FlipFlopSR; 

architecture FFSR of FlipFlopSR is
begin
	process(CLK, S)
	begin
		if (CLK'EVENT and CLK = '1')
		then
			if (S = '0' and R = '1')
			then
				Q <= '0';
				QN <= '1';
			elsif (S = '1' and R = '0')
			then
				Q <= '1';
				QN <= '0';
			elsif (S = '0' and R = '0')
			then
				Q <= Q;
				QN <= QN;
			else
				Q <= '-';
				QN <= '-';
			end if;
		end if;
	end process;
end FFSR;