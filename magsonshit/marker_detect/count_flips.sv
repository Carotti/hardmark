module count_flips(	clk_in, // pixel clock
					rst_in, // active high reset. Resets after every new vcount
					rgb_in, // 3 bit RGB value of current pixel being processed
					number_of_flips_out, // for the previous pixels in row, how many diff. colour bands
					coord_out, // gives hcount for centre of target
					centre_width_out, // the number of pixels in the central circular region
					nt_probability_out, // gives the probability the current pixel IS NOT the centre
					done_out // goes high when all bands for a target has been detected
				  );
	// maximum stripe width measured in number of pixels
	parameter MAX_WIDTH = 200;
	// minimum stripe width measured in number of pixels
	parameter MIN_WIDTH = 10;
	// maximum difference in stripe width for the same target
	parameter MAX_WIDTH_DIFF = 100;
	// the minimum number of bits which must be high in rgb_in in order for the pixel to classify as white
	parameter WHITE_THRES = 2;
	// the maximum number of bits which must be high in rgb_in in order for the pixel to classify as black
	parameter BLACK_THRES = 0;

	input clk_in;
	input rst_in;
	input [2:0] rgb_in;

	output logic [3:0] number_of_flips_out;
	output logic [10:0] coord_out;
	output logic [10:0] centre_width_out;
	output logic [10:0] nt_probability_out = 5'b0;
	output logic done_out;

	// -- states --
	localparam INITIAL = 3'd0;
	localparam WAS_WHITE = 3'd1;
	localparam WAS_BLACK = 3'd2;

	// if the background is black/white, the MAX_WIDTH threshold will be violated
	// in these background regions.
	localparam WAIT_FOR_WHITE = 3'd3;
	localparam WAIT_FOR_BLACK = 3'd4;

	// -- initialise regs --
	logic [2:0] state = INITIAL;
	logic [2:0] state_prev = INITIAL;
	logic [10:0] prev_width = 11'b0;
	logic [10:0] curr_width = 11'b0;
	logic [10:0] curr_pixel = 11'b0;

	// -- wires --

	// high if the pixel is black
	logic is_black;
	// high if the pixel is white
	logic is_white;
	// high if we think we are currently in the centre region of the target
	logic is_centre_region;
	// high if we thing we are currently in one of the stripes of the target
	logic is_stripe_region;

	// high if the subsequent widths are greater than the previous widths
	// logic monotonic_increasing = 0;
	// low if the subsequent widths are less than the previous widths
	// logic monotonic_decreasing;
	// high if the current stripe width is greater than or equal to the previous width
	// logic curr_ge_prev;
	// logic curr_l_prev;
	// high if the current stripe width is less than the previous width
	// logic prev_ge_curr;


	`define SUB_ABS(X, Y) \
		((X > Y) ? (X - Y) : (Y - X))

	`define SUB_ABS_LT(X, Y, CMP) \
		(((X >= Y) && ((X-Y) < CMP)) || ((X < Y) && ((Y-X) < CMP)))

		// monotonic_increasing <= 1'b0; \
	`define RESET \
		state <= INITIAL; \
		coord_out <= 11'b0; \
		nt_probability_out <= 11'b0; \
		state_prev <= INITIAL; \
		curr_width <= 11'b0; \
		prev_width <= 11'b0; \
		done_out <= 11'b0; \
		centre_width_out <= 11'b0; \
		number_of_flips_out <= 4'b0

	`define SET_STATE_MA(NEW_STATE) \
		if 	((state == INITIAL) || ( \
				(state == state_prev)   											  	/* This is not just an erroneous bit flip */ \
				&&   																  	/* and */ \
				(   																  	/* either */ \
					(is_centre_region == 1'b1) || (is_stripe_region == 1'b1) || (NEW_STATE == INITIAL)\
				) \
			)) \
		begin \
			/* -- move to the next state: -- */ \
			/* reset the curr_width */ \
			curr_width <= 11'b0; \
			/* change the state so we remember the new region colour */ \
			state <= NEW_STATE; \
			/* if the new state is the INITIAL state, we need to reset */ \
			if (NEW_STATE == INITIAL) \
			begin \
				`RESET; \
			end \
			else if (is_centre_region == 1'b1) \
			begin \
				/* tell the output the centre of this possible target */ \
				coord_out <= curr_pixel - (curr_width / 2); \
				/* the probability of not being a target is the abs difference of 2*prev_width, centre width */ \
				nt_probability_out <= `SUB_ABS(2*prev_width, curr_width); \
				centre_width_out <= curr_width; \
				/* the previous width, as it is used to compare with stripes of width centre width/2: */ \
				prev_width <= curr_width / 2; \
				/* increment the number of flips */ \
				number_of_flips_out <= number_of_flips_out + 1; \
			end \
			/* this is the last flip */ \
			else if (number_of_flips_out == 9) \
			begin \
				/* tell the output we are done and the previous centre coordinate is probably valid */ \
				done_out <= 1'b1; \
				/* reset */ \
				`RESET; \
				number_of_flips_out <= 1; \
			end \
			else \
			begin \
				/* this just a transition from one stripe to another */ \
				prev_width <= curr_width; \
				/* increment the number of flips */ \
				number_of_flips_out <= number_of_flips_out + 1; \
			end \
		end \
		else if (state == state_prev) \
		begin \
			/* the width conditions fail, thus the previous region was not part of a marker */ \
			`RESET; \
		end \
		else \
		begin \
			/* prevent 1 pixel errors */ \
			state_prev <= NEW_STATE; \
		end

	// assign monotonic_decreasing = ~monotonic_increasing;

	// assign curr_ge_prev = (curr_width >= prev_width);
	// assign curr_l_prev = ~curr_ge_prev;

	assign is_black = (rgb_in[0] + rgb_in[1] + rgb_in[2] <= BLACK_THRES) ? 1'b1 : 1'b0;
	assign is_white = (rgb_in[0] + rgb_in[1] + rgb_in[2] >  WHITE_THRES) ? 1'b1 : 1'b0;
	// the number of black-white flips is 5, the difference between the current and last stripe width is less than MAX_WIDTH_DIFF
	// the previous region colour was black
	assign is_centre_region = 	(		(number_of_flips_out == 5)
									&& 	(`SUB_ABS_LT(2*prev_width, curr_width, MAX_WIDTH_DIFF)
									&&  (state == WAS_BLACK) )
								) ? 1'b1 : 1'b0;
	// the number of black-white flips is not 5 and either the number of flips is 1 and the current width is in the acceptable range
	// or the difference between the current and previous region is less than MAX_WIDTH_DIFF
	assign is_stripe_region = 	(	(number_of_flips_out != 5)
								&& 	( 	((number_of_flips_out == 1) && (curr_width > MIN_WIDTH))
									|| 	((`SUB_ABS_LT(prev_width, curr_width, MAX_WIDTH_DIFF)) && (curr_width > MIN_WIDTH))
									)
								) ? 1'b1 : 1'b0;

	always_ff @(posedge clk_in or posedge rst_in)
	begin
		if (rst_in)
		begin
			`RESET;
			curr_pixel <= 0;
		end
		else
		begin
			// increment the current pixel.
			// curr_pixel is mainly for debugging purposes
			curr_pixel <= curr_pixel + 1;
			// save the current state
			state_prev <= state;
			// -- fsm --
			if (state == INITIAL)
			begin
				// the target starts with a black stripe
				if (is_black == 1'b1)
				begin
					`SET_STATE_MA(WAS_BLACK)
				end
			end
			else if (state == WAS_BLACK)
			begin
				if (is_black == 1'b1)
				begin
					if (curr_width < MAX_WIDTH)
					begin
						curr_width <= curr_width + 1;
					end
					else // we believe this black region is not the target
					begin
						state <= WAIT_FOR_WHITE;
					end
				end
				else if (is_white == 1'b1)
				begin // record this as a flip.
					`SET_STATE_MA(WAS_WHITE)
				end
				else
				begin // this is not a black or white pixel, reset
					`SET_STATE_MA(INITIAL)
				end
			end
			else if (state == WAS_WHITE)
			begin
				if (is_black == 1'b1)
				begin // record this as a flip
					`SET_STATE_MA(WAS_BLACK)
				end
				else if (is_white == 1'b1)
				begin
					if (curr_width < MAX_WIDTH)
					begin
						curr_width <= curr_width + 1;
					end
					else
					begin // we believe this white region is not the target
						state <= WAIT_FOR_BLACK;
					end
				end
				else
				begin //this is not a black or white pixel, reset
					`SET_STATE_MA(INITIAL)
				end
			end
			else if ((state == WAIT_FOR_BLACK) && (is_black == 1'b1))
			begin
				// in actuality a black pixel after a large white region should cause number of
				// flips to go to 1, but in reality this 1 pixel does not make a big difference to the accuracy
				`RESET;
			end
			else if ((state == WAIT_FOR_WHITE) && (is_white == 1'b1))
			begin
				`RESET;
			end
		end
	end

endmodule