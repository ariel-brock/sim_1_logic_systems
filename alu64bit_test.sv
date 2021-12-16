// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------

	logic [63:0] a;    // Input bit a
    logic [63:0] b;    // Input bit b
    logic cin;         // Carry in
    logic [1:0] op;    // Operation
    logic [63:0] s;   // Output S
    logic cout;   

alu64bit alu64bit_inst(
	.a(a),
	.b(b),
	.cin(cin),
	.op(op),
	.s(s),
	.cout(cout)
);
	int i;
	initial begin
	
	cin = 1'b0;
	op[0] = 1'b0;
	op[1] = 1'b1;
	
	for(i = 0 ; i < 64; i++)
	begin
		b[i] = 1'b0;
		a[i] = 1'b1;
		#100;
	end
	
	b[0] = 1'b1;
	
	#3000;
	end
// End of your code

endmodule
