`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:35 01/24/2026 
// Design Name: 
// Module Name:    ALU2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU2(
    input [31:0] A,
    input [31:0] B,
    input [2:0] Sel,
    output reg [31:0] O
    );

    always @(*) begin
        O = 32'b0;

        case (Sel)
            3'b000: begin // ADD: A + B
                O = A + B;
            end
            3'b001: begin // SUBTRACT: A - B
                O = A - B;
            end
            3'b010: begin // SHIFT: A Shift Left by 1
                O = A << 1;
            end
            3'b011: begin // AND: A & B
                O = A & B;
            end
            3'b100: begin // OR: A | B
                O = A | B;
            end
            default: begin
                O = 32'b0;
            end
            endcase
    end

endmodule
