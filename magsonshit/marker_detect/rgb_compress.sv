module rgb_compress (clk_in, rgb_in, compressed_out);

	parameter COLOUR_DEPTH = 8;
	parameter AVERAGE_OVER = 1024;
	localparam AVERAGE_BITS = $clog2(AVERAGE_OVER);
	parameter MIN_THRES = 1 << (AVERAGE_BITS-4);
	parameter MAX_THRES = 1 << (AVERAGE_BITS-1);

	`define MAX(A, B)\
		(A > B) ? A : B

	`define MIN(A, B)\
		(A < B) ? A : B

	input clk_in;
	input [((COLOUR_DEPTH*3)-1):0] rgb_in;
	output logic [2:0] compressed_out;

	logic [(COLOUR_DEPTH-1):0] red;
	logic [(COLOUR_DEPTH-1):0] green;
	logic [(COLOUR_DEPTH-1):0] blue;

	logic [(COLOUR_DEPTH-1):0] red_reg = 0;
	logic [(COLOUR_DEPTH-1):0] green_reg = 0;
	logic [(COLOUR_DEPTH-1):0] blue_reg = 0;

	logic [(COLOUR_DEPTH-1):0] red_thres;
	logic [(COLOUR_DEPTH-1):0] green_thres;
	logic [(COLOUR_DEPTH-1):0] blue_thres;

	logic [AVERAGE_BITS-1:0] pixel_counter = 0;
	logic [AVERAGE_BITS-1:0] buffer_oldest;
	logic [(COLOUR_DEPTH+AVERAGE_BITS-1):0] colour_buff [0:AVERAGE_OVER-1] [0:2];
	logic [(COLOUR_DEPTH+AVERAGE_BITS-1):0] colour_sum [0:2];
	logic [(COLOUR_DEPTH+AVERAGE_BITS-1):0] colour_avg [0:2];

	assign red   = rgb_in[COLOUR_DEPTH-1:0];
	assign green = rgb_in[2*COLOUR_DEPTH-1:COLOUR_DEPTH];
	assign blue  = rgb_in[3*COLOUR_DEPTH-1:2*COLOUR_DEPTH];

	assign colour_avg[0] = colour_sum[0] >> AVERAGE_BITS;
	assign colour_avg[1] = colour_sum[1] >> AVERAGE_BITS;
	assign colour_avg[2] = colour_sum[2] >> AVERAGE_BITS;

	assign buffer_oldest = (pixel_counter == AVERAGE_OVER-1) ? 0 : pixel_counter + 1;
	initial
	begin
		for (int i = 0; i < 3; ++i)
		begin
			colour_sum[i] = 0;
			for (int j = 0; j < AVERAGE_OVER; ++j)
			begin
				colour_buff[j][i] = 0;
			end
		end
	end

	always_ff @(posedge clk_in)
	begin
		red_reg   <= red;
		green_reg <= green;
		blue_reg  <= blue;

		colour_buff[pixel_counter][0] <= red;
		colour_buff[pixel_counter][1] <= green;
		colour_buff[pixel_counter][2] <= blue;

		colour_sum[0] <= colour_sum[0] + red   - colour_buff[buffer_oldest][0];
		colour_sum[1] <= colour_sum[1] + green - colour_buff[buffer_oldest][1];
		colour_sum[2] <= colour_sum[2] + blue  - colour_buff[buffer_oldest][2];

		pixel_counter <= (pixel_counter == AVERAGE_OVER-1) ? 0: pixel_counter + 1;
	end

	assign red_thres 	= `MAX(`MIN(colour_avg[0], MAX_THRES), MIN_THRES);
	assign green_thres 	= `MAX(`MIN(colour_avg[1], MAX_THRES), MIN_THRES);
	assign blue_thres 	= `MAX(`MIN(colour_avg[2], MAX_THRES), MIN_THRES);

	assign compressed_out[0] = ((red_reg   > red_thres  ) ? 1'b1 : 1'b0);
	assign compressed_out[1] = ((green_reg > green_thres) ? 1'b1 : 1'b0);
	assign compressed_out[2] = ((blue_reg  > blue_thres ) ? 1'b1 : 1'b0);
endmodule
