module Round_with_KeyGen_Decryption(
    input [1:64] IP_Plaintext,
    input [1:56] Key_input,
    output [1:64] Round_out_Final
    );
    
wire [1:48] K1, K2, K3, K4, K5, K6, K7, K8, 
     K9, K10, K11, K12, K13, K14, K15, K16;
          
Key_Gen KG(Key_input, K1, K2, K3, K4, K5, K6, K7, K8, 
           K9, K10, K11, K12, K13, K14, K15, K16);
           
wire [1:64] r1out, r2out, r3out, r4out, r5out, r6out, r7out, r8out,
           r9out, r10out, r11out, r12out, r13out, r14out, r15out, r16out;

ROUND_1 R1(IP_Plaintext, K16, r1out);
ROUND_2 R2(r1out, K15, r2out);
ROUND_3 R3(r2out, K14, r3out);
ROUND_4 R4(r3out, K13, r4out);
ROUND_5 R5(r4out, K12, r5out);
ROUND_6 R6(r5out, K11, r6out);
ROUND_7 R7(r6out, K10, r7out);
ROUND_8 R8(r7out, K9, r8out);
ROUND_9 R9(r8out, K8, r9out);

ROUND_10 R10(r9out, K7, r10out);
ROUND_11 R11(r10out, K6, r11out);
ROUND_12 R12(r11out, K5, r12out);
ROUND_13 R13(r12out, K4, r13out);
ROUND_14 R14(r13out, K3, r14out);
ROUND_15 R15(r14out, K2, r15out);
ROUND_16 R16(r15out, K1, r16out);

wire [1:64] swap;
assign swap[1:32]=r16out[33:64];
assign swap[33:64]=r16out[1:32];

assign Round_out_Final=swap;
endmodule
