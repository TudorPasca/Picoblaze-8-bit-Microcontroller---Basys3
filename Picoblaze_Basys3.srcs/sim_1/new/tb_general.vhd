----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2023 01:41:43 PM
-- Design Name: 
-- Module Name: tb_general - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_general is
--  Port ( );
end tb_general;

architecture Behavioral of tb_general is

component subcy_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0);
         carry : in std_logic
  );
end component;

signal data_in1: std_logic_vector (7 downto 0);
signal data_in2: std_logic_vector (7 downto 0);
signal data_out: std_logic_vector (7 downto 0);
signal CLK: std_logic;
constant CLK_PERIOD : time := 50 ns;
shared variable end_sim : boolean := false;

begin
    UUT: subcy_operation port map (reg => data_out, data1 => data_in1, data2 => data_in2, carry => '1');

    CLK_GENERATOR: process
    begin
        if (not end_sim) then
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        else wait;
        end if;   
    end process;
    
    STIMULI: process
    begin
        data_in1 <= "11110000";
        data_in2 <= "00001111";
        wait for 200 ns;
        data_in1 <= "00000100";
        data_in2 <= "00000011";
        wait for 200 ns;
        end_sim := true;
        wait;
    end process;
        
end Behavioral;
