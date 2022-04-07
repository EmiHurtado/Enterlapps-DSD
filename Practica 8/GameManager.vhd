LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.std_arith.ALL;

ENTITY GameManager IS
    PORT (
        movPlayer1, movPlayer2 : IN INTEGER RANGE -1 TO 1; -- ? Leer PlayerManager para más detalles
        coordsP1, coordsP2 : INOUT INTEGER RANGE 0 TO 480; -- ? Hasta qué resolución en alto podemos usar
        coordsBallX : INOUT INTEGER RANGE 0 TO 640; -- ? Hasta qué resolución en ancho podemos usar
        coordsBallY : INOUT INTEGER RANGE 0 TO 480; -- ? Hasta qué resolución en alto podemos usar
        scoreP1, scoreP2 : INOUT INTEGER RANGE 0 TO 9;
        clkPlayer, clkImage, pauseBtn, selectBtn : IN STD_LOGIC;
        sound : OUT STD_LOGIC;
        -- ! añadir salida para la imagen
    );
END ENTITY GameManager;

architecture GM of GameManager is
    
begin
    -- TODO: Todo XD
end architecture GM;