/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module token_collide_37 (
    input [7:0] token_map,
    input [7:0] player_next_position,
    output reg [7:0] new_token_map,
    output reg score_token
  );
  
  
  
  wire [16-1:0] M_alu_aluOut;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_40 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .aluOut(M_alu_aluOut),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  reg [7:0] check_overlap;
  
  reg [7:0] new_map;
  
  always @* begin
    new_token_map = token_map;
    score_token = 1'h0;
    M_alu_a = token_map;
    M_alu_b = player_next_position;
    M_alu_alufn = 6'h18;
    check_overlap = M_alu_aluOut[0+7-:8];
    if (check_overlap == 8'h00) begin
      new_token_map = token_map;
      score_token = 1'h0;
    end else begin
      score_token = 1'h1;
      new_map = check_overlap ^ token_map;
      new_token_map = new_map;
    end
  end
endmodule
