`timescale 1ns / 1ps
module Key_Round_1(
    input [1:56] key_in,
    output [1:56] shift_out_1,
    output [1:48] key_out_pc2
    );

wire [1:28] C1,D1;
assign C1={key_in[2:28],key_in[1]};
assign D1={key_in[30:56],key_in[29]};
assign shift_out_1={C1,D1};

Permuted_Choice_2 pc2_round1(shift_out_1, key_out_pc2);

endmodule
