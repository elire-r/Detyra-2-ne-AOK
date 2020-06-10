`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2020 05:28:29 PM
// Design Name: 
// Module Name: right_shift
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


module right_shift(Number, Range, Shifted);
  input [15:0] Number;
  input [3:0] Range;
 output reg [15:0] Shifted;
always @(Number)
  Shifted = shifted_number(Number, Range);
    function[15:0] shifted_number;
     input [15:0] number;
     input [3:0] Range;         //4 bit shift range
     integer i;
     integer j;
     begin
         for (i = 0; i < Range; i = i + 1) begin //nje unaz e kontrollojna qe per me u ba shifti brenda range qe e kemi percaktu
             for (j = 0; j < 15; j = j + 1) begin //
                shifted_number[j] = number[j+1]; //e shifton per nja 
             end
         end
         shifted_number[15] = number[15]; 
     end
    endfunction
endmodule