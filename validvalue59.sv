module ValidValue_59(
	input logic [5:0] decimal,
	output logic enable
	);
assign enable = decimal <= 59 ? 1'b1 : 1'b0;
endmodule
