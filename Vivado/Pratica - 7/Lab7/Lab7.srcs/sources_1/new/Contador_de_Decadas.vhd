library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Contador_de_Decadas is
    Port ( sw : in UNSIGNED (3 downto 0);
           btn : in UNSIGNED (3 downto 0);
           led : out UNSIGNED (3 downto 0);
           clk : in UNSIGNED);
end Contador_de_Decadas;

architecture Behavioral of Contador_de_Decadas is

    component Divisor_de_Frequencia is
        Port ( clk_150Mhz : in UNSIGNED;
               clk_1hz : buffer UNSIGNED);
    end component;
    
    signal clk_1hz: UNSIGNED;
    signal contador: UNSIGNED (3 downto 0) := "0000";

begin
    DIV : Divisor_de_Frequencia port map (clk, clk_1hz);
    
    
    C: process(clk_1hz)
    begin
        if(clk_1hz'event and clk_1hz = 1) then
            contador <= contador + 1;
            if(contador < "1010") then
                led <= contador;
            else
                contador <= "0000";
            end if;
        end if;
    end process;

end Behavioral;
