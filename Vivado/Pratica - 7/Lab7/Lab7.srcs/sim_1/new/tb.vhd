library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is

    component Contador_de_Decadas is
        Port ( sw : in UNSIGNED (3 downto 0);
               btn : in UNSIGNED (3 downto 0);
               led : out UNSIGNED (3 downto 0);
               clk : in STD_LOGIC);
    end component;

    signal btn : UNSIGNED (3 downto 0);
    signal sw : UNSIGNED (3 downto 0);
    signal led: UNSIGNED (3 downto 0);
    signal clk: STD_LOGIC = '0';

begin
    DUT: Contador_de_Decadas port map (sw => sw, btn => btn, led => led, clk => clk);
    
    P: process
    begin
        wait for 20ns;
        clk <= not clk;
    end process;

end Behavioral;
