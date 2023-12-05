module DecimalToBCD(
	input logic [5:0] decimal,
	output logic [3:0] digit1,
	output logic [3:0] digit2
	);
	
	reg [3:0] aux1, aux2;
	
	always_comb begin
		aux1	= decimal / 10;
		aux2	= decimal % 10;
	end
	
	assign digit1 = aux1;
	assign digit2 = aux2;
	
endmodule
