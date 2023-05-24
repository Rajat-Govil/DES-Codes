`timescale 1ns / 1ps
module Key_Round_5(
    input [1:56] key_in,
    output [1:56] shift_out_5,
    output [1:48] key_out_pc2
    );

wire [1:28] C5,D5;
assign C5={key_in[3:28],key_in[1:2]};
assign D5={key_in[31:56],key_in[29:30]};
assign shift_out_5={C5,D5};

Permuted_Choice_2 pc2_round5(shift_out_5, key_out_pc2);
endmodule
