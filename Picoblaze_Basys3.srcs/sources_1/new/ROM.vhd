----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2023 23:57:36
-- Design Name: 
-- Module Name: ROM - Behavioral
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

entity ROM is
port(
addr: in std_logic_vector(7 downto 0);
command: out std_logic_vector(15 downto 0)
);
end ROM;

architecture Behavioral of ROM is

begin
with addr select command<=
    x"8105" when x"00",
    x"0000" when x"01",
    x"9104" when x"02",
    x"9501" when x"03",
    x"8080" when x"04",
    x"C124" when x"05",
    x"9F01" when x"06",
    x"810B" when x"07",
    x"0000" when x"08",
    x"C126" when x"09",
    x"80D0" when x"0A",
    x"8030" when x"0B",
    x"810D" when x"0C",
    x"810C" when x"0D",
    x"8108" when x"FF",
    x"810C" when others;

end Behavioral;