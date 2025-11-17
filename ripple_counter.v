module ripple_counter(
    input Clk, Reset,
    output bit0, bit1, bit2
);
    
    t_flipflop Tff_A (
       .Clk(Clk),
       .T(1),
       .Q(bit0),
       .Reset(Reset)
    );
    
    t_flipflop Tff_B (
       .Clk(Tff_A.Q),
       .T(1),
       .Q(bit1),
       .Reset(Reset) 
    );
    
    t_flipflop Tff_C (
        .Clk(Tff_B.Q),
        .T(1),
        .Q(bit2),
        .Reset(Reset)
    );
    
endmodule
