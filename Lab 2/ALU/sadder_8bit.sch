VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(7:0)
        SIGNAL XLXN_2(7:0)
        SIGNAL XLXN_3(7:0)
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL Cin
        SIGNAL CLK
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        SIGNAL Cout
        SIGNAL grnd
        SIGNAL vdd
        PORT Input Cin
        PORT Input CLK
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        PORT Output Cout
        BEGIN BLOCKDEF adder_8bit
            TIMESTAMP 2026 1 24 19 42 10
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder_8bit
            PIN Cin XLXN_5
            PIN A(7:0) XLXN_2(7:0)
            PIN B(7:0) XLXN_1(7:0)
            PIN S(7:0) XLXN_3(7:0)
            PIN Cout XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C CLK
            PIN CE vdd
            PIN CLR grnd
            PIN D(7:0) A(7:0)
            PIN Q(7:0) XLXN_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 vcc
            PIN P vdd
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C CLK
            PIN CE vdd
            PIN CLR grnd
            PIN D(7:0) B(7:0)
            PIN Q(7:0) XLXN_1(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C CLK
            PIN CE vdd
            PIN CLR grnd
            PIN D(7:0) XLXN_3(7:0)
            PIN Q(7:0) S(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C CLK
            PIN D XLXN_4
            PIN Q Cout
        END BLOCK
        BEGIN BLOCK XLXI_9 gnd
            PIN G grnd
        END BLOCK
        BEGIN BLOCK XLXI_10 fd
            PIN C CLK
            PIN D Cin
            PIN Q XLXN_5
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1168 1216 R0
        END INSTANCE
        INSTANCE XLXI_2 560 1168 R0
        INSTANCE XLXI_6 1728 1168 R0
        INSTANCE XLXI_7 1728 1536 R0
        BEGIN BRANCH XLXN_1(7:0)
            WIRE 944 1264 1056 1264
            WIRE 1056 1184 1056 1264
            WIRE 1056 1184 1168 1184
        END BRANCH
        BEGIN BRANCH XLXN_2(7:0)
            WIRE 944 912 1056 912
            WIRE 1056 912 1056 1120
            WIRE 1056 1120 1168 1120
        END BRANCH
        BEGIN BRANCH XLXN_3(7:0)
            WIRE 1552 992 1632 992
            WIRE 1632 912 1632 992
            WIRE 1632 912 1728 912
        END BRANCH
        INSTANCE XLXI_5 560 1520 R0
        BEGIN BRANCH XLXN_4
            WIRE 1552 1184 1632 1184
            WIRE 1632 1184 1632 1280
            WIRE 1632 1280 1728 1280
        END BRANCH
        INSTANCE XLXI_4 1168 1344 R0
        INSTANCE XLXI_10 560 832 R0
        BEGIN BRANCH XLXN_5
            WIRE 944 576 1072 576
            WIRE 1072 576 1072 1056
            WIRE 1072 1056 1168 1056
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 480 576 560 576
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 480 704 560 704
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 480 912 560 912
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 480 976 512 976
            WIRE 512 976 560 976
            BEGIN DISPLAY 512 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 480 1040 512 1040
            WIRE 512 1040 560 1040
            BEGIN DISPLAY 512 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 480 1136 512 1136
            WIRE 512 1136 560 1136
            BEGIN DISPLAY 512 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 480 1264 560 1264
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 480 1328 512 1328
            WIRE 512 1328 560 1328
            BEGIN DISPLAY 512 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 480 1392 512 1392
            WIRE 512 1392 560 1392
            BEGIN DISPLAY 512 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 480 1488 512 1488
            WIRE 512 1488 560 1488
            BEGIN DISPLAY 512 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1648 976 1680 976
            WIRE 1680 976 1728 976
            BEGIN DISPLAY 1680 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1648 1040 1680 1040
            WIRE 1680 1040 1728 1040
            BEGIN DISPLAY 1680 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH grnd
            WIRE 1648 1136 1712 1136
            WIRE 1712 1136 1728 1136
            BEGIN DISPLAY 1712 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1648 1408 1696 1408
            WIRE 1696 1408 1728 1408
            BEGIN DISPLAY 1696 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 2112 912 2192 912
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2112 1280 2192 1280
        END BRANCH
        IOMARKER 480 576 Cin R180 28
        IOMARKER 480 704 CLK R180 28
        IOMARKER 480 912 A(7:0) R180 28
        IOMARKER 480 1264 B(7:0) R180 28
        IOMARKER 2192 912 S(7:0) R0 28
        IOMARKER 2192 1280 Cout R0 28
        INSTANCE XLXI_9 1296 1488 R0
        BEGIN BRANCH grnd
            WIRE 1360 1280 1360 1312
            WIRE 1360 1312 1360 1360
            BEGIN DISPLAY 1360 1312 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH vdd
            WIRE 1232 1344 1232 1376
            WIRE 1232 1376 1232 1424
            BEGIN DISPLAY 1232 1376 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
