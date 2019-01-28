// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:44 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_shift_ram_0_1 -prefix
//               design_1_c_shift_ram_0_1_ design_1_c_shift_ram_0_1_sim_netlist.v
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
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
xhiAjjl9gtz3ucDT34Fqi/x/wOdM/B1obRgv
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
