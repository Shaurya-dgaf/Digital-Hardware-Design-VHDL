library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity siso_shift_register is
    Port (
        clk   : in  STD_LOGIC;
        rst   : in  STD_LOGIC;
        s_in  : in  STD_LOGIC;
        s_out : out STD_LOGIC
    );
end siso_shift_register;

architecture Behavioral of siso_shift_register is
    signal q : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin

    process(clk, rst)
    begin
        if rst = '1' then
            q <= "0000";
        elsif rising_edge(clk) then
            q(3) <= s_in;
            q(2) <= q(3);
            q(1) <= q(2);
            q(0) <= q(1);
        end if;
    end process;

    s_out <= q(0);

end Behavioral;
