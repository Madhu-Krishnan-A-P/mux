`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2024 16:19:47
// Design Name: 
// Module Name: mux
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


module mux(
    input [3:0] t,
    input [1:0] s,
    output y
    );

assign y = ((~s[1] && ~s[0] && t[0]) || (~s[1] && s[0] && t[1]) || (s[1] && ~s[0] && t[2]) || (s[1] && s[0] && t[3]));

endmodule
