module ValidValue_23(
	input logic [5:0] decimal,
	output logic enable
	);
assign enable = decimal <= 23 ? 1'b1 : 1'b0;
endmodule
