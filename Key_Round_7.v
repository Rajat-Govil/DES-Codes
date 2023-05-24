`timescale 1ns / 1ps
module Key_Round_7(
    input [1:56] key_in,
    output [1:56] shift_out_7,
    output [1:48] key_out_pc2
    );

wire [1:28] C7,D7;
assign C7={key_in[3:28],key_in[1:2]};
assign D7={key_in[31:56],key_in[29:30]};
assign shift_out_7={C7,D7};

Permuted_Choice_2 pc2_round7(shift_out_7, key_out_pc2);
endmodule
