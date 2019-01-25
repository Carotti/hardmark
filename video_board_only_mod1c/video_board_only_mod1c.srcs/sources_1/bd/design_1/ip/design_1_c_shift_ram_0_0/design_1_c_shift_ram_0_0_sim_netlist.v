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
05WRp9FE/f+0JfX2b+CEnoD1NfKK15FLpouQ
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
