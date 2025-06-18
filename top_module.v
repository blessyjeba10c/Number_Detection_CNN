`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2025 10:44:52
// Design Name: 
// Module Name: top_module
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


module top_module (
    input clk, rst,
    output [3:0] prediction
);
    wire [7:0] weight_ih;
    wire [7:0] weight_ho;
    wire spike_out;
    wire start;
    wire done;

    wire [15:0] result;
    wire spike;

    rom_input_hidden1 rom1(.addr(0), .data(weight_ih));
    rom_hidden2_output rom3(.addr(0), .data(weight_ho));
    controller_fsm ctrl(.clk(clk), .reset(rst), .start_calc(start), .done(done));
    dot_product dp(.clk(clk), .start(start), .a(8'hAA), .b(weight_ih), .result(result), .done());
    activation act(.in(result), .out_spike(spike));

    assign prediction = 4'd5;  // placeholder
endmodule
