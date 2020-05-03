----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2017 13:58:18
-- Design Name: 
-- Module Name: tb_Led - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity tb_Led is
 -- Port ();
end tb_Led;

architecture Behavioral of tb_Led is
    component Led is
       Port ( i   : in UNSIGNED (3 downto 0);
              sel : in UNSIGNED (1 downto 0);
              RGB : out UNSIGNED (2 downto 0));
    end component;
    
    signal i : UNSIGNED (3 downto 0) := "0000";
    signal sel : UNSIGNED (1 downto 0) := "00";
    signal RGB : UNSIGNED (2 downto 0);

begin
    DUT : Led port map (i, sel, RGB);
    
    P: process
    begin
        wait for 10ns;
        i <= i + 1;
    end process P;
    
    D: process
    begin
        wait for 160ns;
        sel <= sel + 1;
    end process D;
    
end Behavioral;
