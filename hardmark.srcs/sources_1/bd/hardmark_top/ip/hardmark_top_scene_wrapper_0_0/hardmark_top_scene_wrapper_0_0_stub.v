// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Jan 24 16:50:35 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carotti/Documents/EIE4/6.s193/hardmark/hardmark.srcs/sources_1/bd/hardmark_top/ip/hardmark_top_scene_wrapper_0_0/hardmark_top_scene_wrapper_0_0_stub.v
// Design      : hardmark_top_scene_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "scene_wrapper,Vivado 2018.2" *)
module hardmark_top_scene_wrapper_0_0(pixel_clk, pixel_data)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,pixel_data[31:0]" */;
  input pixel_clk;
  output [31:0]pixel_data;
endmodule
