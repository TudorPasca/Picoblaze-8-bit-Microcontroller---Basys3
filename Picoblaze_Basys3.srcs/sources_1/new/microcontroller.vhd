----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 03:20:54 PM
-- Design Name: 
-- Module Name: microcontroller - Behavioral
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

entity microcontroller is
  Port ( CLK: in std_logic; 
         res: in std_logic;
         interrupt: in std_logic;
         --test_address1: out std_logic_vector (3 downto 0);
         --test_reg1: out std_logic_vector (7 downto 0);
         --state_zero_flag: out std_logic;
         --state_carry_flag: out std_logic;
         --counter1: out std_logic_vector(7 downto 0)
         state_command: out std_logic_vector (15 downto 0)
        );
end microcontroller;

architecture Behavioral of microcontroller is

component ALU is
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
end component;

signal zero_flag: std_logic;
signal carry_flag: std_logic;
signal result: std_logic_vector (7 downto 0);

component control_unit is
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
end component;

signal code: std_logic_vector (3 downto 0);
signal address1: std_logic_vector (3 downto 0);
signal address2: std_logic_vector (3 downto 0);
signal const: std_logic_vector (7 downto 0);
signal use_const: std_logic;
signal enable_write_memory: std_logic;
signal write_select: std_logic;
signal write_address: std_logic_vector (3 downto 0);
signal out_port_address: std_logic_vector (3 downto 0);

component memory_register is
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
end component;

signal out_port: std_logic_vector (7 downto 0);
signal alu_reg1: std_logic_vector (7 downto 0);
signal alu_reg2: std_logic_vector (7 downto 0);

component CF is
port(
res:in std_logic;
clk : in std_logic;
enable: in std_logic;
dir: in std_logic;
aluFlag: in std_logic;
restoreFlag : in std_logic;
carry :out std_logic
);
end component;

component FlagStore is
port(
carry: in std_logic;
zero: in std_logic;
interrupt: in std_logic;
restoreCarry: out std_logic;
restoreZero: out std_logic
);
end component;

component InterruptBox is
port(
res,clk,interrupt,interruptE, actionNedded: in std_logic;
int: out std_logic 
);
end component;

component ProgramFlow is
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
end component;

component ROM is
port(
addr: in std_logic_vector(7 downto 0);
command: out std_logic_vector(15 downto 0)
);
end component;

component STACK is
port(
interruptORcall : in std_logic;
res: in std_logic;
clk : in std_logic;
enable: in std_logic;
op :in std_logic;
addr: in std_logic_vector(7 downto 0);
top: out std_logic_vector(7 downto 0)
);
end component;

component ZF is
port(
res:in std_logic;
clk : in std_logic;
enable: in std_logic;
dir: in std_logic;
aluFlag: in std_logic;
restoreFlag : in std_logic;
zero :out std_logic
);
end component;

component Counter is
port(
enable: in std_logic;
clk:in std_logic;
res:in std_logic;
PL: in std_logic;
addrORtop:in std_logic;
stack: in std_logic_vector(7 downto 0);
addr: in std_logic_vector(7 downto 0);
Q: out std_logic_vector(7 downto 0)
);
end component;

signal address,addr,top,cst: std_logic_vector(7 downto 0);
signal operation: std_logic_vector(4 downto 0);
signal enableFlags,dir,PFenable,en,int, coppy:std_logic;
signal restoreZero,restoreCarry,carry,zero,interruptEnable,actionNedded: std_logic;
signal PL,addrORtop,countEnable,stackEnable,op,interruptORcall: std_logic;
signal command: std_logic_vector (15 downto 0);

begin

--command: in std_logic_vector (15 downto 0);
--         interrupt: in std_logic;
--         enableFlag: out std_logic;
--         dir: out std_logic;
--         cst: out std_logic_vector (7 downto 0);
--         PFenable: out std_logic;
--         en: out std_logic;
--         operation: out std_logic_vector (4 downto 0);

CU: control_unit port map ( RESET => res,
                            CLK => CLK,
                            command => command,
                            interrupt => interrupt,
                            enableFlag => enableFlags,
                            dir => dir,
                            cst => cst,
                            PFenable => PFenable,
                            en => en,
                            operation => operation,
                            code => code,
                            address1 => address1,
                            address2 => address2,
                            const => const,
                            use_const => use_const,
                            enable_write_memory => enable_write_memory,
                            write_select => write_select,
                            write_address => write_address,
                            out_port_address => out_port_address
                          );
                          
ALU_Label: ALU port map (
                  data1 => alu_reg1,
                  data2 => alu_reg2,
                  const => const,
                  mode => code,
                  use_constant => use_const,
                  carry_in => '0',
                  zero_flag => zero_flag,
                  carry_flag => carry_flag,
                  result => result
                );
                
MEMORY: memory_register port map ( CLK => CLK,
                                   RESET => '1',
                                   enable => enable_write_memory,
                                   in_port => "11111111",
                                   alu_result => result,
                                   write_select => write_select,
                                   write_address => write_address,
                                   out_port_address => out_port_address,
                                   alu_reg1_address => address1,
                                   alu_reg2_address => address2,
                                   out_port => out_port,
                                   alu_reg1 => alu_reg1,
                                   alu_reg2 => alu_reg2
                                  );       

MEM: ROM port map(address,command);
PF: ProgramFlow port map(carry,zero,int,en,PFenable,operation,cst,countEnable,PL,addrORtop,addr,stackEnable,op,interruptORcall,interruptEnable,actionNedded);
CNT: Counter port map(countEnable,clk,res,Pl,addrORtop,top,addr,address);
ST: STACK port map(interruptORcall,res,clk,stackEnable,op,address,top);
C: CF port map(res,clk,enableFlags,dir,carry_flag,restoreCarry,carry);
Z: ZF port map(res,clk,enableFlags,dir,zero_flag,restoreZero,zero);
FS: FlagStore port map(carry,zero,int,restoreCarry,restoreZero);
INTBOX: InterruptBox port map(res,clk,interrupt,interruptEnable,actionNedded,int);

--test_address1 <= address1;
--test_reg1 <= alu_reg1;
--state_zero_flag <= zero_flag;
--state_carry_flag <= carry_flag;
--counter1 <= address;

state_command <= command;

end Behavioral;
