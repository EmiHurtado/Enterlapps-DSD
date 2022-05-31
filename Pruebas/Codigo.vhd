LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Codigo IS
    PORT (
        CLK : IN STD_LOGIC;
        led : OUT STD_LOGIC
    );
END ENTITY Codigo;

ARCHITECTURE arch OF Codigo IS
    SIGNAL value : STD_LOGIC := '0';
BEGIN
    PROCESS (CLK)
    BEGIN
        IF (CLK'event and CLK = '1') THEN
            value <= NOT value;
            led <= value;
        END IF;
    END PROCESS;
END ARCHITECTURE arch;