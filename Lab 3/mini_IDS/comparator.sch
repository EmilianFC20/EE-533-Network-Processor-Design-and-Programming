VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL b(55:48)
        SIGNAL a(55:48)
        SIGNAL amask(6)
        SIGNAL XLXN_13
        SIGNAL b(47:40)
        SIGNAL a(47:40)
        SIGNAL amask(5)
        SIGNAL XLXN_17
        SIGNAL b(39:32)
        SIGNAL a(39:32)
        SIGNAL amask(4)
        SIGNAL XLXN_21
        SIGNAL b(31:24)
        SIGNAL a(31:24)
        SIGNAL amask(3)
        SIGNAL XLXN_25
        SIGNAL b(23:16)
        SIGNAL a(23:16)
        SIGNAL amask(2)
        SIGNAL XLXN_48
        SIGNAL b(15:8)
        SIGNAL a(15:8)
        SIGNAL amask(1)
        SIGNAL XLXN_52
        SIGNAL b(7:0)
        SIGNAL a(7:0)
        SIGNAL amask(0)
        SIGNAL XLXN_56
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL XLXN_60
        SIGNAL XLXN_61
        SIGNAL XLXN_62
        SIGNAL XLXN_63
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL XLXN_66
        SIGNAL match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_13
            PIN O XLXN_60
        END BLOCK
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_17
            PIN O XLXN_61
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_21
            PIN O XLXN_62
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_25
            PIN O XLXN_63
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_20 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_48
            PIN O XLXN_64
        END BLOCK
        BEGIN BLOCK XLXI_21 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_22 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_52
            PIN O XLXN_65
        END BLOCK
        BEGIN BLOCK XLXI_23 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_24 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_56
            PIN O XLXN_66
        END BLOCK
        BEGIN BLOCK XLXI_25 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_56
        END BLOCK
        BEGIN BLOCK XLXI_26 and7
            PIN I0 XLXN_66
            PIN I1 XLXN_65
            PIN I2 XLXN_64
            PIN I3 XLXN_63
            PIN I4 XLXN_62
            PIN I5 XLXN_61
            PIN I6 XLXN_60
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 1600 352 R0
        INSTANCE XLXI_1 1120 448 R0
        BEGIN BRANCH b(55:48)
            WIRE 1040 320 1072 320
            WIRE 1072 320 1120 320
            BEGIN DISPLAY 1072 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 1040 128 1072 128
            WIRE 1072 128 1120 128
            BEGIN DISPLAY 1072 128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 1520 288 1552 288
            WIRE 1552 288 1600 288
            BEGIN DISPLAY 1552 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1504 224 1600 224
        END BRANCH
        INSTANCE XLXI_6 1600 736 R0
        INSTANCE XLXI_7 1120 832 R0
        BEGIN BRANCH b(47:40)
            WIRE 1040 704 1072 704
            WIRE 1072 704 1120 704
            BEGIN DISPLAY 1072 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 1040 512 1072 512
            WIRE 1072 512 1120 512
            BEGIN DISPLAY 1072 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1520 672 1552 672
            WIRE 1552 672 1600 672
            BEGIN DISPLAY 1552 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1504 608 1600 608
        END BRANCH
        INSTANCE XLXI_8 1600 1120 R0
        INSTANCE XLXI_9 1120 1216 R0
        BEGIN BRANCH b(39:32)
            WIRE 1040 1088 1072 1088
            WIRE 1072 1088 1120 1088
            BEGIN DISPLAY 1072 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 1040 896 1072 896
            WIRE 1072 896 1120 896
            BEGIN DISPLAY 1072 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1520 1056 1552 1056
            WIRE 1552 1056 1600 1056
            BEGIN DISPLAY 1552 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1504 992 1600 992
        END BRANCH
        INSTANCE XLXI_10 1600 1504 R0
        INSTANCE XLXI_11 1120 1600 R0
        BEGIN BRANCH b(31:24)
            WIRE 1040 1472 1056 1472
            WIRE 1056 1472 1072 1472
            WIRE 1072 1472 1120 1472
            BEGIN DISPLAY 1072 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 1040 1280 1072 1280
            WIRE 1072 1280 1120 1280
            BEGIN DISPLAY 1072 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1520 1440 1552 1440
            WIRE 1552 1440 1600 1440
            BEGIN DISPLAY 1552 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1504 1376 1600 1376
        END BRANCH
        INSTANCE XLXI_20 1600 1888 R0
        INSTANCE XLXI_21 1120 1984 R0
        BEGIN BRANCH b(23:16)
            WIRE 1040 1856 1056 1856
            WIRE 1056 1856 1072 1856
            WIRE 1072 1856 1120 1856
            BEGIN DISPLAY 1072 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1040 1664 1056 1664
            WIRE 1056 1664 1072 1664
            WIRE 1072 1664 1120 1664
            BEGIN DISPLAY 1072 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1520 1824 1552 1824
            WIRE 1552 1824 1600 1824
            BEGIN DISPLAY 1552 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 1504 1760 1600 1760
        END BRANCH
        INSTANCE XLXI_22 1600 2272 R0
        INSTANCE XLXI_23 1120 2368 R0
        BEGIN BRANCH b(15:8)
            WIRE 1040 2240 1072 2240
            WIRE 1072 2240 1120 2240
            BEGIN DISPLAY 1072 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1040 2048 1056 2048
            WIRE 1056 2048 1072 2048
            WIRE 1072 2048 1120 2048
            BEGIN DISPLAY 1072 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 1520 2208 1552 2208
            WIRE 1552 2208 1600 2208
            BEGIN DISPLAY 1552 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 1504 2144 1600 2144
        END BRANCH
        INSTANCE XLXI_24 1600 2656 R0
        INSTANCE XLXI_25 1120 2752 R0
        BEGIN BRANCH b(7:0)
            WIRE 1040 2624 1056 2624
            WIRE 1056 2624 1072 2624
            WIRE 1072 2624 1120 2624
            BEGIN DISPLAY 1072 2624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1040 2432 1072 2432
            WIRE 1072 2432 1120 2432
            BEGIN DISPLAY 1072 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1520 2592 1552 2592
            WIRE 1552 2592 1600 2592
            BEGIN DISPLAY 1552 2592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_56
            WIRE 1504 2528 1600 2528
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 400 80 560 80
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 400 160 560 160
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 800 80 960 80
        END BRANCH
        IOMARKER 400 80 a(55:0) R180 28
        IOMARKER 400 160 b(55:0) R180 28
        IOMARKER 800 80 amask(6:0) R180 28
        INSTANCE XLXI_26 2256 1520 R0
        BEGIN BRANCH XLXN_60
            WIRE 1856 256 2256 256
            WIRE 2256 256 2256 1072
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 1856 640 2048 640
            WIRE 2048 640 2048 1136
            WIRE 2048 1136 2256 1136
        END BRANCH
        BEGIN BRANCH XLXN_62
            WIRE 1856 1024 2032 1024
            WIRE 2032 1024 2032 1200
            WIRE 2032 1200 2256 1200
        END BRANCH
        BEGIN BRANCH XLXN_63
            WIRE 1856 1408 2048 1408
            WIRE 2048 1264 2048 1408
            WIRE 2048 1264 2256 1264
        END BRANCH
        BEGIN BRANCH XLXN_64
            WIRE 1856 1792 2064 1792
            WIRE 2064 1328 2064 1792
            WIRE 2064 1328 2256 1328
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 1856 2176 2080 2176
            WIRE 2080 1392 2080 2176
            WIRE 2080 1392 2256 1392
        END BRANCH
        BEGIN BRANCH XLXN_66
            WIRE 1856 2560 2256 2560
            WIRE 2256 1456 2256 2560
        END BRANCH
        BEGIN BRANCH match
            WIRE 2512 1264 2544 1264
            WIRE 2544 1264 2592 1264
        END BRANCH
        IOMARKER 2592 1264 match R0 28
    END SHEET
END SCHEMATIC
