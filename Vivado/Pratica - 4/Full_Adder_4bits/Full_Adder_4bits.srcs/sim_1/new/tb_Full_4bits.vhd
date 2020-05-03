----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2017 09:42:51
-- Design Name: 
-- Module Name: tb_Full_4bits - Behavioral
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

entity tb_Full_4bits is
  -- Port();
end tb_Full_4bits;

architecture Behavioral of tb_Full_4bits is
    component Full_4bits is
        Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
               b : in STD_LOGIC_VECTOR (3 downto 0);
               carry: inout STD_LOGIC_VECTOR (2 downto 0);
               overflow : out STD_LOGIC;
               sn : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal a : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal b: STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal carry : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal overflow : STD_LOGIC;
    signal sn: STD_LOGIC_VECTOR (3 downto 0);
    
begin
    DUT: Full_4bits port map (a, b, carry, overflow, sn);
    
    P: process
    begin
        wait for 160ns;
        a <= STD_LOGIC_VECTOR (UNSIGNED (a) + 1);
    end process P;
    
    D: process
    begin
        wait for 10ns;
        b <= STD_LOGIC_VECTOR (UNSIGNED (b) + 1);
    end process D;   
end Behavioral;
