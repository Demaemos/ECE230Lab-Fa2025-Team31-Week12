module top(
    input btnU, btnC,
    output [6:0]led
);
    
    modulo_counter modulo_a(
        .Clk(btnC),
        .Reset(btnU),
        .bit0(led[3]),
        .bit1(led[4]),
        .bit2(led[5]),
        .Y(led[6])
    );
    
    ripple_counter ripple_a(
        .Clk(btnC),
        .Reset(btnU),
        .bit0(led[0]),
        .bit1(led[1]),
        .bit2(led[2])
    );
    
endmodule
