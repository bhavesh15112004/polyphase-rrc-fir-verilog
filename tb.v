module tb;

    reg clk;
    reg serial_in_bit;
    reg symbol_edge_detect;
    reg rst;
    reg in_valid;
    wire signed [15:0] real_out;
    wire signed [15:0] imag_out;
    wire out_valid;

    // DUT instantiation
    rrc_fir r_f (
        .clk(clk),
        .serial_in_bit(serial_in_bit),
        .symbol_edge_detect(symbol_edge_detect),
        .rst(rst),
        .in_valid(in_valid),
        .real_out(real_out),
        .imag_out(imag_out),
        .out_valid(out_valid)
    );

    // Clock generation
    always #1 clk = ~clk;

    integer i;

    initial begin
        clk = 0;
        rst = 1;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 0;

        // Apply reset
        #10;
        rst = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 0;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 0;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 0;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        #40;
        serial_in_bit = 0;
        symbol_edge_detect = 0;
        in_valid = 1;

        #40;
        serial_in_bit = 1;
        symbol_edge_detect = 1;
        in_valid = 1;

        $finish;
    end
endmodule
