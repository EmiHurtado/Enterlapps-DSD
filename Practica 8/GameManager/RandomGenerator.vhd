LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RandomGenerator IS
    PORT (
        CLK : IN STD_LOGIC;
        value : INOUT INTEGER RANGE 0 TO 3
    );
END ENTITY RandomGenerator;

ARCHITECTURE RG OF RandomGenerator IS
BEGIN
    Generator : PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF value = 3 THEN
                value <= 0;
            ELSE
                value <= value + 1;
            END IF;
        END IF;
    END PROCESS Generator;
END ARCHITECTURE RG;