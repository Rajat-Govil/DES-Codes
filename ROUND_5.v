module ROUND_5(
    input [1:64] IP_Plaintext, 
    input [1:48] Key_R5,
    output [1:64] round_out_5
    );
    
wire [1:48] EP_out_r1, XOR_out;
Expansion_Permutation EP_Round1(IP_Plaintext[33:64], EP_out_r1);

assign XOR_out = EP_out_r1^Key_R5;

wire [1:48]B;   //B=Blocks

assign B[1:6]    =  XOR_out[1:6];
assign B[7:12]   =  XOR_out[7:12];
assign B[13:18]  =  XOR_out[13:18];
assign B[19:24]  =  XOR_out[19:24];
assign B[25:30]  =  XOR_out[25:30];
assign B[31:36]  =  XOR_out[31:36];
assign B[37:42]  =  XOR_out[37:42];
assign B[43:48]  =  XOR_out[43:48];

wire [1:32]s_out;
S1 SBox_1(B[1:6], s_out[1:4]);
S2 SBox_2(B[7:12], s_out[5:8]);
S3 SBox_3(B[13:18], s_out[9:12]);
S4 SBox_4(B[19:24], s_out[13:16]);
S5 SBox_5(B[25:30], s_out[17:20]);
S6 SBox_6(B[31:36], s_out[21:24]);
S7 SBox_7(B[37:42], s_out[25:28]);
S8 SBox_8(B[43:48], s_out[29:32]);

wire [1:32] P_out;
Permutation P(s_out, P_out);

wire [1:32] XOR_P_out;
assign XOR_P_out = P_out^IP_Plaintext[1:32];

assign round_out_5={IP_Plaintext[33:64],XOR_P_out};
endmodule
