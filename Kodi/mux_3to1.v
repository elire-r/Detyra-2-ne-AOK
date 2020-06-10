`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2020 12:13:44 AM
// Design Name: 
// Module Name: mux_3to1
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




module mux_3to1(a, b, c, s, o); //a and b or c add s input s o output
  input a,b,c; 
  input  [2:0] s; 
  output reg o; 

 
  always @(a or b or c or s) 
  begin 
      if (s == 3'b000) o = a; 
    else if (s == 3'b010) o = b; 
    else if (s == 3'b100) o = c; 
  end 
endmodule
