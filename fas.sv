// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic a_not, anot_xor_ans,b_and_cin, b_and_cin_not, anot_xor_ans_not,and_first_half, not_first_half; 
logic b_not, cin_not, bnot_and_cinnot, not_second_half;
logic a_xor_b;

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst0(
	.Z(a_not),
	.A(a)
)

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(2)
	) xor2_inst0(
	.Z(anot_xor_ans),
	.A(a_not),
	.B(a_ns)
);

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst1(
	.Z(anot_xor_ans_not),
	.A(anot_xor_ans)
)

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst0(
	.Z(b_and_cin),
	.A(b),
	.B(cin)
);

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst2(
	.Z(b_and_cin_not),
	.A(b_and_cin)
)

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst1(
	.Z(and_first_half),
	.A(anot_xor_ans_not),
	.B(b_and_cin_not)
);

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst3(
	.Z(not_first_half),
	.A(and_first_half)
)

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst4(
	.Z(b_not),
	.A(b)
)

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst5(
	.Z(cin_not),
	.A(cin)
)

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst2(
	.Z(bnot_and_cinnot),
	.A(b_not),
	.B(cin_not)
);

NOT #(
		.Tpdlh(1),
		.Tpdhl(8)
	) not_inst6(
	.Z(not_second_half),
	.A(bnot_and_cinnot)
)

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst3(
	.Z(cout),
	.A(not_first_half),
	.B(not_second_half)
);

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(2)
	) xor2_inst1(
	.Z(a_xor_b),
	.A(a),
	.B(b)
);

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(2)
	) xor2_inst2(
	.Z(s),
	.A(a_xor_b),
	.B(cin)
);


// End of your code

endmodule
