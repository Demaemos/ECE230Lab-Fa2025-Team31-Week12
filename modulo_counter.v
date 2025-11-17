module modulo_counter(
    input Clk, Reset,
    output bit0, bit1, bit2, Y
);

    wire comp, rst, f;
    assign comp = (bit0 & !bit1 & bit2);
    assign rst = comp | Reset;
    assign f = comp ^ d_out.Q;
    

    full_adder adder_a(
        .A(d_a.Q),
        .B(1),
        .Cin(0)
    );
    
    d_flipflop d_a(
        .D(adder_a.Y),
        .Clk(Clk),
        .Q(bit0),
        .Reset(rst)
    );
    
    full_adder adder_b(
        .A(d_b.Q),
        .B(0),
        .Cin(adder_a.Cout)
    );
    
    d_flipflop d_b(
        .D(adder_b.Y),
        .Clk(Clk),
        .Q(bit1),
        .Reset(rst)
    );
    
    full_adder adder_c(
        .A(d_c.Q),
        .B(0),
        .Cin(adder_b.Cout)
    );
    
    d_flipflop d_c(
        .D(adder_c.Y),
        .Clk(Clk),
        .Q(bit2),
        .Reset(rst)
    );
    
    d_flipflop d_out(
        .D(f),
        .Clk(Clk),
        .Q(Y),
        .Reset(Reset)
    );
    
    
    //    assign Reset = (!bit0 & !bit1 & bit2) ? 1 : 0;

endmodule