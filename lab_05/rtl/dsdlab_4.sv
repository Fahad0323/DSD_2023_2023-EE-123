`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 05:13:46 PM
// Design Name: 
// Module Name: dsdlab_4
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


module dsdlab_4(
    input logic [3:0] inputbit,
    input logic [2:0] select,
    output logic A, B, C, D, E, F, G, a1,a2,a3,a4,a5,a6,a7,a8, Dp
);
    assign {a8,a7,a6,a5,a4,a3,a2,a1} = ~(8'b1 << select);
    assign Dp = 1;
    assign A = (~inputbit[3] & inputbit[2] & ~inputbit[1] & ~inputbit[0]) | (~inputbit[3] & ~inputbit[2] & ~inputbit[1] & inputbit[0]) | (inputbit[3] & inputbit[2] & ~inputbit[1] & inputbit[0]) | (inputbit[3] & ~inputbit[2] & inputbit[1] & inputbit[0]);
    assign B = (~inputbit[3] & inputbit[2] & ~inputbit[1] & inputbit[0]) | (inputbit[3] & inputbit[2] & ~inputbit[0]) | (inputbit[2] & inputbit[1] & ~inputbit[0]) | (inputbit[3] & inputbit[1] & inputbit[0]);
    assign C = (inputbit[3] & inputbit[2] & inputbit[1]) | (inputbit[3] & inputbit[2] & ~inputbit[0]) | (~inputbit[3] & ~inputbit[2] & inputbit[1] & ~inputbit[0]);
    assign D = (inputbit[2] & inputbit[1] & inputbit[0]) | (~inputbit[3] & inputbit[2] & ~inputbit[1] & ~inputbit[0]) | (~inputbit[3] & ~inputbit[2] & ~inputbit[1] & inputbit[0]) | (inputbit[3] & ~inputbit[2] & inputbit[1] & ~inputbit[0]);
    assign E = (~inputbit[3] & inputbit[0]) | (~inputbit[3] & inputbit[2] & ~inputbit[1]) | (~inputbit[2] & ~inputbit[1] & inputbit[0]);
    assign F = (~inputbit[3] & ~inputbit[2] & inputbit[0]) | (~inputbit[3] & inputbit[1] & inputbit[0]) | (~inputbit[3] & ~inputbit[2] & inputbit[1]) | (inputbit[3] & inputbit[2] & ~inputbit[1] & inputbit[0]);
    assign G = (~inputbit[3] & ~inputbit[2] & ~inputbit[1]) | (inputbit[3] & inputbit[2] & ~inputbit[1] & ~inputbit[0]) | (~inputbit[3] & inputbit[2] & inputbit[1] & inputbit[0]);

endmodule