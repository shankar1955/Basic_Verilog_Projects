`timescale 1ns / 1ps

module muxtb();
reg [7:0]d;
reg [2:0]c;
wire y;
musas dut(.a(d),.sel(c),.z(y));
initial begin
d=8'd202; 
c=3'd5;
d=8'd197; 
c=3'd4;
d=8'd107; 
c=3'd7;
d=8'd82; 
c=3'd3;
$finish;
end
initial begin 
$monitor("The value of a:%d, sel:%b and output is %b",d,c,y);
end
endmodule
