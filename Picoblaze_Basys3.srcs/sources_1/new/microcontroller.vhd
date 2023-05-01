----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 03:20:54 PM
-- Design Name: 
-- Module Name: microcontroller - Behavioral
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

entity microcontroller is
  Port ( CLK: in std_logic; 
         RESET: in std_logic;
         command: in std_logic_vector (15 downto 0);
         test_result: out std_logic_vector (7 downto 0);
         test_carry_flag: out std_logic;
         test_zero_flag: out std_logic;
         test_alu_reg1: out std_logic_vector (7 downto 0);
         test_alu_reg2: out std_logic_vector (7 downto 0);
         test_enable_write_memory: out std_logic;
         test_write_address: out std_logic_vector (3 downto 0);
         test_code: out std_logic_vector (3 downto 0);
         test_address1: out std_logic_vector (3 downto 0);
         test_address2: out std_logic_vector (3 downto 0)   
        );
end microcontroller;

architecture Behavioral of microcontroller is

component ALU is
  Port ( data1: in std_logic_vector (7 downto 0);
         data2: in std_logic_vector (7 downto 0);
         const: in std_logic_vector (7 downto 0);
         mode: in std_logic_vector (3 downto 0);
         use_constant: in std_logic;
         carry_in: in std_logic;
         zero_flag: out std_logic;
         carry_flag: out std_logic;
         result: out std_logic_vector (7 downto 0)
         );
end component;

signal zero_flag: std_logic;
signal carry_flag: std_logic;
signal result: std_logic_vector (7 downto 0);

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

signal code: std_logic_vector (3 downto 0);
signal address1: std_logic_vector (3 downto 0);
signal address2: std_logic_vector (3 downto 0);
signal const: std_logic_vector (7 downto 0);
signal use_const: std_logic;
signal enable_write_memory: std_logic;
signal write_select: std_logic;
signal write_address: std_logic_vector (3 downto 0);
signal out_port_address: std_logic_vector (3 downto 0);

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

signal out_port: std_logic_vector (7 downto 0);
signal alu_reg1: std_logic_vector (7 downto 0);
signal alu_reg2: std_logic_vector (7 downto 0);

begin

CU: control_unit port map ( CLK => CLK,
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
                          
ALU_Label: ALU port map (
                  data1 => alu_reg1,
                  data2 => alu_reg2,
                  const => const,
                  mode => code,
                  use_constant => use_const,
                  carry_in => '0',
                  zero_flag => zero_flag,
                  carry_flag => carry_flag,
                  result => result
                );
                
MEMORY: memory_register port map ( CLK => CLK,
                                   RESET => RESET,
                                   enable => enable_write_memory,
                                   in_port => "11111111",
                                   alu_result => result,
                                   write_select => write_select,
                                   write_address => write_address,
                                   out_port_address => out_port_address,
                                   alu_reg1_address => address1,
                                   alu_reg2_address => address2,
                                   out_port => out_port,
                                   alu_reg1 => alu_reg1,
                                   alu_reg2 => alu_reg2
                                  );       

test_result <= result;
test_carry_flag <= carry_flag;
test_zero_flag <= zero_flag;
test_alu_reg1 <= alu_reg1;
test_alu_reg2 <= alu_reg2;
test_enable_write_memory <= enable_write_memory;
test_write_address <= write_address;
test_code <= code;
test_address1 <= address1;
test_address2 <= address2;

end Behavioral;
