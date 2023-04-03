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

entity add_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         carry_flag : out std_logic;
         zero_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end add_operation;

architecture Behavioral of add_operation is

begin

process (data1, data2)
variable result: std_logic_vector (8 downto 0);
begin
    result := std_logic_vector(resize(unsigned(data1), 9) + resize(unsigned(data2), 9));
    reg <= result(7 downto 0);
    carry_flag <= result(8);
    if (result(7 downto 0) = "00000000") then
        zero_flag <= '1';
    else
        zero_flag <= '0';
    end if;
end process;

end Behavioral;
