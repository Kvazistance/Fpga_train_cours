`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 18:33:11
// Design Name: 
// Module Name: Ex1_FSM_moore_tb
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


module Ex1_FSM_moore_tb ;
    
    logic clk = 0;
    logic rst = 0;
    logic [2:0] out = 0;
    
    logic [2:0] outCounter = 0;
    
    Ex1_FSM_moore test_automate(
        .clk(clk),
        .data_out(out),
        .rst(rst),
        .counter(outCounter)
    );
    
    initial begin
        #503ns;
        rst = ~rst;
    end
    
    always begin
        #25ns;
        clk = ~clk;
    end
    
    
    
    
endmodule
