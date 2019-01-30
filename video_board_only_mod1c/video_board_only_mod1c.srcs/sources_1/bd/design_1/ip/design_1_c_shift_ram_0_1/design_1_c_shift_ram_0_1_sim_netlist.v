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
uD8mxUzJGMXMFzD1gRCo8NXOXQwJviuqRkeXOos7I99LYasvVbwVhpd5Tdvt2nSKggiX81YUNmg+
0Ae5KPRMA5FGt1N5ZBAFnOL617puq+c7/UBQGp247mtG9iLWrLEJB159Bk/H8WPovHeitgB28CYF
6wRsSha3LNxY7O6LkiYS82IjszsfPATdoqv4BwcIMC83TJq1Zqg/EpZ5tMnT30W6jHlH74dn3IqX
1AG7hYcLEeIuEjkHg/6a3KydCMNJcexvfOtV2Ck9wKdsx6+C8aW1+4TTfv4sDZBIsGl0Mn41IvwH
NWyKikdqZiyJbAe7P+mo6AgD5befPbKPDdXQ+Icee0A+m+TiFpL942k8rbOj9+Zse2Ix+7RFR1Xj
irDsbvnfzpGVHFBpJ4d5wEK4CDCWixPrEVqa82NncLXQixlW28bF+JT7U/Pk56KUbzF6SD2mxUIZ
n4702kmz6TMFe+30ngBM/68fS00ngaOq6SGCalFHN8hGCmRiKiF34LxQKGCNIEpjPknW5NG46d7Q
t8KScFDVUTuKvCDWQQr8T8k1KZuDdYbwW5oTTjt91zJA7XHpsu5kUdVoYEJRHkkYkPbi32nE4No6
559jHpNOvH3RPwnLOVMEMF8XZWvzvVVgtGv7LMoAJxkBa+zvR6TIve6LAW4uIMzlO+Vy7VkSCDc7
5SeOtQbmjhM4NgtfNPQ9/CwXquq0MGB0YQjnlzpNueXCwPN520RAF3WERiJjUKn0pwCymIzNDYHz
e5XNmQAvvGJhA2attcO0C0j/co5S+nbrhZ34/dulg5sj7PJdH87vERZ2yoAbACmH199LXA//cJCS
5uX1T8vqR2jyMcA4YPh4piAUoiTSyixxU4mE59NTPqolTSccNBebHDXyx+JyXVKcuIjhYdMSuHDk
UpLtY+xh/C95Cc4Nu2mvsk8rhzLUQcBmeAdzCtU7+n3bMGmeaLBARnpS2DFzBZlMj/oXf37a2dnR
SMuM/G+R1lC0JZ6rgTlbHbbPYKrEoCr2nmctLtu08R14imW0LeTb9h8efpJdw5nJ7DYLVVPv4te5
fshSHuJP5UcrPf+ITBVzxoVWHxF2SIgAVx0f9P8hHx4nnVWstmhz7XyHgNJ4VB140kIezI1bKPOA
xWyJgcCSQIHkSPK2VlVT4AfAa6J8PVQzLBPnDhRNB6g8oEJw2G65+ya5v5Fsr0nZ20HXPL8mlN5x
PUwAKqPa4pa2Gquq5CpopR4UdOymptpGPOrbZviFiaWLhdTZq4LedLv3a8abIl0+QcdZERU3u63J
m+UPkpFPl2YWq8N8i16Dx3Ua+fw+HzRUa0ohuSBswEJDXg6Q8+U5UiLNxrZbg8L+tFAch8iCD44s
flotYPzSEn56G/DEUmQemalnnegn3jrFjG3DxnvUi/ntZdtJ18pVKIcZfXHE1pEVxHafS4k+g+Vg
MqFKtqeKFaPUO9vloLKR3ugqKKzOe7nw3ZUru3KM8JISmeH/reHWwfBcBaLYLTWr3SigAvHOjX3M
2GRFfQLkDU2d0Pdmfn6NEijQBdrGpWtCR9xHQo+uY27RBipki4qqeQNT+4OM8IkVFqxFSlhf3ICt
AdBwu5HTfKVb7aZhhgsQWUYCxgkIElL5zL5S9HrIt6e62dd0FqOMPmRBCEkHljZIH9J4nYO7InXg
y/89mkUciDSHJDknktA3IHRlfV8dfKx0F9sIbWJMcS1QWKi+MPERkuZsyMeCIyTZh+FW4464wiwO
eVO9KYkBW3ckY9kRyKtxCn6a/DRzKf49ER1fJIN8NTdn6LQeyLGX5VPjRXIwdSNaIitaHpm9Uw7K
v+7AAsGp6qBI4CF83vfcSnBLHQd4s7tRPjYOevkRfjcsKEaNYvW3dThiQdawjGggwJVuwGdH3O/b
YSizoFBYXOMZ6UwQulaYwqrbxGV3lqDLpm17raOUPCHepdLZG5YH9UldlEfh6qQ2UOBHFf0UQE00
zLZgXy6nY7FXCLR349UWJNtXH0IyExPzBa49XcJ0MhZ6V6Fogc27Cp6m9HtTTwNV76A8YkOOXgqC
ukxfSMFJlhTybOwjwwrKovVLMUbudJeJ7FcknslRT6XcoN/F6bSZ81JZFOz0Y1wHxj2nIuPT3m9k
+Ri0loOVebGefd5IR+4OtDivI43VsDkiIIaQUhamJjf+2aOJP7q2dkefGGkknh5//2UJnVW5Vfb6
M1VpDGw9sNx9EK+YnxR7i3wFuUtyfY2fg0Y75MrptkyDCCC1PnI974Z8pAAeRWB7U9d7NYH6ss5j
6Wyr7dqkgk/N7xMIsIs2uxzTbLdw1SUTG24HFUvZhysrmnffiNu+t7QlRf9WGQ0hh3Cw5ieAD0Av
i5PgLZy6FR9+lBbYtcttlDYr4Jn9e56U3w12nlJXDAxY6/sCVAvVO/aWXUKZP75UyRLMlecPfyga
32sTvaVACfvAgPqYxWcyvCQCqUfrefeBYPd+fiA9D/xTQUZqFBuLDm2+H4qziXux04pREa/1kzXL
qpRu/g9s22rrX38VbNe2X68BJoyGrQ4oiSuqzxGoLcuXr6EmdtcmJtvUrGHtf7LJtZ58xTz1Hxc3
1WtyrBvLb/jT57r36JXOsJCdivJnRvZ5RTsHPqHPEnT5BbRJ/ZlH23k86jmACGTBK6WefXU2BaWJ
8t0uNhwwLLjGb9TpZIcnlVQeRXpGulOPJLwJJaGu/ZraaV0EkOP34JzobHFUu3vtwv3e/g34+RJG
1v2LMvs2xosYT1lcZTGbp2GFvRPK0eLLinXMRpm+nsmsmHBM6+fQ/aOSHueXTgqLGHewtkKQMhuQ
DdkrXsWr1U4gVj/kATTmpgMidFxt/hPyhVOdmuyrCKFVm3HlYNUJz72gOTfhrsiMNyDdp9mgDPQp
FYwOYgAB4tfO+oaj0yw3+xe3fRI7tX75u5bR6A0YShc3hyCEC8BAKt3pkVMd4bRzU1DwEJC5Kq7d
lBTxVdaWo2woLjVMctQCwiyfUDYguLZCKGQ8e5Y4ySSPBNjekN9ObA2XicwnHgt4GtWn4wyT0mEK
e33Jt0ivAmZDVPu77y9q0ZTKp3F7InCE5LMhETNvyu3O8qKpK3mCg9drjsf1/zS/V2GtThE8S5A/
r/woHLIsfSn2EQGL+Tovvx8NFuDaH/hqXBXHaCtYnwPSDOyJOcRDJD8CfLsANHO4BjnJ7bPtQIdO
rsTGzbDBrEQYv89VHCnn+Ti3wcVSNrp8ZM72JzmC9oxuIonvC3U7FwFTHM+KMtNtgCD6WjCgmMoY
RDRTZ5ry0WBpTrXU4l+u798BP1pq+uISLIgzgLB0MJ+FRV6L4DWHbKxzfNmHmmSklWlGko0UoFiS
5d6APnBnjQKusUwXfO6oZAFglJE7hRlRodMzPYz7GDuFvZ3+o08BLqL/7jciful9dJkzEdcCDj1i
eVRlZqfuzCVFegdFleH4Uvz5Id14wVeKKRzvImon5uYYgW8E8vaFkdPQLlDSrJmnoZV2WRvEfT89
yAyaQ0FxPfyqGr4qH8MYKiMZHZzZUohnQGg2JQjAVu+CEF+eLAFbYEFVLoF1uFdLYkb+38yyhUdU
+QwPt43z3Ofw8+yGOrQcUiv24sXhmPcxBCewJGAmmmkTuTwntLUBmAv3OjLEgt/OWDH6ElL6Wv8a
lZc3k3X8SHpIY76xnPcEcxkXDR4z3PuULmXK+CH7OYYo+grtU0jyLTmtWxfe7fSea09OIzg3HcDN
Dabqqzd218BAOIkRd+WMAv9+fmpTZxMyqrphKt6lWkeCdb85hqovh56ORBuhwVGSMshI5cgApAJC
oPwwhMj/moA79zA0FSBy4pBM2SjXHN78UFiRSnNO05QK6Y6+bE0TOrjj8HjBv7oHrIxePhw7TnjM
9YbDnHss7KzJ9RgAN1stbxTFAtuvS0DYPX/adeajRnB76E0FWbS/RTNfKsbf1fDZKu7/i/Up1Ah6
zx2janVk4dye9dXNuXmdntnXrCjytoFwi3n5CWWYuRsW+NiT2pwJ9x3jYLaI63lOsTC44H0E9iog
8wTNz2UH+yeahV0WjE77A1P+6XnEXxryrClSStwrkXVYKfOgkTd7DTnJuDx5Pdz1u19aMPzADRRg
2JjUBNkz4ObIBLR7PGS4GYlBU23RHhPQ1Yn/bPkvRstgWB0P6ai84MKcs0U/E/p+isLV1YiLe23f
mwaQo3IBtP7EGAeokEYruj1aD48oa+sK992JAAoz/4fkcLWbBxaVLTBCqR3h8TJAkcTzr1qrXMEW
dwTWlhqe2Nsa6aS2jg37bk7NVOKpU4FBkb+gnxPZcI6SPmpq8RF2dbuErARrxADnhHFTXmYUWnsK
vk85WQbGVWNxFaTicxVyS8R5FGB2vhh+6uqxZ6blIqKhhsASBCIAdAZdOfG3NH0j9CswryrP4B/d
JsoF46OtS5Gfjw5UokKe0TNzngRhUc3EyBW5cgy87z4TUtx3BbjFWwJqA+6k5LUK4Mxzh2R56yCP
06Jgs+2RAz7qO34lkTAg8sMn9x3sniWRMDwPX9qLcAxlA+ABJJRdZPF3NE+vie8RNwqL4/77wZ8n
DS67qlt4e+TUd4XEBXj51myL/jxN7ivac2Wh9zslIYJJd7Ta69mxMtdm0ZIIggs6+VUEUUzWSNAV
dkMfRYVGKvUUD7rELHb1/Gkjm19VR0illnJoAWHkdKO4dn82SZcIrLFfS942d1PrYswR/w64Kozn
koQh/5ZNRjN72+fct/YOqr87xNPqhMp08K3GenkYKU2e+wzoVHUsH3RwZZ9+3OhAP0ZmxnG8Gele
SgAqBWkWYaRabzE86qKW+eEdaMy6MnKVjLGyFQlrxJb2BHlf4uO7+tzPqSA8BNlh5avWucWltYiU
o3deQAuSqbXot3V6i5wVfg9RLlSjvXzolaTJ20o+eq1MlMkW+jPfsTxw6XMcFV18LLT99Bez8YA7
UV88Vje9PvzgmtkO+NgoBQpAWE704wrlpPBgO/ksOuMzhyJ8HsdP04Rv6TjQXZGC/BjdA0LrF2YC
EofM/HoLyzP0fpHyHtAbqmYEgZ0ZfIxtNsNCtlUwObrKhTAjW3aDxox9ERgU2SsaErVmI/ijtLnz
mo6VwKt0jnZJSIzAxhSsrE0cujC7Wm6pGevNtZ6+eLnYW4T8MJaMlhUFs44MKUJnXr5hUzFOv8kO
aC3pkFifc8Unia941EretTo5ZIYaboVgsKQMc4IrNqFFLLUgpw+i1Z/3kwJJDNVld0jHh4LBV/C0
DtpGnH6Ke2cOGa5onDiHRHE1Co0M2MXC6bo0qZk625mWkHmNQ7rpvNBwhNszSvGk8vtBnV1ojSfU
1C/2ZrEt9Stg+0jXvSYhxFNS9+dJIttGS5pPTREqXPBvShk5o97E3klWhgCv8lUn21vkMties2bS
+MA5zy9QHM3yxaMn6PJ5zOVZkYRjHlPz6wPr+kAJ6aZxawnk5u+uhmLOOSJ0sB3k20azJkt6Qckm
QZwskklUT05CRi9AoMKheMnqSIpoEZulgdbtnCovVQrCALYrVwX27UGvfwqzPon36AzCLFCo+t/D
Vl4iTVc/EQXuDIOlP2nnk0YNZ+rtqR0JXrPLFjtlSVBR/CotRUqDBMeSIKcLcwuC8+pfK2cEYwu7
pW4ehlWi6Zylr6ChAkoh7Npzp/5DoczFWLHb/RUsPQtZ3/7aF+ZbNshR7HlhNky2k76Dd0wKBxel
/eydv7aC+q57onXVHvBZilBb1zTRxXMoVsd2Ao2kkSWJOO3CE0BJW0p3wx5lW0bVjMMwLVGpMFOo
4z7A30mcLgsvQoTIAR3y7WqP/l/5KcE1rN432/ehGgB9xWi14CaF3pXwmky7+EvXiAD5NqNhuV9U
k9HjuUlaMiyzamBMInjGZmtl9KF0wBOihVw0f0hRPjEozIgo7lNm9UfKZ6YqQZg6n9FYFDHnfyoq
nvHgpV9XErruEy84unM/JMltvtoAEUiai7SVSUhzL/n7QcljLRkv8L5Fqtq5q4ca6J3QoYZT7UPD
E/4jkOlXgdqR7/auRii+UM2oDX1rjkC15tDX1BgAhZ6TAKTAZy98CbgPpylObp2Qq1p7f8a6QwSt
uex2WrsGene7l0ox6g8i/1aJw1ivhsik3KZf+PwQQB+I2NMKH8AbAX5HryxgCwilMF9KX9PY31gx
6TKyXBjjgbSPjLCVDvK9MXuFqORxsPHRLILIYO337N3uhYWfPkhN0rWyHOJzJzbcbGaCV26HNfKR
/8S5YKLP0QGnjGiz1hhoKWqPGUycenBUW97aS6C2qWUBX41L/0R1d/WyYbjqZtTbGYtol9A4yPVy
jzWKN50PE37OXFuYulXpGVjxnOXvOpanAt6iSzjLF/ns+wqBClotDGm1UwwoFSw7oQ7ccwDoda6S
3n5yLw6BM8oXZgsH0qlbb/k42F1dVRp5xhy4eJ3Vx744J+kh+4RNWWNUVM5vXUexeQQD4080ZtYD
CGVpol94/W6aBUHx6Gj8/wJ8qWWJyKLgMyIK5W7lzlPU5Utpu+CkfK3d9KvGo0z+Jf+UMxmh3CE0
NRBRTpbC/5TNIwnMyLiKB8CAw9+WSkDTh4vjdxaX+fGod11qKOfcF/pNG0gN2j6obhjgONkFHX6A
PEoHGfpm6fWiUPTy0WzGIVOix3sHVcik31P2aYCznIooEi5sqcBEzEqGcI7uAk7+wtUXLSkodFKm
K4cfOxitutLK02wjxtW/8g5lf4Vn2gRZWos96AfX5/0IOzLEhjOb9YwwiMXrEA18zHTBAL1y0vdw
9+4sx7ZD/aDLVePV/2hZzBh5uWEmQDT2VQHQ4wBQAV2PiDeguRMWELETc7tph/EqosdWNSywCrcU
7nKhFNmtT3fYr1H+am2tJ3rKua7HhyTzM1LvmO4zBeZmPG/L/l5KxFr2c0wZ0K+xJV9QzTSL7s0L
92S8cJAxckHAyzFj7YntJrpVFOUnhxB9ADklKEgSxaisrYh22NJYC+WRWxwk4SvYC9jbLwltLuye
HNU78UlUGiJa6NKLayx++LM4vxlngMvIy2RFhi/u6us5NGd6WOishoetK/sG+sdkABgH2ikEjDGf
l1bxzXNaDXSt80lIeLkRhOFufB9ocOmTjsNT
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
