library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GeneradorVideo is
    port (
        Red, Green, Blue : out std_logic_vector(4 downto 0)
    );
end entity GeneradorVideo;

architecture GV of GeneradorVideo is
begin
    Red <= "11111";
    Green <= "11111";
    Blue <= "00000";
end architecture GV;