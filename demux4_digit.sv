module demux4_digito(
input [3:0] Dado,
input [1:0] Escolha,
output [3:0] Saida0,
output [3:0] Saida1,
output [3:0] Saida2,
output [3:0] Saida3
);
assign Saida0 = Escolha==2'b00 ? Dado : 4'b0000;
assign Saida1 = Escolha==2'b01 ? Dado : 4'b0000;
assign Saida2 = Escolha==2'b10 ? Dado : 4'b0000;
assign Saida3 = Escolha==2'b11 ? Dado : 4'b0000;
endmodule
