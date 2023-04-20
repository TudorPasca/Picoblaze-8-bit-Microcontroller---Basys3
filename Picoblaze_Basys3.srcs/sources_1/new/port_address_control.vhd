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
  Port ( enable: in std_logic;
         mode: in std_logic;
         data: in std_logic_vector (7 downto 0);
         read_strobe: out std_logic;
         write_strobe: out std_logic;
         port_id: out std_logic_vector (7 downto 0)
  );
end port_address_control;

architecture Behavioral of port_address_control is

begin

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
        port_id <= data;
    else
        read_strobe <= '0';
        write_strobe <= '0';
    end if;
end process;

end Behavioral;
