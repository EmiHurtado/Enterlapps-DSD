LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Demux4 IS
    PORT (
        input : IN STD_LOGIC;
        S0, S1 : IN STD_LOGIC;
        A, B, C, D : OUT STD_LOGIC
    );
END Demux4;

ARCHITECTURE dem4 OF Demux4 IS
BEGIN
    PROCESS (input, S0, S1) IS
    BEGIN
        IF (S0 = '0' AND S1 = '0') THEN
            A <= input;
        ELSIF (S0 = '1' AND S1 = '0') THEN
            B <= input;
        ELSIF (S0 = '0' AND S1 = '1') THEN
            C <= input;
        ELSE
            D <= input;
        END IF;
    END PROCESS;
END dem4;