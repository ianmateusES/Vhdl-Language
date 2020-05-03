----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.04.2017 10:55:08
-- Design Name: 
-- Module Name: DEMUX - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEMUX is
    Port ( ct : in STD_LOGIC_VECTOR (1 downto 0);
           a : out STD_LOGIC;
           b : out STD_LOGIC;
           c : out STD_LOGIC;
           d : out STD_LOGIC;
           x : in STD_LOGIC);
end DEMUX;

architecture Behavioral of DEMUX is

begin

WITH ct SELECT
a <= x when "00",
    '0' when others;
    
WITH ct SELECT
b <= x when "01",
    '0' when others;

WITH ct SELECT
c <= x when "10",
    '0' when others;

WITH ct SELECT
d <= x when "11",
    '0' when others;

end Behavioral;