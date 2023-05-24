module DES_DECRYPTION_TOP_MODULE(
    input [1:64] CIPHERTEXT,
    input [1:56] KEY_IN,        //Permuted choice 1 key from encryption module
    output [1:64] PLAINTEXT
    );
    
wire [1:64] CT_IP_OUT;
Initial_Permutation C_TEXT(CIPHERTEXT, CT_IP_OUT);

wire [1:64] ROUND_OUT;
Round_with_KeyGen_Decryption Decr_rounds(CT_IP_OUT, KEY_IN, ROUND_OUT);

IP_inv invperm(ROUND_OUT, PLAINTEXT);

endmodule
