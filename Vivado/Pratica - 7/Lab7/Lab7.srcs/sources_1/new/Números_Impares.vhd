library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity numeros_impares is
    Port ( sw : in UNSIGNED (3 downto 0);
           btn : in UNSIGNED (3 downto 0);
           led : out UNSIGNED (3 downto 0);
           clk : in UNSIGNED);
end numeros_impares;

architecture Behavioral of numeros_impares is

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
                when "0001" => led <= contador;
                when "0011" => led <= contador;
                when "0101" => led <= contador;
                when "0111" => led <= contador;
                when "1001" => led <= contador;
                when "1011" => led <= contador;
                when "1101" => led <= contador;
                when "1111" => led <= contador;
                end case;
            end if;
        end process;
    
end Behavioral;
