library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_tanque is
--  Port ( );
end tb_tanque;

architecture Behavioral of tb_tanque is

    component Tanque is
        Port ( b2 : in STD_LOGIC;
               b1 : in STD_LOGIC;
               s2 : in STD_LOGIC;
               s1 : in STD_LOGIC;
               v1 : out STD_LOGIC;
               v2 : out STD_LOGIC);
    end component; 

    signal bs : UNSIGNED (3 downto 0) := "0000";
    signal v1 : STD_LOGIC;
    signal v2 : STD_LOGIC;

begin
    DUT :  Tanque port map (bs(3), bs(2), bs(1), bs(0), v1, v2);
    
    P: process
    begin
    
        wait for 20ns;
        bs <= "0001";

        wait for 20ns;
        bs <= "0011";

        wait for 20ns;
        bs <= "0100";

        wait for 20ns;
        bs <= "0101";

        wait for 20ns;
        bs <= "0111";

        wait for 20ns;
        bs <= "1000";

        wait for 20ns;
        bs <= "1001";

        wait for 20ns;
        bs <= "1011";

        wait for 20ns;
        bs <= "1100";

        wait for 20ns;
        bs <= "1101";

        wait for 20ns;
        bs <= "1111";
        
    end process P; 

end Behavioral;
