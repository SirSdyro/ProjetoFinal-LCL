module demux4(
input Dado,
input enable,
input [1:0] Escolha,
output Saida0,
output Saida1,
output Saida2,
output Saida3
);
assign Saida0 = Escolha==2'b00 && enable==1'b1 ? Dado : 1'b0;
assign Saida1 = Escolha==2'b01 && enable==1'b1 ? Dado : 1'b0;
assign Saida2 = Escolha==2'b10 && enable==1'b1 ? Dado : 1'b0;
assign Saida3 = Escolha==2'b11 && enable==1'b1 ? Dado : 1'b0;
endmodule
