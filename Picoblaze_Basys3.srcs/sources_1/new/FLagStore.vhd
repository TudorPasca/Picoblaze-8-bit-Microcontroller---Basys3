----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2023 19:18:41
-- Design Name: 
-- Module Name: FlagStore - FlagStore_arc
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

entity FlagStore is
port(
carry: in std_logic;
zero: in std_logic;
interrupt: in std_logic;
restoreCarry: out std_logic;
restoreZero: out std_logic
);
end FlagStore;

architecture FlagStore_arc of FlagStore is

begin

process(interrupt,carry, zero)
variable C: std_logic:='0';
variable Z: std_logic:='0';
begin
if(interrupt='1') then
    C:=carry;
    Z:=zero;
end if;
restoreCarry<=C;
restoreZero<=Z;
end process;

end FlagStore_arc;
