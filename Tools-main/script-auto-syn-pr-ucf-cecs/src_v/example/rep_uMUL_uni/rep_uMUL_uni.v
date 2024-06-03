module rep_uMUL_uni(
    input iClk,
    input iRstN,
    input A,
    input B,
    output reg out
);

    reg B_buf;

    always@(posedge clk or negedge rstn) begin
        if(~rstn) begin
            B_buf <= 0;
        end
        else begin
            B_buf <= B;
        end
    end

    assign out = A & B_buf;

endmodule
