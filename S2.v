module S2(
    input [1:6] s_in,
    output reg [1:4] s_out
);

wire [1:2] row_no;
wire [1:4] col_no;

assign row_no={s_in[1], s_in[6]};
assign col_no=s_in[2:5];

always@(*)
begin
case(row_no)
    2'b00 : begin
            case(col_no)
                4'd0:   s_out = 4'd15;
                4'd1:   s_out = 4'd1;
                4'd2:   s_out = 4'd8;
                4'd3:   s_out = 4'd14;
                4'd4:   s_out = 4'd6;
                4'd5:   s_out = 4'd11;
                4'd6:   s_out = 4'd3;
                4'd7:   s_out = 4'd4;
                4'd8:   s_out = 4'd9;
                4'd9:   s_out = 4'd7;
                4'd10:  s_out = 4'd2;
                4'd11:  s_out = 4'd13;
                4'd12:  s_out = 4'd12;
                4'd13:  s_out = 4'd0;
                4'd14:  s_out = 4'd5;
                4'd15:  s_out = 4'd10;
            endcase
            end
            
    2'b01 : begin
            case(col_no)
                4'd0:   s_out = 4'd3;
                4'd1:   s_out = 4'd13;
                4'd2:   s_out = 4'd4;
                4'd3:   s_out = 4'd7;
                4'd4:   s_out = 4'd15;
                4'd5:   s_out = 4'd2;
                4'd6:   s_out = 4'd8;
                4'd7:   s_out = 4'd14;
                4'd8:   s_out = 4'd12;
                4'd9:   s_out = 4'd0;
                4'd10:  s_out = 4'd1;
                4'd11:  s_out = 4'd10;
                4'd12:  s_out = 4'd6;
                4'd13:  s_out = 4'd9;
                4'd14:  s_out = 4'd11;
                4'd15:  s_out = 4'd5;
            endcase
            end
            
     2'b10 : begin
            case(col_no)
                4'd0:   s_out = 4'd0;
                4'd1:   s_out = 4'd14;
                4'd2:   s_out = 4'd7;
                4'd3:   s_out = 4'd11;
                4'd4:   s_out = 4'd10;
                4'd5:   s_out = 4'd4;
                4'd6:   s_out = 4'd13;
                4'd7:   s_out = 4'd1;
                4'd8:   s_out = 4'd5;
                4'd9:   s_out = 4'd8;
                4'd10:  s_out = 4'd12;
                4'd11:  s_out = 4'd6;
                4'd12:  s_out = 4'd9;
                4'd13:  s_out = 4'd3;
                4'd14:  s_out = 4'd2;
                4'd15:  s_out = 4'd15;
            endcase
            end
            
    2'b11 : begin
            case(col_no)
                4'd0:   s_out = 4'd13;
                4'd1:   s_out = 4'd8;
                4'd2:   s_out = 4'd10;
                4'd3:   s_out = 4'd1;
                4'd4:   s_out = 4'd3;
                4'd5:   s_out = 4'd15;
                4'd6:   s_out = 4'd4;
                4'd7:   s_out = 4'd2;
                4'd8:   s_out = 4'd11;
                4'd9:   s_out = 4'd6;
                4'd10:  s_out = 4'd7;
                4'd11:  s_out = 4'd12;
                4'd12:  s_out = 4'd0;
                4'd13:  s_out = 4'd5;
                4'd14:  s_out = 4'd14;
                4'd15:  s_out = 4'd9;
            endcase
            end
endcase
end
endmodule