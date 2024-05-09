`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 18:02:58
// Design Name: 
// Module Name: FSM_EX2
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


module FSM_EX2(
        input logic A,
        input logic B,
        input logic clk,
        input logic rst,
        output logic Z,
        output logic [2:0] cur_state
    );
    
    enum logic [2:0] {  S_START, S_A_ZERO, S_A_ONE  } state = S_START, next;
    
    always_ff @(posedge clk) begin
        
        if(rst) state <= S_START;
        else    state <= next;
        
        cur_state <= state;
        
    end
    
    always_comb begin
            
        next = state;
        case(state)
            S_START: begin
            
                if(A) next = S_A_ONE;
                else next = S_A_ZERO;
            end
            S_A_ZERO: begin
                if(A == 0 && B == 1) begin
                    next = S_A_ZERO;
                    
                end
                if(B == 0) begin
                    next = S_A_ZERO;
                end
                if(A == 1 && B == 1) begin
                    next = S_A_ONE;
                end 

            end
            S_A_ONE: begin
                
                if(B == 1) begin
                    next = S_A_ONE;
                end
                if(A == 1 && B == 0) begin
                    next = S_A_ONE;
                end
                if(A == 0 && B == 0) begin
                    next = S_A_ZERO;
                end

            end
        endcase
    end
    
    always_comb begin
        case(state)
            S_START:  Z = 0;
            S_A_ZERO: Z = 0;
            S_A_ONE:  Z = 1;
        endcase
    end
    
endmodule
