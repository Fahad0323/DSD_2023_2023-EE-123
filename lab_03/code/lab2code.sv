`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 09:35:04 PM
// Design Name: 
// Module Name: temp
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


module lab3(
input logic a,
input logic b,
input logic c,
output logic x,
output logic y);
assign not_c=~c;
assign or1=a|b;
assign x=(not_c^or1);
assign nand1=~(a&b);
assign xor1=(nand1^or1);
assign y=(or1&xor1);

endmodule