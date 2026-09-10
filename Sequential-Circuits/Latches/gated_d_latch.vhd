library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gated_d_latch is
    Port (
        D      : in  STD_LOGIC;
        ENABLE : in  STD_LOGIC;
        Q      : out STD_LOGIC;
        Q_bar  : out STD_LOGIC
    );
end gated_d_latch;

architecture Behavioral of gated_d_latch is
begin
    process (D, ENABLE)
    begin
        if (ENABLE = '1') then
            Q <= D;
            Q_bar <= not D;
        end if;
    end process;
end Behavioral;
