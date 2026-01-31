VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL XLXN_6
        SIGNAL XLXN_4
        SIGNAL XLXN_67
        SIGNAL XLXN_5
        SIGNAL fifowrite
        SIGNAL XLXN_70
        SIGNAL XLXN_12
        SIGNAL XLXN_72
        SIGNAL clk
        SIGNAL raddr(7:0)
        SIGNAL XLXN_75(7:0)
        SIGNAL drop_pkt
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL fiforead
        SIGNAL XLXN_33
        SIGNAL XLXN_35(7:0)
        SIGNAL XLXN_82(7:0)
        SIGNAL XLXN_83
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL valid_data
        SIGNAL XLXN_87
        SIGNAL in_fifo0(71:0)
        SIGNAL waddr(7:0)
        SIGNAL XLXN_92(7:0)
        SIGNAL rst
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_96(71:0)
        SIGNAL XLXN_62
        SIGNAL out_fifo(71:0)
        PORT Input firstword
        PORT Input lastword
        PORT Input fifowrite
        PORT Input clk
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Output valid_data
        PORT Input rst
        PORT Input in_fifo(71:0)
        PORT Output out_fifo(71:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
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
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 29 6 17 16
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF dual_ram_9B
            TIMESTAMP 2026 1 31 1 28 9
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C clk
            PIN CE XLXN_12
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_35(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 XLXN_5
            PIN I1 XLXN_4
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_4 and2b1
            PIN I0 XLXN_37
            PIN I1 XLXN_6
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_35(7:0)
            PIN EQ XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_11 and3b2
            PIN I0 XLXN_28
            PIN I1 XLXN_27
            PIN I2 fiforead
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_12 cb8ce
            PIN C clk
            PIN CE XLXN_33
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_33
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_14 cb8cle
            PIN C clk
            PIN CE XLXN_38
            PIN CLR rst
            PIN D(7:0) XLXN_35(7:0)
            PIN L XLXN_37
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_15 reg9B
            PIN clk clk
            PIN clr rst
            PIN d(71:0) in_fifo(71:0)
            PIN ce XLXN_62
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 vcc
            PIN P XLXN_62
        END BLOCK
        BEGIN BLOCK XLXI_34 dual_ram_9B
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea XLXN_38
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 496 704 R0
        BEGIN BRANCH firstword
            WIRE 416 448 496 448
        END BRANCH
        INSTANCE XLXI_2 496 1104 R0
        BEGIN BRANCH lastword
            WIRE 416 848 496 848
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1264 704 1376 704
        END BRANCH
        INSTANCE XLXI_5 496 1504 R0
        INSTANCE XLXI_3 1008 800 R0
        BEGIN BRANCH XLXN_4
            WIRE 880 448 896 448
            WIRE 896 448 896 672
            WIRE 896 672 1008 672
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 880 848 896 848
            WIRE 896 736 1008 736
            WIRE 896 736 896 848
        END BRANCH
        INSTANCE XLXI_4 1376 832 R0
        INSTANCE XLXI_7 1376 736 R0
        BEGIN BRANCH fifowrite
            WIRE 1344 480 1376 480
        END BRANCH
        INSTANCE XLXI_8 1056 1728 R0
        BEGIN BRANCH XLXN_12
            WIRE 400 1104 400 1312
            WIRE 400 1312 496 1312
            WIRE 400 1104 1712 1104
            WIRE 1632 736 1712 736
            WIRE 1712 736 1712 1104
        END BRANCH
        BEGIN BRANCH clk
            WIRE 416 2256 464 2256
            WIRE 464 2256 464 2336
            WIRE 464 2336 496 2336
            WIRE 464 576 464 656
            WIRE 464 656 464 976
            WIRE 464 976 464 1376
            WIRE 464 1376 464 2256
            WIRE 464 1376 496 1376
            WIRE 464 976 496 976
            WIRE 464 656 928 656
            WIRE 464 576 496 576
            WIRE 928 608 928 656
            WIRE 928 608 1376 608
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 1040 1600 1056 1600
            WIRE 1040 1600 1040 1728
            WIRE 1040 1728 1040 1888
            WIRE 1040 1888 1056 1888
            WIRE 1040 1728 2608 1728
            WIRE 2480 1440 2528 1440
            WIRE 2528 1440 2608 1440
            WIRE 2608 1440 2608 1472
            WIRE 2608 1472 2736 1472
            WIRE 2608 1472 2608 1728
            BEGIN DISPLAY 2528 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1056 2208 R0
        INSTANCE XLXI_6 496 2464 R0
        BEGIN BRANCH drop_pkt
            WIRE 416 2208 496 2208
        END BRANCH
        INSTANCE XLXI_11 1632 1632 R0
        BEGIN BRANCH XLXN_27
            WIRE 1440 1504 1632 1504
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1440 1984 1536 1984
            WIRE 1536 1568 1536 1984
            WIRE 1536 1568 1632 1568
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1568 1312 1632 1312
            WIRE 1632 1312 1632 1440
        END BRANCH
        INSTANCE XLXI_12 2096 1696 R0
        INSTANCE XLXI_13 2096 2144 R0
        BEGIN BRANCH XLXN_33
            WIRE 1888 1504 1904 1504
            WIRE 1904 1504 1904 1888
            WIRE 1904 1888 2096 1888
            WIRE 1904 1504 2096 1504
        END BRANCH
        INSTANCE XLXI_14 2096 1232 R0
        BEGIN BRANCH XLXN_35(7:0)
            WIRE 880 1248 928 1248
            WIRE 928 1248 1760 1248
            WIRE 928 1248 928 2080
            WIRE 928 2080 1056 2080
            WIRE 1760 848 2096 848
            WIRE 1760 848 1760 1248
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 880 2208 2048 2208
            WIRE 1344 768 1376 768
            WIRE 1344 768 1344 976
            WIRE 1344 976 2048 976
            WIRE 2048 976 2096 976
            WIRE 2048 976 2048 2208
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1760 480 2016 480
            WIRE 2016 480 2016 1040
            WIRE 2016 1040 2096 1040
            WIRE 2016 1040 2016 1312
            WIRE 2016 1312 2736 1312
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2480 1888 2576 1888
        END BRANCH
        BEGIN INSTANCE XLXI_15 2176 592 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 2064 368 2176 368
            WIRE 2064 368 2064 1104
            WIRE 2064 1104 2096 1104
            WIRE 2064 1104 2064 1568
            WIRE 2064 1568 2096 1568
            WIRE 2064 1568 2064 1696
            WIRE 2064 1696 2064 2016
            WIRE 2064 2016 2096 2016
            WIRE 2064 1696 2368 1696
            WIRE 2368 1696 2704 1696
            WIRE 2704 1440 2736 1440
            WIRE 2704 1440 2704 1664
            WIRE 2704 1664 2704 1696
            WIRE 2704 1664 2736 1664
            BEGIN DISPLAY 2368 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2560 368 2592 368
            WIRE 2592 368 2640 368
            WIRE 2640 368 2640 1280
            WIRE 2640 1280 2736 1280
            BEGIN DISPLAY 2592 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 432 1120 432 1248
            WIRE 432 1248 496 1248
            WIRE 432 1120 944 1120
            WIRE 944 1120 944 1408
            WIRE 944 1408 1056 1408
            WIRE 944 240 944 1120
            WIRE 944 240 2672 240
            WIRE 2672 240 2672 848
            WIRE 2672 848 2672 1248
            WIRE 2672 1248 2736 1248
            WIRE 2480 848 2528 848
            WIRE 2528 848 2672 848
            BEGIN DISPLAY 2528 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 416 1472 496 1472
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2080 432 2080 1200
            WIRE 2080 1200 2096 1200
            WIRE 2080 1200 2080 1664
            WIRE 2080 1664 2096 1664
            WIRE 2080 1664 2080 2112
            WIRE 2080 2112 2096 2112
            WIRE 2080 432 2096 432
            WIRE 2096 432 2176 432
            BEGIN DISPLAY 2096 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1920 624 2160 624
            WIRE 2160 496 2176 496
            WIRE 2160 496 2160 624
        END BRANCH
        BEGIN BRANCH XLXN_62
            WIRE 2144 320 2144 560
            WIRE 2144 560 2176 560
        END BRANCH
        INSTANCE XLXI_16 2080 320 R0
        IOMARKER 416 448 firstword R180 28
        IOMARKER 416 848 lastword R180 28
        IOMARKER 1344 480 fifowrite R180 28
        IOMARKER 416 2256 clk R180 28
        IOMARKER 416 2208 drop_pkt R180 28
        IOMARKER 1568 1312 fiforead R180 28
        IOMARKER 2576 1888 valid_data R0 28
        IOMARKER 416 1472 rst R180 28
        IOMARKER 1920 624 in_fifo(71:0) R180 28
        BEGIN INSTANCE XLXI_34 2736 1200 R0
        END INSTANCE
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3024 1472 3104 1472
        END BRANCH
        IOMARKER 3104 1472 out_fifo(71:0) R0 28
    END SHEET
END SCHEMATIC
