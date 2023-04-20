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

component memory_register is
  Port ( CLK: in std_logic;
         RESET: in std_logic;
         enable: in std_logic;
         in_port: in std_logic_vector (7 downto 0);
         alu_result: in std_logic_vector (7 downto 0);
         write_select: in std_logic;
         write_address: in std_logic_vector (3 downto 0);
         out_port_address: in std_logic_vector (3 downto 0);
         alu_reg1_address: in std_logic_vector (3 downto 0);
         alu_reg2_address: in std_logic_vector (3 downto 0);
         out_port: out std_logic_vector (7 downto 0);
         alu_reg1: out std_logic_vector (7 downto 0);
         alu_reg2: out std_logic_vector (7 downto 0)
  );
end component;

signal CLK: std_logic;
constant CLK_PERIOD : time := 20 ns;
shared variable end_sim : boolean := false;

signal RESET: std_logic;
signal enable: std_logic;
signal in_port: std_logic_vector (7 downto 0);
signal alu_result: std_logic_vector (7 downto 0);
signal mode: std_logic_vector (1 downto 0);
signal write_select: std_logic;
signal write_address: std_logic_vector (3 downto 0);
signal out_port_address: std_logic_vector (3 downto 0);
signal alu_reg1_address: std_logic_vector (3 downto 0);
signal alu_reg2_address: std_logic_vector (3 downto 0);
signal out_port: std_logic_vector (7 downto 0); 
signal alu_reg1: std_logic_vector (7 downto 0);
signal alu_reg2: std_logic_vector (7 downto 0);

begin
    UUT: memory_register port map ( CLK => CLK,
                                    RESET => RESET,
                                    enable => enable,
                                    in_port => in_port,
                                    alu_result => alu_result,
                                    write_select => write_select,
                                    write_address => write_address,
                                    out_port_address => out_port_address,
                                    alu_reg1_address => alu_reg1_address,
                                    alu_reg2_address => alu_reg2_address,
                                    out_port => out_port,
                                    alu_reg1 => alu_reg1,
                                    alu_reg2 => alu_reg2 );
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
        enable <= '1';
        write_select <= '1';
        write_address <= "0000";
        alu_result <= "01010101";
        wait for 100 ns;
        write_address <= "0001";
        alu_result <= "11110000";
        wait for 100 ns;
        write_address <= "0010";
        alu_result <= "00001111";
        wait for 100 ns;
        mode <= "10";
        alu_reg1_address <= "0000";
        alu_reg2_address <= "0001";
        wait for 100 ns;
        mode <= "01";
        out_port_address <= "0010";
        wait for 100 ns;
        mode <= "00";
        alu_result <= "11111111";
        wait for 100 ns;
        mode <= "10";
        wait for 100 ns;
        mode <= "01";
        wait for 100 ns;
        end_sim := true;
        wait;
    end process;
        
end Behavioral;
