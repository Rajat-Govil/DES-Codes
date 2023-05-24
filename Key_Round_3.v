`timescale 1ns / 1ps
module Key_Round_3(
    input [1:56] key_in,
    output [1:56] shift_out_3,
    output [1:48] key_out_pc2
    );

wire [1:28] C3,D3;
assign C3={key_in[3:28],key_in[1:2]};
assign D3={key_in[31:56],key_in[29:30]};
assign shift_out_3={C3,D3};

Permuted_Choice_2 pc2_round3(shift_out_3, key_out_pc2);
endmodule
