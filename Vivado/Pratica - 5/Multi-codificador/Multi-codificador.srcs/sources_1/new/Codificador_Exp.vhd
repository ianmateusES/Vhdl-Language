library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Codificador_Exp is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           erro2: buffer STD_LOGIC);
end Codificador_Exp;

architecture Behavioral of Codificador_Exp is

    component BCD7421_Exp is
      Port (bcd : in STD_LOGIC_VECTOR (3 downto 0);
            bcd7421 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component BCD5211_Exp is
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               bcd5211 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component BCD2421_Exp is
     Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
            bcd2421 : out STD_LOGIC_VECTOR (3 downto 0));
     end component;
    
    component XS3_Exp is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           xs3 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal s1, s2, s3, s4, sm : STD_LOGIC_VECTOR (3 downto 0); -- Sinal intermediario

begin
    CBCD7421_Exp : BCD7421_Exp port map (bcd, s1);
    CBCD5211_Exp : BCD5211_Exp port map (bcd, s2);
    CBCD2421_Exp : BCD2421_Exp port map (bcd, s3);
    CXS3_Exp     : XS3_Exp     port map (bcd, s4);
    
    erro2 <= (bcd(3) and bcd(2)) or (bcd(3) and bcd(1));
    
    WITH sel SELECT
    sm <= s1 when "00",
         s2 when "01",
         s3 when "10",
         s4 when others;
    
    WITH erro2 SELECT
    s <=  sm when '0',
          "ZZZZ" when others;


end Behavioral;
