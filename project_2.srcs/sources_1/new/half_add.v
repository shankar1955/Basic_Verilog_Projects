`timescale 1ns / 1ps


module half_add(
    input a,b, 
    output s,c
    );
    assign s=a^b;
    assign c=a&b;
endmodule
