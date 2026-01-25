VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL q(19:0)
        SIGNAL up
        SIGNAL ce
        SIGNAL clk
        SIGNAL clr
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL load
        SIGNAL XLXN_17
        SIGNAL XLXN_19
        SIGNAL XLXN_21
        SIGNAL XLXN_27
        SIGNAL hundredths(3:0)
        SIGNAL tenths(3:0)
        SIGNAL sec_lsb(3:0)
        SIGNAL sec_msb(3:0)
        SIGNAL minutes(3:0)
        SIGNAL hundredths(3)
        SIGNAL hundredths(2)
        SIGNAL hundredths(0)
        SIGNAL hundredths(1)
        SIGNAL tenths(3)
        SIGNAL tenths(2)
        SIGNAL tenths(1)
        SIGNAL tenths(0)
        SIGNAL sec_lsb(3)
        SIGNAL sec_lsb(2)
        SIGNAL sec_lsb(1)
        SIGNAL sec_lsb(0)
        SIGNAL sec_msb(2)
        SIGNAL sec_msb(1)
        SIGNAL sec_msb(0)
        SIGNAL sec_msb(3)
        SIGNAL minutes(3)
        SIGNAL minutes(2)
        SIGNAL minutes(1)
        SIGNAL minutes(0)
        SIGNAL tc_out0
        SIGNAL tc_out1
        SIGNAL tc_out2
        SIGNAL tc_out3
        SIGNAL tc_out4
        SIGNAL q(3)
        SIGNAL q(2)
        SIGNAL q(1)
        SIGNAL q(0)
        SIGNAL q(7)
        SIGNAL q(6)
        SIGNAL q(5)
        SIGNAL q(4)
        SIGNAL q(11)
        SIGNAL q(10)
        SIGNAL q(9)
        SIGNAL q(8)
        SIGNAL q(15)
        SIGNAL q(14)
        SIGNAL q(13)
        SIGNAL q(12)
        SIGNAL q(19)
        SIGNAL q(18)
        SIGNAL q(17)
        SIGNAL q(16)
        PORT Input q(19:0)
        PORT Input up
        PORT Input ce
        PORT Input clk
        PORT Input clr
        PORT Input load
        PORT Output hundredths(3:0)
        PORT Output tenths(3:0)
        PORT Output sec_lsb(3:0)
        PORT Output sec_msb(3:0)
        PORT Output minutes(3:0)
        BEGIN BLOCKDEF cd4rled
            TIMESTAMP 2026 1 23 22 12 15
            RECTANGLE N 64 -576 320 0 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -544 384 -544 
            LINE N 320 -448 384 -448 
            LINE N 320 -352 384 -352 
            LINE N 320 -256 384 -256 
            LINE N 320 -160 384 -160 
            LINE N 320 -64 384 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and5
            TIMESTAMP 2000 1 1 10 10 10
            ARC N 96 -240 192 -144 144 -144 144 -240 
            LINE N 144 -144 64 -144 
            LINE N 64 -240 144 -240 
            LINE N 64 -64 64 -320 
            LINE N 256 -192 192 -192 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF ch4rled
            TIMESTAMP 2026 1 23 22 17 19
            RECTANGLE N 64 -576 320 0 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -544 384 -544 
            LINE N 320 -448 384 -448 
            LINE N 320 -352 384 -352 
            LINE N 320 -256 384 -256 
            LINE N 320 -160 384 -160 
            LINE N 320 -64 384 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 cd4rled
            PIN D3 q(3)
            PIN D2 q(2)
            PIN D1 q(1)
            PIN D0 q(0)
            PIN R clr
            PIN L load
            PIN C clk
            PIN UP up
            PIN CE XLXN_2
            PIN Q3 hundredths(3)
            PIN Q2 hundredths(2)
            PIN Q0 hundredths(0)
            PIN Q1 hundredths(1)
            PIN CEO XLXN_17
            PIN TC tc_out0
        END BLOCK
        BEGIN BLOCK XLXI_3 cd4rled
            PIN D3 q(7)
            PIN D2 q(6)
            PIN D1 q(5)
            PIN D0 q(4)
            PIN R clr
            PIN L load
            PIN C clk
            PIN UP up
            PIN CE XLXN_17
            PIN Q3 tenths(3)
            PIN Q2 tenths(2)
            PIN Q0 tenths(0)
            PIN Q1 tenths(1)
            PIN CEO XLXN_21
            PIN TC tc_out1
        END BLOCK
        BEGIN BLOCK XLXI_4 cd4rled
            PIN D3 q(11)
            PIN D2 q(10)
            PIN D1 q(9)
            PIN D0 q(8)
            PIN R clr
            PIN L load
            PIN C clk
            PIN UP up
            PIN CE XLXN_21
            PIN Q3 sec_lsb(3)
            PIN Q2 sec_lsb(2)
            PIN Q0 sec_lsb(0)
            PIN Q1 sec_lsb(1)
            PIN CEO XLXN_19
            PIN TC tc_out2
        END BLOCK
        BEGIN BLOCK XLXI_5 cd4rled
            PIN D3 q(19)
            PIN D2 q(18)
            PIN D1 q(17)
            PIN D0 q(16)
            PIN R clr
            PIN L load
            PIN C clk
            PIN UP up
            PIN CE XLXN_27
            PIN Q3 minutes(3)
            PIN Q2 minutes(2)
            PIN Q0 minutes(0)
            PIN Q1 minutes(1)
            PIN CEO
            PIN TC tc_out4
        END BLOCK
        BEGIN BLOCK XLXI_12 ch4rled
            PIN D3 q(15)
            PIN D2 q(14)
            PIN D1 q(13)
            PIN D0 q(12)
            PIN R clr
            PIN L load
            PIN C clk
            PIN UP up
            PIN CE XLXN_19
            PIN Q3 sec_msb(3)
            PIN Q2 sec_msb(2)
            PIN Q0 sec_msb(0)
            PIN Q1 sec_msb(1)
            PIN CEO XLXN_27
            PIN TC tc_out3
        END BLOCK
        BEGIN BLOCK XLXI_10 and2b1
            PIN I0 XLXN_3
            PIN I1 ce
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_11 and5
            PIN I0 tc_out4
            PIN I1 tc_out3
            PIN I2 tc_out2
            PIN I3 tc_out1
            PIN I4 tc_out0
            PIN O XLXN_3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH q(19:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 q(19:0) R180 28
        IOMARKER 640 1008 load R180 28
        IOMARKER 640 1376 up R180 28
        BEGIN BRANCH ce
            WIRE 640 1744 1712 1744
            WIRE 1712 656 1712 1744
            WIRE 1712 656 1728 656
        END BRANCH
        IOMARKER 640 1744 ce R180 28
        BEGIN BRANCH clk
            WIRE 640 2112 2080 2112
            WIRE 2080 2112 2080 2576
            WIRE 2080 2576 2464 2576
            WIRE 2080 2576 2080 3248
            WIRE 2080 3248 2464 3248
            WIRE 2080 560 2464 560
            WIRE 2080 560 2080 1232
            WIRE 2080 1232 2464 1232
            WIRE 2080 1232 2080 1904
            WIRE 2080 1904 2080 2112
            WIRE 2080 1904 2464 1904
        END BRANCH
        IOMARKER 640 2112 clk R180 28
        BEGIN BRANCH clr
            WIRE 640 2480 2016 2480
            WIRE 2016 2480 2016 3120
            WIRE 2016 3120 2464 3120
            WIRE 2016 432 2464 432
            WIRE 2016 432 2016 1104
            WIRE 2016 1104 2464 1104
            WIRE 2016 1104 2016 1776
            WIRE 2016 1776 2464 1776
            WIRE 2016 1776 2016 2448
            WIRE 2016 2448 2016 2480
            WIRE 2016 2448 2464 2448
        END BRANCH
        IOMARKER 640 2480 clr R180 28
        BEGIN INSTANCE XLXI_2 2464 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 2464 1392 R0
        END INSTANCE
        BEGIN BRANCH XLXN_2
            WIRE 1984 688 2464 688
        END BRANCH
        INSTANCE XLXI_11 1408 912 R0
        BEGIN BRANCH XLXN_3
            WIRE 1664 720 1728 720
        END BRANCH
        BEGIN BRANCH load
            WIRE 640 1008 2048 1008
            WIRE 2048 1008 2048 1168
            WIRE 2048 1168 2464 1168
            WIRE 2048 1168 2048 1840
            WIRE 2048 1840 2464 1840
            WIRE 2048 1840 2048 2512
            WIRE 2048 2512 2464 2512
            WIRE 2048 2512 2048 3184
            WIRE 2048 3184 2464 3184
            WIRE 2048 496 2464 496
            WIRE 2048 496 2048 1008
        END BRANCH
        BEGIN BRANCH up
            WIRE 640 1376 2112 1376
            WIRE 2112 1376 2112 1968
            WIRE 2112 1968 2464 1968
            WIRE 2112 1968 2112 2640
            WIRE 2112 2640 2464 2640
            WIRE 2112 2640 2112 3312
            WIRE 2112 3312 2464 3312
            WIRE 2112 624 2464 624
            WIRE 2112 624 2112 1296
            WIRE 2112 1296 2112 1376
            WIRE 2112 1296 2464 1296
        END BRANCH
        INSTANCE XLXI_10 1728 784 R0
        BEGIN BRANCH XLXN_17
            WIRE 2144 736 2912 736
            WIRE 2144 736 2144 1360
            WIRE 2144 1360 2464 1360
            WIRE 2848 560 2912 560
            WIRE 2912 560 2912 736
        END BRANCH
        BEGIN INSTANCE XLXI_4 2464 2064 R0
        END INSTANCE
        BEGIN BRANCH XLXN_19
            WIRE 2144 2080 2912 2080
            WIRE 2144 2080 2144 2704
            WIRE 2144 2704 2464 2704
            WIRE 2848 1904 2912 1904
            WIRE 2912 1904 2912 2080
        END BRANCH
        BEGIN INSTANCE XLXI_12 2464 2736 R0
        END INSTANCE
        BEGIN BRANCH XLXN_21
            WIRE 2144 1408 2912 1408
            WIRE 2144 1408 2144 2032
            WIRE 2144 2032 2464 2032
            WIRE 2848 1232 2912 1232
            WIRE 2912 1232 2912 1408
        END BRANCH
        BEGIN INSTANCE XLXI_5 2464 3408 R0
        END INSTANCE
        BEGIN BRANCH XLXN_27
            WIRE 2144 2752 2912 2752
            WIRE 2144 2752 2144 3376
            WIRE 2144 3376 2464 3376
            WIRE 2848 2576 2912 2576
            WIRE 2912 2576 2912 2752
        END BRANCH
        BEGIN BRANCH hundredths(3:0)
            WIRE 4608 144 4608 176
            WIRE 4608 176 4608 272
            WIRE 4608 272 4608 368
            WIRE 4608 368 4608 464
            WIRE 4608 464 4608 576
            WIRE 4608 576 4608 608
            WIRE 4608 608 4608 640
            WIRE 4608 640 4608 736
            WIRE 4608 736 4608 832
            WIRE 4608 832 4608 912
            WIRE 4608 912 4608 928
            WIRE 4608 928 4608 944
            WIRE 4608 944 4608 1184
            WIRE 4608 1184 4608 1504
            WIRE 4608 1504 4768 1504
        END BRANCH
        BEGIN BRANCH tenths(3:0)
            WIRE 4528 816 4528 848
            WIRE 4528 848 4528 944
            WIRE 4528 944 4528 1040
            WIRE 4528 1040 4528 1136
            WIRE 4528 1136 4528 1280
            WIRE 4528 1280 4528 1952
            WIRE 4528 1952 4608 1952
            WIRE 4608 1952 4768 1952
        END BRANCH
        BEGIN BRANCH sec_lsb(3:0)
            WIRE 4448 1472 4448 1520
            WIRE 4448 1520 4448 1616
            WIRE 4448 1616 4448 1712
            WIRE 4448 1712 4448 1808
            WIRE 4448 1808 4448 1936
            WIRE 4448 1936 4448 2400
            WIRE 4448 2400 4608 2400
            WIRE 4608 2400 4768 2400
        END BRANCH
        BEGIN BRANCH minutes(3:0)
            WIRE 4288 2816 4288 2864
            WIRE 4288 2864 4288 2960
            WIRE 4288 2960 4288 3056
            WIRE 4288 3056 4288 3152
            WIRE 4288 3152 4288 3296
            WIRE 4288 3296 4608 3296
            WIRE 4608 3296 4768 3296
        END BRANCH
        IOMARKER 4768 1504 hundredths(3:0) R0 28
        IOMARKER 4768 1952 tenths(3:0) R0 28
        IOMARKER 4768 2400 sec_lsb(3:0) R0 28
        IOMARKER 4768 2848 sec_msb(3:0) R0 28
        IOMARKER 4768 3296 minutes(3:0) R0 28
        BUSTAP 4608 176 4512 176
        BEGIN BRANCH hundredths(3)
            WIRE 2848 176 3680 176
            WIRE 3680 176 4512 176
            BEGIN DISPLAY 3680 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4608 272 4512 272
        BEGIN BRANCH hundredths(2)
            WIRE 2848 272 3680 272
            WIRE 3680 272 4512 272
            BEGIN DISPLAY 3680 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4608 368 4512 368
        BEGIN BRANCH hundredths(0)
            WIRE 2848 368 3680 368
            WIRE 3680 368 4512 368
            BEGIN DISPLAY 3680 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4608 464 4512 464
        BEGIN BRANCH hundredths(1)
            WIRE 2848 464 3680 464
            WIRE 3680 464 4512 464
            BEGIN DISPLAY 3680 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4528 848 4432 848
        BEGIN BRANCH tenths(3)
            WIRE 2848 848 3632 848
            WIRE 3632 848 3632 848
            WIRE 3632 848 4432 848
            BEGIN DISPLAY 3640 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4528 944 4432 944
        BEGIN BRANCH tenths(2)
            WIRE 2848 944 3632 944
            WIRE 3632 944 3632 944
            WIRE 3632 944 4432 944
            BEGIN DISPLAY 3640 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4528 1136 4432 1136
        BEGIN BRANCH tenths(1)
            WIRE 2848 1136 3632 1136
            WIRE 3632 1136 3632 1136
            WIRE 3632 1136 4432 1136
            BEGIN DISPLAY 3640 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4528 1040 4432 1040
        BEGIN BRANCH tenths(0)
            WIRE 2848 1040 3632 1040
            WIRE 3632 1040 3632 1040
            WIRE 3632 1040 4432 1040
            BEGIN DISPLAY 3640 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4448 1520 4352 1520
        BEGIN BRANCH sec_lsb(3)
            WIRE 2848 1520 3600 1520
            WIRE 3600 1520 4352 1520
            BEGIN DISPLAY 3600 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4448 1616 4352 1616
        BEGIN BRANCH sec_lsb(2)
            WIRE 2848 1616 3600 1616
            WIRE 3600 1616 4352 1616
            BEGIN DISPLAY 3600 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4448 1808 4352 1808
        BEGIN BRANCH sec_lsb(1)
            WIRE 2848 1808 3600 1808
            WIRE 3600 1808 4352 1808
            BEGIN DISPLAY 3600 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4448 1712 4352 1712
        BEGIN BRANCH sec_lsb(0)
            WIRE 2848 1712 3600 1712
            WIRE 3600 1712 4352 1712
            BEGIN DISPLAY 3600 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4368 2288 4272 2288
        BEGIN BRANCH sec_msb(2)
            WIRE 2848 2288 3552 2288
            WIRE 3552 2288 3552 2288
            WIRE 3552 2288 4272 2288
            BEGIN DISPLAY 3560 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4368 2480 4272 2480
        BEGIN BRANCH sec_msb(1)
            WIRE 2848 2480 3552 2480
            WIRE 3552 2480 3552 2480
            WIRE 3552 2480 4272 2480
            BEGIN DISPLAY 3560 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4368 2384 4272 2384
        BEGIN BRANCH sec_msb(0)
            WIRE 2848 2384 3552 2384
            WIRE 3552 2384 3552 2384
            WIRE 3552 2384 4272 2384
            BEGIN DISPLAY 3560 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sec_msb(3:0)
            WIRE 4368 2112 4368 2176
            WIRE 4368 2176 4368 2192
            WIRE 4368 2192 4368 2288
            WIRE 4368 2288 4368 2384
            WIRE 4368 2384 4368 2480
            WIRE 4368 2480 4368 2624
            WIRE 4368 2624 4368 2848
            WIRE 4368 2848 4608 2848
            WIRE 4608 2848 4768 2848
        END BRANCH
        BUSTAP 4368 2192 4272 2192
        BEGIN BRANCH sec_msb(3)
            WIRE 2848 2192 3552 2192
            WIRE 3552 2192 3552 2192
            WIRE 3552 2192 4272 2192
            BEGIN DISPLAY 3560 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4288 2864 4192 2864
        BEGIN BRANCH minutes(3)
            WIRE 2848 2864 3520 2864
            WIRE 3520 2864 4192 2864
            BEGIN DISPLAY 3520 2864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4288 2960 4192 2960
        BEGIN BRANCH minutes(2)
            WIRE 2848 2960 3520 2960
            WIRE 3520 2960 4192 2960
            BEGIN DISPLAY 3520 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4288 3152 4192 3152
        BEGIN BRANCH minutes(1)
            WIRE 2848 3152 3520 3152
            WIRE 3520 3152 4192 3152
            BEGIN DISPLAY 3520 3152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4288 3056 4192 3056
        BEGIN BRANCH minutes(0)
            WIRE 2848 3056 3520 3056
            WIRE 3520 3056 4192 3056
            BEGIN DISPLAY 3520 3056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out0
            WIRE 2848 656 3008 656
            WIRE 3008 656 3104 656
            BEGIN DISPLAY 3008 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out1
            WIRE 2848 1328 3040 1328
            WIRE 3040 1328 3104 1328
            BEGIN DISPLAY 3040 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out2
            WIRE 2848 2000 3056 2000
            WIRE 3056 2000 3104 2000
            BEGIN DISPLAY 3056 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out3
            WIRE 2848 2672 3056 2672
            WIRE 3056 2672 3104 2672
            BEGIN DISPLAY 3056 2672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out4
            WIRE 2848 3344 3056 3344
            WIRE 3056 3344 3104 3344
            BEGIN DISPLAY 3056 3344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out0
            WIRE 1312 592 1344 592
            WIRE 1344 592 1408 592
            BEGIN DISPLAY 1344 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out1
            WIRE 1312 656 1344 656
            WIRE 1344 656 1408 656
            BEGIN DISPLAY 1344 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out2
            WIRE 1312 720 1328 720
            WIRE 1328 720 1408 720
            BEGIN DISPLAY 1328 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out3
            WIRE 1312 784 1328 784
            WIRE 1328 784 1408 784
            BEGIN DISPLAY 1328 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH tc_out4
            WIRE 1312 848 1344 848
            WIRE 1344 848 1408 848
            BEGIN DISPLAY 1344 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(3)
            WIRE 2368 176 2400 176
            WIRE 2400 176 2464 176
            BEGIN DISPLAY 2400 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(2)
            WIRE 2368 240 2400 240
            WIRE 2400 240 2464 240
            BEGIN DISPLAY 2400 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(1)
            WIRE 2368 304 2384 304
            WIRE 2384 304 2464 304
            BEGIN DISPLAY 2384 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(0)
            WIRE 2368 368 2400 368
            WIRE 2400 368 2464 368
            BEGIN DISPLAY 2400 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(7)
            WIRE 2368 848 2400 848
            WIRE 2400 848 2464 848
            BEGIN DISPLAY 2400 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(6)
            WIRE 2368 912 2400 912
            WIRE 2400 912 2464 912
            BEGIN DISPLAY 2400 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(5)
            WIRE 2368 976 2400 976
            WIRE 2400 976 2464 976
            BEGIN DISPLAY 2400 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(4)
            WIRE 2368 1040 2400 1040
            WIRE 2400 1040 2464 1040
            BEGIN DISPLAY 2400 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(11)
            WIRE 2368 1520 2400 1520
            WIRE 2400 1520 2464 1520
            BEGIN DISPLAY 2400 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(10)
            WIRE 2368 1584 2384 1584
            WIRE 2384 1584 2464 1584
            BEGIN DISPLAY 2384 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(9)
            WIRE 2368 1648 2400 1648
            WIRE 2400 1648 2464 1648
            BEGIN DISPLAY 2400 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(8)
            WIRE 2368 1712 2400 1712
            WIRE 2400 1712 2464 1712
            BEGIN DISPLAY 2400 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15)
            WIRE 2368 2192 2384 2192
            WIRE 2384 2192 2464 2192
            BEGIN DISPLAY 2384 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(14)
            WIRE 2368 2256 2400 2256
            WIRE 2400 2256 2464 2256
            BEGIN DISPLAY 2400 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(13)
            WIRE 2368 2320 2400 2320
            WIRE 2400 2320 2464 2320
            BEGIN DISPLAY 2400 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(12)
            WIRE 2368 2384 2400 2384
            WIRE 2400 2384 2464 2384
            BEGIN DISPLAY 2400 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(19)
            WIRE 2368 2864 2384 2864
            WIRE 2384 2864 2464 2864
            BEGIN DISPLAY 2384 2864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(18)
            WIRE 2368 2928 2400 2928
            WIRE 2400 2928 2464 2928
            BEGIN DISPLAY 2400 2928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(17)
            WIRE 2368 2992 2400 2992
            WIRE 2400 2992 2464 2992
            BEGIN DISPLAY 2400 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(16)
            WIRE 2368 3056 2400 3056
            WIRE 2400 3056 2464 3056
            BEGIN DISPLAY 2400 3056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
