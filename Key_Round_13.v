`timescale 1ns / 1ps
module Key_Round_13(
    input [1:56] key_in,
    output [1:56] shift_out_13,
    output [1:48] key_out_pc2
    );

wire [1:28] C13,D13;
assign C13={key_in[3:28],key_in[1:2]};
assign D13={key_in[31:56],key_in[29:30]};
assign shift_out_13={C13,D13};

Permuted_Choice_2 pc2_round13(shift_out_13, key_out_pc2);
endmodule
