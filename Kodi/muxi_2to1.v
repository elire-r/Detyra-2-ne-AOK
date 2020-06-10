`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2020 08:34:25 PM
// Design Name: 
// Module Name: muxi_2to1
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


module muxi_2to1(s, d0, d1, z);

input s;
input[2:0] d0;
input[2:0] d1;
output z;

assign z = s ? d1 : d0;
endmodule