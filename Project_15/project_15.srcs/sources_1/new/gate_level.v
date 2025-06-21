module fa(input a,b,c, output d,e);
wire t1,t2,t3;
assign t1=a^b;
assign t2=t1&c;
assign t3=a&b;
assign e=t2|t3;
assign d=t1^c;
endmodule