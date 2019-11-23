/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module move_player_right_15 (
    input [2:0] player_reg_selector,
    input [63:0] player_current_position,
    output reg [63:0] player_location_out,
    output reg [2:0] new_player_reg_selector
  );
  
  
  
  reg [7:0] new_player_position;
  
  wire [16-1:0] M_alu_aluOut;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_21 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .aluOut(M_alu_aluOut),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  always @* begin
    M_alu_a = 1'h0;
    new_player_reg_selector = player_reg_selector;
    player_location_out = 64'h0000000000000000;
    M_alu_alufn = 6'h21;
    M_alu_b = 16'h0001;
    
    case (player_reg_selector)
      3'h0: begin
        M_alu_a = player_current_position[0+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[0+7-:8] = new_player_position;
        end
      end
      3'h1: begin
        M_alu_a = player_current_position[8+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[8+7-:8] = new_player_position;
        end
      end
      3'h2: begin
        M_alu_a = player_current_position[16+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[16+7-:8] = new_player_position;
        end
      end
      3'h3: begin
        M_alu_a = player_current_position[24+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[24+7-:8] = new_player_position;
        end
      end
      3'h4: begin
        M_alu_a = player_current_position[32+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[32+7-:8] = new_player_position;
        end
      end
      3'h5: begin
        M_alu_a = player_current_position[40+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[40+7-:8] = new_player_position;
        end
      end
      3'h6: begin
        M_alu_a = player_current_position[48+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[48+7-:8] = new_player_position;
        end
      end
      3'h7: begin
        M_alu_a = player_current_position[56+7-:8];
        new_player_position = M_alu_aluOut[0+7-:8];
        if (new_player_position == 8'h00) begin
          player_location_out = player_current_position;
        end else begin
          player_location_out[56+7-:8] = new_player_position;
        end
      end
    endcase
  end
endmodule
