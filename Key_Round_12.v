`timescale 1ns / 1ps
module Key_Round_12(
   input [1:56] key_in,
    output [1:56] shift_out_12,
    output [1:48] key_out_pc2
    );

wire [1:28] C12,D12;
assign C12={key_in[3:28],key_in[1:2]};
assign D12={key_in[31:56],key_in[29:30]};
assign shift_out_12={C12,D12};

Permuted_Choice_2 pc2_round12(shift_out_12, key_out_pc2);
endmodule
