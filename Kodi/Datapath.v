`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2020 04:08:55 PM
// Design Name: 
// Module Name: datapath
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

module Datapath(input clk, input pcFill, input RegDst, input ALUSrc, input MemToReg, input RegWrite, input MemRead, input MemWrite, input ALUOp, output opcode);
wire [15:0] instruksioni,sum;
wire [1:0]opcode;
wire [2:0]RS, RT,RD;
wire [4:0]funct;
wire [8:0]immediate;
wire [15:0]WD;
wire [15:0]imm_long;
reg [15:0] pc;
wire RFwe;
wire [15:0] RD1,RD2;
reg s;
wire[15:0] ReadData;
wire [15:0]alu2;
wire cin,ainvert,bnegate,less;
wire[2:0] op;
wire[3:0] ALUControl;
wire ALUOp;
wire a,b,c,dalja;
wire[2:0] v;
wire pcFill;
assign ainvert=0;
initial begin
assign pc = 16'd0;
end

always @(posedge clk)
begin
assign pc = pcFill;
end
adder AD(pc,sum,pcFill);
adder AD1(pc,sum,pcFill);
adder AD2(pc,sum,pcFill);
adder AD3(pc,sum,pcFill);
adder AD4(pc,sum,pcFill);
adder AD5(pc,sum,pcFill);
adder AD6(pc,sum,pcFill);
adder AD7(pc,sum,pcFill);
adder AD8(pc,sum,pcFill);
adder AD9(pc,sum,pcFill);
adder AD10(pc,sum,pcFill);
adder AD11(pc,sum,pcFill);
adder AD12(pc,sum,pcFill);
adder AD13(pc,sum,pcFill);
adder AD14(pc,sum,pcFill);

InstrMemory IM(clk, pc, instruksioni);
assign opcode = instruksioni [15:14];
assign RS = instruksioni [13:11];
assign RT = instruksioni [10:8];
assign RD = instruksioni [7:5];
assign funct = instruksioni [4:0];
assign immediate = instruksioni [7:0];

//me pyt a osht  R format
always @(opcode)
begin
if (opcode == 2'd0)
s = 1;
//formatiR
else
//formatiI
s = 0;
end
muxi_2to1 M21HyrjeRF(s, RT, RD, z);
RegisterFile RF(RS, RT, RD,WD, RFwe, clk, RD1, RD2);

assign  imm_long ={{8{immediate[7]}},immediate[7:0]};
assign alu2 = s? immediate : RD2;
wire [15:0] result;
wire cout;
alu_control AL(funct,ALUOp,ALUControl);
 mux_3to1 M3(a, b, c, v, dalja);

alu_16bit aluRF(
    RD1,
    alu2,
     cin,
     ainvert,
     bnegate,
    less,
    dalja,
    result,
     cout
    );
    DataMemory DPDM(result,WD,MemWrite, MemRead,clk,  ReadData);
    assign RFwe = 1;
    assign WD = s? (MemToReg==1? ReadData :0): result;
    
    
endmodule
