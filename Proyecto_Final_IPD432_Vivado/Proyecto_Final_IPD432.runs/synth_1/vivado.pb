
r
Command: %s
53*	vivadotcl2A
-synth_design -top main -part xc7a100tcsg324-32default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 360.652 ; gain = 94.902
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
main2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
242default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2

uart_basic2default:default2~
hE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_basic.v2default:default2
102default:default8@Z8-638h px� 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2&
uart_baud_tick_gen2default:default2�
pE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-638h px� 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ACC_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter SHIFT_LIMITER bound to: 7 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter INCREMENT bound to: 2416 - type: integer 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
keep2default:default2
true2default:default2�
pE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_baud_tick_gen.v2default:default2
382default:default8@Z8-5534h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2&
uart_baud_tick_gen2default:default2
12default:default2
12default:default2�
pE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uart_rx2default:default2{
eE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_rx.v2default:default2
102default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter RX_IDLE bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter RX_START bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter RX_RECV bound to: 2 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter RX_STOP bound to: 3 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter RX_READY bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
	data_sync2default:default2}
gE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/data_sync.v2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	data_sync2default:default2
22default:default2
12default:default2}
gE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/data_sync.v2default:default2
112default:default8@Z8-256h px� 
�
-case statement is not full and has no default155*oasys2{
eE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_rx.v2default:default2
782default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx2default:default2
32default:default2
12default:default2{
eE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_rx.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys26
"uart_baud_tick_gen__parameterized02default:default2�
pE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-638h px� 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ACC_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter SHIFT_LIMITER bound to: 4 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter INCREMENT bound to: 302 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys26
"uart_baud_tick_gen__parameterized02default:default2
32default:default2
12default:default2�
pE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
uart_tx2default:default2{
eE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_tx.v2default:default2
102default:default8@Z8-638h px� 
P
%s
*synth28
$	Parameter TX_IDLE bound to: 2'b00 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter TX_START bound to: 2'b01 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter TX_SEND bound to: 2'b10 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter TX_STOP bound to: 2'b11 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_tx2default:default2
42default:default2
12default:default2{
eE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_tx.v2default:default2
102default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

uart_basic2default:default2
52default:default2
12default:default2~
hE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/uart_basic.v2default:default2
102default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2%
rx_tx_cmd_decoder2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
232default:default8@Z8-638h px� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter W_1 bound to: 4'b0001 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter W_2 bound to: 4'b0010 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter WRITING_A0 bound to: 4'b0011 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter WRITING_A2 bound to: 4'b0101 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter PROC_UART bound to: 4'b1111 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter UART bound to: 4'b1110 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter START_WAV bound to: 4'b1100 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter WAIT_WAV bound to: 4'b1011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter SEND_WAV bound to: 4'b1010 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter cero bound to: 15'b000000000000000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter suma_1 bound to: 15'b000000000000001 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ADD_TOT bound to: 15'b101011111100100 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ROWS bound to: 9'b010010110 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter COL bound to: 9'b100101100 
2default:defaulth p
x
� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
op_ready_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1172default:default8@Z8-6014h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
rx_tx_cmd_decoder2default:default2
62default:default2
12default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
232default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
haar_wavelet2default:default2w
aE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/haar_wavelet.v2default:default2
232default:default8@Z8-638h px� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter LECTURA bound to: 4'b0001 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ESCRITURA bound to: 4'b0010 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter FINISH bound to: 4'b0011 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter WATERMARK bound to: 4'b0100 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter cero bound to: 15'b000000000000000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter suma_1 bound to: 15'b000000000000001 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ADD_TOT bound to: 15'b101011111100100 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
haar_wavelet2default:default2
72default:default2
12default:default2w
aE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/haar_wavelet.v2default:default2
232default:default8@Z8-256h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
	mem_in_LL2default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1372default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
	mem_in_LH2default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1372default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
	mem_in_HL2default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1372default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
	mem_in_HH2default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1372default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_LL_22default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1382default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_LH_22default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1382default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_HL_22default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1382default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_HH_22default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1382default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_LL_32default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1392default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_LH_32default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1392default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_HL_32default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1392default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
mem_in_HH_32default:default2
102default:default2 
haar_wavelet2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1392default:default8@Z8-689h px� 
�
synthesizing module '%s'638*oasys2(
haar_wavelet_inversa2default:default2
iE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/haar_wavelet_inversa.v2default:default2
232default:default8@Z8-638h px� 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter LECTURA bound to: 4'b0001 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ESCRITURA bound to: 4'b0010 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter FINISH bound to: 4'b0011 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter cero bound to: 15'b000000000000000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter suma_1 bound to: 15'b000000000000001 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ADD_TOT bound to: 15'b101011111100100 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
haar_wavelet_inversa2default:default2
82default:default2
12default:default2
iE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/haar_wavelet_inversa.v2default:default2
232default:default8@Z8-256h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2

mem_out_LL2default:default2
122default:default2(
haar_wavelet_inversa2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1642default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2

mem_out_LH2default:default2
122default:default2(
haar_wavelet_inversa2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1642default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2

mem_out_HL2default:default2
122default:default2(
haar_wavelet_inversa2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1642default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2

mem_out_HH2default:default2
122default:default2(
haar_wavelet_inversa2default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
1642default:default8@Z8-689h px� 
�
synthesizing module '%s'638*oasys2
BRAM2default:default2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/realtime/BRAM_stub.v2default:default2
62default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BRAM2default:default2
92default:default2
12default:default2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/realtime/BRAM_stub.v2default:default2
62default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2#
unsigned_to_bcd2default:default2�
mE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/unsigned_to_bcd.v2default:default2
222default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter S_IDLE bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter S_SHIFT bound to: 2 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter S_ADD3 bound to: 4 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter COUNTER_MAX bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
unsigned_to_bcd2default:default2
102default:default2
12default:default2�
mE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/unsigned_to_bcd.v2default:default2
222default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
clk_divider2default:default2
iE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/clk_divider.v2default:default2
192default:default8@Z8-638h px� 
a
%s
*synth2I
5	Parameter O_CLK_FREQ bound to: 480 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter COUNTER_MAX bound to: 104165 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_divider2default:default2
112default:default2
12default:default2
iE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/clk_divider.v2default:default2
192default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
display_mux2default:default2
iE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/display_mux.v2default:default2
102default:default8@Z8-638h px� 
T
%s
*synth2<
(	Parameter DIG_0 bound to: 8'b00000001 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_1 bound to: 8'b00000010 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_2 bound to: 8'b00000100 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_3 bound to: 8'b00001000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_4 bound to: 8'b00010000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_5 bound to: 8'b00100000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_6 bound to: 8'b01000000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter DIG_7 bound to: 8'b10000000 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
	bcd_to_ss2default:default2}
gE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/bcd_to_ss.v2default:default2
92default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	bcd_to_ss2default:default2
122default:default2
12default:default2}
gE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/bcd_to_ss.v2default:default2
92default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
display_mux2default:default2
132default:default2
12default:default2
iE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/imports/uart/display_mux.v2default:default2
102default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
main2default:default2
142default:default2
12default:default2o
YE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/main.v2default:default2
242default:default8@Z8-256h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[0]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[15]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[14]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[13]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[12]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[11]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[10]2default:defaultZ8-3331h px� 
y
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[9]2default:defaultZ8-3331h px� 
y
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[8]2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 404.738 ; gain = 138.988
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 404.738 ; gain = 138.988
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
Loading part %s157*device2$
xc7a100tcsg324-32default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

MEMORIA_A3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A0_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A0_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A1_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A1_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A2_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A2_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A3_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2"
MEMORIA_A3_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LL_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LL_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LH_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LH_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HL_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HL_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HH_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HH_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LL_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LL_3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LH_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_LH_3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HL_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HL_3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HH_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2 

BANDA_HH_3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2&
MEMORIA_A0_REC_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2&
MEMORIA_A0_REC_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2$
MEMORIA_A1_REC	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2$
MEMORIA_A1_REC	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2$
MEMORIA_A2_REC	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2$
MEMORIA_A2_REC	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2$
MEMORIA_A3_REC	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�E:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/.Xil/Vivado-11896-DESKTOP-C10RBDL/dcp3/BRAM_in_context.xdc2default:default2$
MEMORIA_A3_REC	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
rE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/constrs_1/imports/constr/Nexys4DDR_Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
rE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/constrs_1/imports/constr/Nexys4DDR_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
rE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/constrs_1/imports/constr/Nexys4DDR_Master.xdc2default:default2*
.Xil/main_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
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
00:00:00.0152default:default2
737.0702default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_HH_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_HH_32default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_HL_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_HL_32default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_LH_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_LH_32default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_LL_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

BANDA_LL_32default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

MEMORIA_A02default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2 
MEMORIA_A0_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2$
MEMORIA_A0_REC_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

MEMORIA_A12default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2 
MEMORIA_A1_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2"
MEMORIA_A1_REC2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

MEMORIA_A22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2 
MEMORIA_A2_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2"
MEMORIA_A2_REC2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2

MEMORIA_A32default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2 
MEMORIA_A3_22default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2"
MEMORIA_A3_REC2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 737.070 ; gain = 471.320
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
K
%s
*synth23
Loading part: xc7a100tcsg324-3
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 737.070 ; gain = 471.320
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rx_ready2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

state_next2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state_next02default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
merging register '%s' into '%s'3619*oasys2
	we_A1_reg2default:default2
	we_A0_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1222default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2
	we_A3_reg2default:default2
	we_A2_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1232default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2
we_A1_2_reg2default:default2
we_A0_2_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1242default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2
we_A3_2_reg2default:default2
we_A2_2_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1252default:default8@Z8-4471h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	we_A1_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1222default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	we_A3_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1232default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
we_A1_2_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1242default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
we_A3_2_reg2default:default2|
fE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/new/rx_tx_cmd_decoder.v2default:default2
1252default:default8@Z8-6014h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2%
rx_tx_cmd_decoder2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
we_A02default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
we_A0_22default:default2
22default:default2
52default:defaultZ8-5544h px� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
add_A02default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
primer_elemento_A02default:defaultZ8-5546h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
start2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
state2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2 
haar_wavelet2default:defaultZ8-802h px� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
finish2default:defaultZ8-5546h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
we_LL2default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	mem_in_LL2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
mem_in_LL_32default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2(
haar_wavelet_inversa2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

finish_inv2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
we_inv2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
idle2default:default2
32default:default2
52default:defaultZ8-5544h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

state_next2default:defaultZ8-5546h px� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
bcd_next2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
counter_next2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_out2default:default2
272default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
out132default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2#
ss_select_q_reg2default:default2
display_mux2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                RX_START |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_RECV |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_STOP |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                RX_READY |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                       0000000001 |                         00000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                     W_1 |                       0000000010 |                         00000001
2default:defaulth p
x
� 
�
%s
*synth2s
_              WRITING_A0 |                       0000000100 |                         00000011
2default:defaulth p
x
� 
�
%s
*synth2s
_                     W_2 |                       0000001000 |                         00000010
2default:defaulth p
x
� 
�
%s
*synth2s
_              WRITING_A2 |                       0000010000 |                         00000101
2default:defaulth p
x
� 
�
%s
*synth2s
_               START_WAV |                       0000100000 |                         00001100
2default:defaulth p
x
� 
�
%s
*synth2s
_                WAIT_WAV |                       0001000000 |                         00001011
2default:defaulth p
x
� 
�
%s
*synth2s
_                SEND_WAV |                       0010000000 |                         00001010
2default:defaulth p
x
� 
�
%s
*synth2s
_               PROC_UART |                       0100000000 |                         00001111
2default:defaulth p
x
� 
�
%s
*synth2s
_                    UART |                       1000000000 |                         00001110
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2%
rx_tx_cmd_decoder2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                            00001 |                         00000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 LECTURA |                            00010 |                         00000001
2default:defaulth p
x
� 
�
%s
*synth2s
_               ESCRITURA |                            00100 |                         00000010
2default:defaulth p
x
� 
�
%s
*synth2s
_               WATERMARK |                            01000 |                         00000100
2default:defaulth p
x
� 
�
%s
*synth2s
_                  FINISH |                            10000 |                         00000011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2 
haar_wavelet2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    IDLE |                               00 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 LECTURA |                               01 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_               ESCRITURA |                               10 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  FINISH |                               11 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2(
haar_wavelet_inversa2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE6 |                             0000 |                         00000000
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                             0001 |                         00000001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                             0010 |                         00000010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                             0011 |                         00000100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                             0100 |                         00001000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                             0101 |                         00010000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                             0110 |                         00100000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE5 |                             0111 |                         01000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE7 |                             1000 |                         10000000
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
ss_select_q_reg2default:default2

sequential2default:default2
display_mux2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   5 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     27 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     19 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     10 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
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
.	               32 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 21    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 17    
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
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     27 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     15 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     15 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     15 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  22 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 25    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 31    
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
9
%s
*synth2!
Module main 
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
.	                2 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
� 
G
%s
*synth2/
Module uart_baud_tick_gen 
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
Z
%s
*synth2B
.	   2 Input     19 Bit       Adders := 1     
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
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module data_sync 
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
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
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
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module uart_rx 
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
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
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
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
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
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
W
%s
*synth2?
+Module uart_baud_tick_gen__parameterized0 
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
Z
%s
*synth2B
.	   2 Input     19 Bit       Adders := 1     
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
.	               19 Bit    Registers := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module uart_tx 
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
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
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
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
?
%s
*synth2'
Module uart_basic 
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
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
F
%s
*synth2.
Module rx_tx_cmd_decoder 
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
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
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
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
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
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     15 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  22 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 31    
2default:defaulth p
x
� 
A
%s
*synth2)
Module haar_wavelet 
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
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     10 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
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
.	               15 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
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
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     15 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
� 
I
%s
*synth21
Module haar_wavelet_inversa 
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
Z
%s
*synth2B
.	   5 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
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
.	               15 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
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
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     15 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
D
%s
*synth2,
Module unsigned_to_bcd 
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
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 8     
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
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module clk_divider 
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
Z
%s
*synth2B
.	   2 Input     27 Bit       Adders := 1     
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
.	               27 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input     27 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module bcd_to_ss 
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module display_mux 
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      4 Bit        Muxes := 2     
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
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
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
add_A02default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
primer_elemento_A02default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2.
clk_div_ss_display/clk_out2default:default2
272default:default2
252default:defaultZ8-5545h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A0[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A1[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A2[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2%
rx_tx_cmd_decoder2default:default2!
mem_out_A3[0]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[15]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[14]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[13]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[12]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[11]2default:defaultZ8-3331h px� 
z
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[10]2default:defaultZ8-3331h px� 
y
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[9]2default:defaultZ8-3331h px� 
y
!design %s has unconnected port %s3331*oasys2
main2default:default2
LED[8]2default:defaultZ8-3331h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\DECODER/we_A0_2_reg 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2+
\DECODER/imagen_reg[1] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
HAAR_INV/mem_in_A0_inv_reg[0]2default:default2
FDE2default:default21
HAAR_INV/mem_in_A2_inv_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
HAAR_INV/mem_in_A1_inv_reg[0]2default:default2
FDE2default:default21
HAAR_INV/mem_in_A2_inv_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
HAAR_INV/mem_in_A2_inv_reg[0]2default:default2
FDE2default:default21
HAAR_INV/mem_in_A3_inv_reg[0]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\HAAR_INV/mem_in_A3_inv_reg[0] 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
DECODER/imagen_reg[1]2default:default2
main2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
DECODER/we_A0_2_reg2default:default2
main2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%TRANSFORMADA_DE_HAAR/mem_in_HL_reg[2]2default:default2
main2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%TRANSFORMADA_DE_HAAR/mem_in_HL_reg[1]2default:default2
main2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%TRANSFORMADA_DE_HAAR/mem_in_HL_reg[0]2default:default2
main2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
HAAR_INV/mem_in_A3_inv_reg[0]2default:default2
main2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:55 ; elapsed = 00:00:58 . Memory (MB): peak = 737.070 ; gain = 471.320
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:57 ; elapsed = 00:00:59 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:58 ; elapsed = 00:01:01 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
uFinished IO Insertion : Time (s): cpu = 00:01:00 ; elapsed = 00:01:02 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:00 ; elapsed = 00:01:02 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:00 ; elapsed = 00:01:02 . Memory (MB): peak = 737.070 ; gain = 471.320
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:00 ; elapsed = 00:01:02 . Memory (MB): peak = 737.070 ; gain = 471.320
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:00 ; elapsed = 00:01:03 . Memory (MB): peak = 737.070 ; gain = 471.320
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:00 ; elapsed = 00:01:03 . Memory (MB): peak = 737.070 ; gain = 471.320
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |BRAM          |        20|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BRAM     |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |BRAM__1  |     1|
2default:defaulth px� 
F
%s*synth2.
|3     |BRAM__10 |     1|
2default:defaulth px� 
F
%s*synth2.
|4     |BRAM__11 |     1|
2default:defaulth px� 
F
%s*synth2.
|5     |BRAM__12 |     1|
2default:defaulth px� 
F
%s*synth2.
|6     |BRAM__13 |     1|
2default:defaulth px� 
F
%s*synth2.
|7     |BRAM__14 |     1|
2default:defaulth px� 
F
%s*synth2.
|8     |BRAM__15 |     1|
2default:defaulth px� 
F
%s*synth2.
|9     |BRAM__16 |     1|
2default:defaulth px� 
F
%s*synth2.
|10    |BRAM__17 |     1|
2default:defaulth px� 
F
%s*synth2.
|11    |BRAM__18 |     1|
2default:defaulth px� 
F
%s*synth2.
|12    |BRAM__19 |     1|
2default:defaulth px� 
F
%s*synth2.
|13    |BRAM__2  |     1|
2default:defaulth px� 
F
%s*synth2.
|14    |BRAM__3  |     1|
2default:defaulth px� 
F
%s*synth2.
|15    |BRAM__4  |     1|
2default:defaulth px� 
F
%s*synth2.
|16    |BRAM__5  |     1|
2default:defaulth px� 
F
%s*synth2.
|17    |BRAM__6  |     1|
2default:defaulth px� 
F
%s*synth2.
|18    |BRAM__7  |     1|
2default:defaulth px� 
F
%s*synth2.
|19    |BRAM__8  |     1|
2default:defaulth px� 
F
%s*synth2.
|20    |BRAM__9  |     1|
2default:defaulth px� 
F
%s*synth2.
|21    |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|22    |CARRY4   |   126|
2default:defaulth px� 
F
%s*synth2.
|23    |LUT1     |    28|
2default:defaulth px� 
F
%s*synth2.
|24    |LUT2     |   154|
2default:defaulth px� 
F
%s*synth2.
|25    |LUT3     |   118|
2default:defaulth px� 
F
%s*synth2.
|26    |LUT4     |   197|
2default:defaulth px� 
F
%s*synth2.
|27    |LUT5     |    73|
2default:defaulth px� 
F
%s*synth2.
|28    |LUT6     |   184|
2default:defaulth px� 
F
%s*synth2.
|29    |FDRE     |   654|
2default:defaulth px� 
F
%s*synth2.
|30    |FDSE     |     5|
2default:defaulth px� 
F
%s*synth2.
|31    |IBUF     |     3|
2default:defaulth px� 
F
%s*synth2.
|32    |OBUF     |    27|
2default:defaulth px� 
F
%s*synth2.
|33    |OBUFT    |     8|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
x
%s
*synth2`
L+------+-----------------------+-----------------------------------+------+
2default:defaulth p
x
� 
x
%s
*synth2`
L|      |Instance               |Module                             |Cells |
2default:defaulth p
x
� 
x
%s
*synth2`
L+------+-----------------------+-----------------------------------+------+
2default:defaulth p
x
� 
x
%s
*synth2`
L|1     |top                    |                                   |  1738|
2default:defaulth p
x
� 
x
%s
*synth2`
L|2     |  DECODER              |rx_tx_cmd_decoder                  |   475|
2default:defaulth p
x
� 
x
%s
*synth2`
L|3     |  HAAR_INV             |haar_wavelet_inversa               |   140|
2default:defaulth p
x
� 
x
%s
*synth2`
L|4     |  TRANSFORMADA_DE_HAAR |haar_wavelet                       |   576|
2default:defaulth p
x
� 
x
%s
*synth2`
L|5     |  clk_div_ss_display   |clk_divider                        |    46|
2default:defaulth p
x
� 
x
%s
*synth2`
L|6     |  display_mux_inst     |display_mux                        |    17|
2default:defaulth p
x
� 
x
%s
*synth2`
L|7     |  u32_to_bcd_inst      |unsigned_to_bcd                    |   148|
2default:defaulth p
x
� 
x
%s
*synth2`
L|8     |  uart_basic_inst      |uart_basic                         |   134|
2default:defaulth p
x
� 
x
%s
*synth2`
L|9     |    baud8_tick_blk     |uart_baud_tick_gen                 |    29|
2default:defaulth p
x
� 
x
%s
*synth2`
L|10    |    baud_tick_blk      |uart_baud_tick_gen__parameterized0 |    29|
2default:defaulth p
x
� 
x
%s
*synth2`
L|11    |    uart_rx_blk        |uart_rx                            |    49|
2default:defaulth p
x
� 
x
%s
*synth2`
L|12    |      rx_sync_inst     |data_sync                          |     9|
2default:defaulth p
x
� 
x
%s
*synth2`
L|13    |    uart_tx_blk        |uart_tx                            |    25|
2default:defaulth p
x
� 
x
%s
*synth2`
L+------+-----------------------+-----------------------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:00 ; elapsed = 00:01:03 . Memory (MB): peak = 737.070 ; gain = 471.320
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
GSynthesis finished with 0 errors, 0 critical warnings and 50 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:39 ; elapsed = 00:00:52 . Memory (MB): peak = 737.070 ; gain = 138.988
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:01:00 ; elapsed = 00:01:03 . Memory (MB): peak = 737.070 ; gain = 471.320
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1292default:defaultZ29-17h px� 
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
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
962default:default2
1272default:default2
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
00:01:022default:default2
00:01:052default:default2
737.0702default:default2
479.2112default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
UE:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.runs/synth_1/main.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb
2default:defaulth px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.088 . Memory (MB): peak = 737.070 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jun 17 00:58:17 20182default:defaultZ17-206h px� 


End Record