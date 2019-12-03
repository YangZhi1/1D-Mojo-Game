/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module level_one_rom_15 (
    input [1:0] rngeezus,
    output reg [63:0] player_initial_position,
    output reg [2:0] player_reg_selector,
    output reg [63:0] end_position,
    output reg [63:0] walls,
    output reg [63:0] tokens
  );
  
  
  
  always @* begin
    player_initial_position[0+7-:8] = 8'h80;
    player_initial_position[8+55-:56] = 56'h00000000000000;
    player_reg_selector = 3'h0;
    end_position[0+55-:56] = 56'h00000000000000;
    end_position[56+7-:8] = 8'h01;
    walls[0+7-:8] = 8'h40;
    walls[8+7-:8] = 8'h40;
    walls[16+7-:8] = 8'h00;
    walls[24+7-:8] = 8'h00;
    walls[32+7-:8] = 8'h00;
    walls[40+7-:8] = 8'h01;
    walls[48+7-:8] = 8'hc0;
    walls[56+7-:8] = 8'h02;
    tokens[0+7-:8] = 8'h00;
    tokens[8+7-:8] = 8'h00;
    tokens[16+7-:8] = 8'h00;
    tokens[24+7-:8] = 8'h00;
    tokens[32+7-:8] = 8'h00;
    tokens[40+7-:8] = 8'h82;
    tokens[48+7-:8] = 8'h21;
    tokens[56+7-:8] = 8'h80;
    
    case (rngeezus)
      2'h0: begin
        walls[0+7-:8] = 8'h40;
        walls[8+7-:8] = 8'h40;
        walls[16+7-:8] = 8'h00;
        walls[24+7-:8] = 8'h00;
        walls[32+7-:8] = 8'h00;
        walls[40+7-:8] = 8'h01;
        walls[48+7-:8] = 8'hc0;
        walls[56+7-:8] = 8'h02;
        tokens[0+7-:8] = 8'h00;
        tokens[8+7-:8] = 8'h00;
        tokens[16+7-:8] = 8'h00;
        tokens[24+7-:8] = 8'h00;
        tokens[32+7-:8] = 8'h00;
        tokens[40+7-:8] = 8'h82;
        tokens[48+7-:8] = 8'h21;
        tokens[56+7-:8] = 8'h80;
      end
      2'h1: begin
        walls[0+7-:8] = 8'h01;
        walls[8+7-:8] = 8'he1;
        walls[16+7-:8] = 8'h02;
        walls[24+7-:8] = 8'hf0;
        walls[32+7-:8] = 8'h00;
        walls[40+7-:8] = 8'h00;
        walls[48+7-:8] = 8'h00;
        walls[56+7-:8] = 8'h00;
        tokens[0+7-:8] = 8'h02;
        tokens[8+7-:8] = 8'h10;
        tokens[16+7-:8] = 8'h84;
        tokens[24+7-:8] = 8'h00;
        tokens[32+7-:8] = 8'h00;
        tokens[40+7-:8] = 8'h00;
        tokens[48+7-:8] = 8'h00;
        tokens[56+7-:8] = 8'h04;
      end
      2'h2: begin
        walls[0+7-:8] = 8'h18;
        walls[8+7-:8] = 8'h59;
        walls[16+7-:8] = 8'h50;
        walls[24+7-:8] = 8'h42;
        walls[32+7-:8] = 8'h06;
        walls[40+7-:8] = 8'h84;
        walls[48+7-:8] = 8'h00;
        walls[56+7-:8] = 8'h00;
        tokens[0+7-:8] = 8'h04;
        tokens[8+7-:8] = 8'h00;
        tokens[16+7-:8] = 8'h08;
        tokens[24+7-:8] = 8'h04;
        tokens[32+7-:8] = 8'h81;
        tokens[40+7-:8] = 8'h00;
        tokens[48+7-:8] = 8'h00;
        tokens[56+7-:8] = 8'h00;
      end
      default: begin
        walls[0+7-:8] = 8'h40;
        walls[8+7-:8] = 8'h40;
        walls[16+7-:8] = 8'h00;
        walls[24+7-:8] = 8'h00;
        walls[32+7-:8] = 8'h00;
        walls[40+7-:8] = 8'h01;
        walls[48+7-:8] = 8'hc0;
        walls[56+7-:8] = 8'h02;
        tokens[0+7-:8] = 8'h00;
        tokens[8+7-:8] = 8'h00;
        tokens[16+7-:8] = 8'h00;
        tokens[24+7-:8] = 8'h00;
        tokens[32+7-:8] = 8'h00;
        tokens[40+7-:8] = 8'h82;
        tokens[48+7-:8] = 8'h21;
        tokens[56+7-:8] = 8'h80;
      end
    endcase
  end
endmodule
