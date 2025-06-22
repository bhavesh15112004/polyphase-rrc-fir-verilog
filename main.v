// =============================================================================
// Project     : RRC-based QAM Transmitter with Polyphase FIR Filtering
// Author      : Bhavesh Mali
// Supervisor  : Rajshekhar Bhat
// Description : This Verilog module implements a baseband QAM symbol generator
//               with Root Raised Cosine (RRC) pulse shaping using a polyphase
//               FIR filter. Symbol timing is adaptively recovered from
//               edge signals, and the I/Q outputs are generated in real-time.
// =============================================================================


module rrc_fir #(
    parameter SPS = 4,                     // Samples Per Symbol
    parameter SYMBOL_BUF_SIZE = 7,         // Symbol buffer size for FIR tap delay
    parameter NUM_TAPS = 25,               // Number of FIR filter taps
    parameter desired_qam = 16,             // Target QAM order
    parameter available_qam = 256,         // Maximum available QAM resolution
    parameter bits_per_symbol = 4          // Number of bits per symbol
)(
    input  wire clk,                       // System clock
    input  wire serial_in_bit,             // Incoming serial data bit
    input  wire symbol_edge_detect,        // Pulse used for symbol timing (replaces sample_bit)
    input  wire rst,                       // Reset
    input in_valid,
    output reg  signed [15:0] real_out,    // Real component of filtered output
    output reg  signed [15:0] imag_out,     // Imaginary component of filtered output
    output reg out_valid
);


    // Internal buffers
    reg signed [7:0] symbol_buffer_real [0:SYMBOL_BUF_SIZE-1];
    reg signed [7:0] symbol_buffer_imag [0:SYMBOL_BUF_SIZE-1];
    reg signed [7:0] coeffs [0:NUM_TAPS-1];

    reg [bits_per_symbol-1:0] bit_accumulator;
    reg previous_symbol_edge;

    // Counters
    reg [15:0] bit_index;
    reg [15:0] symbol_period_counter;
    reg [15:0] derived_symbol_period;
    reg [15:0] interpolation_index;
    reg [15:0] filter_clock_counter;

    reg [7:0] qam_index;
    reg [7:0] qam_index_registered;

    reg signed [15:0] accumulator1;
    reg signed [15:0]accumulator2;

    reg filtering_active;
    reg [3:0] stabilization_counter;

    wire signed [7:0] cos_lookup;
    wire signed [7:0] sin_lookup;

    // QAM symbol ROM interface
    sine_cos_rom qam_lut (
        .index(qam_index_registered),
        .cos_val(cos_lookup),
        .sin_val(sin_lookup)
    );

    integer i, k;
    integer tap_idx;

    // Coefficient Initialization
    initial begin
coeffs[ 0] = -8'd11;
coeffs[ 1] = -8'd15;
coeffs[ 2] = -8'd18;
coeffs[ 3] = -8'd18;
coeffs[ 4] = -8'd14;
coeffs[ 5] = -8'd 6;
coeffs[ 6] =  8'd 6;
coeffs[ 7] =  8'd22;
coeffs[ 8] =  8'd39;
coeffs[ 9] =  8'd56;
coeffs[10] =  8'd73;
coeffs[11] =  8'd86;
coeffs[12] =  8'd94;
coeffs[13] =  8'd97;
coeffs[14] =  8'd94;
coeffs[15] =  8'd86;
coeffs[16] =  8'd73;
coeffs[17] =  8'd56;
coeffs[18] =  8'd39;
coeffs[19] =  8'd22;
coeffs[20] =  8'd 6;
coeffs[21] = -8'd 6;
coeffs[22] = -8'd14;
coeffs[23] = -8'd18;
coeffs[24] = -8'd18;
coeffs[25] = -8'd15;
    end

    

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            real_out = 0;
            imag_out = 0;
            bit_index = 0;
            previous_symbol_edge = 0;
            qam_index = 0;
            qam_index_registered = 0;
            derived_symbol_period = 0;
            symbol_period_counter = 0;
            filtering_active = 0;
            interpolation_index = 0;
            filter_clock_counter = 0;
            stabilization_counter = 0;

            for (i = 0; i < SYMBOL_BUF_SIZE; i = i + 1) begin
                symbol_buffer_real[i] = 0;
                symbol_buffer_imag[i] = 0;
            end
        end else begin      
            
            qam_index_registered = qam_index;

            if (symbol_edge_detect == previous_symbol_edge) begin
                symbol_period_counter = symbol_period_counter + 1;
            end else begin
                if (stabilization_counter < 2) begin   
                    derived_symbol_period = ((symbol_period_counter+1) * bits_per_symbol) / SPS;
                   
                    symbol_period_counter = 0;
                    stabilization_counter = stabilization_counter + 1;
                    filter_clock_counter = 0;
                    out_valid=0;
                end
                else begin
                    out_valid=1;
                end

                filtering_active = 1;

                if(in_valid==1) begin

                    bit_accumulator[bit_index] = serial_in_bit;
                 
                    bit_index = bit_index + 1;

                    if (bit_index == bits_per_symbol  ) begin
                        bit_index = 0;
                        interpolation_index = 0;
                      
                        qam_index = bit_accumulator * (available_qam / desired_qam);

                        for (i = SYMBOL_BUF_SIZE - 1; i > 0; i = i - 1) begin
                            symbol_buffer_real[i] = symbol_buffer_real[i - 1];
                            symbol_buffer_imag[i] = symbol_buffer_imag[i - 1];
                        end
                       
                        symbol_buffer_real[0] = cos_lookup;
                        symbol_buffer_imag[0] = sin_lookup;
                    end
                end
                

            end

            if (filtering_active && out_valid==1 &&in_valid==1 ) begin
                filter_clock_counter = filter_clock_counter + 1;
                if (filter_clock_counter == (derived_symbol_period)) begin
                   
                    filter_clock_counter = 0;

                    accumulator1 = 0;
                    for (k = 0; k < SYMBOL_BUF_SIZE; k = k + 1) begin
                        tap_idx = k * SPS + interpolation_index;
                       
                        if (tap_idx < NUM_TAPS)
                            accumulator1 = accumulator1 + symbol_buffer_real[k] * coeffs[tap_idx];
                    end
                    real_out = accumulator1;

                    accumulator2 = 0;
                    for (k = 0; k < SYMBOL_BUF_SIZE; k = k + 1) begin
                        tap_idx = k * SPS + interpolation_index;
                        if (tap_idx < NUM_TAPS)
                            accumulator2 = accumulator2 + symbol_buffer_imag[k] * coeffs[tap_idx];
                    end
                    imag_out = accumulator2;
                    interpolation_index = interpolation_index + 1;
                end
                
            end
            
            previous_symbol_edge = symbol_edge_detect;
        end
    end

endmodule




//-----------------------------------------------------------------------------------------------------
