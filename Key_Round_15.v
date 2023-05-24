`timescale 1ns / 1ps
module Key_Round_15(
    input [1:56] key_in,
    output [1:56] shift_out_15,
    output [1:48] key_out_pc2
    );

wire [1:28] C15,D15;
assign C15={key_in[3:28],key_in[1:2]};
assign D15={key_in[31:56],key_in[29:30]};
assign shift_out_15={C15,D15};

Permuted_Choice_2 pc2_round15(shift_out_15, key_out_pc2);
endmodule
