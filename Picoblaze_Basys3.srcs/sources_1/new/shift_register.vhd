----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.04.2023 18:25:25
-- Design Name: 
-- Module Name: SHIFT_Register - Behavioral
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
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFT_Register is
    port( 
    carry : in std_logic;
    dat_in: in std_logic_vector(7 downto 0);
    ctrl_bits: in std_logic_vector(3 downto 0);
    Q : out std_logic_vector(7 downto 0);
    CF: out std_logic;
    ZF:out std_logic
    );
end SHIFT_Register;

architecture shift_operations of SHIFT_Register is

begin
process(carry,dat_in,ctrl_bits)
variable A: std_logic_vector(7 downto 0):=(others =>'0');
variable sel: std_logic_vector(1 downto 0) := (others=>'0');
variable s: std_logic := '0';
variable C: std_logic := '0';
begin
        sel(0):=ctrl_bits(1);
        sel(1):= ctrl_bits(2);
        if(sel = "00") then 
            s:=carry;
        elsif (sel = "01") then
            s:=dat_in(7);
        elsif (sel ="10") then
            s:=dat_in(0);
        elsif (sel="11") then
            s:=ctrl_bits(0);
        end if;
        if ctrl_bits(3) = '0' then
            C:=dat_in(7);
            for I in 1 to 7 loop
                A(I):= dat_in(I-1);
            end loop;
            A(0):=s;
        else
            C:=dat_in(0);
            for I in 0 to 6 loop
                A(I):= dat_in(I+1);
            end loop;
            A(7):=s;
        end if;
    CF<=C;
    if(A="00000000") then
        ZF<='1';
    else
        ZF<='0';
    end if;
    Q<=A;
end process;

end shift_operations;
