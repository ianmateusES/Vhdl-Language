----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.04.2017 10:56:09
-- Design Name: 
-- Module Name: tb_DEMUX - Behavioral
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

entity tb_DEMUX is
    
end tb_DEMUX;

architecture Behavioral of tb_DEMUX is
    component DEMUX is 
        Port ( ct : in STD_LOGIC_VECTOR (1 downto 0);
               a : out STD_LOGIC;
               b : out STD_LOGIC;
               c : out STD_LOGIC;
               d : out STD_LOGIC;
               x : in STD_LOGIC);
      end component;
      
      signal ct : STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";
      signal a,b,c,d : STD_LOGIC;
      signal x : STD_LOGIC := '0';

begin
    DUT : DEMUX port map (ct, a, b, c, d, x);
    
    x <= not x after 30ns;
    
    P1: process
    begin
        wait for 20ns;
        ct <= STD_LOGIC_VECTOR (unsigned (ct) + 1);
        
    end process;
    
end Behavioral;
