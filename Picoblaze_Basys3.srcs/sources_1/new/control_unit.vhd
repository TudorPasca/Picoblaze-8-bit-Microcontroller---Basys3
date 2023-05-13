----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2023 02:13:18 PM
-- Design Name: 
-- Module Name: control_unit - Behavioral
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

entity control_unit is
  Port (
         CLK: in std_logic;
         RESET: in std_logic;
         command: in std_logic_vector (15 downto 0);
         interrupt: in std_logic;
         enableFlag: out std_logic;
         dir: out std_logic;
         cst: out std_logic_vector (7 downto 0);
         PFenable: out std_logic;
         en: out std_logic;
         operation: out std_logic_vector (4 downto 0);
         code: out std_logic_vector (3 downto 0);
         address1: out std_logic_vector (3 downto 0);
         address2: out std_logic_vector (3 downto 0);
         const: out std_logic_vector (7 downto 0);
         use_const: out std_logic;
         enable_write_memory: out std_logic;
         write_select: out std_logic;
         write_address: out std_logic_vector (3 downto 0);
         out_port_address: out std_logic_vector (3 downto 0)
       );
end control_unit;

architecture Behavioral of control_unit is
signal state: std_logic;
signal mux: std_logic_vector(3 downto 0);
signal sg0: std_logic;
begin

address1 <= command(11 downto 8); 
address2 <= command(7 downto 4);
const <= command(7 downto 0);
write_address <= command(11 downto 8);
out_port_address <= command(11 downto 8);
enable_write_memory <= state and not interrupt;

use_const <= '0' when (command(15 downto 12) = "1100") else '1';
code <= command(3 downto 0) when (command(15 downto 12) = "1100") else command(15 downto 12);
write_select <= '0' when (command(15 downto 12) = "1010" or command(15 downto 12) = "1011") else '1';

T_Flip_Flop: process (CLK)
variable aux: std_logic := '1';
begin
    if (CLK'EVENT and CLK = '1') then
        if (RESET = '0') then
            aux := '0';
        else
            aux := not aux;
        end if;
    end if;
    state <= aux;
end process;
en<=state;
mux<=command(15) & command(14) & command(13) & command(12);
sg0<=command(7) and command(6) and command(4);
PFenable<=command(15) and (not command(14)) and (not command(13));  
operation<=command(12) & command(11) & command(10) & command(9) & command(8);
cst<=command(7) & command(6) & command(5) & command(4) & command(3) & command(2) & command(1) & command(0);
dir<=command(15) and (not command(14)) and (not command(13)) and (not command(12));
--enable flag mux
 with mux select enableFlag<=
 sg0 when x"8",
 '0' when x"9",
 '0' when x"E",
 '0' when x"F",
 '1' when others;

end Behavioral;
