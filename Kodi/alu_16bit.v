`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 06:25:47 PM
// Design Name: 
// Module Name: alu_32bit
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


module alu_16bit(
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
    
wire[15:0] a, b; 
wire cin, ainvert, bnegate, less;
wire[2:0] op;

wire[15:0] result;
wire[15:0] c;
assign cout = c[15];
assign less=0;



alu_1bit alu0(a[0], b[0], cin, ainvert, bnegate, result[15], op, result[0], c[0]);
alu_1bit alu1(a[1], b[1], c[0], ainvert, bnegate, less, op, result[1], c[1]);
alu_1bit alu2(a[2], b[2], c[1], ainvert, bnegate, less, op, result[2], c[2]);
alu_1bit alu3(a[3], b[3], c[2], ainvert, bnegate, less, op, result[3], c[3]); 
alu_1bit alu4(a[4], b[4], c[3], ainvert, bnegate, less, op, result[4], c[4]);
alu_1bit alu5(a[5], b[5], c[4], ainvert, bnegate, less, op, result[5], c[5]);
alu_1bit alu6(a[6], b[6], c[5], ainvert, bnegate, less, op, result[6], c[6]);
alu_1bit alu7(a[7], b[7], c[6], ainvert, bnegate, less, op, result[7], c[7]);
alu_1bit alu8(a[8], b[8], c[7], ainvert, bnegate, less, op, result[8], c[8]);
alu_1bit alu9(a[9], b[9], c[8], ainvert, bnegate, less, op, result[9], c[9]);
alu_1bit alu10(a[10], b[10], c[9], ainvert, bnegate, less, op, result[10], c[10]);
alu_1bit alu11(a[11], b[11], c[10], ainvert, bnegate, less, op, result[11], c[11]);
alu_1bit alu12(a[12], b[12], c[11], ainvert, bnegate, less, op, result[12], c[12]);
alu_1bit alu13(a[13], b[13], c[12], ainvert, bnegate, less, op, result[13], c[13]);
alu_1bit alu14(a[14], b[14], c[13], ainvert, bnegate, less, op, result[14], c[14]);
alu_1bit alu15(a[15], b[15], c[14], ainvert, bnegate, less, op, result[15], c[15]);

endmodule