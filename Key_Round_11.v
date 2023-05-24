`timescale 1ns / 1ps
module Key_Round_11(
   input [1:56] key_in,
    output [1:56] shift_out_11,
    output [1:48] key_out_pc2
    );

wire [1:28] C11,D11;
assign C11={key_in[3:28],key_in[1:2]};
assign D11={key_in[31:56],key_in[29:30]};
assign shift_out_11={C11,D11};

Permuted_Choice_2 pc2_round11(shift_out_11, key_out_pc2);
endmodule
