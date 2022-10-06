`timescale 1ns / 1ps


module tb_adder();
    reg i_a, i_b; //레지스터 -> 메모리라고 생각할 수 있다.
    wire  o_sum, o_carry;

   HalfAdder dut(
    .i_a(i_a), 
    .i_b(i_b),
    .o_sum(o_sum), 
    .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 0; i_b = 0;
        #10 i_a = 0; i_b = 1;
        #10 i_a = 1; i_b = 0;
        #10 i_a = 1; i_b = 1;
        #10 $finish;
    end
endmodule
