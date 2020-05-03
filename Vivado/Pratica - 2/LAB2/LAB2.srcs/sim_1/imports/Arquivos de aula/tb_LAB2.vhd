----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.04.2017 12:55:47
-- Design Name: 
-- Module Name: tb_LAB2 - Behavioral
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

entity tb_LAB2 is
--  Port ( );
end tb_LAB2;

architecture Behavioral of tb_LAB2 is

    component LAB2 is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : in STD_LOGIC;
               d : in STD_LOGIC;
               s1 : out STD_LOGIC;
               s2 : out STD_LOGIC);
    end component;
    
    signal abcd: unsigned (3 downto 0) := "0000";
    signal s1,s2: std_logic;
    

begin

    DUT: LAB2 port map (abcd(3),abcd(2),abcd(1),abcd(0),s1,s2);
    
    process
    begin
    
        wait for 10ns;
        abcd <= abcd + 1;
    
    end process;


end Behavioral;
