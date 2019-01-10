`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2015 02:05:19 AM; comments added 7/24/2018
// Design Name: 
// Module Name: xvga
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Revision:
// Revision 1.0 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
// xvga: Generate XVGA display signals (1024 x 768 @ 60Hz)
// vga: 640x480 verilog is also included by commented out
//
////////////////////////////////////////////////////////////////////////////////


module xvga(vclock, hcount, vcount, vsync, hsync, blank);

    parameter hWidth = 1024;
    parameter hFrontPorch = 24;
    parameter hBackPorch = 160;
    parameter hSyncWidth = 136;
    
    parameter vWidth = 768;
    parameter vFrontPorch = 9;
    parameter vBackPorch = 23;
    parameter vSyncWidth = 6;

    input vclock;
    output reg [$clog2(hWidth + hFrontPorch + hSyncWidth + hBackPorch) - 1:0] hcount;    // pixel number on current line
    output reg [$clog2(vWidth + vFrontPorch + vSyncWidth + vBackPorch) - 1:0] vcount;    // line number
    output reg vsync, hsync;
    output reg blank;

   reg hblank;
   wire hsyncon, hsyncoff, hreset, hblankon;
   assign hblankon = (hcount == hWidth - 1);    
   assign hsyncon = (hcount == hWidth + hFrontPorch - 1);
   assign hsyncoff = (hcount == hWidth + hFrontPorch + hSyncWidth - 1);
   assign hreset = (hcount == hWidth + hFrontPorch + hSyncWidth + hBackPorch - 1);

   reg vblank;
   wire vsyncon, vsyncoff, vreset, vblankon;
   assign vblankon = (vcount == vWidth - 1);    
   assign vsyncon = (vcount == vWidth + vFrontPorch - 1);
   assign vsyncoff = (vcount == vWidth + vFrontPorch + vSyncWidth - 1);
   assign vreset = (vcount == vWidth + vFrontPorch + vSyncWidth + vBackPorch - 1);

   // sync and blanking
   wire next_hblank, next_vblank;
   assign next_hblank = hreset ? 0 : hblankon ? 1 : hblank;
   assign next_vblank = vreset ? 0 : vblankon ? 1 : vblank;
   always @(posedge vclock) begin
      hcount <= hreset ? 0 : hcount + 1;
      hblank <= next_hblank;
      hsync <= hsyncon ? 0 : hsyncoff ? 1 : hsync;  // active low

      vcount <= hreset ? (vreset ? 0 : vcount + 1) : vcount;
      vblank <= next_vblank;
      vsync <= vsyncon ? 0 : vsyncoff ? 1 : vsync;  // active low

      blank <= next_vblank | (next_hblank & ~hreset);
   end
   
//   assign at_display_area = ((hcount >= 0) && (hcount < 1024) && (vcount >= 0) && (vcount < 768));
endmodule