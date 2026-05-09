`timescale 1ns/1ps

module tb_mux8to1_case;

reg [7:0] in;
reg [2:0] sel;
wire out;


mux8to1_case uut (
    .in(in),
    .sel(sel),
    .out(out)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux8to1_case);

    in = 8'b10101010;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

initial begin
    $monitor("time=%0t sel=%b y=%b", $time, sel, out);
end

endmodule