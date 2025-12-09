
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bit_adder_4 is
    Port ( X, Y, Cin: in STD_LOGIC;
           Sum, Cout : out STD_LOGIC);
end bit_adder_4;

architecture Behavior of bit_adder_4 is
begin
Sum <= (X xor Y) xor Cin;
Cout <= (X and Y)  or ((X xor Y) and Cin);
end Behavior;