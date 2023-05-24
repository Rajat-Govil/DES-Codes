`timescale 1ns / 1ps
module Key_Round_2(
    input [1:56] key_in,
    output [1:56] shift_out_2,
    output [1:48] key_out_pc2
    );

wire [1:28] C2,D2;
assign C2={key_in[2:28],key_in[1]};
assign D2={key_in[30:56],key_in[29]};
assign shift_out_2={C2,D2};

Permuted_Choice_2 pc2_round2(shift_out_2, key_out_pc2);
endmodule
