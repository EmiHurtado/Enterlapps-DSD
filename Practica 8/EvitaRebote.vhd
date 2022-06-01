LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY EvitaRebote IS
    PORT (
        clk, input : IN STD_LOGIC;
        output : OUT STD_LOGIC
    );
END ENTITY EvitaRebote;

ARCHITECTURE ER OF EvitaRebote IS
    SIGNAL isUp : STD_LOGIC := '1';
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            output <= input AND isUp;
            isUp <= NOT input;
        END IF;
    END PROCESS;
END ARCHITECTURE ER;