
//using assign
/*module encoder_8bit (
    output [2:0]y,
    input [7:0]a

);
assign y2 = a[7] | a[6] | a[5] | a[4];
assign y1 = a[7] | a[6] | a[3] | a[2];
assign y0 = a[7] | a[5] | a[3] | a[1];


    
endmodule*/

//using case
module encoder_8bit (
    input [7:0]a,
    output reg [2:0]y
);

always @(*) begin
    case (a)
      8'b00000001  : y = 3'b000;
      8'b00000010  : y = 3'b001;
      8'b00000100  : y = 3'b010;
      8'b00001000  : y = 3'b011;
      8'b00010000  : y = 3'b100;
      8'b00100000  : y = 3'b101;
      8'b01000000  : y = 3'b110;
      8'b10000000  : y = 3'b111;
        default:     y = 3'bxxx;
    endcase
        
    
    
end
endmodule
