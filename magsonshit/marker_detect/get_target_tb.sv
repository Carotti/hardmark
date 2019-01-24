module get_target_tb;
	`include "images_lib.sv"
	logic clk = 0;
	logic rst = 1;
	logic covered_screen;

	logic [31:0] curr_pixel = 0;
	logic [2:0] compressed_pixel;
	logic [10:0] hcount = 0;
	logic [10:0] vcount = 0;
	logic [10:0] centre_width [3:0];
	logic [10:0] centre_x [3:0];
	logic [10:0] centre_y [3:0];
	logic [23:0] pixel_uncompressed;
	logic valid [3:0];

	logic global_rst;

	assign covered_screen = (vcount == 1051);
	assign pixel_uncompressed = full_test1[curr_pixel];

	always #5
	begin
		clk = ~clk;
	end

	always_ff @(posedge clk)
	begin
		rst <= 0;
		$display("VCount: %d", vcount);
		if (~global_rst)
		begin
			hcount <= hcount + 1;
			curr_pixel <= curr_pixel + 1;
			if (hcount >= 11'd1679)
			begin
				hcount <= 0;
				vcount <= vcount + 1;
				rst <= 1;
			end
		end
	end

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(1024)) rgbc1(	.clk_in(clk),
						.rgb_in(pixel_uncompressed),
						.compressed_out(compressed_pixel) );

	get_target gt1(		.clk_in(clk),
						.rst_in(global_rst),
						.vsync_in(rst),
						.rgb_in(compressed_pixel),
						.hcount_out(centre_x),
						.vcount_out(centre_y),
						.diameter_out(centre_width),
						.valid_out(valid));
	initial
	begin
		$dumpfile("test.vcd");
		$dumpvars(0, get_target_tb);
		for (int i = 0; i < 4; ++i)
		begin
			$dumpvars(1, gt1.diameter_out[i]);
			$dumpvars(1, gt1.hcount_out[i]);
			$dumpvars(1, gt1.vcount_out[i]);
			$dumpvars(1, gt1.valid_out[i]);
		end
		global_rst = 0;
		#20;
		global_rst = 1;
		#20;
		global_rst = 0;
		@(posedge covered_screen)
		begin
			$finish;
		end
	end
endmodule