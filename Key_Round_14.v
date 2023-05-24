`timescale 1ns / 1ps
module Key_Round_14(
   input [1:56] key_in,
    output [1:56] shift_out_14,
    output [1:48] key_out_pc2
    );

wire [1:28] C14,D14;
assign C14={key_in[3:28],key_in[1:2]};
assign D14={key_in[31:56],key_in[29:30]};
assign shift_out_14={C14,D14};

Permuted_Choice_2 pc2_round14(shift_out_14, key_out_pc2);
endmodule
