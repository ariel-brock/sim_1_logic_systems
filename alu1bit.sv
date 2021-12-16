// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic or_g1_output, not_g2_output, xor_g3_output, fas_s_output, op0_not;

//not(a+b)
OR2 #(
		.Tpdlh(6),
		.Tpdhl(6)
	) or2_inst(
	.Z(or_g1_output),
	.A(a),
	.B(b)
);


NOT #(
		.Tpdlh(8),
		.Tpdhl(8)
	) not_inst(
	.Z(not_g2_output),
	.A(or_g1_output)
);

//xor(a,b)

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(8)
	) xor2_inst1(
	.Z(xor_g3_output),
	.A(a),
	.B(b)
);

//not(op[0])

NOT #(
		.Tpdlh(8),
		.Tpdhl(8)
	) not_inst1(
	.Z(op0_not),
	.A(op[0])
);

fas fas_inst(
	.a(a),
	.b(b),
	.a_ns(op0_not),
	.cin(cin),
	.cout(cout),
	.s(fas_s_output)
);

mux4 mux4_inst(
	.d0(not_g2_output),
	.d1(xor_g3_output),
	.d2(fas_s_output),
	.d3(fas_s_output),
	.sel(op),
	.z(s)
);


// End of your code

endmodule
