module alu (
    input [7:0] InputA,
    input [7:0] InputB,
    input [2:0] OpCode,
    output reg [15:0] OutALU,
    output reg COut
);

always @(*) begin
    // Default assignments to avoid latches
    OutALU = 16'd0;
    COut = 1'b0;

    case (OpCode)
        3'b000: begin // Addition
            {COut, OutALU[7:0]} = InputA + InputB;
            OutALU[15:8] = 8'd0;
        end
        3'b001: begin // Subtraction
            {COut, OutALU[7:0]} = InputA - InputB; // COut acts as borrow/carry indicator
            OutALU[15:8] = 8'd0;
        end
        3'b010: begin // Multiplication
            OutALU = InputA * InputB;
            COut = 1'b0;
        end
        3'b011: begin // Left Shift
            OutALU = InputA << InputB[2:0];
            COut = 1'b0;
        end
        3'b100: begin // Right Shift
            OutALU = InputA >> InputB[2:0];
            COut = 1'b0;
        end
        3'b101: begin // Logical AND
            OutALU = {8'd0, InputA & InputB};
            COut = 1'b0;
        end
        3'b110: begin // Logical OR
            OutALU = {8'd0, InputA | InputB};
            COut = 1'b0;
        end
        3'b111: begin // Logical XOR
            OutALU = {8'd0, InputA ^ InputB};
            COut = 1'b0;
        end
        default: begin
            OutALU = 16'd0;
            COut = 1'b0;
        end
    endcase
end

endmodule
