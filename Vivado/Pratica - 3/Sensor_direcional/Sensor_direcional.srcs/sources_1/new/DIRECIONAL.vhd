----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2017 17:48:37
-- Design Name: 
-- Module Name: DIRECIONAL - Behavioral
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

entity DIRECIONAL is
    Port ( ct : in STD_LOGIC_VECTOR (1 downto 0);
           N : out STD_LOGIC;
           L : out STD_LOGIC;
           S : out STD_LOGIC;
           O : out STD_LOGIC);
end DIRECIONAL;

architecture Behavioral of DIRECIONAL is
begin

N <= '1' when ct = "00" else '0';
L <= '1' when ct = "01" else '0';
S <= '1' when ct = "11" else '0';
O <= '1' when ct = "10" else '0';

end Behavioral;
