`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2020 02:56:24 PM
// Design Name: 
// Module Name: alu_control
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


module alu_control(funct,ALUOp,ALUControl);
input[4:0] funct;
output wire [3:0] ALUControl;

input ALUOp;
reg[3:0] ALUControl1;
always @(*)
begin
if (ALUOp==0)
ALUControl1=4'b0100; //add
else
ALUControl1=4'b1100;//sub

if(ALUOp==1)
begin
  case(funct)
  5'b00001:
  begin 
  ALUControl1=4'b0000; //and
  end
  5'b00010:
  begin 
  ALUControl1=4'b0010;//or
  end
  5'b01000:
  begin 
  ALUControl1=4'b0001;//sll
  end
  5'b01001:   
  begin 
  ALUControl1=4'b0110;//srl
  end
  5'b10000:
  begin 
  ALUControl1=4'b0111;//mult
  end
  default:
  begin 
  ALUControl1=4'b0101;//addi
  end
 endcase
end
end
assign ALUControl = ALUControl1;
endmodule