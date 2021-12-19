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
	initial begin
	a = {64{1'b1}};
	b = {64{1'b0}};

	cin = 1'b0;
	op[0] = 1'b0;
	op[1] = 1'b1;
	
	#3000;
	b[0] = 1'b1;
	
	#3000;
	end
// End of your code

endmodule
