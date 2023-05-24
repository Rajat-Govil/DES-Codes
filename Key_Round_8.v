`timescale 1ns / 1ps
module Key_Round_8(
    input [1:56] key_in,
    output [1:56] shift_out_8,
    output [1:48] key_out_pc2
    );

wire [1:28] C8,D8;
assign C8={key_in[3:28],key_in[1:2]};
assign D8={key_in[31:56],key_in[29:30]};
assign shift_out_8={C8,D8};

Permuted_Choice_2 pc2_round8(shift_out_8, key_out_pc2);
endmodule
