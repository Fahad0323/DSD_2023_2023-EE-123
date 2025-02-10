`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 08:52:54 PM
// Design Name: 
// Module Name: labquestatb
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



module labquestatb();
    logic a1;
    logic b1;
    logic c1;
    logic sum1;
    logic carry1;

labquesta uut(
    .a(a1),
    .b(b1),
    .c(c1),
    .sum(sum1),
    .carry(carry1)
);

initial
begin

a1 = 0; b1 = 0; c1 = 0;
#10;
a1 = 0; b1 = 0; c1 = 1;
#10;
a1 = 0; b1 = 1; c1 = 0;
#10;
a1 = 0; b1 = 1; c1 = 1;
#10;
a1 = 1; b1 = 0; c1 = 0;
#10;
a1 = 1; b1 = 0; c1 = 1;
#10;
a1 = 1; b1 = 1; c1 = 0;
#10;
a1 = 1; b1 = 1; c1 = 1;
#10;
$stop;
end 

initial
begin
$monitor("sum=%b, carry = %b, a=%b, b=%b, c=%b", sum1,carry1,a1,b1,c1);
end
endmodule
