`timescale 1ns / 1ps
module DES_TOP_MODULE(
    input [1:64] PLAINTEXT,
    output [1:64] CIPHERTEXT,
    output [1:64] DECR_TEXT
    );
    
//ENCRYPTION
//reg [1:64] KEY=64'h133457799bbcdff1;
reg [1:64] KEY=64'h0102030405060708;
wire [1:64] IP_OUT;
Initial_Permutation IP_TEXT(PLAINTEXT, IP_OUT);

wire [1:56] PC1_KEY;
Permuted_Choice_1 PC_1(KEY, PC1_KEY);

wire [1:64] ROUND_OUT;
Round_Gen_wt_KeyGen rounds(IP_OUT, PC1_KEY, ROUND_OUT);

IP_inv invperm(ROUND_OUT, CIPHERTEXT);


//DECRYPTION
DES_DECRYPTION_TOP_MODULE Decryption(CIPHERTEXT, PC1_KEY, DECR_TEXT);
endmodule
