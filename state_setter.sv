module 	StateSetter(
            
            input logic SetPress,
            input logic reset,
            input logic enable,
            output logic [1:0] Select,
				output logic s,
				output logic res
            
        );

	typedef enum logic [1:0] {HORAS,MINUTOS,SEGUNDOS} statetype;
	statetype state, nextstate;

	always_ff @(negedge SetPress, posedge reset)
		if (reset) state <= HORAS;
		else state <= nextstate;

	always_comb
	  	case (state)

			HORAS: if (enable) nextstate = MINUTOS;
						  else nextstate = HORAS;
			MINUTOS: if (enable) nextstate = SEGUNDOS;
						  else nextstate = MINUTOS;
			SEGUNDOS: if (enable) nextstate = HORAS;
						  else nextstate = SEGUNDOS;			  
			default: nextstate = HORAS;

		endcase

	always_comb
		case (state)

			 HORAS:		begin 
									Select = 2'b10; 
									s = 1;
									res = 0;
						 		end	

			 MINUTOS:	begin 
									Select = 2'b01; 
									s = 0;
									res = 0;
						   	end
			
			 SEGUNDOS:	begin 
									Select = 2'b00; 
									s = 0;
									res = 1;
								end	 

			default:  	begin 
									Select = 2'b10; 
									s = 1;
									res = 0;
								end	

		endcase

endmodule
