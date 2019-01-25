module get_target_wrapper(clk_in,
					rst_in,
					rgb_in,
					hcount_in,
					vcount_in,
					xcount0_out,
					xcount1_out,
					xcount2_out,
					xcount3_out,
					ycount0_out,
					ycount1_out,
					ycount2_out,
					ycount3_out,
					diameter0_out,
					diameter1_out,
					diameter2_out,
					diameter3_out,
					valid_out);
	// maximum stripe width measured in number of pixels
	parameter MAX_WIDTH = 100;
	// minimum stripe width measured in number of pixels
	parameter MIN_WIDTH = 5;
	// maximum difference in stripe width for the same target
	parameter MAX_WIDTH_DIFF = 40;
	// the minimum number of bits which must be high in rgb_in in order for the pixel to classify as white
	parameter WHITE_THRES = 2;
	// the maximum number of bits which must be high in rgb_in in order for the pixel to classify as black
	parameter BLACK_THRES = 0;

	parameter SCREEN_WIDTH = 1280;
	parameter SCREEN_HEIGHT = 720;

	parameter COLOUR_DEPTH = 8;
	parameter AVERAGE_OVER = 1024;
	localparam AVERAGE_BITS = $clog2(AVERAGE_OVER);
	parameter MIN_THRES = 50;
	parameter MAX_THRES = 200;
	input clk_in, rst_in;
	input [((COLOUR_DEPTH*3)-1):0] rgb_in;

	input [$clog2(SCREEN_WIDTH):0] hcount_in;
	input [$clog2(SCREEN_HEIGHT):0] vcount_in;

	wire [$clog2(SCREEN_WIDTH):0] xcount0_out;
	wire [$clog2(SCREEN_WIDTH):0] xcount1_out;
	wire [$clog2(SCREEN_WIDTH):0] xcount2_out;
	wire [$clog2(SCREEN_WIDTH):0] xcount3_out;
	wire [$clog2(SCREEN_HEIGHT):0] ycount0_out;
	wire [$clog2(SCREEN_HEIGHT):0] ycount1_out;
	wire [$clog2(SCREEN_HEIGHT):0] ycount2_out;
	wire [$clog2(SCREEN_HEIGHT):0] ycount3_out;
	wire [$clog2(SCREEN_HEIGHT):0] diameter0_out;
	wire [$clog2(SCREEN_HEIGHT):0] diameter1_out;
	wire [$clog2(SCREEN_HEIGHT):0] diameter2_out;
	wire [$clog2(SCREEN_HEIGHT):0] diameter3_out;
	wire [3:0] valid_out;

	wire [$clog2(SCREEN_WIDTH):0] xcount [NUM_TARGETS-1:0];
	wire [$clog2(SCREEN_HEIGHT):0] ycount [NUM_TARGETS-1:0];
	wire [$clog2(SCREEN_HEIGHT):0] diameter [NUM_TARGETS-1:0];
	wire valid [NUM_TARGETS-1:0];
	wire [2:0] compressed;

	assign valid_out = {valid[0], valid[1], valid[2], valid[3]};

	assign xcount0_out = xcount[0];
	assign xcount1_out = xcount[1];
	assign xcount2_out = xcount[2];
	assign xcount3_out = xcount[3];
	assign ycount0_out = ycount[0];
	assign ycount1_out = ycount[1];
	assign ycount2_out = ycount[2];
	assign ycount3_out = ycount[3];
	assign diameter0_out = diameter[0];
	assign diameter1_out = diameter[1];
	assign diameter2_out = diameter[2];
	assign diameter3_out = diameter[3];

	rgb_compress #(.COLOUR_DEPTH(COLOUR_DEPTH), .AVERAGE_OVER(AVERAGE_OVER), .MIN_THRES(MIN_THRES), .MAX_THRES(MAX_THRES)) rgbc1 (.clk_in(clk_in), .rgb_in(rgb_in), .compressed_out(compressed));
	get_target #(.NUM_TARGETS(4), .SCREEN_HEIGHT(SCREEN_HEIGHT), .SCREEN_WIDTH(SCREEN_WIDTH)) gt1 (.clk_in(clk_in),
						.rst_in(rst_in),
						.hcount_in(hcount_in),
						.vcount_in(vcount_in),
						.rgb_in(compressed),
						.xcount_out(xcount),
						.ycount_out(ycount),
						.diameter_out(diameter),
						.valid_out(valid));
endmodule