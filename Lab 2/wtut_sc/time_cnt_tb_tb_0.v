////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : ISE
//  /   /         Filename : time_cnt_tb.tfw
// /___/   /\     Timestamp : Fri Jan 23 22:29:14 2026
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: time_cnt_tb_tb_0
//Device: Xilinx
//
`timescale 1ns/1ps

module time_cnt_tb_tb_0;
    reg ce = 1'b0;
    reg clk = 1'b0;
    reg clr = 1'b0;
    reg load = 1'b0;
    reg [19:0] q = 20'b00000000000000000000;
    reg up = 1'b0;
    wire [3:0] hundredths;
    wire [3:0] minutes;
    wire [3:0] sec_lsb;
    wire [3:0] sec_msb;
    wire [3:0] tenths;

    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for clk
    begin
        #OFFSET;
        forever
        begin
            clk = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    time_cnt UUT (
        .ce(ce),
        .clk(clk),
        .clr(clr),
        .load(load),
        .q(q),
        .up(up),
        .hundredths(hundredths),
        .minutes(minutes),
        .sec_lsb(sec_lsb),
        .sec_msb(sec_msb),
        .tenths(tenths));

    initial begin
        // -------------  Current Time:  105ns
        #105;
        ce = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  145ns
        #40;
        clr = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  225ns
        #80;
        clr = 1'b0;
        // -------------------------------------
    end

endmodule

