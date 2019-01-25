// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:get_target_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_get_target_wrapper_0_0 (
  clk_in,
  rst_in,
  rgb_in,
  hcount_in,
  vcount_in,
  xcount0_out,
  xcount1_out,
  xcount2_out,
  xcount3_out,
  ycount0_out,
  ycount1_out,
  ycount2_out,
  ycount3_out,
  diameter0_out,
  diameter1_out,
  diameter2_out,
  diameter3_out,
  valid_out
);

input wire clk_in;
input wire rst_in;
input wire [23 : 0] rgb_in;
input wire [10 : 0] hcount_in;
input wire [10 : 0] vcount_in;
output wire [10 : 0] xcount0_out;
output wire [10 : 0] xcount1_out;
output wire [10 : 0] xcount2_out;
output wire [10 : 0] xcount3_out;
output wire [10 : 0] ycount0_out;
output wire [10 : 0] ycount1_out;
output wire [10 : 0] ycount2_out;
output wire [10 : 0] ycount3_out;
output wire [10 : 0] diameter0_out;
output wire [10 : 0] diameter1_out;
output wire [10 : 0] diameter2_out;
output wire [10 : 0] diameter3_out;
output wire [3 : 0] valid_out;

  get_target_wrapper #(
    .MAX_WIDTH(100),
    .MIN_WIDTH(5),
    .MAX_WIDTH_DIFF(40),
    .WHITE_THRES(2),
    .BLACK_THRES(0),
    .SCREEN_WIDTH(1280),
    .SCREEN_HEIGHT(720),
    .COLOUR_DEPTH(8),
    .AVERAGE_OVER(1024),
    .MIN_THRES(50),
    .MAX_THRES(200),
    .NUM_TARGETS(4)
  ) inst (
    .clk_in(clk_in),
    .rst_in(rst_in),
    .rgb_in(rgb_in),
    .hcount_in(hcount_in),
    .vcount_in(vcount_in),
    .xcount0_out(xcount0_out),
    .xcount1_out(xcount1_out),
    .xcount2_out(xcount2_out),
    .xcount3_out(xcount3_out),
    .ycount0_out(ycount0_out),
    .ycount1_out(ycount1_out),
    .ycount2_out(ycount2_out),
    .ycount3_out(ycount3_out),
    .diameter0_out(diameter0_out),
    .diameter1_out(diameter1_out),
    .diameter2_out(diameter2_out),
    .diameter3_out(diameter3_out),
    .valid_out(valid_out)
  );
endmodule
