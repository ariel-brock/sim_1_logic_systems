//2->1 multiplexer test bench template
module mux2_test;

// Put your code here
// ------------------

  // Signal declarations
    // Gate output wires
    logic z;

    // Gate inputs
    logic a;
    logic b;
	logic s;
	
	mux2 mux2_inst(
	.d0(a),
	.d1(b),
	.sel(s),
	.z(z)
);

    // The testbench: try different input combinations at different points
    // of time - change values every 10 time units.
    initial begin
        a = 1'b0;
        b = 1'b0;
		s = 1'b0;

        #50;
        a = 1'b1;

        #50;
        b = 1'b1;

        #50
		a = 1'b0;
		
		#50
		a = 1'b0;
        b = 1'b0;
		s = 1'b1;

        #50;
        a = 1'b1;

        #50;
        b = 1'b1;

        #50
		a = 1'b0;
		
		#50;
    end
	

// End of your code

endmodule
