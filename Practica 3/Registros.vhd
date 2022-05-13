library IEEE;
use IEEE.std_logic_1164.all;

entity Registros is
    port (
			-- DSR: Desplazamiento en serie por derecha
			-- DSL: Desplazamiento en serie por izquierda
			CLK, DSR, DSL, RESET: in std_logic
			-- Q: Salida
			Q : out std_logic_vector (7 downto 0);
			-- P: Entrada
			P : in std_logic_vector (7 downto 0);
			-- S: Selector
			S : in std_logic_vector (2 downto 0);
    );
end entity;

architecture arch_Registros of Registros is
signal Z : std_logic_vector (7 downto 0);
begin
		process (CLK, RESET)
		begin
			if (RESET = '0') then
				Z <= "0000";
			elsif (rising_edge(CLK)) then
            case S is
					when "000" => Z <= DSR & Z (0 to 2)
					when others => Z <= NULL;
				end case;
			end if;
		end process;
		Q <= Z;
end architecture;