`timescale 1ns / 1ps
module Permuted_Choice_2(
    input [1:56] key_in,
    output [1:48] pc2_key_out
    );
    
assign pc2_key_out[1] = key_in[14];
assign pc2_key_out[2] = key_in[17];
assign pc2_key_out[3] = key_in[11];
assign pc2_key_out[4] = key_in[24];
assign pc2_key_out[5] = key_in[1];
assign pc2_key_out[6] = key_in[5];

assign pc2_key_out[7] = key_in[3];
assign pc2_key_out[8] = key_in[28];
assign pc2_key_out[9] = key_in[15];
assign pc2_key_out[10] = key_in[6];
assign pc2_key_out[11] = key_in[21];
assign pc2_key_out[12] = key_in[10];

assign pc2_key_out[13] = key_in[23];
assign pc2_key_out[14] = key_in[19];
assign pc2_key_out[15] = key_in[12];
assign pc2_key_out[16] = key_in[4];
assign pc2_key_out[17] = key_in[26];
assign pc2_key_out[18] = key_in[8];

assign pc2_key_out[19] = key_in[16];
assign pc2_key_out[20] = key_in[7];
assign pc2_key_out[21] = key_in[27];
assign pc2_key_out[22] = key_in[20];
assign pc2_key_out[23] = key_in[13];
assign pc2_key_out[24] = key_in[2];

assign pc2_key_out[25] = key_in[41];
assign pc2_key_out[26] = key_in[52];
assign pc2_key_out[27] = key_in[31];
assign pc2_key_out[28] = key_in[37];
assign pc2_key_out[29] = key_in[47];
assign pc2_key_out[30] = key_in[55];

assign pc2_key_out[31] = key_in[30];
assign pc2_key_out[32] = key_in[40];
assign pc2_key_out[33] = key_in[51];
assign pc2_key_out[34] = key_in[45];
assign pc2_key_out[35] = key_in[33];
assign pc2_key_out[36] = key_in[48];

assign pc2_key_out[37] = key_in[44];
assign pc2_key_out[38] = key_in[49];
assign pc2_key_out[39] = key_in[39];
assign pc2_key_out[40] = key_in[56];
assign pc2_key_out[41] = key_in[34];
assign pc2_key_out[42] = key_in[53];

assign pc2_key_out[43] = key_in[46];
assign pc2_key_out[44] = key_in[42];
assign pc2_key_out[45] = key_in[50];
assign pc2_key_out[46] = key_in[36];
assign pc2_key_out[47] = key_in[29];
assign pc2_key_out[48] = key_in[32];
endmodule
