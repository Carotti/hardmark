// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Jan 10 16:03:17 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carotti/Documents/EIE4/6.s193/hardmark/hardmark.srcs/sources_1/bd/hardmark_top/ip/hardmark_top_circle_0_0/hardmark_top_circle_0_0_stub.v
// Design      : hardmark_top_circle_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "circle,Vivado 2018.2" *)
module hardmark_top_circle_0_0(hcount, vcount, pData)
/* synthesis syn_black_box black_box_pad_pin="hcount[10:0],vcount[10:0],pData[23:0]" */;
  input [10:0]hcount;
  input [10:0]vcount;
  output [23:0]pData;
endmodule
