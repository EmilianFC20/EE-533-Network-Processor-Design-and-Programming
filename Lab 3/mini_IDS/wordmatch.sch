VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datacomp(55:0)
        SIGNAL datain(87:32)
        SIGNAL wildcard(6:0)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL match
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 29 5 13 3
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_9 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_10 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_11 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_12 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_13 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_14 or8
            PIN I0 XLXN_49
            PIN I1 XLXN_48
            PIN I2 XLXN_47
            PIN I3 XLXN_46
            PIN I4 XLXN_45
            PIN I5 XLXN_44
            PIN I6 XLXN_43
            PIN I7 XLXN_42
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 480 R0
        END INSTANCE
        BEGIN BRANCH datain(111:0)
            WIRE 1200 160 1360 160
        END BRANCH
        IOMARKER 1200 160 datain(111:0) R180 28
        BEGIN BRANCH datain(55:0)
            WIRE 1200 384 1216 384
            WIRE 1216 384 1280 384
            BEGIN DISPLAY 1216 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_2 1280 736 R0
        END INSTANCE
        BEGIN BRANCH datain(63:8)
            WIRE 1200 640 1216 640
            WIRE 1216 640 1280 640
            BEGIN DISPLAY 1216 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_8 1280 992 R0
        END INSTANCE
        BEGIN BRANCH datain(71:16)
            WIRE 1200 896 1216 896
            WIRE 1216 896 1280 896
            BEGIN DISPLAY 1216 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_9 1280 1248 R0
        END INSTANCE
        BEGIN BRANCH datain(79:24)
            WIRE 1200 1152 1216 1152
            WIRE 1216 1152 1280 1152
            BEGIN DISPLAY 1216 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_10 1280 1504 R0
        END INSTANCE
        BEGIN BRANCH datacomp(55:0)
            WIRE 1120 320 1168 320
            WIRE 1168 320 1168 576
            WIRE 1168 576 1168 832
            WIRE 1168 832 1168 1088
            WIRE 1168 1088 1168 1344
            WIRE 1168 1344 1168 1600
            WIRE 1168 1600 1168 1856
            WIRE 1168 1856 1168 2112
            WIRE 1168 2112 1280 2112
            WIRE 1168 1856 1280 1856
            WIRE 1168 1600 1280 1600
            WIRE 1168 1344 1280 1344
            WIRE 1168 1088 1280 1088
            WIRE 1168 832 1280 832
            WIRE 1168 576 1280 576
            WIRE 1168 320 1280 320
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1200 1408 1216 1408
            WIRE 1216 1408 1280 1408
            BEGIN DISPLAY 1216 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 1136 736 1184 736
            WIRE 1184 736 1184 960
            WIRE 1184 960 1184 1216
            WIRE 1184 1216 1184 1472
            WIRE 1184 1472 1184 1728
            WIRE 1184 1728 1184 1984
            WIRE 1184 1984 1184 2240
            WIRE 1184 2240 1280 2240
            WIRE 1184 1984 1280 1984
            WIRE 1184 1728 1280 1728
            WIRE 1184 1472 1280 1472
            WIRE 1184 1216 1280 1216
            WIRE 1184 960 1280 960
            WIRE 1184 448 1184 704
            WIRE 1184 704 1280 704
            WIRE 1184 704 1184 736
            WIRE 1184 448 1280 448
        END BRANCH
        BEGIN INSTANCE XLXI_11 1280 1760 R0
        END INSTANCE
        BEGIN BRANCH datain(95:40)
            WIRE 1200 1664 1216 1664
            WIRE 1216 1664 1280 1664
            BEGIN DISPLAY 1216 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1120 320 datacomp(55:0) R180 28
        BEGIN INSTANCE XLXI_12 1280 2016 R0
        END INSTANCE
        BEGIN BRANCH datain(103:48)
            WIRE 1200 1920 1216 1920
            WIRE 1216 1920 1280 1920
            BEGIN DISPLAY 1216 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_13 1280 2272 R0
        END INSTANCE
        BEGIN BRANCH datain(111:56)
            WIRE 1200 2176 1216 2176
            WIRE 1216 2176 1280 2176
            BEGIN DISPLAY 1216 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 2016 1504 R0
        BEGIN BRANCH XLXN_42
            WIRE 1664 320 2016 320
            WIRE 2016 320 2016 992
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1664 576 1840 576
            WIRE 1840 576 1840 1056
            WIRE 1840 1056 2016 1056
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1664 832 1824 832
            WIRE 1824 832 1824 1120
            WIRE 1824 1120 2016 1120
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1664 1088 1808 1088
            WIRE 1808 1088 1808 1184
            WIRE 1808 1184 2016 1184
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 1664 1344 1840 1344
            WIRE 1840 1248 1840 1344
            WIRE 1840 1248 2016 1248
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 1664 1600 1856 1600
            WIRE 1856 1312 1856 1600
            WIRE 1856 1312 2016 1312
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 1664 1856 1872 1856
            WIRE 1872 1376 1872 1856
            WIRE 1872 1376 2016 1376
        END BRANCH
        BEGIN BRANCH XLXN_49
            WIRE 1664 2112 2016 2112
            WIRE 2016 1440 2016 2112
        END BRANCH
        BEGIN BRANCH match
            WIRE 2272 1216 2304 1216
        END BRANCH
        IOMARKER 2304 1216 match R0 28
        IOMARKER 1136 736 wildcard(6:0) R180 28
    END SHEET
END SCHEMATIC
