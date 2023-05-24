module Key_Round_6(
    input [1:56] key_in,
    output [1:56] shift_out_6,
    output [1:48] key_out_pc2
    );

wire [1:28] C6,D6;
assign C6={key_in[3:28],key_in[1:2]};
assign D6={key_in[31:56],key_in[29:30]};
assign shift_out_6={C6,D6};

Permuted_Choice_2 pc2_round6(shift_out_6, key_out_pc2);
endmodule