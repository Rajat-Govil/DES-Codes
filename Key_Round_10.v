`timescale 1ns / 1ps
module Key_Round_10(
    input [1:56] key_in,
    output [1:56] shift_out_10,
    output [1:48] key_out_pc2
    );

wire [1:28] C10,D10;
assign C10={key_in[3:28],key_in[1:2]};
assign D10={key_in[31:56],key_in[29:30]};
assign shift_out_10={C10,D10};

Permuted_Choice_2 pc2_round10(shift_out_10, key_out_pc2);
endmodule
