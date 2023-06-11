module Counter (
    input i_Clk,
    input i_Switch_1,
    output o_Segment2_A,
    output o_Segment2_B,
    output o_Segment2_C,
    output o_Segment2_D,
    output o_Segment2_E,
    output o_Segment2_F,
    output o_Segment2_G);
   
    
    
    reg [3:0] r_Count = 4'b0000;
    reg r_Switch_1 = 1'b0;
    wire w_Switch_1;
    
    wire w_Segment2_A;
    wire w_Segment2_B;
    wire w_Segment2_C;
    wire w_Segment2_D;
    wire w_Segment2_E;
    wire w_Segment2_F;
    wire w_Segment2_G;
    
    DebounceSwitch Instance
    (.i_Clk(i_Clk),
     .i_Switch(i_Switch_1),
     .o_Switch(w_Switch_1));
    
    always @ (posedge i_Clk)
    begin
        r_Switch_1 <= w_Switch_1;
        
        if (w_Switch_1 == 1'b1 && r_Switch_1 == 1'b0)
            begin
                if (r_Count == 9)
                    r_Count <= 0;
                else
                    r_Count <= r_Count + 1;
            end
    end
        
    BinaryTo7Seg SegInst
    (.i_Clk(i_Clk),
     .i_Binary_Num(r_Count),
     .o_Segment_A(w_Segment2_A),
     .o_Segment_B(w_Segment2_B),
     .o_Segment_C(w_Segment2_C),
     .o_Segment_D(w_Segment2_D),
     .o_Segment_E(w_Segment2_E),
     .o_Segment_F(w_Segment2_F),
     .o_Segment_G(w_Segment2_G));
     
     assign o_Segment2_A = ~w_Segment2_A;
     assign o_Segment2_B = ~w_Segment2_B;
     assign o_Segment2_C = ~w_Segment2_C;
     assign o_Segment2_D = ~w_Segment2_D;
     assign o_Segment2_E = ~w_Segment2_E;
     assign o_Segment2_F = ~w_Segment2_F;
     assign o_Segment2_G = ~w_Segment2_G;
    
endmodule