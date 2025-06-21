module fb(input a,b,bin,output d,bout);
wire[4:0]t;
//assign t[0]=~a;
assign t[0]=~a&b;
assign t[2]=a^b;
assign d=t[2]^bin;
//assign t[3]=~t[4];
assign t[1]=~t[2]&bin;
assign bout=t[1]|t[0];
endmodule