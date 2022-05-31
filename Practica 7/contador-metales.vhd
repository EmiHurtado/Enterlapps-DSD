LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY ContadorMetales IS
    PORT (
        CLK: IN std_logic;
        entrada_metales : IN STD_LOGIC;
        Q : INOUT integer range 0 to 15
    );
END ContadorMetales;

ARCHITECTURE AContadorMetales OF ContadorMetales IS
BEGIN
    process(CLK, entrada_metales)
        begin
            if (CLK'EVENT and CLK = '1' and entrada_metales = '1') then
                IF (Q = 9) then
                    Q <= 0;
                else
                    Q <= Q + 1;
                end if;
            end if;
    end process;
END ARCHITECTURE AContadorMetales;