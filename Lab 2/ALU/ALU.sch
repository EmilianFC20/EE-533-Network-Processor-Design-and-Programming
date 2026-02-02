VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL XLXN_14(31:0)
        SIGNAL B(31:0)
        SIGNAL Sel(0)
        SIGNAL XLXN_5
        SIGNAL XLXN_52(31:0)
        SIGNAL XLXN_53(31:0)
        SIGNAL XLXN_54(31:0)
        SIGNAL O(31:0)
        SIGNAL Sel(2:0)
        SIGNAL XLXN_62(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output O(31:0)
        PORT Input Sel(2:0)
        BEGIN BLOCKDEF add_sub_32bit
            TIMESTAMP 2026 1 25 0 52 56
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF shifter_32bit
            TIMESTAMP 2026 1 25 0 14 34
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and32
            TIMESTAMP 2026 1 25 1 44 54
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or32
            TIMESTAMP 2026 1 25 2 1 24
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF mux8_32bit
            TIMESTAMP 2026 1 25 3 38 20
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 and32
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN O(31:0) XLXN_14(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 or32
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN O(31:0) XLXN_62(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 mux8_32bit
            PIN D1(31:0) XLXN_54(31:0)
            PIN D2(31:0) XLXN_52(31:0)
            PIN D0(31:0) XLXN_54(31:0)
            PIN D3(31:0) XLXN_14(31:0)
            PIN Sel(2:0) Sel(2:0)
            PIN D5(31:0)
            PIN D6(31:0)
            PIN D4(31:0) XLXN_62(31:0)
            PIN D7(31:0)
            PIN O(31:0) O(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 add_sub_32bit
            PIN A_S Sel(0)
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN Cout
            PIN S(31:0) XLXN_54(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 shifter_32bit
            PIN X(31:0) A(31:0)
            PIN Sel XLXN_5
            PIN Y(31:0) XLXN_52(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_28 vcc
            PIN P XLXN_5
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 800 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 800 1360 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 720 1040 752 1040
            WIRE 752 1040 800 1040
            BEGIN DISPLAY 752 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 720 1104 752 1104
            WIRE 752 1104 800 1104
            BEGIN DISPLAY 752 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 720 1264 752 1264
            WIRE 752 1264 800 1264
            BEGIN DISPLAY 752 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 720 1328 752 1328
            WIRE 752 1328 800 1328
            BEGIN DISPLAY 752 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14(31:0)
            WIRE 1184 1040 1296 1040
            WIRE 1296 928 1296 1040
            WIRE 1296 928 1520 928
        END BRANCH
        BEGIN INSTANCE XLXI_23 1520 1280 R0
        END INSTANCE
        IOMARKER 720 608 B(31:0) R180 28
        IOMARKER 720 544 A(31:0) R180 28
        BEGIN INSTANCE XLXI_1 800 640 R0
        END INSTANCE
        BEGIN BRANCH B(31:0)
            WIRE 720 608 800 608
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 720 544 800 544
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 720 480 768 480
            WIRE 768 480 800 480
            BEGIN DISPLAY 768 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_2 800 896 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 720 800 752 800
            WIRE 752 800 800 800
            BEGIN DISPLAY 752 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_52(31:0)
            WIRE 1184 800 1520 800
        END BRANCH
        BEGIN BRANCH XLXN_54(31:0)
            WIRE 1184 608 1296 608
            WIRE 1296 608 1296 736
            WIRE 1296 736 1296 864
            WIRE 1296 864 1520 864
            WIRE 1296 736 1520 736
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 1904 736 1936 736
            WIRE 1936 736 1984 736
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 640 848 640 864
            WIRE 640 864 800 864
        END BRANCH
        INSTANCE XLXI_28 576 848 R0
        BEGIN BRANCH Sel(2:0)
            WIRE 1440 992 1472 992
            WIRE 1472 992 1520 992
        END BRANCH
        IOMARKER 1984 736 O(31:0) R0 28
        IOMARKER 1440 992 Sel(2:0) R180 28
        BEGIN BRANCH XLXN_62(31:0)
            WIRE 1184 1264 1344 1264
            WIRE 1344 1184 1344 1264
            WIRE 1344 1184 1520 1184
        END BRANCH
    END SHEET
END SCHEMATIC
