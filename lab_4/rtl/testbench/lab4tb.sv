`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 07:57:09 PM
// Design Name: 
// Module Name: lab4tb
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



module lab4tb;
    logic [1:0] a;
    logic [1:0] b;
    logic r;
    logic g;
    logic bl; 

    lab4 uut (
        .a(a),
        .b(b),
        .r(r),
        .g(g),
        .bl(bl) 
    );

    initial begin
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; #10;
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #10;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 0; #10;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1; #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 0; #10;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 1; #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0; #10;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1; #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 0; #10;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 1; #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 0; #10;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 1; #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 0; #10;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 1; #10;
        $stop;
    end
endmodule

