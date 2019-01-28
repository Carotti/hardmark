// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:41 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_c_shift_ram_0_2 -prefix
//               design_1_c_shift_ram_0_2_ design_1_c_shift_ram_0_2_stub.v
// Design      : design_1_c_shift_ram_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *)
module design_1_c_shift_ram_0_2(D, CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="D[23:0],CLK,Q[23:0]" */;
  input [23:0]D;
  input CLK;
  output [23:0]Q;
endmodule
