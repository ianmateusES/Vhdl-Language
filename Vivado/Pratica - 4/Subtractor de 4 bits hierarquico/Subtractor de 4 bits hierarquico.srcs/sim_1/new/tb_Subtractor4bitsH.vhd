library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Subtractor4bitsH is
--  Port ( );
end tb_Subtractor4bitsH;

architecture Behavioral of tb_Subtractor4bitsH is

    component Subtractor_4bits is
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               borrow : inout STD_LOGIC_VECTOR (2 downto 0);
               overflow : out STD_LOGIC;
               s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal A, B : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal borrow: STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal overflow: STD_LOGIC;
    signal s: STD_LOGIC_VECTOR (3 downto 0);
begin
    DUT: Subtractor_4bits port map (A, B, borrow, overflow, s);
   
    P: process
    begin
        wait for 160ns;
        A <= STD_LOGIC_VECTOR (UNSIGNED(A) + 1);
    end process P;
       
    D: process
    begin
        wait for 10ns;
        B <= STD_LOGIC_VECTOR (UNSIGNED(B) + 1);
    end process D;

end Behavioral;
