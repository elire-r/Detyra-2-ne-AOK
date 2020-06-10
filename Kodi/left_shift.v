`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2020 05:27:09 PM
// Design Name: 
// Module Name: left_shift
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

module left_shift(Number, Range, Shiftedo);
  input [15:0] Number;  
  input [3:0] Range;
 output reg [15:0] Shiftedo;
always @(Number)
  Shiftedo = shifted_number(Number, Range);
    function[15:0] shifted_number;
     input [15:0] number;
     input [3:0] Range;                            //4 bit shift range
     integer i;
     integer j;
     begin
         for (i = 15; i > Range; i = i - 1) begin //
             for (j = 15; j > 0; j = j - 1) begin
                shifted_number[j] = number[j-1]; // numri shkon te nalt per nja
             end
         end
         shifted_number[0] = number[15]; // numri qe eshte shtu te nalt shtohet posht
     end
    endfunction
endmodule
