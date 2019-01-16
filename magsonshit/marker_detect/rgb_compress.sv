module rgb_compress (clk_in, rgb_in, compressed_out);
	parameter COLOUR_DEPTH = 8;
	parameter AVERAGE_OVER = 1024;
	localparam AVERAGE_BITS = $clog2(AVERAGE_OVER);

	input clk_in;
	input [((COLOUR_DEPTH*3)-1):0] rgb_in;
	output [2:0] compressed_out;

	logic [AVERAGE_BITS:0] pixel_counter = 11'b0;
	logic set_avg = 1'b1;
	logic [(COLOUR_DEPTH+AVERAGE_BITS-1):0] colour_sum [0:2];
	logic [(COLOUR_DEPTH+AVERAGE_BITS-1):0] colour_avg [0:2];

	initial
	begin
		for (i = 0; i < 3; ++i)
		begin
			colour_avg[i] = 0;
			colour_sum[o] = 0;
		end
	end

	always_ff @(posedge clk_in)
	begin
		if ((pixel_counter == 0) && (set_avg == 1))
		begin
			colour_avg[0] <= rgb_in[COLOUR_DEPTH-1:0];
			colour_avg[1] <= rgb_in[2*COLOUR_DEPTH-1:COLOUR_DEPTH];
			colour_avg[2] <= rgb_in[3*COLOUR_DEPTH-1:2*COLOUR_DEPTH];
		end
		else if (set_avg)
		begin
			set_avg <= 1'b0;
			colour_avg[0] <= colour_sum[0] >> AVERAGE_BITS;
			colour_avg[1] <= colour_sum[1] >> AVERAGE_BITS;
			colour_avg[2] <= colour_sum[2] >> AVERAGE_BITS;
			colour_sum[0] <= 0;
			colour_sum[1] <= 0;
			colour_sum[2] <= 0;
		end
		else if (pixel_counter == AVERAGE_OVER)
		begin
			set_avg <= 1'b1;
		end
		colour_sum[0] <= colour_sum[0] + rgb_in[COLOUR_DEPTH-1:0];
		colour_sum[1] <= colour_sum[1] + rgb_in[2*COLOUR_DEPTH-1:COLOUR_DEPTH];
		colour_sum[2] <= colour_sum[2] + rgb_in[3*COLOUR_DEPTH-1:2*COLOUR_DEPTH];
	end

	assign compressed_out = {(rgb_in[COLOUR_DEPTH-1:0] > colour_avg[0]),
							 (rgb_in[2*COLOUR_DEPTH-1:COLOUR_DEPTH] > colour_avg[1]),
							 (rgb_in[3*COLOUR_DEPTH-1:2*COLOUR_DEPTH] > colour_avg[2])};
endmodule
