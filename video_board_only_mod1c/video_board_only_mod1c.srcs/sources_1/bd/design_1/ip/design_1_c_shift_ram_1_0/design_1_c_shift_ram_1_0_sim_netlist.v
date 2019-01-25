// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:44 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_shift_ram_1_0 -prefix
//               design_1_c_shift_ram_1_0_ design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_1_0
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
  design_1_c_shift_ram_1_0_c_shift_ram_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_1_0_c_shift_ram_v12_0_12
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
  design_1_c_shift_ram_1_0_c_shift_ram_v12_0_12_viv i_synth
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
fF+SUISPOJtFFcCV2suOZaanhGZLhM5Byi5HdqOj3WNsIqe6NM6RY6gD8hNAu+lHnt4UPwub++5Q
5WV3WbKE2Fgw+I5fI2dNnRHmvf/L8FPlHWjdRfePzKqUtV6Z06m2780LifiWzETJzHpazA/u3aBq
NdCuKhwjopovuScSl4d5aafhVeR4uJcL6BZh6J7Usmb4JpgRNGPs1mUwhRLqT12VMD2mEsPuSPhJ
OJp9lljxJAVUbQWBano285xQDFZxh1IVJ+rE/IcyD45EMSB1HDPkqGh1tq0fhDeAYJKufVw+cno0
5jszvDJFM90uNH2Hv2ORqEFzZ5GHOBeR/aCi2A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VtHu6u61GmXyNJFze53hfjsfnpNV09nN0BgacQUQ6E4YgPUFQ1S9ytOxVQNLUDmHRw49zWYG82LZ
FrYs/foIQcd2e5rfvQqn0DAvIBi9Xc8TZuNor+3H+ayE9i736VF1WQlAHYxzqy2tP9txBbyIDXUd
zj99WPR9ROeh5tRi4fY9synuKNDYk8O/Z0DDiOcBmEJKWCPuaJCuK2xBYv/kMc+NV2qDCayLaL7p
y6+b7JArzdQaeoIL4aAVwYZUJsZ1ueQz2nJ/1sY52ItPPuqONSLf+T7WGAxDchBuFujW6TkzFVAU
VesCJgefKTv2IGiz6qq21ZMB48ZDx7vXxyAi6w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5376)
`pragma protect data_block
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
IKtQn1hA1JbBzR7bxyba5MxUZTWrXw6M6EVN
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
