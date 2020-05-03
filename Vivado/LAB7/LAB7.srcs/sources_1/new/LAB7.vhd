library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LAB7 is
    Port ( sw  :  in UNSIGNED (3 downto 0);
           btn :  in UNSIGNED (3 downto 0);
           led : out UNSIGNED (3 downto 0);
           clk_150Mhz :  in STD_LOGIC);
end LAB7;

architecture Behavioral of LAB7 is
    
    component Divisor_de_Frequencia is
    Port ( clk_150Mhz : in STD_LOGIC;
           clk_1hz : buffer STD_LOGIC);
    end component;
    
    
    signal clk_1hz : STD_LOGIC := '0';
    signal binario : UNSIGNED (3 DOWNTO 0) := "0000";
    
begin
    DF : Divisor_de_Frequencia port map (clk_150Mhz => clk_150Mhz, clk_1hz => clk_1hz);
   
    led <= binario;
   
    A : process(clk_1hz)
    begin
    
        if clk_1hz'event and clk_1hz = '1' then
           binario <= binario + 1; 
           if binario >= "1001" then
                binario <= "0000";
           end if;
        end if;
        
    end process A;
    

end Behavioral;
