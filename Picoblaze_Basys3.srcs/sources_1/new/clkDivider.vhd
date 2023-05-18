----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2023 14:41:49
-- Design Name: 
-- Module Name: clkDivider - Behavioral
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 

entity clkDivider is
port(
inclk: in std_logic;
outclk: out std_logic
);
end clkDivider;

 

architecture Behavioral of clkDivider is

 

begin

 

process(inclk)
variable state: unsigned (17 downto 0) := (others => '0');
begin
if(rising_edge(inclk)) then
state:=state+1;
end if;
outclk<=std_logic(state(17));
end process;

 

end Behavioral;