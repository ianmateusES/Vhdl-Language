----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2017 20:45:31
-- Design Name: 
-- Module Name: tb_Adder_Subtractor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_Adder_Subtractor is
-- Port ();
end tb_Adder_Subtractor;

architecture Behavioral of tb_Adder_Subtractor is
    component Adder_Subctrator is
     Port ( op : in STD_LOGIC;
             a : in SIGNED (3 downto 0);
             b : in SIGNED (3 downto 0);
             overflowAdder : out STD_LOGIC;
             carry : inout SIGNED (2 downto 0);
             overflowSubtractor : out STD_LOGIC;
             borrow : inout SIGNED (2 downto 0); 
             sn : out SIGNED (3 downto 0));
    end component;
    
    signal op : STD_LOGIC := '0';
    signal a, b : SIGNED (3 downto 0) := "0000";
    signal overflowAdder : STD_LOGIC;
    signal carry : SIGNED (2 downto 0);
    signal overflowSubtractor : STD_LOGIC;
    signal borrow : SIGNED (2 downto 0);
    signal sn: SIGNED (3 downto 0);
    
begin
    DUT: Adder_Subctrator port map (op, a, b, overflowAdder, carry, overflowSubtractor, borrow, sn);
    
    op <= not op after 20ns; 
    
    P: process
    begin
        wait for 160ns;
        a <= a + 1;
    end process P;
    
    D: process
    begin
        wait for 10ns;
        b <= b + 1;
    end process D;
    
end Behavioral;
