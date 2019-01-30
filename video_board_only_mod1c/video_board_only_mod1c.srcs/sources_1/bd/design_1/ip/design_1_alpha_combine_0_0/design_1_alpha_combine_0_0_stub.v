// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Jan 28 10:53:19 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carotti/Documents/EIE4/6.s193/hardmark/video_board_only_mod1c/video_board_only_mod1c.srcs/sources_1/bd/design_1/ip/design_1_alpha_combine_0_0/design_1_alpha_combine_0_0_stub.v
// Design      : design_1_alpha_combine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "alpha_combine,Vivado 2018.2" *)
module design_1_alpha_combine_0_0(rgb_in, rgba_in, rgb_out)
/* synthesis syn_black_box black_box_pad_pin="rgb_in[23:0],rgba_in[31:0],rgb_out[23:0]" */;
  input [23:0]rgb_in;
  input [31:0]rgba_in;
  output [23:0]rgb_out;
endmodule
