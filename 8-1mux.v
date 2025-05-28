//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2024 08:58:38
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
    input a0,
    input a1,
    input a2,
    input a3,
    input a4,
    input a5,
    input a6,
    input a7,
    input s0,
    input s1,
    input s2,
    output y
    );
    
    not not_0(wire_s0, s0);
    not not_1(wire_s1, s1);
    not not_2(wire_s2, s2);
    
    and and_0(wire_out_0,    a0,   wire_s2,    wire_s1,    wire_s0);
    and and_1(wire_out_1,    a1,   wire_s2,    wire_s1,    s0);
    and and_2(wire_out_2,    a2,   wire_s2,    s1,         wire_s0);
    and and_3(wire_out_3,    a3,   wire_s2,    s1,         s0);
    and and_4(wire_out_4,    a4,   s2,         wire_s1,    wire_s0);
    and and_5(wire_out_5,    a5,   s2,         wire_s1,    s0);
    and and_6(wire_out_6,    a6,   s2,         s1,         wire_s0);
    and and_7(wire_out_7,    a7,   s2,         s1,         s0);    
    
    or or_1(y, wire_out_0, wire_out_1, wire_out_2, wire_out_3, wire_out_4, wire_out_5, wire_out_6, wire_out_7);
                
endmodule
