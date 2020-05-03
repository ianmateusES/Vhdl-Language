library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Subtractor_4bits is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           borrow : inout STD_LOGIC_VECTOR (2 downto 0);
           overflow : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end Subtractor_4bits;

architecture Behavioral of Subtractor_4bits is

    component Half_Subtractor is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               borrow_out : out STD_LOGIC;
               sn : out STD_LOGIC);
    end component;

    component Full_Subtractor is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               borrow_in : in STD_LOGIC;
               borrow_out : out STD_LOGIC;
               sn : out STD_LOGIC);
    end component;

begin
    Bit0: Half_Subtractor port map(A(0), B(0), borrow(0), s(0));
    Bit1: Full_Subtractor port map(A(1), B(1), borrow(0), borrow(1), s(1));
    Bit2: Full_Subtractor port map(A(2), B(2), borrow(1), borrow(2), s(2));
    Bit3: Full_Subtractor port map(A(3), B(3), borrow(2), overflow, s(3));
    

end Behavioral;
