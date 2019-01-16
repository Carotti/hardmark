module count_flips(	clk_in, // pixel clock
					rst_in, // active high reset. Resets after every new vcount
					rgb_in, // 3 bit RGB value of current pixel being processed
					number_of_flips_out, // for the previous pixels in row, how many diff. colour bands
					coord_out, // gives hcount for centre of target
					nt_probability_out, // gives the probability the current pixel IS NOT the centre
					done_out // goes high when all bands for a target has been detected
				  );
	parameter MAX_WIDTH = 200;
	parameter MIN_WIDTH = 10;
	parameter MAX_WIDTH_DIFF = 100;
	parameter WHITE_THRES = 3'b011;
	parameter BLACK_THRES = 3'b000;

	`define SUB_ABS(X, Y) \
		((X > Y) ? (X - Y) : (Y - X))

	`define RESET \
		state <= INITIAL; \
		coord_out <= 11'b0; \
		nt_probability_out <= 11'b0; \
		state_prev <= INITIAL; \
		curr_width <= 11'b0; \
		prev_width <= 11'b0; \
		monotonic_increasing <= 1'b0; \
		done_out <= 11'b0; \
		number_of_flips_out <= 4'b0; \
		curr_pixel <= 11'b0

	`define SET_STATE_MA(NEW_STATE) \
		if 	( \
				(state == state_prev) \ 											  // the previous pixel was different
				&&	\ 																  // and
				( \ 																  // either
					( \
					 	(number_of_flips_out == 5) \								  //	the pixel now belongs to the centre region
						&& (`SUB_ABS(2*prev_width, curr_width) < MAX_WIDTH_DIFF) \	  //	and the width of the region ~ 2*prev_width
					) \
					|| \															  // or
					( \
						(number_of_flips_out != 5) \								  //	it is not the centre region
						&& \														  // 	and
						( \															  //	either it is a stripe transition involving stripe 1
							( (number_of_flips_out <= 2) \							  //	the width of the region >= prev_width and
							|| (curr_ge_prev && monotonic_increasing) \				  //	previous widths suggest the target angles towards
							|| (curr_l_prev && monotonic_decreasing) ) \			  //	the camera and accordingly for target angling away
							&& \													  //	and
							( \
								(`SUB_ABS(curr_width, prev_width) < MAX_WIDTH_DIFF) \ //	the difference in widths is not too great
								&& (curr_width < MAX_WIDTH) \						  //	and the width is not too great
								&& (curr_width > MIN_WIDTH) \						  //	and the width is not too small
							) \
						) \
					) \
				) \
			) \
		begin \
			// -- move to the next state: --
			// reset the curr_width
			curr_width <= 11'b0; \
			// change the state so we remember the new region colour
			state <= NEW_STATE; \
			// if we are in the centre region of the target
			if (number_of_flips_out == 5) \
			begin \
				// tell the output the centre of this possible target
				coord_out <= curr_pixel - (curr_width / 2); \
				// the probability of not being a target is the abs difference of 2*prev_width, centre width
				nt_probability_out <= `SUB_ABS(2*prev_width, curr_width); \
				// the previous width, as it is used to compare with stripes of width centre width/2:
				prev_width <= curr_width / 2; \
				// increment the number of flips
				number_of_flips_out <= number_of_flips_out + 1; \
			end \
			// this is the last flip
			else if (number_of_flips_out == 9) \
			begin \
				// tell the output we are done and the previous centre coordinate is probably valid
				done_out <= 1'b1; \
				// reset
				`RESET;
			end \
			else if (number_of_flips_out == 2) \
			begin \
				// we know the width of the first 2 stripes. Determing angle towards or away from this
				// set monotonic increasing variable based on this
				monotonic_increasing <= (curr_width > prev_width); \
			end \
			else \
			begin \
				// this just a transition from one stripe to another
				prev_width <= curr_width; \
				// increment the number of flips
				number_of_flips_out <= number_of_flips_out + 1; \
			end \
		end \
		else if (state == state_prev) \
		begin \
			// the width conditions fail, thus the previous region was not part of a marker
			`RESET; \
		end \
		else \
		begin \
			// prevent 1 pixel errors
			state_prev <= NEW_STATE; \
		end

	input clk_in;
	input rst_in;
	input [2:0] rgb_in;

	output logic [3:0] number_of_flips_out;
	output logic [10:0] coord_out;
	output logic [10:0] nt_probability_out = 5'b0;

	// -- states --
	localparam INITIAL = 0;
	localparam WAS_WHITE = 1;
	localparam WAS_BLACK = 2;

	logic [1:0] state = INITIAL;
	logic [1:0] state_prev = INITIAL;
	logic [10:0] prev_width = 11'b0;
	logic [10:0] curr_width = 11'b0;
	logic [10:0] curr_pixel = 11'b0;

	// high if the pixel is black
	logic is_black;
	// high if the pixel is white
	logic is_white;
	// high if the subsequent widths are greater than the previous widths
	logic monotonic_increasing = 0;
	// low if the subsequent widhts are less than the previous widths
	logic monotonic_decreasing;
	// high if the current stripe width is greater than or equal to the previous width
	logic curr_ge_prev;
	// high if the current stripe width is less than the previous width
	logic prev_ge_curr;

	assign monotonic_decreasing = ~monotonic_increasing;

	assign curr_ge_prev = (curr_width >= prev_width);
	assign curr_l_prev = ~curr_ge_prev;

	assign is_black = (rgb_in < BLACK_THRES);
	assign is_white = (rgb_in > WHITE_THRES);

	always_ff @(posedge clk_in or posedge rst_in)
	begin
		if (rst_in)
		begin
			`RESET;
		end
		else
		begin
			curr_pixel <= curr_pixel + 1;
			state_prev <= state;
			if (state == INITIAL)
			begin
				if (is_black)
				begin
					`SET_STATE_MA(WAS_BLACK)
				end
				else if (is_white)
				begin
					`SET_STATE_MA(WAS_WHITE)
				end
			end
			else if (state == WAS_BLACK)
			begin
				if (is_black)
				begin
					curr_width <= curr_width + 1;
				end
				else if (is_white)
				begin
					`SET_STATE_MA(WAS_WHITE)
				end
			end
			else if (state == WAS_WHITE)
			begin
				if (is_black)
				begin
					`SET_STATE_MA(WAS_BLACK)
				end
				else if (is_white)
				begin
					curr_width <= curr_width + 1;
				end
			end
		end
	end

endmodule