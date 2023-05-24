`timescale 1ns / 1ps
module Key_Round_16(
    input [1:56] key_in,
    output [1:48] key_out_pc2
    );

wire [1:28] C16,D16;
wire [1:56] shift_out_16;
assign C16={key_in[2:28],key_in[1]};
assign D16={key_in[30:56],key_in[29]};
assign shift_out_16={C16,D16};

Permuted_Choice_2 pc2_round16(shift_out_16, key_out_pc2);
endmodule
