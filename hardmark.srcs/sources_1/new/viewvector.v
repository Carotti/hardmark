`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2019 04:47:03 PM
// Design Name: 
// Module Name: viewvector
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


module viewvector(
        hcount,
        vcount,
        xview,
        yview,
        zview
    );
    
parameter screenWidth = 1280;
parameter screenHeight = 720;

parameter perspective = 400;

input [10:0] hcount, vcount;

output [31:0] xview, yview, zview;

assign xview = {21'b0, hcount};
assign yview = {32'b0, vcount};
assign zview = perspective;
    
endmodule
