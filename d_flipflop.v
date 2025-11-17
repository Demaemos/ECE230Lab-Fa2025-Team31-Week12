module d_flipflop(
    input D,
    input Clk,
    input Reset,
    output reg Q,
    output notQ
);
    
    initial begin
        Q <= 0;
    end    
    
    always @(posedge Clk) begin
    if (Reset) begin
        Q <= 0;
    end else begin
        Q <= D;
    end 
    end
    
    assign notQ = ~Q;
    
endmodule