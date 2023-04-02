----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2023 01:55:21 PM
-- Design Name: 
-- Module Name: and_operation - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sub_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end sub_operation;

architecture Behavioral of sub_operation is

begin

reg <= std_logic_vector(unsigned(data1) - unsigned(data2));

end Behavioral;
