//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2024 12:51:09
// Design Name: 
// Module Name: muxtb
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


module muxtb;

wire Y;
reg A0, A1, A2, A3, A4, A5, A6, A7, S0, S1, S2;

mux mux_1(  .a0(A0),
            .a1(A1),
            .a2(A2),
            .a3(A3),
            .a4(A4),
            .a5(A5),
            .a6(A6),
            .a7(A7),
            .s0(S0),
            .s1(S1),
            .s2(S2),
            .y(Y));
            
initial
begin

A0 = 1'b1;  A1 = 1'b0;  A2 = 1'b1;  A3 = 1'b1;  A4 = 1'b0;  A5 = 1'b0;  A6 = 1'b1;  A7 = 1'b1;
S2 = 1'b0;  S1 = 1'b0;  S0 = 1'b0;
#10

A0 = 1'b1;  A1 = 1'b0;  A2 = 1'b1;  A3 = 1'b0;  A4 = 1'b1;  A5 = 1'b1;  A6 = 1'b0;  A7 = 1'b1;
S2 = 1'b0;  S1 = 1'b0;  S0 = 1'b1;
#10

A0 = 1'b0;  A1 = 1'b1;  A2 = 1'b1;  A3 = 1'b1;  A4 = 1'b0;  A5 = 1'b1;  A6 = 1'b1;  A7 = 1'b1;
S2 = 1'b0;  S1 = 1'b1;  S0 = 1'b0;
#10

A0 = 1'b0;  A1 = 1'b0;  A2 = 1'b0;  A3 = 1'b1;  A4 = 1'b0;  A5 = 1'b0;  A6 = 1'b0;  A7 = 1'b1;
S2 = 1'b0;  S1 = 1'b1;  S0 = 1'b1;
#10

A0 = 1'b1;  A1 = 1'b1;  A2 = 1'b0;  A3 = 1'b1;  A4 = 1'b0;  A5 = 1'b1;  A6 = 1'b1;  A7 = 1'b1;
S2 = 1'b1; S1 = 1'b0;   S0 = 1'b0;
#10

A0 = 1'b1;  A1 = 1'b0;  A2 = 1'b0;  A3 = 1'b1;  A4 = 1'b0;  A5 = 1'b1;  A6 = 1'b1;  A7 = 1'b1;
S2 = 1'b1;  S1 = 1'b0;  S0 = 1'b1;
#10

A0 = 1'b0;  A1 = 1'b1;  A2 = 1'b0;  A3 = 1'b1;  A4 = 1'b1;  A5 = 1'b0;  A6 = 1'b0;  A7 = 1'b1;
S2 = 1'b1;  S1 = 1'b1;  S0 = 1'b0;
#10

A0 = 1'b1;  A1 = 1'b0;  A2 = 1'b1;  A3 = 1'b1;  A4 = 1'b0;  A5 = 1'b0;  A6 = 1'b0;  A7 = 1'b1;
S2 = 1'b1;  S1 = 1'b1;  S0 = 1'b1;
#100

$finish();

end

endmodule
