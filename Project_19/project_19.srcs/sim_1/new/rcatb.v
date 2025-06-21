`timescale 1ns/1ps
module tb();

reg [3:0]a, b;
reg cin;
wire y;
wire [3:0]x;
rca dut(a,b,cin,x,y);
initial begin
  cin = 1'b0;
  
  a = 4'b0000; b = 4'b0001; #10;
  a = 4'b0010; b = 4'b0011; #10;
  a = 4'b0100; b = 4'b0101; #10;
  a = 4'b0110; b = 4'b0111; #10;
  a = 4'b1000; b = 4'b1001; #10;
$finish;
end
initial begin
$monitor("Value of a:%d, b:%d & sum:%b, cout:%b while time is %t",a,b,x,y,$time);
end

endmodule