----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2023 10:49:56 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
  Port ( data1: in std_logic_vector (7 downto 0);
         data2: in std_logic_vector (7 downto 0);
         const: in std_logic_vector (7 downto 0);
         mode: in std_logic_vector (3 downto 0);
         use_constant: in std_logic;
         carry_in: in std_logic;
         zero_flag: out std_logic;
         carry_flag: out std_logic;
         result: out std_logic_vector (7 downto 0)
         );
end ALU;

architecture Behavioral of ALU is

component SHIFT_Register is
    port( 
    carry : in std_logic;
    dat_in: in std_logic_vector(7 downto 0);
    ctrl_bits: in std_logic_vector(3 downto 0);
    Q : out std_logic_vector(7 downto 0);
    CF: out std_logic;
    ZF:out std_logic
    );
end component;

component load_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         data : in std_logic_vector (7 downto 0)
  );
end component;

component and_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         zero_flag : out std_logic;
         carry_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end component;

component or_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         zero_flag : out std_logic;
         carry_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end component;

component xor_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         zero_flag : out std_logic;
         carry_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end component;

component add_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         carry_flag : out std_logic;
         zero_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end component;

component addcy_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         carry_flag: out std_logic;
         zero_flag: out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0);
         carry_in : in std_logic
  );
end component;

component sub_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         zero_flag : out std_logic;
         carry_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0)
  );
end component;

component subcy_operation is
  Port ( reg : out std_logic_vector (7 downto 0);
         zero_flag : out std_logic;
         carry_flag : out std_logic;
         data1 : in std_logic_vector (7 downto 0);
         data2 : in std_logic_vector (7 downto 0);
         carry_in : in std_logic
  );
end component;

--signals for SHIFT register
signal shift_reg: std_logic_vector (7 downto 0);
signal shift_zero_flag: std_logic;
signal shift_carry_flag: std_logic; 

--signals for LOAD operation
signal load_reg: std_logic_vector (7 downto 0);
signal load_reg_const: std_logic_vector (7 downto 0);

--signals for AND operation
signal and_reg: std_logic_vector (7 downto 0);
signal and_reg_const: std_logic_vector (7 downto 0);
signal and_zero_flag: std_logic;
signal and_zero_flag_const: std_logic;
signal and_carry_flag: std_logic;
signal and_carry_flag_const: std_logic;

--signals for OR operation
signal or_reg: std_logic_vector (7 downto 0);
signal or_reg_const: std_logic_vector (7 downto 0);
signal or_zero_flag: std_logic;
signal or_zero_flag_const: std_logic;
signal or_carry_flag: std_logic;
signal or_carry_flag_const: std_logic;

--signals for XOR operation
signal xor_reg: std_logic_vector (7 downto 0);
signal xor_reg_const: std_logic_vector (7 downto 0);
signal xor_zero_flag: std_logic;
signal xor_zero_flag_const: std_logic;
signal xor_carry_flag: std_logic;
signal xor_carry_flag_const: std_logic;

--signals for ADD operation
signal add_reg: std_logic_vector (7 downto 0);
signal add_reg_const: std_logic_vector (7 downto 0);
signal add_zero_flag: std_logic;
signal add_zero_flag_const: std_logic;
signal add_carry_flag: std_logic;
signal add_carry_flag_const: std_logic;

--signals for SUB operation
signal sub_reg: std_logic_vector (7 downto 0);
signal sub_reg_const: std_logic_vector (7 downto 0);
signal sub_zero_flag: std_logic;
signal sub_zero_flag_const: std_logic;
signal sub_carry_flag: std_logic;
signal sub_carry_flag_const: std_logic;

--signals for ADDCY operation
signal addcy_reg: std_logic_vector (7 downto 0);
signal addcy_reg_const: std_logic_vector (7 downto 0);
signal addcy_zero_flag: std_logic;
signal addcy_zero_flag_const: std_logic;
signal addcy_carry_flag: std_logic;
signal addcy_carry_flag_const: std_logic;

--signals for SUBCY operation
signal subcy_reg: std_logic_vector (7 downto 0);
signal subcy_reg_const: std_logic_vector (7 downto 0);
signal subcy_zero_flag: std_logic;
signal subcy_zero_flag_const: std_logic;
signal subcy_carry_flag: std_logic;
signal subcy_carry_flag_const: std_logic;

begin

SHIFT_OPERATION: SHIFT_Register port map (carry => carry_in, dat_in => data1, ctrl_bits => const(3 downto 0), Q => shift_reg, CF => shift_carry_flag, ZF => shift_zero_flag);

LOAD_OP: load_operation port map (reg => load_reg, data => data2);
LOAD_CONSTANT_OP: load_operation port map (reg => load_reg_const, data => const);

AND_OP: and_operation port map (reg => and_reg, zero_flag => and_zero_flag, carry_flag => and_carry_flag, data1 => data1, data2 => data2);
AND_CONSTANT_OP: and_operation port map (reg => and_reg_const, zero_flag => and_zero_flag_const, carry_flag => and_carry_flag_const, data1 => data1, data2 => const);

OR_OP: or_operation port map (reg => or_reg, zero_flag => or_zero_flag, carry_flag => or_carry_flag, data1 => data1, data2 => data2);
OR_CONSTANT_OP: or_operation port map (reg => or_reg_const, zero_flag => or_zero_flag_const, carry_flag => or_carry_flag_const, data1 => data1, data2 => const);

XOR_OP: xor_operation port map (reg => xor_reg, zero_flag => xor_zero_flag, carry_flag => xor_carry_flag, data1 => data1, data2 => data2);
XOR_CONST_OP: xor_operation port map (reg => xor_reg_const, zero_flag => xor_zero_flag_const, carry_flag => xor_carry_flag_const, data1 => data1, data2 => const);

ADD_OP: add_operation port map (reg => add_reg, zero_flag => add_zero_flag, carry_flag => add_carry_flag, data1 => data1, data2 => data2);
ADD_CONST_OP: add_operation port map (reg => add_reg_const, zero_flag => add_zero_flag_const, carry_flag => add_carry_flag_const, data1 => data1, data2 => const);

SUB_OP: sub_operation port map (reg => sub_reg, zero_flag => sub_zero_flag, carry_flag => sub_carry_flag, data1 => data1, data2 => data2);
SUB_CONST_OP: sub_operation port map (reg => sub_reg_const, zero_flag => sub_zero_flag_const, carry_flag => sub_carry_flag_const, data1 => data1, data2 => const);

ADDCY_OP: addcy_operation port map (reg => addcy_reg, zero_flag => addcy_zero_flag, carry_flag => addcy_carry_flag, data1 => data1, data2 => data2, carry_in => carry_in);
ADDCY_CONST_OP: addcy_operation port map (reg => addcy_reg_const, zero_flag => addcy_zero_flag_const, carry_flag => addcy_carry_flag_const, data1 => data1, data2 => const, carry_in => carry_in);

SUBCY_OP: subcy_operation port map (reg => subcy_reg, zero_flag => subcy_zero_flag, carry_flag => subcy_carry_flag, data1 => data1, data2 => data2, carry_in => carry_in);
SUBCY_CONST_OP: subcy_operation port map (reg => subcy_reg_const, zero_flag => subcy_zero_flag_const, carry_flag => subcy_carry_flag_const, data1 => data1, data2 => const, carry_in => carry_in);

MUX: process (mode, data1, data2, const, carry_in, use_constant, load_reg, load_reg_const, or_reg, or_reg_const, and_reg, and_reg_const, xor_reg, xor_reg_const, add_reg_const, addcy_reg_const, sub_reg_const, subcy_reg_const)
variable result_buffer: std_logic_vector (7 downto 0);
variable zero_flag_buffer: std_logic := '0';
variable carry_flag_buffer: std_logic := '0';
begin
    if (mode = "0000") then
        if (use_constant = '1') then
            result_buffer := load_reg_const;
            if (result_buffer = x"00") then
                zero_flag_buffer := '1';
            else
                zero_flag_buffer := '0';
            end if;
        else
            result_buffer := load_reg;
            if (result_buffer = x"00") then
                zero_flag_buffer := '1';
            else
                zero_flag_buffer := '0';
            end if;
        end if;
    elsif (mode = "0001") then
        if (use_constant = '1') then
            result_buffer := and_reg_const;
            zero_flag_buffer := and_zero_flag_const;
            carry_flag_buffer := and_carry_flag_const;
        else
            result_buffer := and_reg;
            zero_flag_buffer := and_zero_flag;
            carry_flag_buffer := and_carry_flag;
        end if;
    elsif (mode = "0010") then
        report "OR operation";
        if (use_constant = '1') then
            result_buffer := or_reg_const;
            zero_flag_buffer := or_zero_flag_const;
            carry_flag_buffer := or_carry_flag_const;
        else
            result_buffer := or_reg;
            zero_flag_buffer := or_zero_flag;
            carry_flag_buffer := or_carry_flag;
        end if;
    elsif (mode = "0011") then
        if (use_constant = '1') then
            result_buffer := xor_reg_const;
            zero_flag_buffer := xor_zero_flag_const;
            carry_flag_buffer := xor_carry_flag_const;
        else
            result_buffer := xor_reg;
            zero_flag_buffer := xor_zero_flag;
            carry_flag_buffer := xor_carry_flag;
        end if;
    elsif (mode = "0100") then
        if (use_constant = '1') then
            result_buffer := add_reg_const;
            zero_flag_buffer := add_zero_flag_const;
            carry_flag_buffer := add_carry_flag_const;
        else
            result_buffer := add_reg;
            zero_flag_buffer := add_zero_flag;
            carry_flag_buffer := add_carry_flag;
        end if;
    elsif (mode = "0101") then
        if (use_constant = '1') then
            result_buffer := addcy_reg_const;
            zero_flag_buffer := addcy_zero_flag_const;
            carry_flag_buffer := addcy_carry_flag_const;
        else
            result_buffer := addcy_reg;
            zero_flag_buffer := addcy_zero_flag;
            carry_flag_buffer := addcy_carry_flag;
        end if;
    elsif (mode = "0110") then
        if (use_constant = '1') then
            result_buffer := sub_reg_const;
            zero_flag_buffer := sub_zero_flag_const;
            carry_flag_buffer := sub_carry_flag_const;
        else
            result_buffer := sub_reg;
            zero_flag_buffer := sub_zero_flag;
            carry_flag_buffer := sub_carry_flag;
        end if;
    elsif (mode = "0111") then
        if (use_constant = '1') then
            result_buffer := subcy_reg_const;
            zero_flag_buffer := subcy_zero_flag;
            carry_flag_buffer := subcy_carry_flag;
        else
            result_buffer := subcy_reg;
            zero_flag_buffer := subcy_zero_flag;
            carry_flag_buffer := subcy_carry_flag;
        end if;
    elsif (mode = "1101") then
        result_buffer := shift_reg;
        zero_flag_buffer := shift_zero_flag;
        carry_flag_buffer := shift_carry_flag;
    else
        result_buffer := "00000000";
    end if;
    result <= result_buffer;
    zero_flag <= zero_flag_buffer;
    carry_flag <= carry_flag_buffer;
end process;
end Behavioral;
