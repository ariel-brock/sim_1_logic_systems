// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
logic or_d0_sel;
logic xor_first_output;
logic xor_second_output;
logic xor_third_output;
logic or_sel_d1;

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst(
	.Z(or_d0_sel),
	.A(d0),
	.B(sel)
	.B(sel)
);

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(2)
	) xor2_inst(
	.Z(xor_first_output),
	.A(or_d0_sel),
	.B(sel)
);

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(2)
	) xor2_inst1(
	.Z(xor_second_output),
	.A(sel),
	.B(d1)
);

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst1(
	.Z(or_sel_d1),
	.A(sel),
	.B(d1)
);

XOR2 #(
		.Tpdlh(8),
		.Tpdhl(2)
	) xor2_inst2(
	.Z(xor_third_output),
	.A(xor_second_output),
	.B(or_sel_d1)
);	

OR2 #(
		.Tpdlh(2),
		.Tpdhl(6)
	) or2_inst2(
	.Z(z),
	.A(xor_first_output),
	.B(xor_third_output)
);


// End of your code

endmodule
