// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Jan 25 10:32:44 2019
// Host        : carotti running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_shift_ram_0_0 -prefix
//               design_1_c_shift_ram_0_0_ design_1_c_shift_ram_0_1_sim_netlist.v
// Design      : design_1_c_shift_ram_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_1,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_0_0
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
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
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
module design_1_c_shift_ram_0_0_c_shift_ram_v12_0_12
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
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
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
pBBV13PmzTOTsyjzxd81qrZhM0jreGPbkxIn
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
