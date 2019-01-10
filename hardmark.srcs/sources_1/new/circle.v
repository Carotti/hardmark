`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2019 03:17:17 PM
// Design Name: 
// Module Name: circle
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define DISTSQ(x1, x2, y1, y2) \
                        ((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1))

`define INSIDERADIUS(x1, x2, y1, y2, r) \
                        ((r*r) > `DISTSQ(x1, x2, y1, y2))

module circle(
        hcount,
        vcount,
        pData
    );

input [10:0] hcount;
input [10:0] vcount;
output [23:0] pData;

assign pData =  {{8{hcount[7]}}, {8{hcount[6]}}, {8{hcount[5]}}};


endmodule
