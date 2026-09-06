
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4to2 is
    Port (
        din  : in  STD_LOGIC_VECTOR(3 downto 0);
        dout : out STD_LOGIC_VECTOR(1 downto 0)
    );
end encoder_4to2;

architecture Behavioral of encoder_4to2 is
begin
    process(din)
    begin
        case din is
            when "0001" => dout <= "00";
            when "0010" => dout <= "01";
            when "0100" => dout <= "10";
            when "1000" => dout <= "11";
            when others => dout <= "00";
        end case;
    end process;
end Behavioral;
