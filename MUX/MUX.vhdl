library ieee;
use ieee.std_logic_1164.all;

entity MUX is
    port( S, X, Y : in std_logic;
        Z : out std_logic);
    end MUX;

architecture behavior of MUX is
    signal MUX_Output: std_logic;
begin
    MUX_Output <= X when (S ='1') else Y;
    Z <= Mux_Output;
end behavior;