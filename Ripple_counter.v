module Ripple_counter(
    input Clk, reset,
    
    output Q0, Q1, Q2
);

    T_flipflop Tff_A (
       .Clk(Clk),
       .T(1),
       .Q(Q0)
    );
    
    T_flipflop Tff_B (
       .Clk(Tff_A.Q),
       .T(1),
       .Q(Q1) 
    );
    
    T_flipflop Tff_C (
        .Clk(Tff_B.Q),
        .T(1),
        .Q(Q2)
    );
endmodule
