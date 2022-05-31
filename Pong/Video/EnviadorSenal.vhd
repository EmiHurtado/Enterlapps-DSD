LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY EnviadorSenal IS
    PORT (
        CLK25MHz, CLK250MHz : IN STD_LOGIC;
        red, green, blue : in STD_LOGIC_VECTOR(9 DOWNTO 0) := "11111111";
        data2Red, data1Green, data0blue, NOTData2Red, NOTData1Green, NOTData0blue, CLK, NOTCLK : out std_logic;
    );
END ENTITY EnviadorSenal;

architecture ES of EnviadorSenal is
    
begin
    
    
    
end architecture ES;