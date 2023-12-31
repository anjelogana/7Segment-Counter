module BinaryTo7Seg
   (input i_Clk,
    input [3:0] i_Binary_Num,
    output o_Segment_A,
    output o_Segment_B,
    output o_Segment_C,
    output o_Segment_D,
    output o_Segment_E,
    output o_Segment_F,
    output o_Segment_G);
    
    reg [6:0] r_HexEncode = 7'h00;
    
    always @ (posedge i_Clk)
        begin
            case (i_Binary_Num)
                4'b0000 : r_HexEncode <= 7'h7E;
                4'b0001 : r_HexEncode <= 7'h30;
                4'b0010 : r_HexEncode <= 7'h6D;
                4'b0011 : r_HexEncode <= 7'h79;
                4'b0100 : r_HexEncode <= 7'h33;
                4'b0101 : r_HexEncode <= 7'h5B;
                4'b0110 : r_HexEncode <= 7'h5F;
                4'b0111 : r_HexEncode <= 7'h70;
                4'b1000 : r_HexEncode <= 7'h7F;
                4'b1001 : r_HexEncode <= 7'h7B;   
            endcase
        end
        
    assign o_Segment_A = r_HexEncode[6];
    assign o_Segment_B = r_HexEncode[5];
    assign o_Segment_C = r_HexEncode[4];
    assign o_Segment_D = r_HexEncode[3];
    assign o_Segment_E = r_HexEncode[2];
    assign o_Segment_F = r_HexEncode[1];
    assign o_Segment_G = r_HexEncode[0];
    
endmodule
    
    
    
   
   