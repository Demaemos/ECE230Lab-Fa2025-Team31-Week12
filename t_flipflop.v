module t_flipflop(
    input T, Clk, Reset,
    output Q,
    output notQ
);

    jk_flipflop jk_inst(
        .J(T),
        .K(T),
        .Clk(Clk),
        .Q(Q),
        .notQ(notQ),
        .Reset(Reset)
    );

endmodule
