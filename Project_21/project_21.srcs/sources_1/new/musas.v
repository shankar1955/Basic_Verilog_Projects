module mux21(input a,b, input sel,output y);
assign y=sel?b:a;
endmodule

module mux81(input [7:0]a,input [2:0]sel,output z);
wire [5:0]w;
mux21 ob1(a[0],a[1],sel[0],w[0]);
mux21 ob2(a[2],a[3],sel[0],w[1]);
mux21 ob3(a[4],a[5],sel[0],w[2]);
mux21 ob4(a[6],a[7],sel[0],w[3]);
mux21 ob5(w[0],w[1],sel[1],w[4]);
mux21 ob6(w[2],w[3],sel[1],w[5]);
mux21 ob7(w[4],w[5],sel[2],z);
endmodule