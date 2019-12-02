/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [7:0] red,
    output reg [7:0] green,
    output reg [7:0] blue,
    output reg [7:0] row,
    input [3:0] buttons,
    input [23:0] io_dip,
    input [4:0] io_button,
    output reg [23:0] io_led
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [64-1:0] M_game_player_position_out;
  wire [64-1:0] M_game_tokens;
  wire [7-1:0] M_game_current_score;
  wire [64-1:0] M_game_wall;
  reg [1-1:0] M_game_button_up;
  reg [1-1:0] M_game_button_down;
  reg [1-1:0] M_game_button_left;
  reg [1-1:0] M_game_button_right;
  game_states_2 game (
    .clk(clk),
    .rst(rst),
    .button_up(M_game_button_up),
    .button_down(M_game_button_down),
    .button_left(M_game_button_left),
    .button_right(M_game_button_right),
    .player_position_out(M_game_player_position_out),
    .tokens(M_game_tokens),
    .current_score(M_game_current_score),
    .wall(M_game_wall)
  );
  localparam A_state = 5'd0;
  localparam A2_state = 5'd1;
  localparam A3_state = 5'd2;
  localparam B_state = 5'd3;
  localparam B2_state = 5'd4;
  localparam B3_state = 5'd5;
  localparam C_state = 5'd6;
  localparam C2_state = 5'd7;
  localparam C3_state = 5'd8;
  localparam D_state = 5'd9;
  localparam D2_state = 5'd10;
  localparam D3_state = 5'd11;
  localparam E_state = 5'd12;
  localparam E2_state = 5'd13;
  localparam E3_state = 5'd14;
  localparam F_state = 5'd15;
  localparam F2_state = 5'd16;
  localparam F3_state = 5'd17;
  localparam G_state = 5'd18;
  localparam G2_state = 5'd19;
  localparam G3_state = 5'd20;
  localparam H_state = 5'd21;
  localparam H2_state = 5'd22;
  localparam H3_state = 5'd23;
  
  reg [4:0] M_state_d, M_state_q = A_state;
  
  wire [1-1:0] M_up_out;
  reg [1-1:0] M_up_in;
  edge_detector_3 up (
    .clk(clk),
    .in(M_up_in),
    .out(M_up_out)
  );
  
  wire [1-1:0] M_down_out;
  reg [1-1:0] M_down_in;
  edge_detector_3 down (
    .clk(clk),
    .in(M_down_in),
    .out(M_down_out)
  );
  
  wire [1-1:0] M_left_out;
  reg [1-1:0] M_left_in;
  edge_detector_3 left (
    .clk(clk),
    .in(M_left_in),
    .out(M_left_out)
  );
  
  wire [1-1:0] M_right_out;
  reg [1-1:0] M_right_in;
  edge_detector_3 right (
    .clk(clk),
    .in(M_right_in),
    .out(M_right_out)
  );
  
  wire [1-1:0] M_upb_out;
  reg [1-1:0] M_upb_in;
  button_conditioner_7 upb (
    .clk(clk),
    .in(M_upb_in),
    .out(M_upb_out)
  );
  
  wire [1-1:0] M_downb_out;
  reg [1-1:0] M_downb_in;
  button_conditioner_7 downb (
    .clk(clk),
    .in(M_downb_in),
    .out(M_downb_out)
  );
  
  wire [1-1:0] M_leftb_out;
  reg [1-1:0] M_leftb_in;
  button_conditioner_7 leftb (
    .clk(clk),
    .in(M_leftb_in),
    .out(M_leftb_out)
  );
  
  wire [1-1:0] M_rightb_out;
  reg [1-1:0] M_rightb_in;
  button_conditioner_7 rightb (
    .clk(clk),
    .in(M_rightb_in),
    .out(M_rightb_out)
  );
  
  reg [19:0] M_counter_d, M_counter_q = 1'h0;
  
  always @* begin
    M_state_d = M_state_q;
    M_counter_d = M_counter_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_game_button_up = 1'h0;
    M_game_button_down = 1'h0;
    M_game_button_left = 1'h0;
    M_game_button_right = 1'h0;
    M_upb_in = buttons[0+0-:1];
    M_downb_in = buttons[1+0-:1];
    M_leftb_in = buttons[2+0-:1];
    M_rightb_in = buttons[3+0-:1];
    M_up_in = ~M_upb_out;
    M_down_in = ~M_downb_out;
    M_left_in = ~M_leftb_out;
    M_right_in = ~M_rightb_out;
    M_game_button_up = M_up_out;
    M_game_button_down = M_down_out;
    M_game_button_left = M_left_out;
    M_game_button_right = M_right_out;
    io_led = 24'h000000;
    row = 8'h00;
    green = 8'hff;
    blue = 8'hff;
    red = 8'hff;
    M_counter_d = M_counter_q + 1'h1;
    io_led[0+7-:8] = M_game_player_position_out[0+7-:8];
    io_led[8+7-:8] = M_game_player_position_out[8+7-:8];
    io_led[16+7-:8] = M_game_player_position_out[16+7-:8];
    
    case (M_state_q)
      A_state: begin
        row[0+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[0+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = A2_state;
        end
      end
      A2_state: begin
        row[0+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[0+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = A3_state;
        end
      end
      A3_state: begin
        row[0+0-:1] = 1'h1;
        red = ~M_game_wall[0+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = B_state;
        end
      end
      B_state: begin
        row[1+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[8+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = B2_state;
        end
      end
      B2_state: begin
        row[1+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[8+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = B3_state;
        end
      end
      B3_state: begin
        row[1+0-:1] = 1'h1;
        red = ~M_game_wall[8+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = C_state;
        end
      end
      C_state: begin
        row[2+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[16+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = C2_state;
        end
      end
      C2_state: begin
        row[2+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[16+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = C3_state;
        end
      end
      C3_state: begin
        row[2+0-:1] = 1'h1;
        red = ~M_game_wall[16+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = D_state;
        end
      end
      D_state: begin
        row[3+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[24+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = D2_state;
        end
      end
      D2_state: begin
        row[3+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[24+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = D3_state;
        end
      end
      D3_state: begin
        row[3+0-:1] = 1'h1;
        red = ~M_game_wall[24+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = E_state;
        end
      end
      E_state: begin
        row[4+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[32+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = E2_state;
        end
      end
      E2_state: begin
        row[4+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[32+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = E3_state;
        end
      end
      E3_state: begin
        row[4+0-:1] = 1'h1;
        red = ~M_game_wall[32+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = F_state;
        end
      end
      F_state: begin
        row[5+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[40+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = F2_state;
        end
      end
      F2_state: begin
        row[5+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[40+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = F3_state;
        end
      end
      F3_state: begin
        row[5+0-:1] = 1'h1;
        red = ~M_game_wall[40+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = G_state;
        end
      end
      G_state: begin
        row[6+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green = ~M_game_player_position_out[48+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = G2_state;
        end
      end
      G2_state: begin
        row[6+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[48+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = G3_state;
        end
      end
      G3_state: begin
        row[6+0-:1] = 1'h1;
        red = ~M_game_wall[48+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = H_state;
        end
      end
      H_state: begin
        row[7+0-:1] = 1'h1;
        red = 8'hff;
        blue = 8'hff;
        green[1+6-:7] = ~M_game_player_position_out[56+1+6-:7];
        green[0+0-:1] = 1'h0;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = H2_state;
        end
      end
      H2_state: begin
        row[7+0-:1] = 1'h1;
        red = 8'hff;
        green = 8'hff;
        blue = ~M_game_tokens[56+7-:8];
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = H3_state;
        end
      end
      H3_state: begin
        row[7+0-:1] = 1'h1;
        red = ~M_game_wall[56+7-:8];
        green = 8'hff;
        blue = 8'hff;
        if (M_counter_q[3+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_state_d = A_state;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule
