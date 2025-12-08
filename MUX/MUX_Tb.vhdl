library ieee;
use ieee.std_logic_1164.all;

entity MUX_Tb is 
    --empty
end entity MUX_Tb;


architecture simulation of MUX_Tb is
    --Declare signals that will connect to the DUT
   component MUX is
    port(S,X,Y : in std_logic;
    Z : out std_logic
    );
end component;

signal S_in, Y_in, X_in, Z_out : std_logic;

begin
 -- Connect DUT
DUT: entity work.MUX 
port map (
S => S_in, 
X => X_in, 
Y => Y_in, 
Z => Z_out );

process
begin
    --Write comments explaining tests

    --Test 1: S = '0' -> expect Z = Y
    S_in <= '0';
    X_in <= '0';
    Y_in <= '1';
    wait for 10 ns;
    assert (Z_out = '0') report "Fail Z != Y" severity error; 

    --Test 2
    X_in <= '1';
    Y_in <= '0';
    wait for 10 ns;
    assert (Z_out = '1') report "Fail Z != Y" severity error; 

    --Test 3: S = '1' -> expect Z = X
    S_in <= '1';
    X_in <= '1';
    Y_in <= '0';
    wait for 10 ns;
    assert (Z_out = '0') report "Fail Z != X" severity error; 

    --Test 4
    X_in <= '0';
    Y_in <= '1';
    wait for 10 ns;
    assert (Z_out = '1') report "Fail Z != X" severity error; 

    -- Simulation end
    assert false report "Test done." severity note;
    wait;
end process;
end simulation;
