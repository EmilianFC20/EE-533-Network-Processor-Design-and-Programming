VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_10
        SIGNAL D0(0)
        SIGNAL D1(0)
        SIGNAL D2(0)
        SIGNAL D3(0)
        SIGNAL Sel(0)
        SIGNAL Sel(1)
        SIGNAL O(0)
        SIGNAL XLXN_23
        SIGNAL D0(1)
        SIGNAL D1(1)
        SIGNAL D2(1)
        SIGNAL D3(1)
        SIGNAL O(1)
        SIGNAL XLXN_31
        SIGNAL D0(2)
        SIGNAL D1(2)
        SIGNAL D2(2)
        SIGNAL D3(2)
        SIGNAL O(2)
        SIGNAL XLXN_39
        SIGNAL D0(3)
        SIGNAL D1(3)
        SIGNAL D2(3)
        SIGNAL D3(3)
        SIGNAL O(3)
        SIGNAL XLXN_47
        SIGNAL D0(4)
        SIGNAL D1(4)
        SIGNAL D2(4)
        SIGNAL D3(4)
        SIGNAL O(4)
        SIGNAL XLXN_55
        SIGNAL D0(5)
        SIGNAL D1(5)
        SIGNAL D2(5)
        SIGNAL D3(5)
        SIGNAL O(5)
        SIGNAL XLXN_63
        SIGNAL D0(6)
        SIGNAL D1(6)
        SIGNAL D2(6)
        SIGNAL D3(6)
        SIGNAL O(6)
        SIGNAL XLXN_71
        SIGNAL D0(7)
        SIGNAL D1(7)
        SIGNAL D2(7)
        SIGNAL D3(7)
        SIGNAL O(7)
        SIGNAL O(7:0)
        SIGNAL D1(7:0)
        SIGNAL D2(7:0)
        SIGNAL D0(7:0)
        SIGNAL D3(7:0)
        SIGNAL Sel(1:0)
        PORT Output O(7:0)
        PORT Input D1(7:0)
        PORT Input D2(7:0)
        PORT Input D0(7:0)
        PORT Input D3(7:0)
        PORT Input Sel(1:0)
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 m4_1e
            PIN D0 D0(0)
            PIN D1 D1(0)
            PIN D2 D2(0)
            PIN D3 D3(0)
            PIN E XLXN_10
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_7 vcc
            PIN P XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_18 m4_1e
            PIN D0 D0(1)
            PIN D1 D1(1)
            PIN D2 D2(1)
            PIN D3 D3(1)
            PIN E XLXN_23
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_19 vcc
            PIN P XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_20 m4_1e
            PIN D0 D0(2)
            PIN D1 D1(2)
            PIN D2 D2(2)
            PIN D3 D3(2)
            PIN E XLXN_31
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_21 vcc
            PIN P XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_22 m4_1e
            PIN D0 D0(3)
            PIN D1 D1(3)
            PIN D2 D2(3)
            PIN D3 D3(3)
            PIN E XLXN_39
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_23 vcc
            PIN P XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_24 m4_1e
            PIN D0 D0(4)
            PIN D1 D1(4)
            PIN D2 D2(4)
            PIN D3 D3(4)
            PIN E XLXN_47
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(4)
        END BLOCK
        BEGIN BLOCK XLXI_25 vcc
            PIN P XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_26 m4_1e
            PIN D0 D0(5)
            PIN D1 D1(5)
            PIN D2 D2(5)
            PIN D3 D3(5)
            PIN E XLXN_55
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(5)
        END BLOCK
        BEGIN BLOCK XLXI_27 vcc
            PIN P XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_28 m4_1e
            PIN D0 D0(6)
            PIN D1 D1(6)
            PIN D2 D2(6)
            PIN D3 D3(6)
            PIN E XLXN_63
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(6)
        END BLOCK
        BEGIN BLOCK XLXI_29 vcc
            PIN P XLXN_63
        END BLOCK
        BEGIN BLOCK XLXI_30 m4_1e
            PIN D0 D0(7)
            PIN D1 D1(7)
            PIN D2 D2(7)
            PIN D3 D3(7)
            PIN E XLXN_71
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(7)
        END BLOCK
        BEGIN BLOCK XLXI_31 vcc
            PIN P XLXN_71
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 880 816 R0
        BEGIN BRANCH XLXN_10
            WIRE 880 784 880 800
            WIRE 880 800 880 816
        END BRANCH
        INSTANCE XLXI_7 944 816 R180
        BEGIN BRANCH D0(0)
            WIRE 800 400 832 400
            WIRE 832 400 880 400
            BEGIN DISPLAY 832 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(0)
            WIRE 800 464 832 464
            WIRE 832 464 880 464
            BEGIN DISPLAY 832 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(0)
            WIRE 800 528 832 528
            WIRE 832 528 880 528
            BEGIN DISPLAY 832 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(0)
            WIRE 800 592 816 592
            WIRE 816 592 880 592
            BEGIN DISPLAY 816 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 800 656 832 656
            WIRE 832 656 880 656
            BEGIN DISPLAY 832 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 800 720 832 720
            WIRE 832 720 880 720
            BEGIN DISPLAY 832 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 1200 496 1232 496
            WIRE 1232 496 1280 496
            BEGIN DISPLAY 1232 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 1440 816 R0
        BEGIN BRANCH XLXN_23
            WIRE 1440 784 1440 816
        END BRANCH
        INSTANCE XLXI_19 1504 816 R180
        BEGIN BRANCH D0(1)
            WIRE 1360 400 1392 400
            WIRE 1392 400 1440 400
            BEGIN DISPLAY 1392 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(1)
            WIRE 1360 464 1392 464
            WIRE 1392 464 1440 464
            BEGIN DISPLAY 1392 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(1)
            WIRE 1360 528 1392 528
            WIRE 1392 528 1440 528
            BEGIN DISPLAY 1392 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(1)
            WIRE 1360 592 1392 592
            WIRE 1392 592 1440 592
            BEGIN DISPLAY 1392 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1360 656 1408 656
            WIRE 1408 656 1440 656
            BEGIN DISPLAY 1408 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1360 720 1392 720
            WIRE 1392 720 1440 720
            BEGIN DISPLAY 1392 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1760 496 1792 496
            WIRE 1792 496 1840 496
            BEGIN DISPLAY 1792 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_20 2000 816 R0
        BEGIN BRANCH XLXN_31
            WIRE 2000 784 2000 816
        END BRANCH
        INSTANCE XLXI_21 2064 816 R180
        BEGIN BRANCH D0(2)
            WIRE 1920 400 1968 400
            WIRE 1968 400 2000 400
            BEGIN DISPLAY 1968 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(2)
            WIRE 1920 464 1952 464
            WIRE 1952 464 2000 464
            BEGIN DISPLAY 1952 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(2)
            WIRE 1920 528 1952 528
            WIRE 1952 528 2000 528
            BEGIN DISPLAY 1952 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(2)
            WIRE 1920 592 1968 592
            WIRE 1968 592 2000 592
            BEGIN DISPLAY 1968 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1920 656 1952 656
            WIRE 1952 656 2000 656
            BEGIN DISPLAY 1952 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1920 720 1952 720
            WIRE 1952 720 2000 720
            BEGIN DISPLAY 1952 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 2320 496 2352 496
            WIRE 2352 496 2400 496
            BEGIN DISPLAY 2352 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_22 2560 816 R0
        BEGIN BRANCH XLXN_39
            WIRE 2560 784 2560 816
        END BRANCH
        INSTANCE XLXI_23 2624 816 R180
        BEGIN BRANCH D0(3)
            WIRE 2480 400 2528 400
            WIRE 2528 400 2560 400
            BEGIN DISPLAY 2528 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(3)
            WIRE 2480 464 2528 464
            WIRE 2528 464 2560 464
            BEGIN DISPLAY 2528 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(3)
            WIRE 2480 528 2512 528
            WIRE 2512 528 2560 528
            BEGIN DISPLAY 2512 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(3)
            WIRE 2480 592 2512 592
            WIRE 2512 592 2560 592
            BEGIN DISPLAY 2512 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 2480 656 2512 656
            WIRE 2512 656 2560 656
            BEGIN DISPLAY 2512 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 2480 720 2512 720
            WIRE 2512 720 2560 720
            BEGIN DISPLAY 2512 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 2880 496 2912 496
            WIRE 2912 496 2960 496
            BEGIN DISPLAY 2912 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_24 880 1456 R0
        BEGIN BRANCH XLXN_47
            WIRE 880 1424 880 1456
        END BRANCH
        INSTANCE XLXI_25 944 1456 R180
        BEGIN BRANCH D0(4)
            WIRE 800 1040 832 1040
            WIRE 832 1040 880 1040
            BEGIN DISPLAY 832 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(4)
            WIRE 800 1104 832 1104
            WIRE 832 1104 880 1104
            BEGIN DISPLAY 832 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(4)
            WIRE 800 1168 832 1168
            WIRE 832 1168 880 1168
            BEGIN DISPLAY 832 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(4)
            WIRE 800 1232 816 1232
            WIRE 816 1232 880 1232
            BEGIN DISPLAY 816 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 800 1296 832 1296
            WIRE 832 1296 880 1296
            BEGIN DISPLAY 832 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 800 1360 832 1360
            WIRE 832 1360 880 1360
            BEGIN DISPLAY 832 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(4)
            WIRE 1200 1136 1232 1136
            WIRE 1232 1136 1280 1136
            BEGIN DISPLAY 1232 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_26 1440 1456 R0
        BEGIN BRANCH XLXN_55
            WIRE 1440 1424 1440 1456
        END BRANCH
        INSTANCE XLXI_27 1504 1456 R180
        BEGIN BRANCH D0(5)
            WIRE 1360 1040 1392 1040
            WIRE 1392 1040 1440 1040
            BEGIN DISPLAY 1392 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(5)
            WIRE 1360 1104 1408 1104
            WIRE 1408 1104 1440 1104
            BEGIN DISPLAY 1408 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(5)
            WIRE 1360 1168 1392 1168
            WIRE 1392 1168 1440 1168
            BEGIN DISPLAY 1392 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(5)
            WIRE 1360 1232 1392 1232
            WIRE 1392 1232 1440 1232
            BEGIN DISPLAY 1392 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1360 1296 1392 1296
            WIRE 1392 1296 1440 1296
            BEGIN DISPLAY 1392 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1360 1360 1392 1360
            WIRE 1392 1360 1440 1360
            BEGIN DISPLAY 1392 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(5)
            WIRE 1760 1136 1792 1136
            WIRE 1792 1136 1840 1136
            BEGIN DISPLAY 1792 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_28 2000 1456 R0
        BEGIN BRANCH XLXN_63
            WIRE 2000 1424 2000 1456
        END BRANCH
        INSTANCE XLXI_29 2064 1456 R180
        BEGIN BRANCH D0(6)
            WIRE 1920 1040 1952 1040
            WIRE 1952 1040 2000 1040
            BEGIN DISPLAY 1952 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(6)
            WIRE 1920 1104 1952 1104
            WIRE 1952 1104 2000 1104
            BEGIN DISPLAY 1952 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(6)
            WIRE 1920 1168 1952 1168
            WIRE 1952 1168 2000 1168
            BEGIN DISPLAY 1952 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(6)
            WIRE 1920 1232 1952 1232
            WIRE 1952 1232 2000 1232
            BEGIN DISPLAY 1952 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1920 1296 1936 1296
            WIRE 1936 1296 2000 1296
            BEGIN DISPLAY 1936 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1920 1360 1952 1360
            WIRE 1952 1360 2000 1360
            BEGIN DISPLAY 1952 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(6)
            WIRE 2320 1136 2352 1136
            WIRE 2352 1136 2400 1136
            BEGIN DISPLAY 2352 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_30 2560 1456 R0
        BEGIN BRANCH XLXN_71
            WIRE 2560 1424 2560 1456
        END BRANCH
        INSTANCE XLXI_31 2624 1456 R180
        BEGIN BRANCH D0(7)
            WIRE 2480 1040 2528 1040
            WIRE 2528 1040 2560 1040
            BEGIN DISPLAY 2528 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(7)
            WIRE 2480 1104 2512 1104
            WIRE 2512 1104 2560 1104
            BEGIN DISPLAY 2512 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(7)
            WIRE 2480 1168 2512 1168
            WIRE 2512 1168 2560 1168
            BEGIN DISPLAY 2512 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(7)
            WIRE 2480 1232 2512 1232
            WIRE 2512 1232 2560 1232
            BEGIN DISPLAY 2512 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 2480 1296 2512 1296
            WIRE 2512 1296 2560 1296
            BEGIN DISPLAY 2512 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 2480 1360 2496 1360
            WIRE 2496 1360 2560 1360
            BEGIN DISPLAY 2496 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7)
            WIRE 2880 1136 2912 1136
            WIRE 2912 1136 2960 1136
            BEGIN DISPLAY 2912 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 1120 240 1200 240
        END BRANCH
        BEGIN BRANCH D1(7:0)
            WIRE 960 160 1040 160
        END BRANCH
        BEGIN BRANCH D2(7:0)
            WIRE 960 208 1040 208
        END BRANCH
        BEGIN BRANCH D0(7:0)
            WIRE 960 112 1040 112
        END BRANCH
        BEGIN BRANCH D3(7:0)
            WIRE 960 256 1040 256
        END BRANCH
        BEGIN BRANCH Sel(1:0)
            WIRE 960 304 1040 304
        END BRANCH
        IOMARKER 1200 240 O(7:0) R0 28
        IOMARKER 960 160 D1(7:0) R180 28
        IOMARKER 960 208 D2(7:0) R180 28
        IOMARKER 960 112 D0(7:0) R180 28
        IOMARKER 960 256 D3(7:0) R180 28
        IOMARKER 960 304 Sel(1:0) R180 28
    END SHEET
END SCHEMATIC
