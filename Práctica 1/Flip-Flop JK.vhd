library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
	port(
		J, K, CLK : in std_logic;
		Q, QN : inout std_logic);
end FlipFlopJK; 

architecture FFJK of FlipFlopJK is
begin
	process(CLK, J, K)
	begin
		if (CLK'EVENT and CLK = '1')
		then
			if (J = '0' and K = '0')
			then
				Q <= Q;
			elsif (J = '0' and K = '1')
			then
				Q <= '0';
			elsif (J = '1' and K = '0')
			then
				Q <= '1';
			else
				Q <= not Q;
			end if;
		end if;
	end process;
	QN <= not Q;
end FFJK;