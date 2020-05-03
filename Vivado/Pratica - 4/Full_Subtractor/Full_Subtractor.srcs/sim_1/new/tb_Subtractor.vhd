----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2017 20:56:01
-- Design Name: 
-- Module Name: tb_Subtractor - Behavioral
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

entity tb_Subtractor is
--  Port ( );
end tb_Subtractor;

architecture Behavioral of tb_Subtractor is
    component Subtractor is 
        Port ( a : in SIGNED (3 downto 0);
               b : in SIGNED (3 downto 0);
               borrow : inout SIGNED (2 downto 0);
               overflow : out STD_LOGIC;
               sn : out SIGNED (3 downto 0));
    end component;

    signal a : SIGNED (3 downto 0) := "0000";
    signal b : SIGNED (3 downto 0) := "0000";
    signal borrow :  SIGNED (2 downto 0);
    signal overflow : STD_LOGIC;
    signal s : SIGNED (3 downto 0);

begin
    DUT: Subtractor port map (a, b, borrow, overflow, s);
    
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
