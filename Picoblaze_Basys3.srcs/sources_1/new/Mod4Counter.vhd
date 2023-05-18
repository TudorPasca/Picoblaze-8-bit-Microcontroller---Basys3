----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2023 14:51:36
-- Design Name: 
-- Module Name: Mod4Counter - Behavioral
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

 

entity Mod4Counter is
port
(
clk: in std_logic;
output: out std_logic_vector( 1 downto 0)
);
end Mod4Counter;

 

architecture Behavioral of Mod4Counter is

 

begin

 

process(clk)
variable state: unsigned (1 downto 0) := "00";
begin
if(rising_edge(clk)) then
state:=state+1;
end if;
output<=std_logic_vector(state);
end process;

 

end Behavioral;