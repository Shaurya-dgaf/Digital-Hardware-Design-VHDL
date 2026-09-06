

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4 is
    Port (
        en   : in  STD_LOGIC;
        din  : in  STD_LOGIC_VECTOR(1 downto 0);
        dout : out STD_LOGIC_VECTOR(3 downto 0)
    );
end decoder_2to4;

architecture Behavioral of decoder_2to4 is
begin
    process(en, din)
    begin
        if en = '0' then
            dout <= "0000";
        else
            case din is
                when "00" => dout <= "0001";
                when "01" => dout <= "0010";
                when "10" => dout <= "0100";
                when "11" => dout <= "1000";
                when others => dout <= "0000";
            end case;
        end if;
    end process;
end Behavioral;
