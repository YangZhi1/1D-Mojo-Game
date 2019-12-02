/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_37 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] aluOut
  );
  
  
  
  always @* begin
    aluOut = 16'h0000;
    
    case (alufn[0+3-:4])
      4'h8: begin
        aluOut = a & b;
      end
      4'he: begin
        aluOut = a | b;
      end
      4'h6: begin
        aluOut = a ^ b;
      end
      4'ha: begin
        aluOut = a;
      end
      default: begin
        aluOut = a + b;
      end
    endcase
  end
endmodule