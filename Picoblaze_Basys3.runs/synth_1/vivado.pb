
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/utils_1/imports/synth_1/ALU.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/utils_1/imports/synth_1/ALU.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
|
Command: %s
53*	vivadotcl2K
7synth_design -top microcontroller -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
128162default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
ED:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1206.215 ; gain = 409.438
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2#
microcontroller2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
542default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
port_address_control2default:default2|
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
362default:default2
PAC2default:default2(
port_address_control2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
2502default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
port_address_control2default:default2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
522default:default8@Z8-638h px� 
�
default block is never used226*oasys2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
822default:default8@Z8-226h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

clkDivider2default:default2r
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/clkDivider.vhd2default:default2
402default:default2
CK2default:default2

clkDivider2default:default2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
872default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

clkDivider2default:default2t
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/clkDivider.vhd2default:default2
492default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

clkDivider2default:default2
02default:default2
12default:default2t
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/clkDivider.vhd2default:default2
492default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Mod4Counter2default:default2s
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/Mod4Counter.vhd2default:default2
402default:default2
CT2default:default2
Mod4Counter2default:default2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
882default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Mod4Counter2default:default2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/Mod4Counter.vhd2default:default2
502default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Mod4Counter2default:default2
02default:default2
12default:default2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/Mod4Counter.vhd2default:default2
502default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

decoderSSD2default:default2r
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/decoderSSD.vhd2default:default2
192default:default2
DEC2default:default2

decoderSSD2default:default2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
892default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

decoderSSD2default:default2t
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/decoderSSD.vhd2default:default2
282default:default8@Z8-638h px� 
�
default block is never used226*oasys2t
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/decoderSSD.vhd2default:default2
342default:default8@Z8-226h px� 
�
default block is never used226*oasys2t
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/decoderSSD.vhd2default:default2
532default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

decoderSSD2default:default2
02default:default2
12default:default2t
^D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/decoderSSD.vhd2default:default2
282default:default8@Z8-256h px� 
�
default block is never used226*oasys2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
912default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
port_address_control2default:default2
02default:default2
12default:default2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
522default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
control_unit2default:default2t
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/control_unit.vhd2default:default2
342default:default2
CU2default:default2 
control_unit2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
2632default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
control_unit2default:default2v
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/control_unit.vhd2default:default2
612default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
control_unit2default:default2
02default:default2
12default:default2v
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/control_unit.vhd2default:default2
612default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ALU2default:default2k
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
342default:default2
	ALU_Label2default:default2
ALU2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
2872default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ALU2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
472default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
SHIFT_Register2default:default2v
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/shift_register.vhd2default:default2
342default:default2#
SHIFT_OPERATION2default:default2"
SHIFT_Register2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
1982default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
SHIFT_Register2default:default2x
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/shift_register.vhd2default:default2
452default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
SHIFT_Register2default:default2
02default:default2
12default:default2x
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/shift_register.vhd2default:default2
452default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
load_operation2default:default2v
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/load_operation.vhd2default:default2
342default:default2
LOAD_OP2default:default2"
load_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2002default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2"
load_operation2default:default2x
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/load_operation.vhd2default:default2
402default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
load_operation2default:default2
02default:default2
12default:default2x
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/load_operation.vhd2default:default2
402default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
load_operation2default:default2v
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/load_operation.vhd2default:default2
342default:default2$
LOAD_CONSTANT_OP2default:default2"
load_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2012default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
and_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/and_operation.vhd2default:default2
342default:default2
AND_OP2default:default2!
and_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2032default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
and_operation2default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/and_operation.vhd2default:default2
432default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
and_operation2default:default2
02default:default2
12default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/and_operation.vhd2default:default2
432default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
and_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/and_operation.vhd2default:default2
342default:default2#
AND_CONSTANT_OP2default:default2!
and_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2042default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
or_operation2default:default2t
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/or_operation.vhd2default:default2
342default:default2
OR_OP2default:default2 
or_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2062default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
or_operation2default:default2v
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/or_operation.vhd2default:default2
432default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
or_operation2default:default2
02default:default2
12default:default2v
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/or_operation.vhd2default:default2
432default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
or_operation2default:default2t
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/or_operation.vhd2default:default2
342default:default2"
OR_CONSTANT_OP2default:default2 
or_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2072default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
xor_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/xor_operation.vhd2default:default2
342default:default2
XOR_OP2default:default2!
xor_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2092default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
xor_operation2default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/xor_operation.vhd2default:default2
432default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
xor_operation2default:default2
02default:default2
12default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/xor_operation.vhd2default:default2
432default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
xor_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/xor_operation.vhd2default:default2
342default:default2 
XOR_CONST_OP2default:default2!
xor_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2102default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
add_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/add_operation.vhd2default:default2
342default:default2
ADD_OP2default:default2!
add_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2122default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
add_operation2default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/add_operation.vhd2default:default2
432default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
add_operation2default:default2
02default:default2
12default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/add_operation.vhd2default:default2
432default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
add_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/add_operation.vhd2default:default2
342default:default2 
ADD_CONST_OP2default:default2!
add_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2132default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
sub_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/sub_operation.vhd2default:default2
342default:default2
SUB_OP2default:default2!
sub_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2152default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2!
sub_operation2default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/sub_operation.vhd2default:default2
432default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
sub_operation2default:default2
02default:default2
12default:default2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/sub_operation.vhd2default:default2
432default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
sub_operation2default:default2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/sub_operation.vhd2default:default2
342default:default2 
SUB_CONST_OP2default:default2!
sub_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2162default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
addcy_operation2default:default2w
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/addcy_operation.vhd2default:default2
342default:default2
ADDCY_OP2default:default2#
addcy_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2182default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
addcy_operation2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/addcy_operation.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
addcy_operation2default:default2
02default:default2
12default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/addcy_operation.vhd2default:default2
442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
addcy_operation2default:default2w
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/addcy_operation.vhd2default:default2
342default:default2"
ADDCY_CONST_OP2default:default2#
addcy_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2192default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
subcy_operation2default:default2w
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/subcy_operation.vhd2default:default2
342default:default2
SUBCY_OP2default:default2#
subcy_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2212default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
subcy_operation2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/subcy_operation.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
subcy_operation2default:default2
02default:default2
12default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/subcy_operation.vhd2default:default2
442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
subcy_operation2default:default2w
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/subcy_operation.vhd2default:default2
342default:default2"
SUBCY_CONST_OP2default:default2#
subcy_operation2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2222default:default8@Z8-3491h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2'
and_zero_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2(
and_carry_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
and_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2"
and_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2&
or_zero_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2'
or_carry_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2 
or_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
or_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2'
xor_zero_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2(
xor_carry_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
xor_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2"
xor_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2'
add_zero_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2(
add_carry_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
add_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
add_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2"
add_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2)
addcy_zero_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2*
addcy_carry_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	addcy_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2#
addcy_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2$
addcy_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2'
sub_zero_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2(
sub_carry_flag_const2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
sub_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
sub_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2"
sub_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2#
subcy_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2$
subcy_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	subcy_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	shift_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2#
shift_zero_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2$
shift_carry_flag2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2242default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
02default:default2
12default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
472default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
memory_register2default:default2w
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/memory_register.vhd2default:default2
362default:default2
MEMORY2default:default2#
memory_register2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
2992default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
memory_register2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/memory_register.vhd2default:default2
532default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
memory_register2default:default2
02default:default2
12default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/memory_register.vhd2default:default2
532default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ROM2default:default2k
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ROM.vhd2default:default2
342default:default2
MEM2default:default2
ROM2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3142default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ROM2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ROM.vhd2default:default2
412default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ROM2default:default2
02default:default2
12default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ROM.vhd2default:default2
412default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ProgramFlow2default:default2s
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ProgramFlow.vhd2default:default2
342default:default2
PF2default:default2
ProgramFlow2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3152default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ProgramFlow2default:default2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ProgramFlow.vhd2default:default2
482default:default8@Z8-638h px� 
�
default block is never used226*oasys2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ProgramFlow.vhd2default:default2
672default:default8@Z8-226h px� 
�
default block is never used226*oasys2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ProgramFlow.vhd2default:default2
742default:default8@Z8-226h px� 
�
default block is never used226*oasys2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ProgramFlow.vhd2default:default2
882default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ProgramFlow2default:default2
02default:default2
12default:default2u
_D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ProgramFlow.vhd2default:default2
482default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Counter2default:default2o
[D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/Counter.vhd2default:default2
342default:default2
CNT2default:default2
Counter2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3162default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Counter2default:default2q
[D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/Counter.vhd2default:default2
472default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Counter2default:default2
02default:default2
12default:default2q
[D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/Counter.vhd2default:default2
472default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
STACK2default:default2m
YD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/STACK.vhd2default:default2
342default:default2
ST2default:default2
STACK2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3172default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
STACK2default:default2o
YD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/STACK.vhd2default:default2
462default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
STACK2default:default2
02default:default2
12default:default2o
YD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/STACK.vhd2default:default2
462default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CF2default:default2j
VD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/CF.vhd2default:default2
342default:default2
C2default:default2
CF2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3182default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CF2default:default2l
VD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/CF.vhd2default:default2
462default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CF2default:default2
02default:default2
12default:default2l
VD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/CF.vhd2default:default2
462default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ZF2default:default2j
VD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ZF.vhd2default:default2
342default:default2
Z2default:default2
ZF2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3192default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ZF2default:default2l
VD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ZF.vhd2default:default2
462default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ZF2default:default2
02default:default2
12default:default2l
VD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ZF.vhd2default:default2
462default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	FlagStore2default:default2q
]D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/FlagStore.vhd2default:default2
342default:default2
FS2default:default2
	FlagStore2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3202default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	FlagStore2default:default2s
]D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/FlagStore.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	FlagStore2default:default2
02default:default2
12default:default2s
]D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/FlagStore.vhd2default:default2
442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
InterruptBox2default:default2t
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/InterruptBox.vhd2default:default2
342default:default2
INTBOX2default:default2 
InterruptBox2default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
3212default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
InterruptBox2default:default2v
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/InterruptBox.vhd2default:default2
412default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
InterruptBox2default:default2
02default:default2
12default:default2v
`D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/InterruptBox.vhd2default:default2
412default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
microcontroller2default:default2
02default:default2
12default:default2y
cD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/microcontroller.vhd2default:default2
542default:default8@Z8-256h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
prt_reg2default:default2
82default:default2
12default:default2~
hD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/port_address_control.vhd2default:default2
822default:default8@Z8-3936h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
	debug[15]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
	debug[14]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
	debug[11]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
debug[8]2default:default2
02default:defaultZ8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[7]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[6]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[5]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[4]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[3]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[2]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	reg_id[1]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[7]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[6]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[5]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[4]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[3]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[2]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
cst[1]2default:default2(
port_address_control2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1307.445 ; gain = 510.668
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1307.445 ; gain = 510.668
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1307.445 ; gain = 510.668
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1307.4452default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/constrs_1/new/basys3_constr.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2w
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/constrs_1/new/basys3_constr.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2u
aD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/constrs_1/new/basys3_constr.xdc2default:default25
!.Xil/microcontroller_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1413.8712default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1413.8712default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
ED:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
!inferring latch for variable '%s'327*oasys2
s_reg2default:default2x
bD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/shift_register.vhd2default:default2
572default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2,
MUX.zero_flag_buffer_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2332default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2-
MUX.carry_flag_buffer_reg2default:default2m
WD:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/ALU.vhd2default:default2
2492default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
C_reg2default:default2s
]D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/FlagStore.vhd2default:default2
532default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
Z_reg2default:default2s
]D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.srcs/sources_1/new/FlagStore.vhd2default:default2
542default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:13 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               31 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 34    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 15    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 54    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  16 Input    1 Bit        Muxes := 16    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
	debug[15]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
	debug[14]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
	debug[11]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2#
microcontroller2default:default2
debug[8]2default:default2
02default:defaultZ8-3917h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
ALU_Label/SHIFT_OPERATION/s_reg2default:default2#
microcontroller2default:defaultZ8-3332h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/Z_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
e
%enable of latch %s is always disabled264*oasys2

\FS/C_reg 2default:defaultZ8-264h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FS/C_reg2default:default2#
microcontroller2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FS/Z_reg2default:default2#
microcontroller2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    28|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     3|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |     3|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     8|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |     6|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |   147|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    51|
2default:defaulth px� 
D
%s*synth2,
|9     |MUXF7  |     7|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |    42|
2default:defaulth px� 
D
%s*synth2,
|11    |LD     |     1|
2default:defaulth px� 
D
%s*synth2,
|12    |LDP    |     1|
2default:defaulth px� 
D
%s*synth2,
|13    |IBUF   |    13|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUF   |    27|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 45 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:23 . Memory (MB): peak = 1413.871 ; gain = 510.668
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1413.871 ; gain = 617.094
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1413.8712default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
372default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1413.8712default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2t
`  A total of 2 instances were transformed.
  LD => LDCE: 1 instance 
  LDP => LDPE: 1 instance 
2default:defaultZ1-111h px� 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
9e40cd82default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1122default:default2
972default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:242default:default2
00:00:292default:default2
1413.8712default:default2
994.9652default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]D:/Tudor/School/DSD/Vivado/Picoblaze_Basys3/Picoblaze_Basys3.runs/synth_1/microcontroller.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file microcontroller_utilization_synth.rpt -pb microcontroller_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu May 18 14:59:28 20232default:defaultZ17-206h px� 


End Record