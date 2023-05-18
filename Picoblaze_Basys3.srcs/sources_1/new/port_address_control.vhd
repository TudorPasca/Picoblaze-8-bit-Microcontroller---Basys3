----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 04:47:15 PM
-- Design Name: 
-- Module Name: port_address_control - Behavioral
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

--read mode is '0'
--write mode is '1'
entity port_address_control is
  Port ( 
           sysclk: in std_logic;
          enable: in std_logic;
         mode: in std_logic;
         data: in std_logic_vector (7 downto 0);
         reg_id: in std_logic_vector (7 downto 0);
         cst : in std_logic_vector(7 downto 0);
         oper: in std_logic;
         read_strobe: out std_logic;
         write_strobe: out std_logic;
         anodeCTRL: out std_logic_vector(3 downto 0);
         ssdCTRL: out std_logic_vector(6 downto 0)
  );
end port_address_control;

architecture Behavioral of port_address_control is

component decoderSSD is
port(
value: in std_logic_vector(7 downto 0);
tens, unit: out std_logic_vector(6 downto 0)
);
end component;

component Mod4Counter is
port
(
clk: in std_logic;
output: out std_logic_vector( 1 downto 0)
);
end component;

component clkDivider is
port(
inclk: in std_logic;
outclk: out std_logic
);
end component;

signal prt: std_logic_vector(7 downto 0);
signal clk1: std_logic;
signal sel : std_logic_vector(1 downto 0);
signal tens,unit: std_logic_vector(6 downto 0);
begin

with oper select prt<=
    reg_id when '0',
    cst when '1',
    cst when others;

CK: clkDivider port map(sysclk,clk1);
CT: Mod4Counter port map(clk1,sel);
DEC: decoderSSD port map(data,tens,unit);

with sel select ssdCTRl<=
    unit when "00",
    tens when "01",
    unit when "10",
    tens when "11",
    "1111111" when others;
anodeCTRL(0)<= sel(1) or sel(0) or prt(0) or (not enable);
anodeCTRL(1)<= (not sel(0)) or sel(1) or prt(0) or (not enable);
anodeCTRL(2)<= sel(0) or (not sel(1)) or (not prt(0)) or (not enable); 
anodeCTRL(3)<= (not sel(1)) or (not sel(0)) or (not prt(0)) or (not enable);

process (enable, mode, data)
begin
    if (enable = '1') then
        if (mode = '0') then
            read_strobe <= '1';
            write_strobe <= '0';
        else
            read_strobe <= '0';
            write_strobe <= '1';
        end if;
    else
        read_strobe <= '0';
        write_strobe <= '0';
    end if;
end process;

end Behavioral;
