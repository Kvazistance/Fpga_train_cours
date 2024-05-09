`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 18:03:37
// Design Name: 
// Module Name: FSM_EX2_tb
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


module FSM_EX2_tb;

logic clk;
logic rst;
logic in_A;
logic in_B;
logic out;

logic [2:0] state;

FSM_EX2 test_auto (
    .A(in_A),
    .B(in_B),
    .clk(clk),
    .Z(out),
    .rst(rst),
    .cur_state(state)
);

initial begin
    clk = 0;
    rst = 1;
    forever begin
        #50ns;
        clk = ~clk;
        
    end
end

initial begin
    
    #10ns;
    rst = 0; 
    
    in_A = 0;
    in_B = 0;
    #90ns;
    
    in_A = 0;
    in_B = 0;
    #100ns;
    in_A = 0;
    in_B = 1;
    #100ns;
    in_A = 1;
    in_B = 1;
    #100ns;
    in_A = 0;
    in_B = 0;
    rst = 1;
    #100ns
    rst = 0;
    in_A = 1;
    in_B = 0;
    #100ns
    in_A = 1;
    in_B = 0;
    #100ns;
    in_A = 0;
    in_B = 0;
    #100ns;
    
    
end

endmodule
