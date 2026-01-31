VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL pipe1(71:0)
        SIGNAL ce
        SIGNAL pipe0(71:0)
        SIGNAL hwregA(63:0)
        SIGNAL XLXN_8(111:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_12
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL match
        SIGNAL match_en
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL mrst
        PORT Input clk
        PORT Input pipe1(71:0)
        PORT Input ce
        PORT Input hwregA(63:0)
        PORT Output match
        PORT Input match_en
        PORT Input mrst
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 29 1 57 48
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 31 1 15 39
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
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
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_8(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 reg9B
            PIN clk clk
            PIN clr XLXN_15
            PIN d(71:0) pipe1(71:0)
            PIN ce ce
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_12
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C clk
            PIN CE XLXN_14
            PIN CLR XLXN_15
            PIN D XLXN_14
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_8 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_12
            PIN datain(111:0) XLXN_8(111:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 640 624 R0
        END INSTANCE
        BEGIN BRANCH pipe1(71:0)
            WIRE 560 528 640 528
        END BRANCH
        BEGIN BRANCH ce
            WIRE 560 592 640 592
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1024 400 1104 400
            BEGIN DISPLAY 1104 400 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 640 240 800 240
        END BRANCH
        IOMARKER 640 240 hwregA(63:0) R180 28
        IOMARKER 560 400 clk R180 28
        IOMARKER 560 592 ce R180 28
        BEGIN BRANCH XLXN_8(111:0)
            WIRE 1024 912 1120 912
        END BRANCH
        IOMARKER 560 528 pipe1(71:0) R180 28
        BEGIN INSTANCE XLXI_1 640 1008 R0
        END INSTANCE
        INSTANCE XLXI_4 1120 1456 R0
        BEGIN BRANCH pipe0(47:0)
            WIRE 560 912 576 912
            WIRE 576 912 640 912
            BEGIN DISPLAY 560 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 560 976 640 976
            BEGIN DISPLAY 560 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 1600 1104 R0
        INSTANCE XLXI_6 1920 1232 R0
        BEGIN BRANCH XLXN_12
            WIRE 1504 912 1584 912
            WIRE 1584 912 1600 912
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1856 976 1872 976
            WIRE 1872 976 1920 976
            WIRE 1872 976 1872 1040
            WIRE 1872 1040 1920 1040
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 592 464 640 464
            WIRE 592 464 592 1440
            WIRE 592 1440 1600 1440
            WIRE 1504 1200 1600 1200
            WIRE 1600 1200 1920 1200
            WIRE 1600 1200 1600 1440
        END BRANCH
        BEGIN BRANCH match
            WIRE 1568 832 1568 1040
            WIRE 1568 1040 1600 1040
            WIRE 1568 832 2320 832
            WIRE 2320 832 2320 976
            WIRE 2320 976 2400 976
            WIRE 2304 976 2320 976
        END BRANCH
        BEGIN BRANCH clk
            WIRE 560 400 624 400
            WIRE 624 400 640 400
            WIRE 624 400 624 720
            WIRE 624 720 624 1328
            WIRE 624 1328 1120 1328
            WIRE 624 720 1552 720
            WIRE 1552 720 1552 1104
            WIRE 1552 1104 1920 1104
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1520 976 1584 976
            WIRE 1584 976 1600 976
            WIRE 1520 976 1520 1024
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1040 1200 1120 1200
        END BRANCH
        IOMARKER 1040 1200 mrst R180 28
        IOMARKER 1520 1024 match_en R90 28
        IOMARKER 2400 976 match R0 28
        BEGIN BRANCH hwregA(62:56)
            WIRE 1040 1040 1056 1040
            WIRE 1056 1040 1120 1040
            BEGIN DISPLAY 1040 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1040 976 1072 976
            WIRE 1072 976 1120 976
            BEGIN DISPLAY 1072 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_8 1120 1072 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
