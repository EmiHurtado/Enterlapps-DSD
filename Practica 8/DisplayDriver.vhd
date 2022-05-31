LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY DisplayDriver IS
    PORT (
        clk : IN STD_LOGIC;
        R, C : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    );
END ENTITY DisplayDriver;

ARCHITECTURE DisplayDriverArch OF DisplayDriver IS
    SIGNAL clkdiv : STD_LOGIC_VECTOR (M DOWNTO 0);
    SIGNAL barrido : integer range 0 to 7;
    type arreglo is array (0 to 7) of std_logic_vector(0 to 15);
    constant tabla : arreglo :=( -- datos de la carita
        "0010000000100000",
        "0100011001000110",
        "1000011010000110",
        "1000000010000000",
        "1000000010000000",
        "1000011010000110",
        "0100011001000110",
        "0010000000100000"
    );
BEGIN
    process(clk) begin
        case barrido is
            when 0 => R <= tabla(0); C <= "1000000010000000"
            when 1 => R <= tabla(1); C <= "0100000001000000"
            when 2 => R <= tabla(2); C <= "0010000000100000"
            when 3 => R <= tabla(3); C <= "0001000000010000"
            when 4 => R <= tabla(4); C <= "0000100000001000"
            when 5 => R <= tabla(5); C <= "0000010000000100"
            when 6 => R <= tabla(6); C <= "0000001000000010"
            when 7 => R <= tabla(7); C <= "0000000100000001"        
            when others => R <= tabla(1); C <= "0000000000000000"  
        end case;
    end process; 
END ARCHITECTURE DisplayDriverArch;