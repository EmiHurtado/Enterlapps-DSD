Library ieee;

use ieee.std_logic_1164.all; -- esta libreria nos permite usar funciones lógicas, emplear numeros en sistema decimal!


entity  Reloj  is

 port( salida: out std_logic;
       clk:    in std_logic;
		 reset:  in std_logic );
		 
end Reloj;

architecture divisor of Reloj is

signal  contador: integer range 0 to 24999999 :=0;    --aquí se declara el wire!!
signal  salida_media: std_logic;  --aqui se declara el wire!


begin
         Divisor_frecuencia: process(clk,reset) 
			  
			     begin
				  
				  if reset ='0' 
				  then
				  salida_media<='0';
				  contador <= 0;  -- se resetea el contador
				  
				  elsif rising_edge(clk) then -- puede ser clk'event 
				  
				  if contador = 24999999  then
				  
				     contador<=0;
					  
					  salida_media<= not salida_media;
					  
				 else
					  
					  contador<= contador+1;
				  
				  				  
				  end if;
				  
				   end if;
				  
				  
				  end process;
				  
				  
				  salida<=salida_media;

				  end divisor;
				  



		 
