// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Sat Jun 16 22:28:50 2018
// Host        : DESKTOP-C10RBDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Danilo/Documents/Proyecto_Final_IPD432/Proyecto_Final_IPD432.srcs/sources_1/ip/BRAM/BRAM_stub.v
// Design      : BRAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_0,Vivado 2017.3" *)
module BRAM(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[14:0],dina[7:0],clkb,enb,addrb[14:0],doutb[7:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [14:0]addra;
  input [7:0]dina;
  input clkb;
  input enb;
  input [14:0]addrb;
  output [7:0]doutb;
endmodule
