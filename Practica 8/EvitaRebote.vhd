LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- i Este código evita que, al dejar
-- i presionado un botón, esta entrada
-- i mantenga un '1' continuo, haciendo
-- i que solo se envíe por un ciclo de
-- i reloj
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