VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL X(31:0)
        SIGNAL Y(31:0)
        SIGNAL X(7:0)
        SIGNAL Sel
        SIGNAL X(15:8)
        SIGNAL X(23:16)
        SIGNAL X(31:24)
        SIGNAL Y(7:0)
        SIGNAL Y(15:8)
        SIGNAL Y(23:16)
        SIGNAL Y(31:24)
        PORT Input X(31:0)
        PORT Output Y(31:0)
        PORT Input Sel
        BEGIN BLOCKDEF shifter_8bit
            TIMESTAMP 2026 1 24 23 54 54
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 64 -12 320 128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_22 shifter_8bit
            PIN X(7:0) X(31:24)
            PIN Sel Sel
            PIN Y(7:0) Y(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_21 shifter_8bit
            PIN X(7:0) X(23:16)
            PIN Sel Sel
            PIN Y(7:0) Y(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_18 shifter_8bit
            PIN X(7:0) X(15:8)
            PIN Sel Sel
            PIN Y(7:0) Y(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_12 shifter_8bit
            PIN X(7:0) X(7:0)
            PIN Sel Sel
            PIN Y(7:0) Y(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH X(31:0)
            WIRE 1040 400 1120 400
        END BRANCH
        IOMARKER 1040 400 X(31:0) R180 28
        BEGIN INSTANCE XLXI_22 960 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_21 960 1008 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 960 768 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 960 528 R0
        END INSTANCE
        BEGIN BRANCH X(7:0)
            WIRE 880 560 912 560
            WIRE 912 560 960 560
            BEGIN DISPLAY 912 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 880 624 960 624
        END BRANCH
        BEGIN BRANCH X(15:8)
            WIRE 880 800 912 800
            WIRE 912 800 960 800
            BEGIN DISPLAY 912 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 880 864 912 864
            WIRE 912 864 960 864
            BEGIN DISPLAY 912 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 880 1104 912 1104
            WIRE 912 1104 960 1104
            BEGIN DISPLAY 912 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(23:16)
            WIRE 880 1040 912 1040
            WIRE 912 1040 960 1040
            BEGIN DISPLAY 912 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel
            WIRE 880 1344 912 1344
            WIRE 912 1344 960 1344
            BEGIN DISPLAY 912 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH X(31:24)
            WIRE 880 1280 912 1280
            WIRE 912 1280 960 1280
            BEGIN DISPLAY 912 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(7:0)
            WIRE 1344 560 1376 560
            WIRE 1376 560 1424 560
            BEGIN DISPLAY 1376 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(15:8)
            WIRE 1344 800 1392 800
            WIRE 1392 800 1424 800
            BEGIN DISPLAY 1392 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(23:16)
            WIRE 1344 1040 1376 1040
            WIRE 1376 1040 1424 1040
            BEGIN DISPLAY 1376 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(31:24)
            WIRE 1344 1280 1392 1280
            WIRE 1392 1280 1424 1280
            BEGIN DISPLAY 1392 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 880 624 Sel R180 28
        IOMARKER 1280 400 Y(31:0) R0 28
        BEGIN BRANCH Y(31:0)
            WIRE 1200 400 1280 400
        END BRANCH
    END SHEET
END SCHEMATIC
