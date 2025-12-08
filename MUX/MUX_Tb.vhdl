library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity MUX_Tb is 
end entity MUX_Tb;

--Declare signals that will connect to the DUT
architecture simulation of MUX_Tb is
    signal S_Tb :std_logic;
    signal X_Tb :std_logic;
    signal Y_Tb :std_logic;
    signal Z_Tb :std_logic;
begin
--Instantiate the DUI inside the testbench
--Unit under test (uut)
uut: entity work.MUX
port map(
    S => S_Tb,
    X => X_Tb,
    Y => Y_Tb,
    Z => Z_Tb
);
--Write a stimulus process
stim_proc: process
begin
    --Write comments explaining tests

    --Test 1: S = '0' -> expect Z = Y
    S_Tb <= '0';
    X_Tb <= '0';
    Y_Tb <= '1';
    wait for 10 ns;

    --Test 2
    X_Tb <= '1';
    Y_Tb <= '0';
    wait for 10 ns;

    --Test 3: S = '1' -> expect Z = X
    S_Tb <= '1';
    X_Tb <= '1';
    Y_Tb <= '0';
    wait for 10 ns;

    --Test 4
    X_Tb <= '0';
    Y_Tb <= '1';
    wait for 10 ns;

    -- Simulation end
    wait;
end process;
end simulation;
