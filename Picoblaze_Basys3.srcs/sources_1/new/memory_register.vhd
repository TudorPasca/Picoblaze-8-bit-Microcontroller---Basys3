----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 06:53:19 PM
-- Design Name: 
-- Module Name: memory_register - Behavioral
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

--The memory ALWAYS SENDS values to out_port and the ALU registers
--WRITE happens only when ENABLE = '1'
entity memory_register is
  Port ( CLK: in std_logic;
         RESET: in std_logic;
         enable: in std_logic;
         in_port: in std_logic_vector (7 downto 0);
         alu_result: in std_logic_vector (7 downto 0);
         write_select: in std_logic;
         write_address: in std_logic_vector (3 downto 0);
         out_port_address: in std_logic_vector (3 downto 0);
         alu_reg1_address: in std_logic_vector (3 downto 0);
         alu_reg2_address: in std_logic_vector (3 downto 0);
         out_port: out std_logic_vector (7 downto 0);
         alu_reg1: out std_logic_vector (7 downto 0);
         alu_reg2: out std_logic_vector (7 downto 0)
  );
end memory_register;

architecture Behavioral of memory_register is

signal s0: std_logic_vector (7 downto 0);
signal s1: std_logic_vector (7 downto 0);
signal s2: std_logic_vector (7 downto 0);
signal s3: std_logic_vector (7 downto 0);
signal s4: std_logic_vector (7 downto 0);
signal s5: std_logic_vector (7 downto 0);
signal s6: std_logic_vector (7 downto 0);
signal s7: std_logic_vector (7 downto 0);
signal s8: std_logic_vector (7 downto 0);
signal s9: std_logic_vector (7 downto 0);
signal sA: std_logic_vector (7 downto 0);
signal sB: std_logic_vector (7 downto 0);
signal sC: std_logic_vector (7 downto 0);
signal sD: std_logic_vector (7 downto 0);
signal sE: std_logic_vector (7 downto 0);
signal sF: std_logic_vector (7 downto 0);

begin

WRITE: process (CLK)
variable write_value: std_logic_vector (7 downto 0);
begin
    if (falling_edge(CLK)) then
        if (RESET = '0') then
            s0 <= "00000000";
            s1 <= "00000000";
            s2 <= "00000000";
            s3 <= "00000000";
            s4 <= "00000000";
            s5 <= "00000000";
            s6 <= "00000000";
            s7 <= "00000000";
            s8 <= "00000000";
            s9 <= "00000000";
            sA <= "00000000";
            sB <= "00000000";
            sC <= "00000000";
            sD <= "00000000";
            sE <= "00000000";
            sF <= "00000000";
        elsif (enable = '1') then
            if (write_select = '0') then
                write_value := in_port;
            else
                write_value := alu_result;
            end if;
            case write_address is
                when "0000" => s0 <= write_value;
                when "0001" => s1 <= write_value;
                when "0010" => s2 <= write_value;
                when "0011" => s3 <= write_value;
                when "0100" => s4 <= write_value;
                when "0101" => s5 <= write_value;
                when "0110" => s6 <= write_value;
                when "0111" => s7 <= write_value;
                when "1000" => s8 <= write_value;
                when "1001" => s9 <= write_value;
                when "1010" => sA <= write_value;
                when "1011" => sB <= write_value;
                when "1100" => sC <= write_value;
                when "1101" => sD <= write_value;
                when "1110" => sE <= write_value;
                when others => sF <= write_value;
            end case;
       end if;
    end if;
end process;

out_port <= s0 when out_port_address = "0000" else
            s1 when out_port_address = "0001" else
            s2 when out_port_address = "0010" else
            s3 when out_port_address = "0011" else
            s4 when out_port_address = "0100" else
            s5 when out_port_address = "0101" else
            s6 when out_port_address = "0110" else
            s7 when out_port_address = "0111" else
            s8 when out_port_address = "1000" else
            s9 when out_port_address = "1001" else
            sA when out_port_address = "1010" else
            sB when out_port_address = "1011" else
            sC when out_port_address = "1100" else
            sD when out_port_address = "1101" else
            sE when out_port_address = "1110" else
            sF;
            
alu_reg1 <= s0 when alu_reg1_address = "0000" else
            s1 when alu_reg1_address = "0001" else
            s2 when alu_reg1_address = "0010" else
            s3 when alu_reg1_address = "0011" else
            s4 when alu_reg1_address = "0100" else
            s5 when alu_reg1_address = "0101" else
            s6 when alu_reg1_address = "0110" else
            s7 when alu_reg1_address = "0111" else
            s8 when alu_reg1_address = "1000" else
            s9 when alu_reg1_address = "1001" else
            sA when alu_reg1_address = "1010" else
            sB when alu_reg1_address = "1011" else
            sC when alu_reg1_address = "1100" else
            sD when alu_reg1_address = "1101" else
            sE when alu_reg1_address = "1110" else
            sF;

alu_reg2 <= s0 when alu_reg2_address = "0000" else
            s1 when alu_reg2_address = "0001" else
            s2 when alu_reg2_address = "0010" else
            s3 when alu_reg2_address = "0011" else
            s4 when alu_reg2_address = "0100" else
            s5 when alu_reg2_address = "0101" else
            s6 when alu_reg2_address = "0110" else
            s7 when alu_reg2_address = "0111" else
            s8 when alu_reg2_address = "1000" else
            s9 when alu_reg2_address = "1001" else
            sA when alu_reg2_address = "1010" else
            sB when alu_reg2_address = "1011" else
            sC when alu_reg2_address = "1100" else
            sD when alu_reg2_address = "1101" else
            sE when alu_reg2_address = "1110" else
            sF;

--READ: process (CLK)
--variable out_port_buffer: std_logic_vector (7 downto 0) := "00000000";
--variable alu_reg1_buffer: std_logic_vector (7 downto 0) := "00000000";
--variable alu_reg2_buffer: std_logic_vector (7 downto 0) := "00000000";
--begin     
--    if (CLK'EVENT and CLK = '1') then
--        case out_port_address is
--            when "0000" => out_port_buffer := s0;
--            when "0001" => out_port_buffer := s1;
--            when "0010" => out_port_buffer := s2;
--            when "0011" => out_port_buffer := s3;
--            when "0100" => out_port_buffer := s4;
--            when "0101" => out_port_buffer := s5;
--            when "0110" => out_port_buffer := s6;
--            when "0111" => out_port_buffer := s7;
--            when "1000" => out_port_buffer := s8;
--            when "1001" => out_port_buffer := s9;
--            when "1010" => out_port_buffer := sA;
--            when "1011" => out_port_buffer := sB;
--            when "1100" => out_port_buffer := sC;
--            when "1101" => out_port_buffer := sD;
--            when "1110" => out_port_buffer := sE;
--            when others => out_port_buffer := sF;
--        end case;
--        case alu_reg1_address is
--            when "0000" => alu_reg1_buffer := s0;
--            when "0001" => alu_reg1_buffer := s1;
--            when "0010" => alu_reg1_buffer := s2;
--            when "0011" => alu_reg1_buffer := s3;
--            when "0100" => alu_reg1_buffer := s4;
--            when "0101" => alu_reg1_buffer := s5;
--            when "0110" => alu_reg1_buffer := s6;
--            when "0111" => alu_reg1_buffer := s7;
--            when "1000" => alu_reg1_buffer := s8;
--            when "1001" => alu_reg1_buffer := s9;
--            when "1010" => alu_reg1_buffer := sA;
--            when "1011" => alu_reg1_buffer := sB;
--            when "1100" => alu_reg1_buffer := sC;
--            when "1101" => alu_reg1_buffer := sD;
--            when "1110" => alu_reg1_buffer := sE;
--            when others => alu_reg1_buffer := sF;
--        end case;
--        case alu_reg2_address is
--            when "0000" => alu_reg2_buffer := s0;
--            when "0001" => alu_reg2_buffer := s1;
--            when "0010" => alu_reg2_buffer := s2;
--            when "0011" => alu_reg2_buffer := s3;
--            when "0100" => alu_reg2_buffer := s4;
--            when "0101" => alu_reg2_buffer := s5;
--            when "0110" => alu_reg2_buffer := s6;
--            when "0111" => alu_reg2_buffer := s7;
--            when "1000" => alu_reg2_buffer := s8;
--            when "1001" => alu_reg2_buffer := s9;
--            when "1010" => alu_reg2_buffer := sA;
--            when "1011" => alu_reg2_buffer := sB;
--            when "1100" => alu_reg2_buffer := sC;
--            when "1101" => alu_reg2_buffer := sD;
--            when "1110" => alu_reg2_buffer := sE;
--            when others => alu_reg2_buffer := sF;
--       end case;
--       alu_reg1 <= alu_reg1_buffer;
--       alu_reg2 <= alu_reg2_buffer;
--       out_port <= out_port_buffer;
--    end if;
--end process;

end Behavioral;
