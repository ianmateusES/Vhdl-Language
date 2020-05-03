----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.04.2017 18:23:58
-- Design Name: 
-- Module Name: All_Gates - Behavioral
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

entity All_Gates is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           X1 : out STD_LOGIC;
           X2 : out STD_LOGIC;
           X3 : out STD_LOGIC;
           X4 : out STD_LOGIC;
           X5 : out STD_LOGIC;
           X6 : out STD_LOGIC;
           X7 : out STD_LOGIC);
end All_Gates;

architecture Behavioral of All_Gates is

begin
 x1 <= a AND b;    
 x2 <= a OR  b;    
 x3 <= not a;    
 x4 <= a NAND b;    
 x5 <= a NOR b;    
 x6 <= a XOR b;    
 x7 <= a XNOR b;
end Behavioral;
