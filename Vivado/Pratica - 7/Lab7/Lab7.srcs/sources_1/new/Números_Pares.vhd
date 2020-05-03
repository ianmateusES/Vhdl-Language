library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity numeros_pares is
    Port ( sw : in UNSIGNED (3 downto 0);
           btn : in UNSIGNED (3 downto 0);
           led : out UNSIGNED (3 downto 0);
           clk : in UNSIGNED);
end numeros_pares;

architecture Behavioral of numeros_pares is

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
            case contador is
            when "0000" => led <= contador;
            when "0010" => led <= contador;
            when "0100" => led <= contador;
            when "0110" => led <= contador;
            when "1000" => led <= contador;
            when "1010" => led <= contador;
            when "1100" => led <= contador;
            when "1110" => led <= contador;
            end case;
        end if;
    end process;
    
end Behavioral;
