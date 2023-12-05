// Circuito Divisor de Frequência
module fdiv (
	input  logic clkin,
	input  logic [9:0] div,
	input  logic reset,
	output logic clkout);

	integer cont;

	initial 
	   begin
			clkout = 1'b0;
	      cont = 0;
	   end
  
	always @(posedge clkin)
	    begin
			if(reset)
				cont <= 0;
			else
	        if (cont == {div,16'h1000})
	            begin
	                cont <= 0;
	                clkout <= ~clkout;
	            end
	        else
	            cont <= cont + 1;
	    end
    
endmodule
