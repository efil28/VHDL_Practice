library ieee;
use ieee.std_logic_1164.all;

entity AND_Gate is
    port (
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end entity AND_GATE;

architecture Behavior of AND_Gate is
begin
 Y<= A and B;
end architecture ;