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
	parameter WHITE_THRES = 2;
	parameter BLACK_THRES = 0;

	input clk_in;
	input rst_in;
	input [2:0] rgb_in;

	output logic [3:0] number_of_flips_out;
	output logic [10:0] coord_out;
	output logic [10:0] nt_probability_out = 5'b0;
	output logic done_out;

	// -- states --
	localparam INITIAL = 3'd0;
	localparam WAS_WHITE = 3'd1;
	localparam WAS_BLACK = 3'd2;
	localparam WAIT_FOR_WHITE = 3'd3;
	localparam WAIT_FOR_BLACK = 3'd4;

	logic [2:0] state = INITIAL;
	logic [2:0] state_prev = INITIAL;
	logic [10:0] prev_width = 11'b0;
	logic [10:0] curr_width = 11'b0;
	logic [10:0] curr_pixel = 11'b0;
	// high if the pixel is black
	logic is_black;
	// high if the pixel is white
	logic is_white;
	// high if the subsequent widths are greater than the previous widths
	// logic monotonic_increasing = 0;
	// low if the subsequent widhts are less than the previous widths
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
		number_of_flips_out <= 4'b0

	`define SET_STATE_MA(NEW_STATE) \
		if 	((state == INITIAL) || ( \
				(state == state_prev)   											  	/* the previous pixel was different */ \
				&&   																  	/* and */ \
				(   																  	/* either */ \
					( \
					 	(number_of_flips_out == 5)  								  	/*	the pixel now belongs to the centre region */ \
					 	&& (NEW_STATE == WAS_WHITE)										/*  the next pixel is white */ \
						&& (`SUB_ABS_LT(2*prev_width, curr_width, MAX_WIDTH_DIFF))    	/*	and the width of the region ~ 2*prev_width */ \
					) \
					||  															  	/* or */ \
					( \
						(number_of_flips_out != 5)  								  	/*	it is not the centre region */ \
						&&  														  	/* 	and */ \
						(  															  	/*	either it is a stripe transition involving stripe 1 */ \
							( (number_of_flips_out == 1) && (curr_width > MIN_WIDTH)) 	/*	the width of the region >= prev_width and */ \
							||  													  	/*	or */ \
							( \
								(`SUB_ABS_LT(prev_width, curr_width, MAX_WIDTH_DIFF))   /*	the difference in widths is not too great */ \
								&& (curr_width > MIN_WIDTH)  						  	/*	and the width is not too small */ \
							) \
						) \
					) \
					||  															  	/* or */ \
					( NEW_STATE == INITIAL ) \
				) \
			)) \
		begin \
			/* -- move to the next state: -- */ \
			/* reset the curr_width */ \
			curr_width <= 11'b0; \
			/* change the state so we remember the new region colour */ \
			state <= NEW_STATE; \
			/* if we are in the centre region of the target */ \
			if (NEW_STATE == INITIAL) \
			begin \
				`RESET; \
			end \
			else if (number_of_flips_out == 5) \
			begin \
				/* tell the output the centre of this possible target */ \
				coord_out <= curr_pixel - (curr_width / 2); \
				/* the probability of not being a target is the abs difference of 2*prev_width, centre width */ \
				nt_probability_out <= `SUB_ABS(2*prev_width, curr_width); \
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

	always_ff @(posedge clk_in or posedge rst_in)
	begin
		if (rst_in)
		begin
			`RESET;
			curr_pixel <= 0;
		end
		else
		begin
			curr_pixel <= curr_pixel + 1;
			state_prev <= state;
			if (state == INITIAL)
			begin
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
					else
					begin
						state <= WAIT_FOR_WHITE;
					end
				end
				else if (is_white == 1'b1)
				begin
					`SET_STATE_MA(WAS_WHITE)
				end
				else begin
					`SET_STATE_MA(INITIAL)
				end
			end
			else if (state == WAS_WHITE)
			begin
				if (is_black == 1'b1)
				begin
					`SET_STATE_MA(WAS_BLACK)
				end
				else if (is_white == 1'b1)
				begin
					if (curr_width < MAX_WIDTH)
					begin
						curr_width <= curr_width + 1;
					end
					else
					begin
						state <= WAIT_FOR_BLACK;
					end
				end
				else
				begin
					`SET_STATE_MA(INITIAL)
				end
			end
			else if ((state == WAIT_FOR_BLACK) && (is_black == 1'b1))
			begin
				`RESET;
			end
			else if ((state == WAIT_FOR_WHITE) && (is_white == 1'b1))
			begin
				`RESET;
			end
		end
	end

endmodule