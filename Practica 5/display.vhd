library ieee;
use ieee.std_logic_1164.all;

entity display is
	port(
		a1, b1, c1, d1, e1, f1, g1, h1 : in std_logic;
		DISPLAY : out std_logic_vector(6 downto 0)
	);
end display; 

architecture displayarc of display is
signal a : std_logic;
signal b : std_logic;
signal c : std_logic;
signal d : std_logic;
signal e : std_logic;
signal f : std_logic;
signal g : std_logic;
signal h : std_logic;
begin
	a<=a1;
    b<=b1;
    c<=c1;
    d<=d1;
    e<=e1;
    f<=f1;
    g<=g1;
    h<=h1;

	
	DECODER : process(a, b, c, d, e, f, g, h)
	begin
		if   (a='0' and b='0' and c='0' and d='0' and e='0' and f='0' and g='0' and h='0') then DISPLAY <=  "1111110";
		elsif(a='1' and b='0' and c='0' and d='0' and e='0' and f='0' and g='0' and h='0') then DISPLAY <=  "0110000";
		elsif(a='1' and b='1' and c='0' and d='0' and e='0' and f='0' and g='0' and h='0') then DISPLAY <=  "1101101";
		elsif(a='1' and b='1' and c='1' and d='0' and e='0' and f='0' and g='0' and h='0') then DISPLAY <=  "1111001";
		elsif(a='1' and b='1' and c='1' and d='1' and e='0' and f='0' and g='0' and h='0') then DISPLAY <=  "0110011";
		elsif(a='1' and b='1' and c='1' and d='1' and e='1' and f='0' and g='0' and h='0') then DISPLAY <=  "1011011";
		elsif(a='1' and b='1' and c='1' and d='1' and e='1' and f='1' and g='0' and h='0') then DISPLAY <=  "1011111";
		elsif(a='1' and b='1' and c='1' and d='1' and e='1' and f='1' and g='1' and h='0') then DISPLAY <=  "1110000";
		elsif(a='1' and b='1' and c='1' and d='1' and e='1' and f='1' and g='1' and h='1') then DISPLAY <=  "1111111";
		elsif(a='0' and b='1' and c='1' and d='1' and e='1' and f='1' and g='1' and h='1') then DISPLAY <=  "1111011";
		elsif(a='0' and b='0' and c='1' and d='1' and e='1' and f='1' and g='1' and h='1') then DISPLAY <=  "1110111";
		elsif(a='0' and b='0' and c='0' and d='1' and e='1' and f='1' and g='1' and h='1') then DISPLAY <=  "0011111";
		elsif(a='0' and b='0' and c='0' and d='0' and e='1' and f='1' and g='1' and h='1') then DISPLAY <=  "1001110";
		elsif(a='0' and b='0' and c='0' and d='0' and e='0' and f='1' and g='1' and h='1') then DISPLAY <=  "0111101";
		elsif(a='0' and b='0' and c='0' and d='0' and e='0' and f='0' and g='1' and h='1') then DISPLAY <=  "1001111";
		elsif(a='0' and b='0' and c='0' and d='0' and e='0' and f='0' and g='0' and h='1') then DISPLAY <=  "1000111";
		end if;
	end process DECODER;
	
end displayarc;