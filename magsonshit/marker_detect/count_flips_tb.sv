module count_flips_tb;
	`include "images_lib.sv"
	logic clk = 0;
	logic rst = 1;
	logic done;
	logic covered_screen;

	logic [31:0] curr_pixel = 0;
	logic [2:0] compressed_pixel;
	logic [10:0] hcount = 0;
	logic [10:0] vcount = 0;
	logic [10:0] centre_width;
	logic [3:0] number_of_flips;
	logic [10:0] coord;
	logic [10:0] nt_probability;
	logic [23:0] pixel_uncompressed;

	assign covered_screen = (vcount == 1051);
	assign pixel_uncompressed = full_test1[curr_pixel];
	always #5
	begin
		clk = ~clk;
	end

	always_ff @(posedge clk)
	begin
		rst <= 0;
		hcount <= hcount + 1;
		$display("Coordinate: %d", coord);
		$display("VCount: %d", vcount);
		if (~done)
		begin
			curr_pixel <= curr_pixel + 1;
		end
		if (~done && (hcount >= 11'd1679))
		begin
			hcount <= 0;
			vcount <= vcount + 1;
			rst <= 1;
		end
	end

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(1024)) rgbc1(	.clk_in(clk),
						.rgb_in(pixel_uncompressed),
						.compressed_out(compressed_pixel) );

	count_flips cf1(	.clk_in(clk),
						.rst_in(rst),
						.rgb_in(compressed_pixel),
						.number_of_flips_out(number_of_flips),
						.coord_out(coord),
						.centre_width_out(centre_width),
						.nt_probability_out(nt_probability),
						.done_out(done) );
	initial
	begin
		$dumpfile("test.vcd");
		$dumpvars(0, count_flips_tb);
		for (int i = 0; i < 3; ++i)
		begin
			$dumpvars(1, rgbc1.colour_sum[i]);
			$dumpvars(1, rgbc1.colour_avg[i]);
		end
		@(posedge covered_screen)
		begin
			$finish;
		end
	end
endmodule