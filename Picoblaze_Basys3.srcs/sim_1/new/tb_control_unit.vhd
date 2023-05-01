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

entity tb_control_unit is
--  Port ( );
end tb_control_unit;

architecture Behavioral of tb_control_unit is

component control_unit is
  Port (
         CLK: in std_logic;
         command: in std_logic_vector (15 downto 0);
         code: out std_logic_vector (3 downto 0);
         address1: out std_logic_vector (3 downto 0);
         address2: out std_logic_vector (3 downto 0);
         const: out std_logic_vector (7 downto 0);
         use_const: out std_logic;
         enable_write_memory: out std_logic;
         write_select: out std_logic;
         write_address: out std_logic_vector (3 downto 0);
         out_port_address: out std_logic_vector (3 downto 0)
       );
end component;


signal CLK: std_logic;
constant CLK_PERIOD : time := 20 ns;
shared variable end_sim : boolean := false;

signal command: std_logic_vector (15 downto 0);
signal code: std_logic_vector (3 downto 0);
signal address1: std_logic_vector (3 downto 0);
signal address2: std_logic_vector (3 downto 0);
signal const: std_logic_vector (7 downto 0);
signal use_const: std_logic;
signal enable_write_memory: std_logic;
signal write_select: std_logic;
signal write_address: std_logic_vector (3 downto 0);
signal out_port_address: std_logic_vector (3 downto 0);

begin
    UUT: control_unit port map ( CLK => CLK,
                                 command => command,
                                 code => code,
                                 address1 => address1,
                                 address2 => address2,
                                 const => const,
                                 use_const => use_const,
                                 enable_write_memory => enable_write_memory,
                                 write_select => write_select,
                                 write_address => write_address,
                                 out_port_address => out_port_address
                                );
                                 
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
        command <= "0000000000000001";
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        command <= "0000000100000001";
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        command <= "1100000000010100";
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        end_sim := true;
        wait;
    end process;
        
end Behavioral;
