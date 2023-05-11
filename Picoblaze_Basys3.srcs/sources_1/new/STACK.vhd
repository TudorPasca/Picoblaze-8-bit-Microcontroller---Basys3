----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2023 21:15:08
-- Design Name: 
-- Module Name: STACK - Behavioral
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

entity STACK is
port(
interruptORcall : in std_logic;
res: in std_logic;
clk : in std_logic;
enable: in std_logic;
op :in std_logic;
addr: in std_logic_vector(7 downto 0);
top: out std_logic_vector(7 downto 0)
);
end STACK;

architecture stck of STACK is
signal load: std_logic_vector(7 downto 0);
signal pos : unsigned(3 downto 0);
type st is array (0 to 15)of std_logic_vector(7 downto 0);
begin

choose_proc :process(interruptORcall, addr)
variable state: std_logic_vector(7 downto 0):=x"00";
begin
    if(interruptORcall = '1') then 
        state:=addr;
    else
        state:=std_logic_vector(unsigned(addr)+1);
    end if;
    load<= state;
end process choose_proc;

position : process(clk)
variable p :natural := 0;
begin
    if(rising_edge(clk)) then
        if(res='0') then
            p:=0;
        end if;
        if enable='1' then
            if(op='1') then
                p:=p+1;
            else
                P:=p-1;
            end if;
        end if;   
    end if;
    pos<= TO_UNSIGNED(p,4 );
end process position;

st_proc : process(clk)
variable prog_stack : st;
variable state: std_logic_vector(7 downto 0):=(others=>'0'); 

begin
    if( rising_edge(clk)) then
       if(enable ='1') then
            if(res = '0') then
                state:=x"00";
                prog_stack(0):=x"00";
            else
                if(op='1') then
                    prog_stack(TO_integer(pos)+1):=load;
                    state:=load;             
                else
                    state:=prog_stack(TO_integer(pos));
                end if;
            end if;
      end if;
    end if;
top<=state;
end process st_proc;

end stck;
