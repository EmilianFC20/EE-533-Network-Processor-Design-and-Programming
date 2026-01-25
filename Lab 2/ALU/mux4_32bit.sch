VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D1(7:0)
        SIGNAL D2(7:0)
        SIGNAL D3(7:0)
        SIGNAL Sel(1:0)
        SIGNAL O(15:8)
        SIGNAL D0(15:8)
        SIGNAL D1(15:8)
        SIGNAL D3(15:8)
        SIGNAL D1(23:16)
        SIGNAL D2(23:16)
        SIGNAL D3(23:16)
        SIGNAL O(23:16)
        SIGNAL D1(31:24)
        SIGNAL D2(31:24)
        SIGNAL D0(31:24)
        SIGNAL D3(31:24)
        SIGNAL O(31:24)
        SIGNAL O(31:0)
        SIGNAL D1(31:0)
        SIGNAL D2(31:0)
        SIGNAL D0(31:0)
        SIGNAL D3(31:0)
        SIGNAL D0(23:16)
        SIGNAL D0(7:0)
        SIGNAL D2(15:8)
        SIGNAL O(7:0)
        PORT Input Sel(1:0)
        PORT Output O(31:0)
        PORT Input D1(31:0)
        PORT Input D2(31:0)
        PORT Input D0(31:0)
        PORT Input D3(31:0)
        BEGIN BLOCKDEF mux4_8bit
            TIMESTAMP 2026 1 25 2 44 21
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 mux4_8bit
            PIN D1(7:0) D1(7:0)
            PIN D2(7:0) D2(7:0)
            PIN D0(7:0) D0(7:0)
            PIN D3(7:0) D3(7:0)
            PIN Sel(1:0) Sel(1:0)
            PIN O(7:0) O(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux4_8bit
            PIN D1(7:0) D1(15:8)
            PIN D2(7:0) D2(15:8)
            PIN D0(7:0) D0(15:8)
            PIN D3(7:0) D3(15:8)
            PIN Sel(1:0) Sel(1:0)
            PIN O(7:0) O(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_5 mux4_8bit
            PIN D1(7:0) D1(23:16)
            PIN D2(7:0) D2(23:16)
            PIN D0(7:0) D0(23:16)
            PIN D3(7:0) D3(23:16)
            PIN Sel(1:0) Sel(1:0)
            PIN O(7:0) O(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_6 mux4_8bit
            PIN D1(7:0) D1(31:24)
            PIN D2(7:0) D2(31:24)
            PIN D0(7:0) D0(31:24)
            PIN D3(7:0) D3(31:24)
            PIN Sel(1:0) Sel(1:0)
            PIN O(7:0) O(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 1200 848 R0
        END INSTANCE
        BEGIN BRANCH D1(7:0)
            WIRE 1120 560 1152 560
            WIRE 1152 560 1200 560
            BEGIN DISPLAY 1152 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(7:0)
            WIRE 1120 624 1136 624
            WIRE 1136 624 1200 624
            BEGIN DISPLAY 1136 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(7:0)
            WIRE 1120 688 1152 688
            WIRE 1152 688 1200 688
            BEGIN DISPLAY 1152 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(7:0)
            WIRE 1120 752 1136 752
            WIRE 1136 752 1200 752
            BEGIN DISPLAY 1136 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1:0)
            WIRE 1120 816 1200 816
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 1584 560 1632 560
            WIRE 1632 560 1664 560
            BEGIN DISPLAY 1632 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_4 1200 1248 R0
        END INSTANCE
        BEGIN BRANCH D1(15:8)
            WIRE 1120 960 1136 960
            WIRE 1136 960 1200 960
            BEGIN DISPLAY 1136 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(15:8)
            WIRE 1120 1024 1152 1024
            WIRE 1152 1024 1200 1024
            BEGIN DISPLAY 1152 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(15:8)
            WIRE 1120 1088 1152 1088
            WIRE 1152 1088 1200 1088
            BEGIN DISPLAY 1152 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(15:8)
            WIRE 1120 1152 1136 1152
            WIRE 1136 1152 1200 1152
            BEGIN DISPLAY 1136 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1:0)
            WIRE 1120 1216 1168 1216
            WIRE 1168 1216 1200 1216
            BEGIN DISPLAY 1168 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15:8)
            WIRE 1584 960 1632 960
            WIRE 1632 960 1664 960
            BEGIN DISPLAY 1632 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_5 1200 1648 R0
        END INSTANCE
        BEGIN BRANCH D1(23:16)
            WIRE 1120 1360 1152 1360
            WIRE 1152 1360 1200 1360
            BEGIN DISPLAY 1152 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(23:16)
            WIRE 1120 1424 1152 1424
            WIRE 1152 1424 1200 1424
            BEGIN DISPLAY 1152 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(23:16)
            WIRE 1120 1488 1152 1488
            WIRE 1152 1488 1200 1488
            BEGIN DISPLAY 1152 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(23:16)
            WIRE 1120 1552 1136 1552
            WIRE 1136 1552 1200 1552
            BEGIN DISPLAY 1136 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1:0)
            WIRE 1120 1616 1152 1616
            WIRE 1152 1616 1200 1616
            BEGIN DISPLAY 1152 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(23:16)
            WIRE 1584 1360 1616 1360
            WIRE 1616 1360 1664 1360
            BEGIN DISPLAY 1616 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 1200 2048 R0
        END INSTANCE
        BEGIN BRANCH D1(31:24)
            WIRE 1120 1760 1168 1760
            WIRE 1168 1760 1200 1760
            BEGIN DISPLAY 1168 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(31:24)
            WIRE 1120 1824 1152 1824
            WIRE 1152 1824 1200 1824
            BEGIN DISPLAY 1152 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(31:24)
            WIRE 1120 1888 1152 1888
            WIRE 1152 1888 1200 1888
            BEGIN DISPLAY 1152 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(31:24)
            WIRE 1120 1952 1168 1952
            WIRE 1168 1952 1200 1952
            BEGIN DISPLAY 1168 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1:0)
            WIRE 1120 2016 1152 2016
            WIRE 1152 2016 1200 2016
            BEGIN DISPLAY 1152 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:24)
            WIRE 1584 1760 1616 1760
            WIRE 1616 1760 1664 1760
            BEGIN DISPLAY 1616 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1120 816 Sel(1:0) R180 28
        BEGIN BRANCH O(31:0)
            WIRE 1440 416 1520 416
        END BRANCH
        BEGIN BRANCH D1(31:0)
            WIRE 1280 336 1360 336
        END BRANCH
        BEGIN BRANCH D2(31:0)
            WIRE 1280 384 1360 384
        END BRANCH
        BEGIN BRANCH D0(31:0)
            WIRE 1280 288 1360 288
        END BRANCH
        BEGIN BRANCH D3(31:0)
            WIRE 1280 432 1360 432
        END BRANCH
        IOMARKER 1520 416 O(31:0) R0 28
        IOMARKER 1280 336 D1(31:0) R180 28
        IOMARKER 1280 384 D2(31:0) R180 28
        IOMARKER 1280 288 D0(31:0) R180 28
        IOMARKER 1280 432 D3(31:0) R180 28
    END SHEET
END SCHEMATIC
