VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        BEGIN SIGNAL Y(0)
        END SIGNAL
        SIGNAL Y(1)
        SIGNAL Y(2)
        SIGNAL Y(3)
        SIGNAL Y(4)
        SIGNAL Y(5)
        SIGNAL Y(6)
        SIGNAL Y(7)
        SIGNAL X(7:0)
        SIGNAL Y(7:0)
        SIGNAL Sel
        SIGNAL X(7)
        SIGNAL X(6)
        SIGNAL X(5)
        SIGNAL X(4)
        SIGNAL X(3)
        SIGNAL X(2)
        SIGNAL X(1)
        SIGNAL X(0)
        PORT Input X(7:0)
        PORT Output Y(7:0)
        PORT Input Sel
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 X(1)
            PIN D1 X(0)
            PIN S0 Sel
            PIN O Y(1)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 X(0)
            PIN D1 X(7)
            PIN S0 Sel
            PIN O Y(0)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 X(2)
            PIN D1 X(1)
            PIN S0 Sel
            PIN O Y(2)
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 X(3)
            PIN D1 X(2)
            PIN S0 Sel
            PIN O Y(3)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 X(5)
            PIN D1 X(4)
            PIN S0 Sel
            PIN O Y(5)
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 X(4)
            PIN D1 X(3)
            PIN S0 Sel
            PIN O Y(4)
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 X(6)
            PIN D1 X(5)
            PIN S0 Sel
            PIN O Y(6)
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 X(7)
            PIN D1 X(6)
            PIN S0 Sel
            PIN O Y(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 1520 880 R0
        INSTANCE XLXI_2 1520 640 R0
        INSTANCE XLXI_6 1520 1120 R0
        INSTANCE XLXI_7 1520 1360 R0
        BEGIN BRANCH X(0)
            WIRE 1440 480 1488 480
            WIRE 1488 480 1520 480
            BEGIN DISPLAY 1488 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(7)
            WIRE 1440 544 1472 544
            WIRE 1472 544 1520 544
            BEGIN DISPLAY 1472 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(0)
            WIRE 1840 512 1872 512
            WIRE 1872 512 1920 512
            BEGIN DISPLAY 1872 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 608 1520 608
        END BRANCH
        BEGIN BRANCH Y(1)
            WIRE 1840 752 1872 752
            WIRE 1872 752 1920 752
            BEGIN DISPLAY 1872 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(2)
            WIRE 1840 992 1856 992
            WIRE 1856 992 1920 992
            BEGIN DISPLAY 1856 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(3)
            WIRE 1840 1232 1872 1232
            WIRE 1872 1232 1920 1232
            BEGIN DISPLAY 1872 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(1)
            WIRE 1440 720 1488 720
            WIRE 1488 720 1520 720
            BEGIN DISPLAY 1488 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(0)
            WIRE 1440 784 1488 784
            WIRE 1488 784 1520 784
            BEGIN DISPLAY 1488 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 848 1488 848
            WIRE 1488 848 1520 848
            BEGIN DISPLAY 1488 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(2)
            WIRE 1440 960 1472 960
            WIRE 1472 960 1520 960
            BEGIN DISPLAY 1472 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(1)
            WIRE 1440 1024 1472 1024
            WIRE 1472 1024 1520 1024
            BEGIN DISPLAY 1472 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 1088 1488 1088
            WIRE 1488 1088 1520 1088
            BEGIN DISPLAY 1488 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(3)
            WIRE 1440 1200 1488 1200
            WIRE 1488 1200 1520 1200
            BEGIN DISPLAY 1488 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(2)
            WIRE 1440 1264 1472 1264
            WIRE 1472 1264 1520 1264
            BEGIN DISPLAY 1472 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 1328 1488 1328
            WIRE 1488 1328 1520 1328
            BEGIN DISPLAY 1488 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 1520 1840 R0
        INSTANCE XLXI_9 1520 1600 R0
        INSTANCE XLXI_10 1520 2080 R0
        INSTANCE XLXI_11 1520 2320 R0
        BEGIN BRANCH X(4)
            WIRE 1440 1440 1488 1440
            WIRE 1488 1440 1520 1440
            BEGIN DISPLAY 1488 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(3)
            WIRE 1440 1504 1488 1504
            WIRE 1488 1504 1520 1504
            BEGIN DISPLAY 1488 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(4)
            WIRE 1840 1472 1872 1472
            WIRE 1872 1472 1920 1472
            BEGIN DISPLAY 1872 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 1568 1488 1568
            WIRE 1488 1568 1520 1568
            BEGIN DISPLAY 1488 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(5)
            WIRE 1840 1712 1872 1712
            WIRE 1872 1712 1920 1712
            BEGIN DISPLAY 1872 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(6)
            WIRE 1840 1952 1872 1952
            WIRE 1872 1952 1920 1952
            BEGIN DISPLAY 1872 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(7)
            WIRE 1840 2192 1856 2192
            WIRE 1856 2192 1920 2192
            BEGIN DISPLAY 1856 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(5)
            WIRE 1440 1680 1488 1680
            WIRE 1488 1680 1520 1680
            BEGIN DISPLAY 1488 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(4)
            WIRE 1440 1744 1488 1744
            WIRE 1488 1744 1520 1744
            BEGIN DISPLAY 1488 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 1808 1472 1808
            WIRE 1472 1808 1520 1808
            BEGIN DISPLAY 1472 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(6)
            WIRE 1440 1920 1488 1920
            WIRE 1488 1920 1520 1920
            BEGIN DISPLAY 1488 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(5)
            WIRE 1440 1984 1472 1984
            WIRE 1472 1984 1520 1984
            BEGIN DISPLAY 1472 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 2048 1488 2048
            WIRE 1488 2048 1520 2048
            BEGIN DISPLAY 1488 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(7)
            WIRE 1440 2160 1488 2160
            WIRE 1488 2160 1520 2160
            BEGIN DISPLAY 1488 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(6)
            WIRE 1440 2224 1472 2224
            WIRE 1472 2224 1520 2224
            BEGIN DISPLAY 1472 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 1440 2288 1472 2288
            WIRE 1472 2288 1520 2288
            BEGIN DISPLAY 1472 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1440 608 Sel R180 28
        BEGIN BRANCH X(7:0)
            WIRE 1520 320 1600 320
        END BRANCH
        BEGIN BRANCH Y(7:0)
            WIRE 1680 320 1760 320
        END BRANCH
        IOMARKER 1520 320 X(7:0) R180 28
        IOMARKER 1760 320 Y(7:0) R0 28
    END SHEET
END SCHEMATIC
