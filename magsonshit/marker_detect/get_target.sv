module get_target(	clk_in,
					rst_in,
					vsync_in,
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

	`define DIST_APPROX(X1, X2, Y1, Y2) \
		(`DIFF(X1, X2) + `DIFF(Y1, Y2))

	`define SQ_APPROX(X) \
		(X << 1)

	input clk_in;
	input rst_in;
	input vsync_in;
	input [$clog2(SCREEN_WIDTH):0] hcount_in;
	input [$clog2(SCREEN_HEIGHT):0] vcount_in;
	input [2:0] rgb_in;
	output logic [NUM_TARGETS-1:0][$clog2(SCREEN_WIDTH)-1:0] xcount_out;
	output logic [NUM_TARGETS-1:0][$clog2(SCREEN_HEIGHT):0] ycount_out;
	output logic [NUM_TARGETS-1:0][$clog2(SCREEN_HEIGHT):0] diameter_out;
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
	logic [2*$clog2(SCREEN_HEIGHT):0] inside_target;

	genvar num_target;
	generate
		for (num_target = 0; num_target < NUM_TARGETS; num_target=num_target+1)
		begin
			assign dist_sq[num_target] = valid_out[num_target] ? `DIST_APPROX(xcount_out[num_target], centre_temp, ycount_out[num_target], vcount_in) : 0;
			assign diameter_sq[num_target] = valid_out[num_target] ? `SQ_APPROX(diameter_out[num_target]) : 0;
			assign inside_target[num_target] = valid_out[num_target] ? (dist_sq[num_target] <= diameter_sq[num_target]) : 0;
		end
	endgenerate

	logic new_target;
	assign new_target = ~(|inside_target);

	count_flips cf1(	.clk_in(clk_in),
						.rst_in(vsync_in),
						.hcount_in(hcount_in),
						.rgb_in(rgb_in),
						.number_of_flips_out(number_of_flips),
						.coord_out(centre_temp),
						.centre_width_out(diameter_temp),
						.nt_probability_out(nt_prob),
						.done_out(detected_in_row) );

	always_ff @(posedge clk_in)
	begin
		if (rst_in)
		begin
			valid_out <= 0;
		end
		else
		begin
			if (detected_in_row)
			begin
				for (int target_num = 0; target_num < NUM_TARGETS; ++target_num)
				begin
					if 	(	(inside_target[target_num])
						&& 	((nt_prob < nt_min_probabilities[target_num]) || ((~valid_out[target_num]) && (next_target == target_num)))
						)
					begin
						xcount_out[target_num] 				<= centre_temp;
						ycount_out[target_num] 				<= vcount_in;
						diameter_out[target_num] 			<= diameter_temp;
						nt_min_probabilities[target_num]	<= nt_prob;
						valid_out[target_num]				<= 1'b1;
					end
				end

				if (new_target)
				begin
					xcount_out[next_target] 			<= centre_temp;
					ycount_out[next_target] 			<= vcount_in;
					diameter_out[next_target] 			<= diameter_temp;
					nt_min_probabilities[next_target]	<= nt_prob;
					valid_out[next_target]				<= 1'b1;
					next_target							<= next_target + 1;
				end
			end
		end
	end
endmodule
