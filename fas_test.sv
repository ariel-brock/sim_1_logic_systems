// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------

  // Signal declarations
    // Gate output wires
    logic s;
    logic cout;

    // Gate inputs
    logic a;
    logic b;
    logic a_ns;
    logic cin;
	
	fas fas_inst(
	.a(a),
	.b(b),
	.a_ns(a_ns),
	.cin(cin),
	.cout(cout),
	.s(s)
);
	
    // The testbench: try different input combinations at different points
    // of time - change values every 10 time units.
    initial begin
		a_ns = 1'b0;
		a = 1'b0;
		b = 1'b1;
		cin = 1'b0;
		
		#100
		a = 1'b1;
		
		#100;
	end
	

// End of your code

endmodule
