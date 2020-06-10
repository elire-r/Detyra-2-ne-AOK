`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 01:52:15 PM
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit(
    input a,
    input b,
    input cin,
    input ainvert,
    input bnegate,
    input less,
    input [2:0] op,
    output result,
    output cout
    );
wire a, b, cin, ainvert, bnegate, less;
wire[2:0] op;
wire result;
wire cout;

wire [15:0] Number;
wire [3:0] Range;
wire [15:0] rshift,lshift;
wire a,b;
wire net1, net2, net3, net4, net5,net7,net6, ajo, bjo;
not a1 (ajo, a);
not b1 (bjo, b);
mux_2to1 m2_A(ainvert, a, ajo, net1);
mux_2to1 m2_B(bnegate, b, bjo, net2);
and n3 (net3, net1, net2);
or n4 (net4, net1, net2);
xor n5(net7,net1,net2);
full_adder FA (net1, net2, cin, net5, cout);
right_shift mf(Number,Range,rshift);
left_shift lf(Number,Range,lshift);
multiplier mult(a, b, net6);
mux_4to1 m4 (op[0], op[1],op[2], net3, net4, net5,net7,rshift,lshift,net6,less, result);
endmodule