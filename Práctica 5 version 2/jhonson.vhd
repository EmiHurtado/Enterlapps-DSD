library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Practica5 is 

 port(
        CLK : in    std_logic;
        EN: in  std_logic;
        RST : in    std_logic;
        Q: out  std_logic_vector(7 downto 0)
    );

end Practica5;

architecture behavior of Practica5 is
signal qs: std_logic_vector(7 downto 0);
begin
    process(CLK, RST, EN)
    begin 
        if(RST = '1') then
            QS <= "11111110";       
      elsif (CLK'EVENT AND CLK = '1' and EN = '1') then    
         QS(0) <= QS(7);            
         QS(7 downto 1) <= QS(6 downto 0);
      end if;                      
    Q <= QS;
    end process;
end behavior;