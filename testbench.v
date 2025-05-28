`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2024 16:37:22
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;

reg [3:0]T;
reg [1:0]S;
wire Y;

mux mux_1(.t(T), .s(S), .y(Y));
initial
begin

T = 4'b0011;
S = 2'b00;  #50
S = 2'b01;  #50
S = 2'b10;  #50
S = 2'b11;  #50

T = 4'b1001;
S = 2'b00;  #50
S = 2'b01;  #50
S = 2'b10;  #50
S = 2'b11;  #50

T = 4'b1101;
S = 2'b00;  #50
S = 2'b01;  #50
S = 2'b10;  #50
S = 2'b11;  #50

T = 4'b0011;
S = 2'b00;  #50
S = 2'b01;  #50
S = 2'b10;  #50
S = 2'b11;  #50

T = 4'b0100;
S = 2'b00;  #50
S = 2'b01;  #50
S = 2'b10;  #50
S = 2'b11;  #50

$finish();
end
endmodule
