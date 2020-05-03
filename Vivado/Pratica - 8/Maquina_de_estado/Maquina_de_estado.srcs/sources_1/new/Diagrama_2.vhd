library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Diagrama_2 is
    Port ( sw : in unsigned (3 downto 0);
           btn : in unsigned (3 downto 0);
           led : out unsigned (3 downto 0);
           clk_150Mhz : in STD_LOGIC);
end Diagrama_2;

architecture Behavioral of Diagrama_2 is

    component Divisor_de_F is
        Port(clk_150Mhz :in STD_LOGIC;
             clk_1hz : buffer STD_LOGIC);
    end component;

    signal clk_1hz: STD_LOGIC;
    signal en, c: STD_LOGIC;
    signal reset : STD_LOGIC;
    Type StateMachine is (S0, S1, S2, S3);
    signal M_A: StateMachine := S0;
    
begin
    DIV: Divisor_de_F port map (clk_150Mhz, clk_1hz);
    
    B: process(clk_1hz, btn(0))
    begin
        if clk_1hz'event and clk_1hz = '1' then
            reset <= btn(1);
            en <= btn(0);
        end if;
    end process B;
    
    F: process(clk_1hz, reset, M_A, en)
    begin
        if(reset'event and reset = '1') then
             M_A <= S0;
        end if;
        
        if clk_1hz'event and clk_1hz = '1' then
                case en is
                when '0' => 
                    case M_A is
                    when S0 =>
                        c <= '0';
                        en <= '0';
                    when S1 =>
                        c <= '0';
                        en <= '0';
                    when S2 =>
                        c <= '0';
                        en <= '0';
                    when S3 =>
                        c <= '1';
                        en <= '0';
                    end case;
                    
                when '1' =>
                    case M_A is
                    when S0 =>
                        M_A <= S1;
                        c <= '0';
                    when S1 =>
                        M_A <= S2;
                        c <= '0';
                    when S2 =>
                        M_A <= S3;
                        c <= '1';
                    when S3 =>
                        M_A <= S0;
                        c <= '0';
                    end case;
                end case;
            end if;
    end process F; 
    
    L: process(c)
    begin
        case c is
        when '0' => led(0) <= c;
        when '1' => led(0) <= c;
        end case;
    end process L;

end Behavioral;
