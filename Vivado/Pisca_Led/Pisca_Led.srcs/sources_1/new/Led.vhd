----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2017 13:53:37
-- Design Name: 
-- Module Name: Led - Behavioral
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


entity Led is
    Port ( i : in UNSIGNED (3 downto 0);
           sel : in UNSIGNED (1 downto 0);
           RGB : out UNSIGNED (2 downto 0));
end Led;

architecture Behavioral of Led is
    component G_xor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
    end component;

    component G_XOR_2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
    end component;

    component G_XOR_3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC);
    end component;
    
    component G_XOR_4 is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               s : out STD_LOGIC);
        end component;
    
    

    signal A : UNSIGNED (3 downto 0);

begin
    IGX1 : G_xor   port map (a => i(1), b => i(0), s => A(3));
    IGX2 : G_XOR_2 port map (a => i(3), b => i(2), s => A(2));
    IGX3 : G_XOR_3 port map (a => i(1), b => i(3), s => A(1));
    IGX4 : G_XOR_4 port map (a => i(2), b => i(0), s => A(0));

    
    WITH sel SELECT
    RGB(2) <= i(3)          when "00",
              i(0)          when "01",
              A(3)          when "10",
              A(1)          when others;

    WITH sel SELECT
    RGB(1) <= i(2)          when "00",
              (not i(0))    when "01",
              A(1)          when "10",
              A(3)          when others;
    
    WITH sel SELECT
    RGB(0) <= A(2)          when "00",
              A(0)          when "01",
              i(1)          when "10",
              (not A(1))    when others;
 
    
    --A(3) <= i(1) xor i(0);
    --A(3) <= i(3) xor i(2);
    --A(3) <= i(1) xor i(3);
    --A(3) <= i(2) xor i(0);

end Behavioral;
