`timescale 1ns / 1ps
module Key_Round_9(
    input [1:56] key_in,
    output [1:56] shift_out_9,
    output [1:48] key_out_pc2
    );

wire [1:28] C9,D9;
assign C9={key_in[2:28],key_in[1]};
assign D9={key_in[30:56],key_in[29]};
assign shift_out_9={C9,D9};

Permuted_Choice_2 pc2_round9(shift_out_9, key_out_pc2);
endmodule