`timescale 1ns / 1ps
module Key_Gen(
    input [1:56] Key_in,
    output [1:48] K1, K2, K3, K4, K5, K6, K7, K8, 
    K9, K10, K11, K12, K13, K14, K15, K16   
    );
  
wire [1:56] lcs_k1, lcs_k2, lcs_k3, lcs_k4, lcs_k5, lcs_k6, lcs_k7, lcs_k8;
wire [1:56] lcs_k9, lcs_k10, lcs_k11, lcs_k12, lcs_k13, lcs_k14, lcs_k15;

Key_Round_1 KR1(.key_in(Key_in), .key_out_pc2(K1), .shift_out_1(lcs_k1));
Key_Round_2 KR2(.key_in(lcs_k1), .key_out_pc2(K2), .shift_out_2(lcs_k2));
Key_Round_3 KR3(.key_in(lcs_k2), .key_out_pc2(K3), .shift_out_3(lcs_k3));
Key_Round_4 KR4(.key_in(lcs_k3), .key_out_pc2(K4), .shift_out_4(lcs_k4));
Key_Round_5 KR5(.key_in(lcs_k4), .key_out_pc2(K5), .shift_out_5(lcs_k5));
Key_Round_6 KR6(.key_in(lcs_k5), .key_out_pc2(K6), .shift_out_6(lcs_k6));
Key_Round_7 KR7(.key_in(lcs_k6), .key_out_pc2(K7), .shift_out_7(lcs_k7));
Key_Round_8 KR8(.key_in(lcs_k7), .key_out_pc2(K8), .shift_out_8(lcs_k8));
Key_Round_9 KR9(.key_in(lcs_k8), .key_out_pc2(K9), .shift_out_9(lcs_k9));

Key_Round_10 KR10(.key_in(lcs_k9), .key_out_pc2(K10), .shift_out_10(lcs_k10));
Key_Round_11 KR11(.key_in(lcs_k10), .key_out_pc2(K11), .shift_out_11(lcs_k11));
Key_Round_12 KR12(.key_in(lcs_k11), .key_out_pc2(K12), .shift_out_12(lcs_k12));
Key_Round_13 KR13(.key_in(lcs_k12), .key_out_pc2(K13), .shift_out_13(lcs_k13));
Key_Round_14 KR14(.key_in(lcs_k13), .key_out_pc2(K14), .shift_out_14(lcs_k14));
Key_Round_15 KR15(.key_in(lcs_k14), .key_out_pc2(K15), .shift_out_15(lcs_k15));
Key_Round_16 KR16(.key_in(lcs_k15), .key_out_pc2(K16));
endmodule
