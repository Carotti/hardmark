`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2019 08:33:47 AM
// Design Name: 
// Module Name: color_selector
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


module color_selector(
    input [3:0]btns,
    input [23:0]color_data_in,
    input hsync_in,
    input vsync_in,
    input vde_in,
    input pixel_clk_in,
    output [23:0]color_data_out,
    output hsync_out,
    output vsync_out,
    output vde_out,
    output pixel_clk_out,
    output [3:0]leds
    );
    assign leds = btns;
    assign pixel_clk_out = pixel_clk_in;
    assign vde_out = vde_in;
    assign vsync_out = vsync_in;
    assign hsync_out = hsync_in;
    wire [7:0] red_color;
    wire [7:0] blue_color;
    wire [7:0] green_color;
    assign red_color = btns[2]?color_data_in[23:16]:8'b0;
    assign green_color = btns[1]?color_data_in[15:8]:8'b0;
    assign blue_color = btns[0]?color_data_in[7:0]:8'b0;
    assign color_data_out = {red_color, green_color, blue_color};

   
    
endmodule
