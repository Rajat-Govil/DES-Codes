`timescale 1ns / 1ps
//[1:64] as the bits read for the DES are from left to right
module Initial_Permutation(
    input [1:64] plaintext,
    output [1:64] ip1_text_out
    );
    
assign ip1_text_out[1]   =  plaintext[58]; 
assign ip1_text_out[2]   =  plaintext[50]; 
assign ip1_text_out[3]   =  plaintext[42]; 
assign ip1_text_out[4]   =  plaintext[34]; 
assign ip1_text_out[5]   =  plaintext[26]; 
assign ip1_text_out[6]   =  plaintext[18]; 
assign ip1_text_out[7]   =  plaintext[10]; 
assign ip1_text_out[8]   =  plaintext[2]; 
assign ip1_text_out[9]   =  plaintext[60]; 
assign ip1_text_out[10]  =  plaintext[52];
assign ip1_text_out[11]  =  plaintext[44]; 
assign ip1_text_out[12]  =  plaintext[36]; 
assign ip1_text_out[13]  =  plaintext[28]; 
assign ip1_text_out[14]  =  plaintext[20]; 
assign ip1_text_out[15]  =  plaintext[12]; 
assign ip1_text_out[16]  =  plaintext[4]; 

assign ip1_text_out[17]  =  plaintext[62]; 
assign ip1_text_out[18]  =  plaintext[54]; 
assign ip1_text_out[19]  =  plaintext[46]; 
assign ip1_text_out[20]  =  plaintext[38]; 
assign ip1_text_out[21]  =  plaintext[30]; 
assign ip1_text_out[22]  =  plaintext[22]; 
assign ip1_text_out[23]  =  plaintext[14]; 
assign ip1_text_out[24]  =  plaintext[6]; 
assign ip1_text_out[25]  =  plaintext[64]; 
assign ip1_text_out[26]  =  plaintext[56]; 
assign ip1_text_out[27]  =  plaintext[48]; 
assign ip1_text_out[28]  =  plaintext[40]; 
assign ip1_text_out[29]  =  plaintext[32]; 
assign ip1_text_out[30]  =  plaintext[24]; 
assign ip1_text_out[31]  =  plaintext[16]; 
assign ip1_text_out[32]  =  plaintext[8]; 

assign ip1_text_out[33]  =  plaintext[57]; 
assign ip1_text_out[34]  =  plaintext[49]; 
assign ip1_text_out[35]  =  plaintext[41]; 
assign ip1_text_out[36]  =  plaintext[33]; 
assign ip1_text_out[37]  =  plaintext[25]; 
assign ip1_text_out[38]  =  plaintext[17]; 
assign ip1_text_out[39]  =  plaintext[9]; 
assign ip1_text_out[40]  =  plaintext[1]; 
assign ip1_text_out[41]  =  plaintext[59]; 
assign ip1_text_out[42]  =  plaintext[51]; 
assign ip1_text_out[43]  =  plaintext[43]; 
assign ip1_text_out[44]  =  plaintext[35]; 
assign ip1_text_out[45]  =  plaintext[27]; 
assign ip1_text_out[46]  =  plaintext[19]; 
assign ip1_text_out[47]  =  plaintext[11]; 
assign ip1_text_out[48]  =  plaintext[3]; 

assign ip1_text_out[49]  =  plaintext[61]; 
assign ip1_text_out[50]  =  plaintext[53]; 
assign ip1_text_out[51]  =  plaintext[45]; 
assign ip1_text_out[52]  =  plaintext[37]; 
assign ip1_text_out[53]  =  plaintext[29]; 
assign ip1_text_out[54]  =  plaintext[21]; 
assign ip1_text_out[55]  =  plaintext[13]; 
assign ip1_text_out[56]  =  plaintext[5]; 
assign ip1_text_out[57]  =  plaintext[63]; 
assign ip1_text_out[58]  =  plaintext[55]; 
assign ip1_text_out[59]  =  plaintext[47]; 
assign ip1_text_out[60]  =  plaintext[39]; 
assign ip1_text_out[61]  =  plaintext[31]; 
assign ip1_text_out[62]  =  plaintext[23]; 
assign ip1_text_out[63]  =  plaintext[15]; 
assign ip1_text_out[64]  =  plaintext[7]; 

endmodule
