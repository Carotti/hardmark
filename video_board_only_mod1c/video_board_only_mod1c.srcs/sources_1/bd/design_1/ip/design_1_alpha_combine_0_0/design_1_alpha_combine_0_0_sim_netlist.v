// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Jan 27 18:30:04 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carotti/Documents/EIE4/6.s193/hardmark/video_board_only_mod1c/video_board_only_mod1c.srcs/sources_1/bd/design_1/ip/design_1_alpha_combine_0_0/design_1_alpha_combine_0_0_sim_netlist.v
// Design      : design_1_alpha_combine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_alpha_combine_0_0,alpha_combine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "alpha_combine,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_alpha_combine_0_0
   (rgb_in,
    rgba_in,
    rgb_out);
  input [23:0]rgb_in;
  input [31:0]rgba_in;
  output [23:0]rgb_out;

  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire \rgb_out[23]_INST_0_i_1_n_0 ;
  wire \rgb_out[23]_INST_0_i_2_n_0 ;
  wire [31:0]rgba_in;

  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[0]_INST_0 
       (.I0(rgba_in[8]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[0]),
        .O(rgb_out[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[10]_INST_0 
       (.I0(rgba_in[18]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[10]),
        .O(rgb_out[10]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[11]_INST_0 
       (.I0(rgba_in[19]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[11]),
        .O(rgb_out[11]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[12]_INST_0 
       (.I0(rgba_in[20]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[12]),
        .O(rgb_out[12]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[13]_INST_0 
       (.I0(rgba_in[21]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[13]),
        .O(rgb_out[13]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[14]_INST_0 
       (.I0(rgba_in[22]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[14]),
        .O(rgb_out[14]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[15]_INST_0 
       (.I0(rgba_in[23]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[15]),
        .O(rgb_out[15]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[16]_INST_0 
       (.I0(rgba_in[24]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[16]),
        .O(rgb_out[16]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[17]_INST_0 
       (.I0(rgba_in[25]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[17]),
        .O(rgb_out[17]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[18]_INST_0 
       (.I0(rgba_in[26]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[18]),
        .O(rgb_out[18]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[19]_INST_0 
       (.I0(rgba_in[27]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[19]),
        .O(rgb_out[19]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[1]_INST_0 
       (.I0(rgba_in[9]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[1]),
        .O(rgb_out[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[20]_INST_0 
       (.I0(rgba_in[28]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[20]),
        .O(rgb_out[20]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[21]_INST_0 
       (.I0(rgba_in[29]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[21]),
        .O(rgb_out[21]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[22]_INST_0 
       (.I0(rgba_in[30]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[22]),
        .O(rgb_out[22]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[23]_INST_0 
       (.I0(rgba_in[31]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[23]),
        .O(rgb_out[23]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_out[23]_INST_0_i_1 
       (.I0(rgba_in[1]),
        .I1(rgba_in[0]),
        .I2(rgba_in[3]),
        .I3(rgba_in[2]),
        .O(\rgb_out[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rgb_out[23]_INST_0_i_2 
       (.I0(rgba_in[5]),
        .I1(rgba_in[4]),
        .I2(rgba_in[7]),
        .I3(rgba_in[6]),
        .O(\rgb_out[23]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[2]_INST_0 
       (.I0(rgba_in[10]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[2]),
        .O(rgb_out[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[3]_INST_0 
       (.I0(rgba_in[11]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[3]),
        .O(rgb_out[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[4]_INST_0 
       (.I0(rgba_in[12]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[4]),
        .O(rgb_out[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[5]_INST_0 
       (.I0(rgba_in[13]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[5]),
        .O(rgb_out[5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[6]_INST_0 
       (.I0(rgba_in[14]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[6]),
        .O(rgb_out[6]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[7]_INST_0 
       (.I0(rgba_in[15]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[7]),
        .O(rgb_out[7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[8]_INST_0 
       (.I0(rgba_in[16]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[8]),
        .O(rgb_out[8]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \rgb_out[9]_INST_0 
       (.I0(rgba_in[17]),
        .I1(\rgb_out[23]_INST_0_i_1_n_0 ),
        .I2(\rgb_out[23]_INST_0_i_2_n_0 ),
        .I3(rgb_in[9]),
        .O(rgb_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
