----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 14:20:32
-- Design Name: 
-- Module Name: CF - Behavioral
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

entity CF is
port(
res:in std_logic;
clk : in std_logic;
enable: in std_logic;
dir: in std_logic;
aluFlag: in std_logic;
restoreFlag : in std_logic;
carry :out std_logic
);
end CF;

architecture carryFlag of CF is

begin

process(clk)
variable C: std_logic:='0';
begin
    
    if (clk'EVENT) and clk='1' then
        if( res='0') then
            C:='0';
        else
            if(enable='1') then
                if(dir='0') then
                    C:=aluFlag;
                else 
                    C:=restoreFlag;
                end if;
            end if;
        end if;
    end if;
    carry<=C;
end process;
end carryFlag;
