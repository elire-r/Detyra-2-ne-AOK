`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 02:15:07 PM
// Design Name: 
// Module Name: alu_1bit_tb
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


module alu_1bit_tb();
reg a, b, cin, ainvert, bnegate, less;
reg[2:0] op;
reg [15:0] Number;
reg [3:0] Range;
wire[15:0]  rshifted,lshifted;
wire result;
wire cout;
initial 
$monitor ("a = %b, b = %b, cin = %b, cout = %b, op2 = %b, op1 = %b, op0 = %b, ainvert = %b, bnegate = %b, less = %b,Number = %b, shifted = %b, shifted1 = %b ",
a, b, cin, cout, op[2], op[1], op[0], ainvert, bnegate, less,Number,rshifted,lshifted);

initial
begin
//AND
#0 a=0; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=0; op[0]=0; //r=0 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=0; op[0]=0;//r=0 cout=0
#10 a=1; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=0; op[0]=0;//r=1 cout=0
//OR
#10 a=0; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=0;//r=0 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=0;//r=1 cout=0
//ADD
#10 a=0; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=0; op[0]=0;//r=0 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=0; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=0; op[0]=0;//r=0 cout=1
#10 a=1; b=1; cin=1; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=0; op[0]=0;//r=1 cout=1
//SUB
#10 a=0; b=0; cin=1; ainvert=0; bnegate=1; less=0; op[2]=1; op[1]=0; op[0]=0;//r=1 cout=0
#10 a=0; b=1; cin=1; ainvert=0; bnegate=1; less=0; op[2]=1; op[1]=0; op[0]=0;//r=1 cout=0
#10 a=1; b=0; cin=1; ainvert=0; bnegate=1; less=0; op[2]=1; op[1]=0; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=1; ainvert=0; bnegate=1; less=0; op[2]=1; op[1]=0; op[0]=0;//r=0 cout=0
//MULT
    #10  a=0;b=0;cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=1; op[0]=1;
    #10  a=0;b=1;cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=1; op[0]=1;
    #10  a=1;b=1;cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=1; op[0]=1;
    //XOR
    #10  a=0;b=0;cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=1;
    #10  a=0;b=1;cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=1;
    #10  a=1;b=1;cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=1;

 //SHR
#10;
Range = 1;
Number = 3; op[2]=1; op[1]=1; op[0]=0;
#10;
Number = 4; op[2]=1; op[1]=1; op[0]=0; 
#10;
Number = 5; op[2]=1; op[1]=1; op[0]=0;
//SHL
#10
Range = 1;
Number = 3; op[2]=0; op[1]=0; op[0]=1;
#10
Number = 4; op[2]=0; op[1]=0; op[0]=1; 
#10
Number = 5; op[2]=0; op[1]=0; op[0]=1;
#10 $stop;
end
alu_1bit a1(a, b, cin, ainvert, bnegate, less, op, result, cout);
right_shift shr(Number, Range,rshifted);
left_shift shl(Number, Range,lshifted);
endmodule
