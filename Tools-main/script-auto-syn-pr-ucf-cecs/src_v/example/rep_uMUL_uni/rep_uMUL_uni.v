module rep_uMUL_uni(
    input wire iClk,
    input wire iRstN,
    input wire A,
    input wire B,
    output wire out
);

    wire B_buf;

    always@(posedge iClk or negedge iRstN) begin
        if(~iRstN) begin
            B_buf <= 0;
        end
        else begin
            B_buf <= B;
        end
    end

    assign out = A & B_buf;

endmodule
