module jk_flipflop(
    input J, K, Clk, Reset,
    output Q,
    output notQ
);

    wire jk;
    assign jk = (J & ~Q) | (~K & Q);

    d_flipflop d_inst(
        .D(jk),
        .Clk(Clk),
        .Q(Q),
        .notQ(notQ),
        .Reset(Reset)
    );


endmodule
