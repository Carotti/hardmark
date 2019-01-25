module get_target(	clk_in,
					rst_in,
					hcount_in,
					vcount_in,
					rgb_in,
					xcount_out,
					ycount_out,
					diameter_out,
					valid_out);
	parameter NUM_TARGETS = 4;
	parameter SCREEN_WIDTH = 1280;
	parameter SCREEN_HEIGHT = 720;

	localparam NUM_TARGETS_BITS = $clog2(NUM_TARGETS);

	`define DIFF(A, B)\
		((A < B) ? (B - A) : (A - B))

	`define DIST_SQ(X1, X2, Y1, Y2) \
		(`DIFF(X1, X2)*`DIFF(X1, X2) + `DIFF(Y1, Y2)*`DIFF(Y1, Y2))

	`define SQ(X) \
		(X*X)

	input clk_in;
	input rst_in;
	input [$clog2(SCREEN_WIDTH):0] hcount_in;
	input [$clog2(SCREEN_HEIGHT):0] vcount_in;
	input [2:0] rgb_in;
	output logic [$clog2(SCREEN_WIDTH)-1:0] [NUM_TARGETS-1:0] xcount_out;
	output logic [$clog2(SCREEN_HEIGHT):0] [NUM_TARGETS-1:0] ycount_out;
	output logic [$clog2(SCREEN_HEIGHT):0] [NUM_TARGETS-1:0] diameter_out;
	output logic [NUM_TARGETS-1:0] valid_out ;

	logic detected_in_row;
	logic [10:0] nt_prob;
	logic [10:0] nt_min_probabilities [NUM_TARGETS-1:0];
	logic [3:0] number_of_flips;
	logic [$clog2(SCREEN_WIDTH)-1:0] centre_temp;
	logic [$clog2(SCREEN_HEIGHT):0] diameter_temp;
	logic [NUM_TARGETS_BITS-1:0] next_target = 0;
	logic [2*$clog2(SCREEN_HEIGHT):0] diameter_sq [NUM_TARGETS-1:0];
	logic [2*$clog2(SCREEN_HEIGHT):0] dist_sq [NUM_TARGETS-1:0];
	logic vsync;

	assign vsync = (hcount_in == 0);

	count_flips cf1(	.clk_in(clk_in),
						.rst_in(vsync),
						.hcount_in(hcount_in),
						.rgb_in(rgb_in),
						.number_of_flips_out(number_of_flips),
						.coord_out(centre_temp),
						.centre_width_out(diameter_temp),
						.nt_probability_out(nt_prob),
						.done_out(detected_in_row) );

	logic old_target;
	always_ff @(posedge clk_in)
	begin
		if (rst_in)
		begin
			for (int i = 0; i < NUM_TARGETS; ++i)
			begin
				valid_out[i] = 0;
			end
		end

		if (detected_in_row)
		begin
			old_target = 1'b0;
			for (int target_num = 0; target_num < NUM_TARGETS; ++target_num)
			begin
				dist_sq[target_num] = `DIST_SQ(xcount_out[target_num], centre_temp, ycount_out[target_num], vcount_in);
				diameter_sq[target_num] = `SQ(diameter_out[target_num]);
				if 	(	(dist_sq[target_num] <= diameter_sq[target_num])
					&& 	((nt_prob < nt_min_probabilities[target_num]) || ((~valid_out[target_num]) && (next_target == target_num)))
					&&  (~old_target)
					)
				begin
					xcount_out[target_num] 				= centre_temp;
					ycount_out[target_num] 				= vcount_in;
					diameter_out[target_num] 			= diameter_temp;
					nt_min_probabilities[target_num]	= nt_prob;
					valid_out[target_num]				= 1'b1;
				end
				if 	(dist_sq[target_num] <= diameter_sq[target_num])
				begin
					old_target							= 1'b1;
				end
			end

			if (~old_target)
			begin
				xcount_out[next_target] 			= centre_temp;
				ycount_out[next_target] 			= vcount_in;
				diameter_out[next_target] 			= diameter_temp;
				nt_min_probabilities[next_target]	= nt_prob;
				valid_out[next_target]				= 1'b1;
				next_target							= next_target + 1;
			end
		end
	end
endmodule
