----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2023 00:33:54
-- Design Name: 
-- Module Name: InterruptBox - Behavioral
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

entity InterruptBox is
port(
res,clk,interrupt,interruptE, actionNedded: in std_logic;
int: out std_logic 
);
end InterruptBox;

architecture Behavioral of InterruptBox is
signal inti : std_logic;
begin
process(clk)
variable c:std_logic:='0';
begin
	if(rising_edge(clk)) then
		if(res='0') then 
			c:='0';
		else 
			if actionNedded='1' then
			     c:=interruptE;
			end if;
		end if;
	end if;
    inti<=c;
end process;
int<=inti and interrupt;
end Behavioral;
