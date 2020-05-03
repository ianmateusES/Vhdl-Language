library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Somador_Subtractor is
--  Port ( );
end tb_Somador_Subtractor;

architecture Behavioral of tb_Somador_Subtractor is

    component Somador_Subtractor is
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               OP : in STD_LOGIC;
               carry : inout STD_LOGIC_VECTOR (2 downto 0);
               borrow : inout STD_LOGIC_VECTOR (2 downto 0);
               overflow : out STD_LOGIC;
               sf : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal OP: STD_LOGIC := '1';
    signal A, B: STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal carry: STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal borrow: STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal overflow: STD_LOGIC;
    signal sf : STD_LOGIC_VECTOR (3 downto 0);

begin
    DUT: Somador_Subtractor port map (A, B, OP, carry, borrow, overflow, sf);
    
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
