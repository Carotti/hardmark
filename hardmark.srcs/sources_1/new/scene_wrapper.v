module scene_wrapper (
    input pixel_clk,
    output [31:0] pixel_data
);

    scene scene_i (
        .pixel_clk(pixel_clk),
        .pixel_data(pixel_data)
    );

endmodule