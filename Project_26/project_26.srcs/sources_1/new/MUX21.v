`timescale 1ns / 1ps



module MUX21(
    input a,b,sel,output y
    );
    assign y= (sel)? b:a;
endmodule
