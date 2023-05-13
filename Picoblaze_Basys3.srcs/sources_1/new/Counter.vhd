----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 11:00:05
-- Design Name: 
-- Module Name: Counter - Behavioral
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

entity Counter is
port(
enable: in std_logic;
clk:in std_logic;
res:in std_logic;
PL: in std_logic;
addrORtop:in std_logic;
stack: in std_logic_vector(7 downto 0);
addr: in std_logic_vector(7 downto 0);
Q: out std_logic_vector(7 downto 0)
);
end Counter;

architecture cnt of Counter is
signal load: std_logic_vector(7 downto 0);
begin

choose: process( stack, addrORtop, addr)
variable state: std_logic_vector(7 downto 0):=x"00";
begin
if(addrORtop='1') then
    state:=addr;
else
    state:= stack;
end if;
load<=state;
end process choose;

cnt_proc : process(clk)
variable state: std_logic_vector(7 downto 0):=(others=>'0');
begin
    if(clk'EVENT) and (clk='1') then
        if(enable='1') then
            if (res='0') then
                state:=x"00";
            else
                if(PL='1') then
                    state:=load;
                else
                    state:=std_logic_vector(unsigned(state)+1);
                end if;
            end if;
       end if;
    end if;
Q<=state;
end process cnt_proc;

end cnt;