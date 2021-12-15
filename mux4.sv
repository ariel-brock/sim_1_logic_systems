// 4->1 multiplexer template
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
logic mux2_first_output;
logic mux2_second_output;

mux2 mux2_inst1(
	.d0(d0),
	.d1(d1),
	.sel(sel[0]),
	.z(mux2_first_output)
);

mux2 mux2_inst2(
	.d0(d2),
	.d1(d3),
	.sel(sel[0]),
	.z(mux2_second_output)
);

mux2 mux2_inst3(
	.d0(mux2_first_output),
	.d1(mux2_second_output),
	.sel(sel[1]),
	.z(z)
);
// End of your code

endmodule
