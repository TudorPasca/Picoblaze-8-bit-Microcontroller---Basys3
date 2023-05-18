library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 

entity decoderSSD is
port(
value: in std_logic_vector(7 downto 0);
tens, unit: out std_logic_vector(6 downto 0)
);
end decoderSSD;

 

architecture Behavioral of decoderSSD is
signal v1,v2: std_logic_vector(3 downto 0);
begin
v1<=value(7)&value(6)&value(5)&value(4);
v2<=value(3)&value(2)&value(1) & value(0);
-- transforming the high part of binary value to ssd
with v1 select tens<=
    "0000001" when x"0",
    "1001111" when x"1",
    "0010010" when x"2",
    "0000110" when x"3",
    "1001100" when x"4",
    "0100100" when x"5",
    "0100000" when x"6",
    "0001111" when x"7",
    "0000000" when x"8",
    "0000100" when x"9",
    "0001000" when x"A",
    "1100000" when x"B",
    "0110001" when x"C",
    "1000010" when x"D",
    "0110000" when x"E",
    "0111000" when x"F",
    "1111111" when others;       
--- transforming the lower binary part to ssd
with v2 select unit<=
    "0000001" when x"0",
    "1001111" when x"1",
    "0010010" when x"2",
    "0000110" when x"3",
    "1001100" when x"4",
    "0100100" when x"5",
    "0100000" when x"6",
    "0001111" when x"7",
    "0000000" when x"8",
    "0000100" when x"9",
    "0001000" when x"A",
    "1100000" when x"B",
    "0110001" when x"C",
    "1000010" when x"D",
    "0110000" when x"E",
    "0111000" when x"F",
    "1111111" when others;  

end Behavioral;