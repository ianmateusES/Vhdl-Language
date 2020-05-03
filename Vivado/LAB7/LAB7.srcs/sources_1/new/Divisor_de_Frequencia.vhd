library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Divisor_de_Frequencia is
    Port ( clk_150Mhz : in STD_LOGIC;
           clk_1hz : buffer STD_LOGIC);
end Divisor_de_Frequencia;

architecture Behavioral of Divisor_de_Frequencia is

begin
    
    P : process(clk_150Mhz)
        variable contador : integer range 0 to 150000500 := 0;
    begin
        
        if clk_150Mhz'event and clk_150Mhz = '1' then 
            contador := contador + 1;
            if contador >= 150000000 then
                clk_1hz <= not clk_1hz;
                contador := 0;
            end if;
        end if;
        
    end process P;

end Behavioral;
