----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2017 17:18:04
-- Design Name: 
-- Module Name: tb_Pratica_2_completa - Behavioral
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

entity tb_Pratica_2_completa is
    
end tb_Pratica_2_completa;

architecture Behavioral of tb_Pratica_2_completa is
  component Pratica_2_completa is
  Port ( a : in STD_LOGIC;
         b : in STD_LOGIC;
         c : in STD_LOGIC;
         d : in STD_LOGIC;
         s1 : out STD_LOGIC;
         s2 : out STD_LOGIC;
         s3 : out STD_LOGIC;
         s4 : out STD_LOGIC;
         s5 : out STD_LOGIC;
         s6 : out STD_LOGIC;
         s7 : out STD_LOGIC;
         s8 : out STD_LOGIC;
         s9 : out STD_LOGIC;
         s10 : out STD_LOGIC);
   end component;
    
    signal abcd: unsigned (3 downto 0) := "0000";
    signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10: std_logic;
    
begin
  mapeamento: Pratica_2_completa port map(abcd(3), abcd(2), abcd(1), abcd(0), s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
  
  processo: process
  begin
  
   wait for 10ns;   
   abcd <= abcd + 1;
   
   end process;
end Behavioral;