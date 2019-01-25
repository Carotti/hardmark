`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2019 02:43:56 PM
// Design Name: 
// Module Name: alpha_combine
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


module alpha_combine(
        rgb_in,
        rgba_in,
        rgb_out
    );

    input [23:0] rgb_in;
    input [31:0] rgba_in;
    output [23:0] rgb_out;
    
    wire [7:0] alpha;
    wire [7:0] alpha_prime;
    
    assign alpha = rgba_in[7:0];
    assign alpha_prime = 8'hff - alpha;
    
    wire is_alpha = |alpha;
    
    //assign rgb_out = alpha * rgba_in[23:0] + alpha_prime * rgb_in;
    assign rgb_out = is_alpha ? rgba_in[31:8] : rgb_in;
    
endmodule