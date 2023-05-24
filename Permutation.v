`timescale 1ns / 1ps
module Permutation(
    input [1:32] sbox_in,
    output [1:32] p_out
    );
    
assign p_out[1]  = sbox_in[16];
assign p_out[2]  = sbox_in[7];
assign p_out[3]  = sbox_in[20];
assign p_out[4]  = sbox_in[21];
assign p_out[5]  = sbox_in[29];
assign p_out[6]  = sbox_in[12];
assign p_out[7]  = sbox_in[28];
assign p_out[8]  = sbox_in[17];
assign p_out[9]  = sbox_in[1];
assign p_out[10] = sbox_in[15];
assign p_out[11] = sbox_in[23];
assign p_out[12] = sbox_in[26];
assign p_out[13] = sbox_in[5];
assign p_out[14] = sbox_in[18];
assign p_out[15] = sbox_in[31];
assign p_out[16] = sbox_in[10];
assign p_out[17] = sbox_in[2];
assign p_out[18] = sbox_in[8];
assign p_out[19] = sbox_in[24];
assign p_out[20] = sbox_in[14];
assign p_out[21] = sbox_in[32];
assign p_out[22] = sbox_in[27];
assign p_out[23] = sbox_in[3];
assign p_out[24] = sbox_in[9];
assign p_out[25] = sbox_in[19];
assign p_out[26] = sbox_in[13];
assign p_out[27] = sbox_in[30];
assign p_out[28] = sbox_in[6];
assign p_out[29] = sbox_in[22];
assign p_out[30] = sbox_in[11];
assign p_out[31] = sbox_in[4];
assign p_out[32] = sbox_in[25];
endmodule
