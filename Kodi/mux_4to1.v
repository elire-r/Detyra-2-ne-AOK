`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 02:00:05 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1 (s0, s1,s2,d0, d1, d2, d3,d5,d6,d7,d4,z1);// d0 and d1 or d2 add d3 xor d5 rshift d6 lshift d4 less z1 result d7 mult
//define inputs and output
input s0, s1,s2, d0, d1, d2, d3,d4,d7;
input[15:0] d5,d6; 
output z1;
//use the nested conditional operator
assign z1 = s2 ? (s1 ? (s0?d7:d5): (s0?d4:d2)) : (s1 ? (s0?d3:d1): (s0?d6:d0));
endmodule