`timescale 1ns / 1ps

module tb_FA_4();
    reg [3:0]i_a, i_b; 
    reg i_c;   
    wire [3:0] o_sum;
    wire o_carry;
   

    FA_4 dut(
    .i_a(i_a), 
    .i_b(i_b),
    .i_c(1'b0), //외부에서 들어오는 입력값 in_C = 0
    .o_sum(o_sum),
    .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 4'b0000; i_b = 4'b0000;
        #10 i_a = 4'd3; i_b = 4'd4; 
        #10 i_a = 4'ha; i_b = 4'hb; 
        #10 i_a = 4'd5; i_b = 4'd9; 
        #10 i_a = 4'd6; i_b = 4'd8; 
        #10 i_a = 4'd7; i_b = 4'd7; 
        #10 i_a = 4'd8; i_b = 4'd6; 
        #10 i_a = 4'd9; i_b = 4'd5;
        #10 $finish;
    end
endmodule
