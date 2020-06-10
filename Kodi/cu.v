`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 02:59:29 PM
// Design Name: 
// Module Name: cu
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


module cu(input [1:0] opcode, output reg RegDst, output reg ALUSrc, output reg MemToReg , output reg RegWrite, output reg MemRead , output reg MemWrite, output reg ALUOp);
//rd kalkulimet ku kryhen instruksionet
//alusrc per i ose r format
//memtoreg me shkru prej memories ne regjister
// regwrite me shkru ne regjister


always @(opcode)
begin
case(opcode)
2'b00: //R format
begin 
assign RegDst = 1; 
assign ALUSrc = 0; 
assign MemToReg = 0; 
assign RegWrite = 1; 
assign MemRead = 0; 
assign MemWrite = 0; 
assign ALUOp = 1; 

end

2'b10: // LW
begin 
assign RegDst = 0; 
assign ALUSrc = 1; 
assign MemToReg = 1; 
assign RegWrite = 1; 
assign MemRead = 1; 
assign MemWrite = 0; 
assign ALUOp = 0; 

end

2'b11: // SW
begin 
assign RegDst = 0; 
assign ALUSrc = 1; 
assign MemToReg = 0; 
assign RegWrite = 0; 
assign MemRead = 0; 
assign MemWrite = 1; 
assign ALUOp = 0; 

end
2'b00: // SLL
begin 
assign RegDst = 1; 
assign ALUSrc = 0; 
assign MemToReg = 0; 
assign RegWrite = 1; 
assign MemRead = 0; 
assign MemWrite = 0; 
assign ALUOp = 1; 

end
2'b00: // SRL
begin 
assign RegDst = 1; 
assign ALUSrc = 0; 
assign MemToReg = 0; 
assign RegWrite = 1; 
assign MemRead = 0; 
assign MemWrite = 0; 
assign ALUOp = 1; 

end
2'b01: // SW
begin 
assign RegDst = 0; 
assign ALUSrc = 1; 
assign MemToReg = 0; 
assign RegWrite = 1; 
assign MemRead = 0; 
assign MemWrite = 0; 
assign ALUOp = 1; 

end

endcase
end

endmodule
