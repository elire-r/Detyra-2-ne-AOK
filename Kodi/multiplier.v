`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2020 09:35:10 PM
// Design Name: 
// Module Name: multiplier
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

module multiplier( a, b, p);
input  a,b;
output reg p;
	integer x;
	always @(a or b)
	begin
		p = 0;
		for (x = 0; x < 1; x = x + 1)
			if ( a == 1'b1 ) 
				p = p + (b << x);
	end
endmodule