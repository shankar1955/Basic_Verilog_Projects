module tb();
reg[3:0]a=4'h7,b=4'hF;
reg[3:0]res;
always@(a,b)
begin
res=a^b;
end

endmodule