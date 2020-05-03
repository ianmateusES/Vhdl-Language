----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2017 11:08:24
-- Design Name: 
-- Module Name: tb_ALL_GATES - Behavioral
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

entity tb_ALL_GATES is
--  Port ( );
end tb_ALL_GATES;

architecture Behavioral of tb_ALL_GATES is

    component ALL_GATES is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               x1 : out STD_LOGIC;
               x2 : out STD_LOGIC;
               x3 : out STD_LOGIC;
               x4 : out STD_LOGIC;
               x5 : out STD_LOGIC;
               x6 : out STD_LOGIC;
               x7 : out STD_LOGIC);
    end component;
    
    signal a,b,x1,x2,x3,x4,x5,x6,x7: STD_LOGIC;

begin

    DUT: ALL_GATES port map (a,b,x1,x2,x3,x4,x5,x6,x7);
    
    P1: process
    begin
        a<='0';
        b<='0';
        wait for 10ns;
        a<='0';
        b<='1';
        wait for 10ns;
        a<='1';
        b<='0';
        wait for 10ns;
        a<='1';
        b<='1';
        wait for 10ns;                        

    end process P1;

end Behavioral;

