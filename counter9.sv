module counter9 #(parameter N = 4)
 (input  logic clk,
  input  logic reset,
  input 	logic set,
  input 	reg [3:0] setValue,
  output logic nextCLK,
  output logic [N-1:0] q);
  
reg [3:0] reg_q; 

always_ff @(posedge clk, posedge reset, posedge set) begin
	if (reset) begin
	reg_q <= 0;
	nextCLK <= 1'b0;
	end
	else
	if (set) begin
	reg_q <= setValue;
	end
	else if (reg_q == 9)begin
	reg_q <= 0;
	nextCLK <= 1'b1;
	end
	else begin
	reg_q <= reg_q + 1;
	nextCLK <= 1'b0;
	end
end
assign q = reg_q;		
endmodule
