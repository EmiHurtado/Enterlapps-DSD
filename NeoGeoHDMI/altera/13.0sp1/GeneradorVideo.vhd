LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY GeneradorVideo IS
    PORT (
        CLK72 : IN STD_LOGIC;
        Red, Green, Blue : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        sync : OUT STD_LOGIC
    );
END ENTITY GeneradorVideo;

ARCHITECTURE GV OF GeneradorVideo IS
    SIGNAL ancho : INTEGER RANGE 0 TO 2048 := 0;
    SIGNAL alto : INTEGER RANGE 0 TO 528 := 0;
BEGIN
    PROCESS (CLK72)
    BEGIN
        IF rising_edge(CLK72) THEN
            sync <= '0';
            IF ancho < 500 THEN
                --IF alto < 528/2 THEN
                Red <= "11111";
                Green <= "00000";
                Blue <= "00000";
                --ELSE
                --    Red <= "00000";
                --    Green <= "00000";
                --    Blue <= "11111";
                --END IF;
            ELSE
                --IF alto < 528/2 THEN
                Red <= "00000";
                Green <= "11111";
                Blue <= "00000";
                --ELSE
                --    Red <= "11111";
                --    Green <= "11111";
                --    Blue <= "11111";
                --END IF;
            END IF;

            --IF (ancho = 858 AND alto < 528) THEN
            --    alto <= alto + 1;
            --ELSIF (ancho = 858 AND alto = 528) THEN
            --    alto <= 0;
            --END IF;

            IF ancho = 1750 THEN
                ancho <= 0;
                sync <= '1';
            ELSE
                ancho <= ancho + 1;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE GV;