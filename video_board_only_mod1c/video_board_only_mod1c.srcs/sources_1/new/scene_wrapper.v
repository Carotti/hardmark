module scene_wrapper (
    input pixel_clk,
    input hsync,
    input vsync,
    input [23:0] sphere_x,
    input [23:0] sphere_y,
    input [23:0] sphere_z,
    input [23:0] sphere_radius,
    output [31:0] pixel_data,
    output [10:0] hcount,
    output [10:0] vcount
);

    scene scene_i (
        .pixel_clk(pixel_clk),
        .hsync(hsync),
        .vsync(vsync),
        .sphere_x(sphere_x),
        .sphere_y(sphere_y),
        .sphere_z(sphere_z),
        .sphere_radius(sphere_radius),
        .pixel_data(pixel_data),
        .hcount(hcount),
        .vcount(vcount)
    );

endmodule