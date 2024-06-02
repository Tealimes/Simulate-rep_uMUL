module rep_uMUL_uni(
    input logic clk,
    input logic rstn,
    input logic A,
    input logic B,
    output logic out
);

    logic B_buf;

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