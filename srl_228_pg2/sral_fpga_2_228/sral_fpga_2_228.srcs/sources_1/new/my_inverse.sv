`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 20:18:04
// Design Name: 
// Module Name: my_inverse
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


module my_inverse #(
//parameter int unsigned 
)(

    input logic in,
    output logic out
    );
    assign out = ~in;
    
endmodule
