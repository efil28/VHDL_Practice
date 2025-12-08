library ieee;
use ieee.std_logic_1164.all;

-- Testbench entity has no ports
entity AND_Gate_tb is
end entity AND_Gate_tb;

architecture sim of AND_Gate_tb is

    -- Declare a component that matches your DUT
    component AND_Gate is
        port (
            A : in  std_logic;
            B : in  std_logic;
            Y : out std_logic
        );
    end component;

    -- Signals to drive the DUT
    signal A_sig, B_sig, Y_sig : std_logic;

begin

    -- Instantiate the DUT using the component
    uut: AND_Gate
        port map (
            A => A_sig,
            B => B_sig,
            Y => Y_sig
        );

    -- Stimulus process
    stim_proc: process
    begin
        A_sig <= '0'; B_sig <= '0'; wait for 10 ns;
        A_sig <= '0'; B_sig <= '1'; wait for 10 ns;
        A_sig <= '1'; B_sig <= '0'; wait for 10 ns;
        A_sig <= '1'; B_sig <= '1'; wait for 10 ns;
        wait;  -- stop simulation
    end process;

end architecture sim;