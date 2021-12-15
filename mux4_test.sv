//4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------

  // Signal declarations
    // Gate output wires
    logic z;

    // Gate inputs
    logic d0;
    logic d1;
    logic d2;
    logic d3;
	logic [1:0] s;
	
	mux4 mux4_inst(
	.d0(d0),
	.d1(d1),
	.d2(d2),
	.d3(d3),
	.sel(s),
	.z(z)
);
	
    // The testbench: try different input combinations at different points
    // of time - change values every 10 time units.
    initial begin
		d0 = 1'b0;
		d1 = 1'b0;
		d2 = 1'b0;
		d3 = 1'b0;
		s[0] = 0;
		s[1] = 0;
		
		#50
		d0 = 1'b1;
		
		#50
		d0 = 1'b0;
		
		#50;
	end
	

// End of your code

endmodule
