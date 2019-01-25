// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:47 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carotti/Downloads/video_board_only_mod1c/video_board_only_mod1c.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_0_1/design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_0_1
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_dvi2rgb_0_0_PixelClk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "53" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_1_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "53" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_0_1_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "53" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_1_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gewdhL/w1TouB0JjuZHJxluLgazZ0MDhwTiI0DySlF2H3xd6FRSfzLr57O3qUZ5eGvZn9G1HUOcz
yxVE1Ft6ug==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kNkvEiBddZ56G5aF+XS7ob2Nhv2j+6nmCRkSoQq0oirSRWu0r3CeEeHNjMTnlz141inTsI0Z6BWi
mSQVN+vnta1jke0Bk4Stt+1AehqmzqWBhIHNifuASwGS7djtqVZP4SiTYyIWLtw2ytc2NIoTTIPD
p8KuPz5sCnz/rVbTGrU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PQCKWrqcONejuC35aWg8w9DioCraSLD3jpWb1GhpUCgcaZ0iGFYF6zyTQ9UbFoUruOqUsK4NCVSk
hplF/dXRzE4vE39sCsuYrnlvsXoMvw5omH6qSVsPw0ouHfl9A2UJZkAWOT/cmxzDUB2Nwx6oDebh
LR1vONCseE7uyR5RxjiK0JeDjP0hoBNJoC8RfEDbHpmrb9nOAmibt1Ub/3ax1qZCSXM9KLwO8O6m
3xVW+RxfWvYY4vl1SaNWMWCqoW8nl6bPZ2E3eaXRj1MmReX5VOJjdR+D+uJyoaWNDJWHitCvsaop
vIHRQS6GhW6gQDoyFrOee9vd8Mk5vO4zHSkoCQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EnheuADwC+rXRbRg9Il4ySLQns8VKTnppIVWIV7/j1q3n5T9ImVRYukn1hvdbcKoYxtL+2UcCg96
5OeU5Cmw2OktWg+nXUEQsGpMI/HtDbo51bYU08HKrrfZfLFzJht2bJQKefep8XtA+PBarinw89ic
y5pRbW5e+RK1wq2fpuZ/aad4nPvIc4RQLnDGpE3/KsO8mmLVobPkafsCgRcjsOloyEh2SIKI0L3S
bM1yoTNj3PBKHQ+Fg5c57g4tgtPWlOZoENX18yDgBTaLFQz2pRFtbb1TFYKxNIWOk5nYHwQhWhGV
7FfMa5zdnsgLXGK6/E4ssQcSyIcY1ZJqqeKUWw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w+as5hQm6N6F6rMbvXzBeWbsgKQk/heHkIxjXuTz4RzbjzgbTltcE8Flz3fkoKf5N7ML5dxsjo9D
ssHdLG4rf7XR8V4jTftZ++etToKtPnQBCB9DKi1yN533S5ArNcUfnE3UNrkiVdemu8VNDcPhkNGG
T6L1X+PWyuW9l0Qj2VQM4rosaZCg7fijmq6q9IbXnhPGGcvP+YH+yhPpUX2y8PH6GVZMCdpdUpkd
gEm8oLFSJ28Q7zZvqQZsrdEIlThY2i1c8NDuhS8NDtOmlumPhbPr7rKYBAwl6DCIXO+CqE2a8X/c
qpIBWTRvLyaD7BcA7XDCyMfCZy/mq8fZ6rIrOQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ebIGhwOoK6b2Regd2ZidBmefLC1qWrjb2ixldIHZBv9r8mN994nK0bA5i2yPW5FfOgPszrabIv2T
d9dzSTELNwamhC6udZmN9sBwlaEVqro7zC0hwc9PBph7uwSv+FXYBFkXpe9DnpJTZbUvUeThstgk
RdebU+EnQryZ0UpzZ2A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XnwajLd9gtUhj/hQ3dArVFrFrrTuWhrvu+kPxwrOfm2NgABPJQFBXwBwCw2jjlhA7jCVcZI4CRq8
GHr5uL3LcoFEL49z34pdL9z8W+zlAFZZl/rnslm3zKW6HpX5Z9zjmS0PThKZoMBpBHWSEKjmXjSE
t+thGVHHTSqS9h2Uo8qpx2g2fY7ITBA2F2G3aajNf+o5hHTA5QnC/87hlfZzNl7Redk6aQRYCgB8
LIJBeO59sYe3aKg/vswdYeXiRdd8b45eVOvTT4iKpa1ExnseAad7tGfp2qVyT4QrHVx9jSYd05Mu
8Dlg+1UQcbk2h4Q0cJ7WGdpp1ljWsx8j2GPrQw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BCnq0KrQIH9Ar37CO5cS+97V1rvvtWAtTmMlyGmugP4XBr18XXAYGQkCsT6rV4alYuO5zV7gHY9Y
gmuHnkamm4slIGQ9NwloMi65LnL8AR8Ppu9K19vDu3LaTZhJquxAUFjM1L4szVM4pGlXyYKoFN9Y
GL+nb1/zlm9t1BzRyYk2B6EPOrVFXX5i6Poa3HDUafUuG+QywfToMAucItCvjXeGkagFfHFgQ8om
rcjXdH2rMazoRGVhNNm1D2vQHenbzDEQ/f6ULkG85V0DX+anZInl5+jIztLXKrAoO7TlOxleENYd
L/YjLEUGqCHgy1XhXUPyb3c4vsTzNfdZJS3tjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3sDJ56GiSSCZCP6asCyMNk6jfYPGLcKjwtNiljq8Gd49dvM5DBjJPkKX3OZkmCyNxxAq15WpuqH6
XE3PihqqPZJOpnH1T059fIYiC3PLDHtDc7AMnWVx80VmQjJ9p2Nwgg+NcLYmf83mtQVKyD8m72pZ
w3lMMdBnb5RbU+20M/qDRaJzXiXrY0/LYMKv2VRNy+jnmGGNLxFNArQlUFguR9ycnhvL7mFCePJR
wZiY63RnoaATVnyxKepB3VVCAZgy0pTDszQWRkKImduwmht5MBBvQlKaLJreatkb5cEESJ8SUc82
R1F9EYrR2u4Z8lCRvwHhp3Wa3szeI1g4pWi4xQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5424)
`pragma protect data_block
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
8yY//deJYRSX
`pragma protect end_protected
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
