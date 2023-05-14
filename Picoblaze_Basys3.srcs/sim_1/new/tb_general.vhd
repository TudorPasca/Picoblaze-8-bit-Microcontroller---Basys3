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

component microcontroller is
  Port ( CLK: in std_logic; 
         res: in std_logic;
         interrupt: in std_logic;
         test_address1: out std_logic_vector (3 downto 0);
         test_address2: out std_logic_vector (3 downto 0);
         test_reg1: out std_logic_vector (7 downto 0);
         state_zero_flag: out std_logic;
         state_carry_flag: out std_logic;
         counter1: out std_logic_vector(7 downto 0);
         state_command: out std_logic_vector (15 downto 0)
        );
end component;

signal CLK: std_logic;
constant CLK_PERIOD : time := 20 ns;
shared variable end_sim : boolean := false;

--signal command: std_logic_vector (15 downto 0);
--signal test_result: std_logic_vector (7 downto 0);
signal state_carry_flag: std_logic;
signal state_zero_flag: std_logic;
signal test_reg1: std_logic_vector (7 downto 0);
--signal test_alu_reg2: std_logic_vector (7 downto 0);  
signal test_address1: std_logic_vector (3 downto 0);
signal test_address2: std_logic_vector (3 downto 0); 
--signal test_enable_write_memory: std_logic;       
--signal test_write_address: std_logic_vector (3 downto 0);  
--signal test_code: std_logic_vector (3 downto 0);
--signal reset: std_logic;

signal res: std_logic;
signal interrupt: std_logic;
signal state_command: std_logic_vector (15 downto 0);
signal counter1: std_logic_vector (7 downto 0);
         
begin
    UUT: microcontroller port map ( CLK => CLK,
                                    res => res,
                                    interrupt => interrupt,
                                    test_address1 => test_address1,
                                    test_address2 => test_address2,
                                    test_reg1 => test_reg1,
                                    state_zero_flag => state_zero_flag,
                                    state_carry_flag => state_carry_flag,
                                    counter1 => counter1,
                                    state_command => state_command
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
        interrupt <= '0';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
                wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
                wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
                wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
                wait until CLK'EVENT and CLK = '1';
        wait until CLK'EVENT and CLK = '1';
--        command <= "0010000111110000"; -- d1 = d1 or f0 = ff
--        wait until CLK'EVENT and CLK = '1';
--        wait until CLK'EVENT and CLK = '1';
--        command <= "1100000100000011"; -- d1 = d1 xor d0 = fa
--        wait until CLK'EVENT and CLK = '1';
--        wait until CLK'EVENT and CLK = '1';
--        command <= "0000000000000101"; -- d0 = 05
--        wait until CLK'EVENT and CLK = '1';
--        wait until CLK'EVENT and CLK = '1';
--        command <= "0011000000000111"; -- d0 = d0 xor 07 = 02
--        wait until CLK'EVENT and CLK = '1';
--        wait until CLK'EVENT and CLK = '1';
        end_sim := true;
        wait;
    end process;
        
end Behavioral;
