`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2019 04:54:46 PM
// Design Name: 
// Module Name: sphere
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


module sphere(
        xview,
        yview,
        zview,
        xpos,
        zpos,
        ypos,
        radius,
        xint,
        yint,
        zint,
        intersection,
    );

input [31:0] xview, yview, zview, xpos, zpos, ypos, radius;

output [31:0] xint, yint, zint;
output wire intersection;
    
    
endmodule
