LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY CodificadorVideo IS
    PORT (
        CLK25MHz : IN STD_LOGIC
    );
END ENTITY CodificadorVideo;

ARCHITECTURE CV OF CodificadorVideo IS
    SIGNAL counterX : INTEGER RANGE 0 TO 799 := 0;
    SIGNAL counterY : INTEGER RANGE 0 TO 524 := 0;
    SIGNAL hSync : STD_LOGIC := '0';
    SIGNAL vSync : STD_LOGIC := '0';
    SIGNAL drawArea : STD_LOGIC := '0';
    SIGNAL red, green, blue : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11111111";
    SIGNAL TMDS_red, TMDS_green, TMDS_blue : STD_LOGIC_VECTOR(9 DOWNTO 0);
    signal sync : std_logic_vector(1 DOWNTO 0);
BEGIN

    hSync <= (CounterX > 655) AND (CounterX < 752);
    vSync <= (CounterY > 489) AND (CounterY < 492);
    drawArea <= (CounterX < 640) AND (CounterY < 480);
    sync(1) <= vSync;
    sync(0) <= hSync;

    TMDS_red <= tmds_encoder(CLK25MHz, red, "00", drawArea);
    TMDS_green <= tmds_encoder(CLK25MHz, green, "00", drawArea);
    TMDS_blue <= tmds_encoder(CLK25MHz, blue, "00", drawArea);

    IF counterX = 799 THEN
        counterX <= 0;
    ELSE
        counterX <= counterX + 1;
    END IF;

    IF counterY = 524 THEN
        counterY <= 0;
    ELSE
        counterY <= counterY + 1;
    END IF;

END ARCHITECTURE CV;