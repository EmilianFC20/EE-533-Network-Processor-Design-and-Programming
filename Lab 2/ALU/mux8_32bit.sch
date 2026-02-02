VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D1(31:0)
        SIGNAL D2(31:0)
        SIGNAL D0(31:0)
        SIGNAL D3(31:0)
        SIGNAL O(31:0)
        SIGNAL D0(7:0)
        SIGNAL D1(7:0)
        SIGNAL D2(7:0)
        SIGNAL Sel(2:0)
        SIGNAL O(7:0)
        SIGNAL D3(7:0)
        SIGNAL D0(15:8)
        SIGNAL O(15:8)
        SIGNAL D1(15:8)
        SIGNAL D2(15:8)
        SIGNAL D3(15:8)
        SIGNAL O(23:16)
        SIGNAL D0(23:16)
        SIGNAL D1(23:16)
        SIGNAL D2(23:16)
        SIGNAL D0(31:24)
        SIGNAL D1(31:24)
        SIGNAL D2(31:24)
        SIGNAL D3(31:24)
        SIGNAL O(31:24)
        SIGNAL D5(31:0)
        SIGNAL D6(31:0)
        SIGNAL D4(31:0)
        SIGNAL D7(31:0)
        SIGNAL D4(7:0)
        SIGNAL D5(7:0)
        SIGNAL D6(7:0)
        SIGNAL D7(7:0)
        SIGNAL D4(15:8)
        SIGNAL D5(15:8)
        SIGNAL D6(15:8)
        SIGNAL D7(15:8)
        SIGNAL D4(23:16)
        SIGNAL D5(23:16)
        SIGNAL D6(23:16)
        SIGNAL D7(23:16)
        SIGNAL D4(31:24)
        SIGNAL D5(31:24)
        SIGNAL D6(31:24)
        SIGNAL D7(31:24)
        SIGNAL D3(23:16)
        PORT Input D1(31:0)
        PORT Input D2(31:0)
        PORT Input D0(31:0)
        PORT Input D3(31:0)
        PORT Output O(31:0)
        PORT Input Sel(2:0)
        PORT Input D5(31:0)
        PORT Input D6(31:0)
        PORT Input D4(31:0)
        PORT Input D7(31:0)
        BEGIN BLOCKDEF mux8_8bit
            TIMESTAMP 2026 1 25 3 22 21
            RECTANGLE N 64 -576 320 0 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
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
            RECTANGLE N 320 -556 384 -532 
            LINE N 320 -544 384 -544 
        END BLOCKDEF
        BEGIN BLOCK XLXI_44 mux8_8bit
            PIN Sel(2:0) Sel(2:0)
            PIN D1(7:0) D1(7:0)
            PIN D2(7:0) D2(7:0)
            PIN D0(7:0) D0(7:0)
            PIN D3(7:0) D3(7:0)
            PIN D5(7:0) D5(7:0)
            PIN D6(7:0) D6(7:0)
            PIN D4(7:0) D4(7:0)
            PIN D7(7:0) D7(7:0)
            PIN O(7:0) O(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_48 mux8_8bit
            PIN Sel(2:0) Sel(2:0)
            PIN D1(7:0) D1(15:8)
            PIN D2(7:0) D2(15:8)
            PIN D0(7:0) D0(15:8)
            PIN D3(7:0) D3(15:8)
            PIN D5(7:0) D5(15:8)
            PIN D6(7:0) D6(15:8)
            PIN D4(7:0) D4(15:8)
            PIN D7(7:0) D7(15:8)
            PIN O(7:0) O(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_49 mux8_8bit
            PIN Sel(2:0) Sel(2:0)
            PIN D1(7:0) D1(23:16)
            PIN D2(7:0) D2(23:16)
            PIN D0(7:0) D0(23:16)
            PIN D3(7:0) D3(23:16)
            PIN D5(7:0) D5(23:16)
            PIN D6(7:0) D6(23:16)
            PIN D4(7:0) D4(23:16)
            PIN D7(7:0) D7(23:16)
            PIN O(7:0) O(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_57 mux8_8bit
            PIN Sel(2:0) Sel(2:0)
            PIN D1(7:0) D1(31:24)
            PIN D2(7:0) D2(31:24)
            PIN D0(7:0) D0(31:24)
            PIN D3(7:0) D3(31:24)
            PIN D5(7:0) D5(31:24)
            PIN D6(7:0) D6(31:24)
            PIN D4(7:0) D4(31:24)
            PIN D7(7:0) D7(31:24)
            PIN O(7:0) O(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D1(31:0)
            WIRE 1200 304 1280 304
        END BRANCH
        BEGIN BRANCH D2(31:0)
            WIRE 1200 352 1280 352
        END BRANCH
        BEGIN BRANCH D0(31:0)
            WIRE 1200 256 1280 256
        END BRANCH
        BEGIN BRANCH D3(31:0)
            WIRE 1200 400 1280 400
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 1360 400 1440 400
        END BRANCH
        BEGIN INSTANCE XLXI_44 1824 704 R0
        END INSTANCE
        BEGIN BRANCH D0(7:0)
            WIRE 1744 352 1776 352
            WIRE 1776 352 1824 352
            BEGIN DISPLAY 1776 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(7:0)
            WIRE 1744 224 1776 224
            WIRE 1776 224 1824 224
            BEGIN DISPLAY 1776 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(7:0)
            WIRE 1744 288 1760 288
            WIRE 1760 288 1824 288
            BEGIN DISPLAY 1760 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2:0)
            WIRE 1744 160 1824 160
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 2208 160 2256 160
            WIRE 2256 160 2288 160
            BEGIN DISPLAY 2256 160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(7:0)
            WIRE 1744 416 1760 416
            WIRE 1760 416 1824 416
            BEGIN DISPLAY 1760 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_48 1824 1360 R0
        END INSTANCE
        BEGIN BRANCH D0(15:8)
            WIRE 1744 1008 1776 1008
            WIRE 1776 1008 1824 1008
            BEGIN DISPLAY 1776 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15:8)
            WIRE 2208 816 2256 816
            WIRE 2256 816 2288 816
            BEGIN DISPLAY 2256 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(15:8)
            WIRE 1744 880 1760 880
            WIRE 1760 880 1824 880
            BEGIN DISPLAY 1760 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(15:8)
            WIRE 1744 944 1776 944
            WIRE 1776 944 1824 944
            BEGIN DISPLAY 1776 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(15:8)
            WIRE 1744 1072 1760 1072
            WIRE 1760 1072 1824 1072
            BEGIN DISPLAY 1760 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2:0)
            WIRE 1744 816 1792 816
            WIRE 1792 816 1824 816
            BEGIN DISPLAY 1792 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_49 1824 2016 R0
        END INSTANCE
        BEGIN BRANCH O(23:16)
            WIRE 2208 1472 2240 1472
            WIRE 2240 1472 2288 1472
            BEGIN DISPLAY 2240 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(23:16)
            WIRE 1744 1664 1776 1664
            WIRE 1776 1664 1824 1664
            BEGIN DISPLAY 1776 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(23:16)
            WIRE 1744 1536 1776 1536
            WIRE 1776 1536 1824 1536
            BEGIN DISPLAY 1776 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(23:16)
            WIRE 1744 1600 1776 1600
            WIRE 1776 1600 1824 1600
            BEGIN DISPLAY 1776 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2:0)
            WIRE 1744 1472 1776 1472
            WIRE 1776 1472 1824 1472
            BEGIN DISPLAY 1776 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_57 1824 2672 R0
        END INSTANCE
        BEGIN BRANCH D0(31:24)
            WIRE 1744 2320 1776 2320
            WIRE 1776 2320 1824 2320
            BEGIN DISPLAY 1776 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(31:24)
            WIRE 1744 2192 1792 2192
            WIRE 1792 2192 1824 2192
            BEGIN DISPLAY 1792 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(31:24)
            WIRE 1744 2256 1776 2256
            WIRE 1776 2256 1824 2256
            BEGIN DISPLAY 1776 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(31:24)
            WIRE 1744 2384 1792 2384
            WIRE 1792 2384 1824 2384
            BEGIN DISPLAY 1792 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2:0)
            WIRE 1744 2128 1776 2128
            WIRE 1776 2128 1824 2128
            BEGIN DISPLAY 1776 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(31:24)
            WIRE 2208 2128 2240 2128
            WIRE 2240 2128 2288 2128
            BEGIN DISPLAY 2240 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(31:0)
            WIRE 1200 496 1280 496
        END BRANCH
        BEGIN BRANCH D6(31:0)
            WIRE 1200 544 1280 544
        END BRANCH
        BEGIN BRANCH D4(31:0)
            WIRE 1200 448 1280 448
        END BRANCH
        BEGIN BRANCH D7(31:0)
            WIRE 1200 592 1280 592
        END BRANCH
        BEGIN BRANCH D4(7:0)
            WIRE 1744 608 1776 608
            WIRE 1776 608 1824 608
            BEGIN DISPLAY 1776 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(7:0)
            WIRE 1744 480 1776 480
            WIRE 1776 480 1824 480
            BEGIN DISPLAY 1776 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(7:0)
            WIRE 1744 544 1760 544
            WIRE 1760 544 1824 544
            BEGIN DISPLAY 1760 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(7:0)
            WIRE 1744 672 1760 672
            WIRE 1760 672 1824 672
            BEGIN DISPLAY 1760 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(15:8)
            WIRE 1744 1264 1776 1264
            WIRE 1776 1264 1824 1264
            BEGIN DISPLAY 1776 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(15:8)
            WIRE 1744 1136 1776 1136
            WIRE 1776 1136 1824 1136
            BEGIN DISPLAY 1776 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(15:8)
            WIRE 1744 1200 1760 1200
            WIRE 1760 1200 1824 1200
            BEGIN DISPLAY 1760 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(15:8)
            WIRE 1744 1328 1760 1328
            WIRE 1760 1328 1824 1328
            BEGIN DISPLAY 1760 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(23:16)
            WIRE 1744 1920 1776 1920
            WIRE 1776 1920 1824 1920
            BEGIN DISPLAY 1776 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(23:16)
            WIRE 1744 1792 1776 1792
            WIRE 1776 1792 1824 1792
            BEGIN DISPLAY 1776 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(23:16)
            WIRE 1744 1856 1760 1856
            WIRE 1760 1856 1824 1856
            BEGIN DISPLAY 1760 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(23:16)
            WIRE 1744 1984 1760 1984
            WIRE 1760 1984 1824 1984
            BEGIN DISPLAY 1760 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(31:24)
            WIRE 1744 2576 1776 2576
            WIRE 1776 2576 1824 2576
            BEGIN DISPLAY 1776 2576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(31:24)
            WIRE 1744 2448 1776 2448
            WIRE 1776 2448 1824 2448
            BEGIN DISPLAY 1776 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(31:24)
            WIRE 1744 2512 1760 2512
            WIRE 1760 2512 1824 2512
            BEGIN DISPLAY 1760 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(31:24)
            WIRE 1744 2640 1760 2640
            WIRE 1760 2640 1824 2640
            BEGIN DISPLAY 1760 2640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(23:16)
            WIRE 1744 1728 1760 1728
            WIRE 1760 1728 1824 1728
            BEGIN DISPLAY 1760 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1200 304 D1(31:0) R180 28
        IOMARKER 1200 352 D2(31:0) R180 28
        IOMARKER 1200 256 D0(31:0) R180 28
        IOMARKER 1200 400 D3(31:0) R180 28
        IOMARKER 1440 400 O(31:0) R0 28
        IOMARKER 1744 160 Sel(2:0) R180 28
        IOMARKER 1200 496 D5(31:0) R180 28
        IOMARKER 1200 544 D6(31:0) R180 28
        IOMARKER 1200 448 D4(31:0) R180 28
        IOMARKER 1200 592 D7(31:0) R180 28
    END SHEET
END SCHEMATIC
