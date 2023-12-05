module counter3 #(parameter N = 4)
 (input  logic clk,
  input  logic reset,
  output logic nextCLK,
  output logic [N-1:0] q);

  always_ff @(posedge clk, posedge reset)
    if (reset) begin
	 q <= 0;
	 nextCLK <= 1'b0;
	 end
    else       
		if (q == 3)begin
		q <= 0;
		nextCLK <= 1'b1;
		end
		else begin
		q <= q + 1;
		nextCLK <= 1'b0;
		end
				
endmodule
