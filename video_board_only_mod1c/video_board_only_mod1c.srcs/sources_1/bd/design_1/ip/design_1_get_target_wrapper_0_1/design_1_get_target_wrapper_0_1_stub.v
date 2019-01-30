// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Jan 28 10:25:15 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carotti/Documents/EIE4/6.s193/hardmark/video_board_only_mod1c/video_board_only_mod1c.srcs/sources_1/bd/design_1/ip/design_1_get_target_wrapper_0_1/design_1_get_target_wrapper_0_1_stub.v
// Design      : design_1_get_target_wrapper_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "get_target_wrapper,Vivado 2018.2" *)
module design_1_get_target_wrapper_0_1(clk_in, rst_in, rgb_in, hcount_in, vcount_in, 
  xcount0_out, xcount1_out, xcount2_out, xcount3_out, ycount0_out, ycount1_out, ycount2_out, 
  ycount3_out, diameter0_out, diameter1_out, diameter2_out, diameter3_out, valid_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst_in,rgb_in[23:0],hcount_in[10:0],vcount_in[10:0],xcount0_out[10:0],xcount1_out[10:0],xcount2_out[10:0],xcount3_out[10:0],ycount0_out[10:0],ycount1_out[10:0],ycount2_out[10:0],ycount3_out[10:0],diameter0_out[10:0],diameter1_out[10:0],diameter2_out[10:0],diameter3_out[10:0],valid_out[3:0]" */;
  input clk_in;
  input rst_in;
  input [23:0]rgb_in;
  input [10:0]hcount_in;
  input [10:0]vcount_in;
  output [10:0]xcount0_out;
  output [10:0]xcount1_out;
  output [10:0]xcount2_out;
  output [10:0]xcount3_out;
  output [10:0]ycount0_out;
  output [10:0]ycount1_out;
  output [10:0]ycount2_out;
  output [10:0]ycount3_out;
  output [10:0]diameter0_out;
  output [10:0]diameter1_out;
  output [10:0]diameter2_out;
  output [10:0]diameter3_out;
  output [3:0]valid_out;
endmodule
