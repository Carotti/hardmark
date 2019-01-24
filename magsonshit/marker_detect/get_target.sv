module get_target(	clk_in,
					rst_in,
					vsync_in,
					rgb_in,
					hcount_out,
					vcount_out,
					diameter_out,
					valid_out);
	parameter NUM_TARGETS = 4;
	parameter V_WIDTH = 1050;

	localparam NUM_TARGETS_BITS = $clog2(NUM_TARGETS);

	`define DIFF(A, B)\
		((A < B) ? (B - A) : (A - B))

	`define DIST_SQ(X1, X2, Y1, Y2) \
		(`DIFF(X1, X2)*`DIFF(X1, X2) + `DIFF(Y1, Y2)*`DIFF(Y1, Y2))

	`define SQ(X) \
		(X*X)

	input clk_in;
	input rst_in;
	input vsync_in;
	input [2:0] rgb_in;
	output logic [10:0] hcount_out [NUM_TARGETS-1:0];
	output logic [10:0] vcount_out [NUM_TARGETS-1:0];
	output logic [10:0] diameter_out [NUM_TARGETS-1:0];
	output logic valid_out [NUM_TARGETS-1:0];

	logic detected_in_row;
	logic [10:0] nt_prob;
	logic [10:0] nt_min_probabilities [NUM_TARGETS-1:0];
	logic [3:0] number_of_flips;
	logic [10:0] hcount_temp;
	logic [10:0] vcount = 0;
	logic [10:0] diameter_temp;
	logic [NUM_TARGETS_BITS-1:0] next_target = 0;
	logic [22:0] diameter_sq [NUM_TARGETS-1:0];
	logic [21:0] dist_sq [NUM_TARGETS-1:0];



	count_flips cf1(	.clk_in(clk_in),
						.rst_in(vsync_in),
						.rgb_in(rgb_in),
						.number_of_flips_out(number_of_flips),
						.coord_out(hcount_temp),
						.centre_width_out(diameter_temp),
						.nt_probability_out(nt_prob),
						.done_out(detected_in_row) );

	always_ff @(posedge clk_in or posedge rst_in)
	begin
		if (rst_in)
		begin
			vcount <= 0;
		end
		if (vsync_in)
		begin
			if (vcount == V_WIDTH)
			begin
				vcount <= 0;
			end
			else
			begin
				vcount <= vcount + 1;
			end
		end
	end
	logic old_target;
	always_ff @(posedge clk_in or posedge rst_in)
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
				dist_sq[target_num] = `DIST_SQ(hcount_out[target_num], hcount_temp, vcount_out[target_num], vcount);
				diameter_sq[target_num] = `SQ(diameter_out[target_num]);
				if 	(	(dist_sq[target_num] <= diameter_sq[target_num])
					&& 	((nt_prob < nt_min_probabilities[target_num]) || ((~valid_out[target_num]) && (next_target == target_num)))
					&&  (~old_target)
					)
				begin
					hcount_out[target_num] 				= hcount_temp;
					vcount_out[target_num] 				= vcount;
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
				hcount_out[next_target] 			= hcount_temp;
				vcount_out[next_target] 			= vcount;
				diameter_out[next_target] 			= diameter_temp;
				nt_min_probabilities[next_target]	= nt_prob;
				valid_out[next_target]				= 1'b1;
				next_target							= next_target + 1;
			end
		end
	end
endmodule
