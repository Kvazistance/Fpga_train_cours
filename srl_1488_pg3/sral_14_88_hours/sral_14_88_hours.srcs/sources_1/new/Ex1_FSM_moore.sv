`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 18:32:25
// Design Name: 
// Module Name: Ex1_FSM_moore
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


module Ex1_FSM_moore(
    output logic [2:0] data_out,
    input logic clk,
    input logic rst,
    output logic [2:0] counter = 0 
    );
    enum logic [2:0] {s0=3'b000,s1,s2,s3,s4,s5,s6,s7} state = s0, next;

    

    always_ff @(posedge clk) begin
        if (rst) begin
         state <= s0;
         counter = 0;
         end
        else begin
                if(counter != 7) counter++; 

             state <= next;
        end
    end
    
    always_comb begin
        next = state;
        case(state)
            s0: if(counter == 0) next = s1;
            s1: if(counter == 1) next = s2;
            s2: if(counter == 2) next = s3;
            s3: if(counter == 3) next = s4;
            s4: if(counter == 4) next = s5;
            s5: if(counter == 5) next = s6;
            s6: if(counter == 6) next = s7;
            s7: if(counter == 7) next = s7;
            endcase
            
    end
    
    always_comb begin
        
        case(state)
            s0:  data_out = 3'b000;
            s1:  data_out = 3'b001;
            s2:  data_out = 3'b011;
            s3:  data_out = 3'b010;
            s4:  data_out = 3'b110;
            s5:  data_out = 3'b111;
            s6:  data_out = 3'b101;
            s7:  data_out = 3'b100;
        endcase
    end
    
endmodule
