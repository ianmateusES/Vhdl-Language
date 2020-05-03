library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_sequencial is
    Port ( sw : in UNSIGNED (3 downto 0);
           btn : in UNSIGNED (3 downto 0);
           led : out UNSIGNED (3 downto 0);
           clk : in UNSIGNED);
end contador_sequencial;

architecture Behavioral of contador_sequencial is
    
    component Divisor_de_Frequencia is
        Port ( clk_150Mhz : in UNSIGNED;
               clk_1hz : buffer UNSIGNED);
    end component;
    
    signal clk_1hz: UNSIGNED;

begin
    DIV : Divisor_de_Frequencia port map (clk, clk_1hz);
    
        C: process(clk_1hz)
        variable contador: UNSIGNED (3 downto 0) := "0000";
        begin
            if(clk_1hz'event and clk_1hz = 1) then    
                
                case contador is
                when "0000" => contador := "0001";
                when "0001" => contador := "0101";
                when "0101" => contador := "0011";
                when "0010" => contador := "1000";
                when "1000" => contador := "0110";
                when "0110" => contador := "1001";
                when "1001" => contador := "0100";
                when others => contador := "0000";
                end case;
            end if;
            
            led <= contador;
        end process;

end Behavioral;
