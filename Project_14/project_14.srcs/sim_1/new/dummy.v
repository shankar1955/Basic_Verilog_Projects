
module tb();
  if(7'b1110000===7'bxx10000)
    $display("True");
  else
    $display("False");
endmodule