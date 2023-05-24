`timescale 1ns / 1ps
module Expansion_Permutation(
    input [1:32] IP_Plaintext_R,
    output [1:48] EP_Out
    );
    
assign EP_Out[1] = IP_Plaintext_R[32];
assign EP_Out[2] = IP_Plaintext_R[1];
assign EP_Out[3] = IP_Plaintext_R[2];
assign EP_Out[4] = IP_Plaintext_R[3];
assign EP_Out[5] = IP_Plaintext_R[4];
assign EP_Out[6] = IP_Plaintext_R[5];
assign EP_Out[7] = IP_Plaintext_R[4];
assign EP_Out[8] = IP_Plaintext_R[5];
assign EP_Out[9] = IP_Plaintext_R[6];
assign EP_Out[10] = IP_Plaintext_R[7];
assign EP_Out[11] = IP_Plaintext_R[8];
assign EP_Out[12] = IP_Plaintext_R[9];
assign EP_Out[13] = IP_Plaintext_R[8];
assign EP_Out[14] = IP_Plaintext_R[9];
assign EP_Out[15] = IP_Plaintext_R[10];
assign EP_Out[16] = IP_Plaintext_R[11];
assign EP_Out[17] = IP_Plaintext_R[12];
assign EP_Out[18] = IP_Plaintext_R[13];
assign EP_Out[19] = IP_Plaintext_R[12];
assign EP_Out[20] = IP_Plaintext_R[13];
assign EP_Out[21] = IP_Plaintext_R[14];
assign EP_Out[22] = IP_Plaintext_R[15];
assign EP_Out[23] = IP_Plaintext_R[16];
assign EP_Out[24] = IP_Plaintext_R[17];
assign EP_Out[25] = IP_Plaintext_R[16];
assign EP_Out[26] = IP_Plaintext_R[17];
assign EP_Out[27] = IP_Plaintext_R[18];
assign EP_Out[28] = IP_Plaintext_R[19];
assign EP_Out[29] = IP_Plaintext_R[20];
assign EP_Out[30] = IP_Plaintext_R[21];
assign EP_Out[31] = IP_Plaintext_R[20];
assign EP_Out[32] = IP_Plaintext_R[21];
assign EP_Out[33] = IP_Plaintext_R[22];
assign EP_Out[34] = IP_Plaintext_R[23];
assign EP_Out[35] = IP_Plaintext_R[24];
assign EP_Out[36] = IP_Plaintext_R[25];
assign EP_Out[37] = IP_Plaintext_R[24];
assign EP_Out[38] = IP_Plaintext_R[25];
assign EP_Out[39] = IP_Plaintext_R[26];
assign EP_Out[40] = IP_Plaintext_R[27];
assign EP_Out[41] = IP_Plaintext_R[28];
assign EP_Out[42] = IP_Plaintext_R[29];
assign EP_Out[43] = IP_Plaintext_R[28];
assign EP_Out[44] = IP_Plaintext_R[29];
assign EP_Out[45] = IP_Plaintext_R[30];
assign EP_Out[46] = IP_Plaintext_R[31];
assign EP_Out[47] = IP_Plaintext_R[32];
assign EP_Out[48] = IP_Plaintext_R[1];
endmodule
