VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL Cin
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL S(2)
        SIGNAL XLXN_54
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL S(3)
        SIGNAL C3
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL S(6)
        SIGNAL XLXN_51
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL S(7)
        SIGNAL Cout
        PORT Input Cin
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        PORT Output Cout
        BEGIN BLOCKDEF adder_1b
            TIMESTAMP 2026 1 24 19 27 8
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 adder_1b
            PIN C XLXN_4
            PIN B B(1)
            PIN A A(1)
            PIN CO XLXN_5
            PIN S S(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 adder_1b
            PIN C XLXN_5
            PIN B B(2)
            PIN A A(2)
            PIN CO XLXN_54
            PIN S S(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 adder_1b
            PIN C XLXN_54
            PIN B B(3)
            PIN A A(3)
            PIN CO C3
            PIN S S(3)
        END BLOCK
        BEGIN BLOCK XLXI_8 adder_1b
            PIN C C3
            PIN B B(4)
            PIN A A(4)
            PIN CO XLXN_39
            PIN S S(4)
        END BLOCK
        BEGIN BLOCK XLXI_9 adder_1b
            PIN C XLXN_39
            PIN B B(5)
            PIN A A(5)
            PIN CO XLXN_40
            PIN S S(5)
        END BLOCK
        BEGIN BLOCK XLXI_10 adder_1b
            PIN C XLXN_40
            PIN B B(6)
            PIN A A(6)
            PIN CO XLXN_51
            PIN S S(6)
        END BLOCK
        BEGIN BLOCK XLXI_11 adder_1b
            PIN C XLXN_51
            PIN B B(7)
            PIN A A(7)
            PIN CO Cout
            PIN S S(7)
        END BLOCK
        BEGIN BLOCK XLXI_14 adder_1b
            PIN C Cin
            PIN B B(0)
            PIN A A(0)
            PIN CO XLXN_4
            PIN S S(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1376 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1936 944 R0
        END INSTANCE
        BEGIN BRANCH XLXN_4
            WIRE 1200 912 1376 912
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1760 912 1936 912
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 736 784 800 784
            WIRE 800 784 816 784
            BEGIN DISPLAY 800 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 736 848 800 848
            WIRE 800 848 816 848
            BEGIN DISPLAY 800 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 736 912 816 912
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1296 784 1344 784
            WIRE 1344 784 1360 784
            WIRE 1360 784 1376 784
            BEGIN DISPLAY 1360 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1296 848 1344 848
            WIRE 1344 848 1376 848
            BEGIN DISPLAY 1344 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1200 720 1232 720
            WIRE 1232 720 1280 720
            BEGIN DISPLAY 1232 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1760 720 1776 720
            WIRE 1776 720 1840 720
            BEGIN DISPLAY 1776 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1856 784 1904 784
            WIRE 1904 784 1920 784
            WIRE 1920 784 1936 784
            BEGIN DISPLAY 1920 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1856 848 1904 848
            WIRE 1904 848 1936 848
            BEGIN DISPLAY 1904 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 2320 720 2368 720
            WIRE 2368 720 2400 720
            BEGIN DISPLAY 2368 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_54
            WIRE 2320 912 2336 912
            WIRE 2336 912 2400 912
            WIRE 2400 912 2496 912
        END BRANCH
        IOMARKER 736 912 Cin R180 28
        BEGIN BRANCH A(7:0)
            WIRE 800 400 880 400
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 800 480 880 480
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1040 400 1120 400
        END BRANCH
        IOMARKER 800 400 A(7:0) R180 28
        IOMARKER 800 480 B(7:0) R180 28
        IOMARKER 1120 400 S(7:0) R0 28
        BEGIN BRANCH A(3)
            WIRE 2416 784 2480 784
            WIRE 2480 784 2496 784
            BEGIN DISPLAY 2480 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 2416 848 2464 848
            WIRE 2464 848 2496 848
            BEGIN DISPLAY 2464 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 2880 720 2944 720
            WIRE 2944 720 2976 720
            BEGIN DISPLAY 2944 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_4 2496 944 R0
        END INSTANCE
        BEGIN BRANCH C3
            WIRE 2880 912 2912 912
            WIRE 2912 912 2976 912
            BEGIN DISPLAY 2912 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_8 816 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 1376 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 1936 1408 R0
        END INSTANCE
        BEGIN BRANCH XLXN_39
            WIRE 1200 1376 1376 1376
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1760 1376 1936 1376
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 736 1248 800 1248
            WIRE 800 1248 816 1248
            BEGIN DISPLAY 800 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 736 1312 800 1312
            WIRE 800 1312 816 1312
            BEGIN DISPLAY 800 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C3
            WIRE 736 1376 768 1376
            WIRE 768 1376 816 1376
            BEGIN DISPLAY 768 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 1296 1248 1344 1248
            WIRE 1344 1248 1360 1248
            WIRE 1360 1248 1376 1248
            BEGIN DISPLAY 1360 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 1296 1312 1344 1312
            WIRE 1344 1312 1376 1312
            BEGIN DISPLAY 1344 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1200 1184 1232 1184
            WIRE 1232 1184 1280 1184
            BEGIN DISPLAY 1232 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1760 1184 1776 1184
            WIRE 1776 1184 1840 1184
            BEGIN DISPLAY 1776 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 1856 1248 1904 1248
            WIRE 1904 1248 1920 1248
            WIRE 1920 1248 1936 1248
            BEGIN DISPLAY 1920 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 1856 1312 1904 1312
            WIRE 1904 1312 1936 1312
            BEGIN DISPLAY 1904 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2320 1184 2368 1184
            WIRE 2368 1184 2400 1184
            BEGIN DISPLAY 2368 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_51
            WIRE 2320 1376 2336 1376
            WIRE 2336 1376 2400 1376
            WIRE 2400 1376 2496 1376
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 2416 1248 2480 1248
            WIRE 2480 1248 2496 1248
            BEGIN DISPLAY 2480 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 2416 1312 2464 1312
            WIRE 2464 1312 2496 1312
            BEGIN DISPLAY 2464 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2880 1184 2944 1184
            WIRE 2944 1184 2976 1184
            BEGIN DISPLAY 2944 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_11 2496 1408 R0
        END INSTANCE
        BEGIN BRANCH Cout
            WIRE 2880 1376 2976 1376
        END BRANCH
        IOMARKER 2976 1376 Cout R0 28
        BEGIN INSTANCE XLXI_14 816 944 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
