module rgb_compress_tb;
	`include "images_lib.sv"
	logic clk = 0;
	logic [31:0] curr_pixel = 0;
	logic [2:0] compressed_pixel_1;
	logic [2:0] compressed_pixel_2;
	logic [2:0] compressed_pixel_3;
	logic [2:0] compressed_pixel_4;
	logic [2:0] compressed_pixel_5;
	logic [2:0] compressed_pixel_6;
	logic [2:0] compressed_pixel_7;
	logic done;

	assign done = (curr_pixel == NUM_PIXELS_TARGET7) ? 1'b1 : 1'b0;
	always #5
	begin
		clk = ~clk;
	end

	always_ff @(posedge clk)
	begin
		$display("%d", curr_pixel);
		curr_pixel <= curr_pixel + 1;
	end

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc1 (	.clk_in(clk),
						.rgb_in(target1[curr_pixel]),
						.compressed_out(compressed_pixel_1) );

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc2 (	.clk_in(clk),
						.rgb_in(target2[curr_pixel]),
						.compressed_out(compressed_pixel_2) );

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc3 (	.clk_in(clk),
						.rgb_in(target3[curr_pixel]),
						.compressed_out(compressed_pixel_3) );

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc4 (	.clk_in(clk),
						.rgb_in(target4[curr_pixel]),
						.compressed_out(compressed_pixel_4) );

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc5 (	.clk_in(clk),
						.rgb_in(target5[curr_pixel]),
						.compressed_out(compressed_pixel_5) );

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc6 (	.clk_in(clk),
						.rgb_in(target6[curr_pixel]),
						.compressed_out(compressed_pixel_6) );

	rgb_compress #(.COLOUR_DEPTH(8), .AVERAGE_OVER(3), .MIN_THRES(0), .MAX_THRES(255)) rgbc7 (	.clk_in(clk),
						.rgb_in(target7[curr_pixel]),
						.compressed_out(compressed_pixel_7) );


	initial
	begin
		$dumpfile("test.vcd");
		$dumpvars(0, rgb_compress_tb);
		for (int i = 0; i < 3; ++i)
		begin
			$dumpvars(1, rgbc1.colour_sum[i]);
			$dumpvars(1, rgbc1.colour_avg[i]);
			$dumpvars(1, rgbc2.colour_sum[i]);
			$dumpvars(1, rgbc2.colour_avg[i]);
			$dumpvars(1, rgbc3.colour_sum[i]);
			$dumpvars(1, rgbc3.colour_avg[i]);
			$dumpvars(1, rgbc4.colour_sum[i]);
			$dumpvars(1, rgbc4.colour_avg[i]);
			$dumpvars(1, rgbc5.colour_sum[i]);
			$dumpvars(1, rgbc5.colour_avg[i]);
			$dumpvars(1, rgbc6.colour_sum[i]);
			$dumpvars(1, rgbc6.colour_avg[i]);
			$dumpvars(1, rgbc7.colour_sum[i]);
			$dumpvars(1, rgbc7.colour_avg[i]);
		end
		@(posedge done)
		begin
			$finish;
		end
	end
endmodule