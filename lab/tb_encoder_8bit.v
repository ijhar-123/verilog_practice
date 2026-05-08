`timescale 1ns/1ps

module tb_encoder_8bit;

reg [7:0] a;
wire [2:0] y;

encoder_8bit dut(
    .a(a),
    .y(y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0,tb_encoder_8bit);

    a = 8'b00000001; #10;
    a = 8'b00000010; #10;
    a = 8'b00000100; #10;
    a = 8'b00001000; #10;
    a = 8'b00010000; #10;
    a = 8'b00100000; #10;
    a = 8'b01000000; #10;
    a = 8'b10000000; #10;

    $finish;
end

endmodule
