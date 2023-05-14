----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2023 14:52:47
-- Design Name: 
-- Module Name: ProgramFlow - Behavioral
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

entity ProgramFlow is
port(
CF, ZF : in std_logic;
interrupt: in std_logic;
enable, PFenable: in std_logic;
operation: in std_logic_vector(4 downto 0);
cst: in std_logic_vector(7 downto 0);
countEnable, PL, addrORtop: out std_logic;
addr: out std_logic_vector(7 downto 0);
stackEnable, op, interruptOrcall: out std_logic;
interruptEnable, actionNedded: out std_logic
);
end ProgramFlow;

architecture Behavioral of ProgramFlow is
signal sg1,sg2, sg3,sg4,sg5: std_logic;
signal mux1: std_logic_vector(2 downto 0);
signal mux2: std_logic_vector(1 downto 0);
begin
sg5<=operation(0) or cst(7);
mux1<=operation(4)&operation(3)&operation(2);
mux2<=operation(1)&operation(0);
    -- the multiplexor for choosing the parallel loading
    with mux1 select sg1<=
        ZF when "100",
        (not ZF) when "101",
        CF when "110",
        (not CF) when "111",
        sg5 when "000",
        '1' when others;
        sg4<=(sg1 and PFenable) or interrupt;
        PL<=sg4;
    -- the multiplexor for the addres
    with interrupt select addr<=
        cst when '0',
        x"FF" when '1',
        cst when others;
    -- the addrOrtop function
    addrORtop<=operation(1)or operation(0) or interrupt;
    -- the multiplexor for the stack enable
    with mux2 select sg3<=
        '1' when "00",
        '0' when "01",
        '0' when "10",
        '1' when "11",
        '0' when others;
    stackEnable<=enable and sg3 and sg4;
    -- the multiplexor for the stack operation
    with mux2 select sg2<= 
        '1' when "11",
        '0' when others;    
    op<=interrupt or sg2;
    interruptORcall<=interrupt;
    -- the neccesary action in interrupt
    with interrupt select interruptEnable<=
    cst(5) when '0',
    '0' when '1',
    '0' when others;
    actionNedded<=((not operation(1)) and ( not operation(0)) and cst(4) and PFenable) or interrupt;
    countEnable<=enable;
end Behavioral;