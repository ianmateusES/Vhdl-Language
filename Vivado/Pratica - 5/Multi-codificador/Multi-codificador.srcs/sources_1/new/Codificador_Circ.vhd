library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Codificador_Circ is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           erro2: buffer STD_LOGIC);
end Codificador_Circ;

architecture Behavioral of Codificador_Circ is
    
    component BCD7421 is
        Port (bcd : in STD_LOGIC_VECTOR (3 downto 0);
              bcd7421 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component BCD5211 is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               bcd5211 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component BCD2421 is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               bcd2421 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
     
    component XS3 is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               xs3 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal s1, s2, s3, s4, sm : STD_LOGIC_VECTOR (3 downto 0); -- Sinal intermediario    
begin
    CBCD7421 : BCD7421 port map (bcd, s1);
    CBCD5211 : BCD5211 port map (bcd, s2);
    CBCD2421 : BCD2421 port map (bcd, s3);
    CXS3     : XS3     port map (bcd, s4);
 
      E: process(bcd)
      begin
        if(bcd'event and bcd > "1001") then
            erro2 <= '1';
        else
            erro2 <= '0';
        end if;
        
      end process E;   
    
    WITH sel SELECT
    s  <= s1 when "00",
          s2 when "01",
          s3 when "10",
          s4 when others;
  
end Behavioral;