library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divisor_de_F is
    Port ( clk150MHz : in STD_LOGIC;
           contador : buffer integer range 0 to 150000000;
           clk1hz : out STD_LOGIC);
end Divisor_de_F;

architecture Behavioral of Divisor_de_F is
    
begin
    
    clk1hz <= '1' when contador = 150000000 else
              '0';
    
    
    process(clk150MHz) 
    begin
  
    if(clk150MHz'event and clk150MHz = '1') then 
        contador <= contador + 1;
    end if;     
    
    if(contador = 150000000) then 
        contador <= 0;
    end if;
    
    end process;

end Behavioral;
