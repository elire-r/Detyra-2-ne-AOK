`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2020 04:26:04 PM
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb(
    );
    reg clk;
    initial 
    $monitor ("clk=%b", clk);
    initial
    begin 
    #0 clk=0;
    #5 clk=1;
    #5 clk=0;
    #5 clk=1;
    #5 clk=0;
    #5 clk=1;
    #5 clk=1;
    #5 clk=0;
    #5 clk=1;
    #5 $stop;
    end
CPU CPU_tb(clk);
endmodule
