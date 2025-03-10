`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 11:44:54 AM
// Design Name: 
// Module Name: lab3tb
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


module lab3tb();
    logic a1;
    logic b1;
    logic c1;
    logic x1;
    logic y1;

lab3uut(
    .a(a1),
    .b(b1),
    .c(c1),
    .x(x1),
    .y(y1)
);

initial
begin
$display("Simulation started...");
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
$monitor("x=%b, y=%b, a=%b, b=%b, c=%b", x1,y1,a1,b1,c1);
end
endmodule
