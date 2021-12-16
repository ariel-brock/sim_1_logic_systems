// Full Adder/Subtractor test bench template
module alu1bit_test;

// Put your code here
// ------------------

  // Signal declarations
    // Gate output wires
    logic s;
    logic cout;

    // Gate inputs
    logic a;
    logic b;
    logic [1:0] op;
    logic cin;
	
	alu1bit alu1bit_inst(
	.a(a),
	.b(b),
	.op(op),
	.cin(cin),
	.cout(cout),
	.s(s)
);
	
    // The testbench: try different input combinations at different points
    // of time - change values every 10 time units.
    initial begin
		op[0] = 1'b1;
		op[1] = 1'b1;
		a = 1'b0;
		b = 1'b0;
		cin = 1'b0;
		
		#100
		a = 1'b1;
		
		#100
		a = 1'b1;
		
		#100
		cin = 1'b1;
		
		#100
		op[0] = 1'b1;
		a = 1'b0;
		b = 1'b0;
		cin = 1'b0;
		
		#100
		a = 1'b1;
		
		#100
		a = 1'b0;
		b = 1'b1;
		
		#100
		a = 1'b1;
		
		#100
		a = 1'b0;
		b = 1'b0;
		cin = 1'b1;
		
		#100
		op[0] = 1'b0;
		op[1] = 1'b0;
		a = 1'b0;
		b = 1'b0;
		cin = 1'b0;
		
		#100
		a = 1'b1;
		
		#100
		op[0] = 1'b1;
		a = 1'b0;
		b = 1'b0;
		cin = 1'b0;
		
		#100
		b = 1'b1;
		
		#100;
		
	end
	

// End of your code

endmodule
