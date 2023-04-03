----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2023 03:32:39 PM
-- Design Name: 
-- Module Name: xor_operation - Behavioral
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

entity or_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         zero_flag : out std_logic;
         carry_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end or_operation;

architecture Behavioral of or_operation is

begin

reg <= data1 or data2;
zero_flag <= '1' when ((data1 or data2) = "00000000") else '0';
carry_flag <= '0';

end Behavioral;
