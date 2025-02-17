`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 07:51:33 PM
// Design Name: 
// Module Name: lab4
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


module lab4(
input logic [1:0] a, b,
output logic r,g,bl);
always_comb
    begin
        r=((~b[0]) & (~b[1])) | ((a[0])&(a[1])) | ((a[0])&(~b[1])) | ((a[1])&(~b[1])) | ((a[1])&(~b[0]));
        g=((~a[0]) & (~a[1])) | ((b[0]) & (~a[1])) | ((b[1]) & (b[0])) | ((~a[0]) & (b[1])) | ((b[1]) & (~a[1]));
        bl=(a[1] ^ b[1]) | (a[0] ^ b[0]);
    end
endmodule

