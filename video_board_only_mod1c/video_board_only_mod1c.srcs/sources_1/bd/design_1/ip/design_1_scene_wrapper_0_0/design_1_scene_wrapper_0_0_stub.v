// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 12:02:06 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carotti/Documents/EIE4/6.s193/hardmark/video_board_only_mod1c/video_board_only_mod1c.srcs/sources_1/bd/design_1/ip/design_1_scene_wrapper_0_0/design_1_scene_wrapper_0_0_stub.v
// Design      : design_1_scene_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "scene_wrapper,Vivado 2018.2" *)
module design_1_scene_wrapper_0_0(pixel_clk, hsync, vsync, sphere_x, sphere_y, 
  sphere_z, sphere_radius, pixel_data)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,hsync,vsync,sphere_x[23:0],sphere_y[23:0],sphere_z[23:0],sphere_radius[23:0],pixel_data[31:0]" */;
  input pixel_clk;
  input hsync;
  input vsync;
  input [23:0]sphere_x;
  input [23:0]sphere_y;
  input [23:0]sphere_z;
  input [23:0]sphere_radius;
  output [31:0]pixel_data;
endmodule
