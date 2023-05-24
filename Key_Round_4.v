`timescale 1ns / 1ps
module Key_Round_4(
    input [1:56] key_in,
    output [1:56] shift_out_4,
    output [1:48] key_out_pc2
    );

wire [1:28] C4,D4;
assign C4={key_in[3:28],key_in[1:2]};
assign D4={key_in[31:56],key_in[29:30]};
assign shift_out_4={C4,D4};

Permuted_Choice_2 pc2_round4(shift_out_4, key_out_pc2);
endmodule
