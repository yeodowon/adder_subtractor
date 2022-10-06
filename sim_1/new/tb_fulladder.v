`timescale 1ns / 1ps

module tb_fulladder();
    reg i_a, i_b, i_c;   
    wire w_sum_0, w_carry_0, w_carry_1, o_sum, o_carry;

    FullAdder dut(
    
    .i_a(i_a), 
    .i_b(i_b),
    .i_c(i_c),
    .o_sum(o_sum), 
    .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 0; i_b = 0; i_c = 0;
        #10 i_a = 0; i_b = 0; i_c = 1;
        #10 i_a = 0; i_b = 1; i_c = 0;
        #10 i_a = 0; i_b = 1; i_c = 1;
        #10 i_a = 1; i_b = 0; i_c = 0;
        #10 i_a = 1; i_b = 0; i_c = 1;
        #10 i_a = 1; i_b = 1; i_c = 0;
        #10 i_a = 1; i_b = 1; i_c = 1;
        #10 $finish;
    end
endmodule
