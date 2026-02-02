VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL Cin
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL A(23:16)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL S(23:16)
        SIGNAL A(31:24)
        SIGNAL Cout
        SIGNAL B(31:0)
        SIGNAL A(31:0)
        SIGNAL S(31:0)
        SIGNAL B(23:16)
        SIGNAL S(31:24)
        SIGNAL B(31:24)
        PORT Input Cin
        PORT Output Cout
        PORT Input B(31:0)
        PORT Input A(31:0)
        PORT Output S(31:0)
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
        BEGIN BLOCK XLXI_1 adder_8bit
            PIN Cin Cin
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN S(7:0) S(7:0)
            PIN Cout XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 adder_8bit
            PIN Cin XLXN_1
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN S(7:0) S(15:8)
            PIN Cout XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 adder_8bit
            PIN Cin XLXN_2
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN S(7:0) S(23:16)
            PIN Cout XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 adder_8bit
            PIN Cin XLXN_3
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN S(7:0) S(31:24)
            PIN Cout Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 480 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1040 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1600 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2160 800 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 864 768 944 768
            WIRE 944 640 944 768
            WIRE 944 640 1040 640
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1424 768 1504 768
            WIRE 1504 640 1504 768
            WIRE 1504 640 1600 640
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1984 768 2064 768
            WIRE 2064 640 2064 768
            WIRE 2064 640 2160 640
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 400 640 480 640
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 400 704 432 704
            WIRE 432 704 480 704
            BEGIN DISPLAY 432 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 400 768 448 768
            WIRE 448 768 480 768
            BEGIN DISPLAY 448 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 960 704 992 704
            WIRE 992 704 1040 704
            BEGIN DISPLAY 992 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 960 768 992 768
            WIRE 992 768 1040 768
            BEGIN DISPLAY 992 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1520 704 1552 704
            WIRE 1552 704 1600 704
            BEGIN DISPLAY 1552 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1520 768 1552 768
            WIRE 1552 768 1600 768
            BEGIN DISPLAY 1552 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1424 576 1440 576
            WIRE 1440 576 1504 576
            BEGIN DISPLAY 1440 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 864 576 896 576
            WIRE 896 576 944 576
            BEGIN DISPLAY 896 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1984 576 2016 576
            WIRE 2016 576 2064 576
            BEGIN DISPLAY 2016 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 2080 704 2112 704
            WIRE 2112 704 2160 704
            BEGIN DISPLAY 2112 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 2080 768 2112 768
            WIRE 2112 768 2160 768
            BEGIN DISPLAY 2112 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 2544 576 2576 576
            WIRE 2576 576 2624 576
            BEGIN DISPLAY 2576 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2544 768 2624 768
        END BRANCH
        IOMARKER 400 640 Cin R180 28
        IOMARKER 2624 768 Cout R0 28
        BEGIN BRANCH B(31:0)
            WIRE 400 400 480 400
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 400 320 480 320
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 560 320 640 320
        END BRANCH
        IOMARKER 400 320 A(31:0) R180 28
        IOMARKER 400 400 B(31:0) R180 28
        IOMARKER 640 320 S(31:0) R0 28
    END SHEET
END SCHEMATIC
