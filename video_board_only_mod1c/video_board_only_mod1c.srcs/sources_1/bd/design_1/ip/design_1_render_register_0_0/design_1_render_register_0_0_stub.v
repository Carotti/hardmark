// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 12:55:05 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carotti/Documents/EIE4/6.s193/hardmark/video_board_only_mod1c/video_board_only_mod1c.srcs/sources_1/bd/design_1/ip/design_1_render_register_0_0/design_1_render_register_0_0_stub.v
// Design      : design_1_render_register_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "render_register_v1_0,Vivado 2018.2" *)
module design_1_render_register_0_0(sphere_x, sphere_y, sphere_z, sphere_radius, 
  marker_1_x, marker_1_y, marker_2_x, marker_2_y, marker_3_x, marker_3_y, marker_4_x, marker_4_y, 
  marker_valid, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, 
  s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, 
  s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, 
  s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, 
  s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="sphere_x[23:0],sphere_y[23:0],sphere_z[23:0],sphere_radius[23:0],marker_1_x[10:0],marker_1_y[10:0],marker_2_x[10:0],marker_2_y[10:0],marker_3_x[10:0],marker_3_y[10:0],marker_4_x[10:0],marker_4_y[10:0],marker_valid[3:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[5:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[5:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output [23:0]sphere_x;
  output [23:0]sphere_y;
  output [23:0]sphere_z;
  output [23:0]sphere_radius;
  input [10:0]marker_1_x;
  input [10:0]marker_1_y;
  input [10:0]marker_2_x;
  input [10:0]marker_2_y;
  input [10:0]marker_3_x;
  input [10:0]marker_3_y;
  input [10:0]marker_4_x;
  input [10:0]marker_4_y;
  input [3:0]marker_valid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
