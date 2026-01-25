VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D0(0)
        SIGNAL D1(0)
        SIGNAL D2(0)
        SIGNAL D3(0)
        SIGNAL D0(1)
        SIGNAL D1(1)
        SIGNAL D2(1)
        SIGNAL D3(1)
        SIGNAL D4(1)
        SIGNAL D5(1)
        SIGNAL D0(2)
        SIGNAL D1(2)
        SIGNAL D2(2)
        SIGNAL D3(2)
        SIGNAL D4(2)
        SIGNAL D5(2)
        SIGNAL D0(3)
        SIGNAL D1(3)
        SIGNAL D2(3)
        SIGNAL D3(3)
        SIGNAL D4(3)
        SIGNAL D5(3)
        SIGNAL O(7:0)
        SIGNAL Sel(2:0)
        SIGNAL D1(7:0)
        SIGNAL D2(7:0)
        SIGNAL D0(7:0)
        SIGNAL D3(7:0)
        SIGNAL D5(7:0)
        SIGNAL D6(7:0)
        SIGNAL D4(7:0)
        SIGNAL D7(7:0)
        SIGNAL D0(4)
        SIGNAL D1(4)
        SIGNAL D2(4)
        SIGNAL D3(4)
        SIGNAL D4(4)
        SIGNAL D5(4)
        SIGNAL D0(5)
        SIGNAL D1(5)
        SIGNAL D2(5)
        SIGNAL D3(5)
        SIGNAL D4(5)
        SIGNAL D5(5)
        SIGNAL D0(6)
        SIGNAL D1(6)
        SIGNAL D2(6)
        SIGNAL D3(6)
        SIGNAL D4(6)
        SIGNAL D5(6)
        SIGNAL D0(7)
        SIGNAL D1(7)
        SIGNAL D2(7)
        SIGNAL D3(7)
        SIGNAL D4(7)
        SIGNAL D5(7)
        SIGNAL O(0)
        SIGNAL XLXN_1
        SIGNAL Sel(0)
        SIGNAL Sel(1)
        SIGNAL XLXN_121
        SIGNAL XLXN_122
        SIGNAL XLXN_123
        SIGNAL XLXN_124
        SIGNAL XLXN_125
        SIGNAL XLXN_126
        SIGNAL XLXN_127
        SIGNAL O(1)
        SIGNAL O(2)
        SIGNAL O(3)
        SIGNAL O(4)
        SIGNAL O(5)
        SIGNAL O(6)
        SIGNAL O(7)
        SIGNAL Sel(2)
        SIGNAL D6(1)
        SIGNAL D7(1)
        SIGNAL D6(2)
        SIGNAL D7(2)
        SIGNAL D6(3)
        SIGNAL D7(3)
        SIGNAL D6(4)
        SIGNAL D7(4)
        SIGNAL D6(5)
        SIGNAL D7(5)
        SIGNAL D6(6)
        SIGNAL D7(6)
        SIGNAL D6(7)
        SIGNAL D7(7)
        SIGNAL D7(0)
        SIGNAL D6(0)
        SIGNAL D5(0)
        SIGNAL D4(0)
        PORT Output O(7:0)
        PORT Input Sel(2:0)
        PORT Input D1(7:0)
        PORT Input D2(7:0)
        PORT Input D0(7:0)
        PORT Input D3(7:0)
        PORT Input D5(7:0)
        PORT Input D6(7:0)
        PORT Input D4(7:0)
        PORT Input D7(7:0)
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF m8_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -224 96 -224 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 0 -288 96 -288 
            LINE N 0 -352 96 -352 
            LINE N 0 -416 96 -416 
            LINE N 0 -544 96 -544 
            LINE N 0 -608 96 -608 
            LINE N 0 -672 96 -672 
            LINE N 0 -736 96 -736 
            LINE N 160 -160 96 -160 
            LINE N 160 -268 160 -160 
            LINE N 128 -224 96 -224 
            LINE N 128 -264 128 -224 
            LINE N 192 -96 96 -96 
            LINE N 192 -276 192 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -280 224 -32 
            LINE N 320 -512 256 -512 
            LINE N 96 -768 96 -256 
            LINE N 256 -704 96 -768 
            LINE N 256 -288 256 -704 
            LINE N 96 -256 256 -288 
            LINE N 0 -32 96 -32 
            LINE N 0 -480 96 -480 
        END BLOCKDEF
        BEGIN BLOCK XLXI_32 m8_1e
            PIN D0 D0(0)
            PIN D1 D1(0)
            PIN D2 D2(0)
            PIN D3 D3(0)
            PIN D4 D4(0)
            PIN D5 D5(0)
            PIN D6 D6(0)
            PIN D7 D7(0)
            PIN E XLXN_1
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 vcc
            PIN P XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_43 m8_1e
            PIN D0 D0(1)
            PIN D1 D1(1)
            PIN D2 D2(1)
            PIN D3 D3(1)
            PIN D4 D4(1)
            PIN D5 D5(1)
            PIN D6 D6(1)
            PIN D7 D7(1)
            PIN E XLXN_121
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_44 vcc
            PIN P XLXN_121
        END BLOCK
        BEGIN BLOCK XLXI_45 m8_1e
            PIN D0 D0(2)
            PIN D1 D1(2)
            PIN D2 D2(2)
            PIN D3 D3(2)
            PIN D4 D4(2)
            PIN D5 D5(2)
            PIN D6 D6(2)
            PIN D7 D7(2)
            PIN E XLXN_122
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_46 vcc
            PIN P XLXN_122
        END BLOCK
        BEGIN BLOCK XLXI_47 m8_1e
            PIN D0 D0(3)
            PIN D1 D1(3)
            PIN D2 D2(3)
            PIN D3 D3(3)
            PIN D4 D4(3)
            PIN D5 D5(3)
            PIN D6 D6(3)
            PIN D7 D7(3)
            PIN E XLXN_123
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_48 vcc
            PIN P XLXN_123
        END BLOCK
        BEGIN BLOCK XLXI_49 m8_1e
            PIN D0 D0(4)
            PIN D1 D1(4)
            PIN D2 D2(4)
            PIN D3 D3(4)
            PIN D4 D4(4)
            PIN D5 D5(4)
            PIN D6 D6(4)
            PIN D7 D7(4)
            PIN E XLXN_124
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(4)
        END BLOCK
        BEGIN BLOCK XLXI_50 vcc
            PIN P XLXN_124
        END BLOCK
        BEGIN BLOCK XLXI_51 m8_1e
            PIN D0 D0(5)
            PIN D1 D1(5)
            PIN D2 D2(5)
            PIN D3 D3(5)
            PIN D4 D4(5)
            PIN D5 D5(5)
            PIN D6 D6(5)
            PIN D7 D7(5)
            PIN E XLXN_125
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(5)
        END BLOCK
        BEGIN BLOCK XLXI_52 vcc
            PIN P XLXN_125
        END BLOCK
        BEGIN BLOCK XLXI_53 m8_1e
            PIN D0 D0(6)
            PIN D1 D1(6)
            PIN D2 D2(6)
            PIN D3 D3(6)
            PIN D4 D4(6)
            PIN D5 D5(6)
            PIN D6 D6(6)
            PIN D7 D7(6)
            PIN E XLXN_126
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(6)
        END BLOCK
        BEGIN BLOCK XLXI_54 vcc
            PIN P XLXN_126
        END BLOCK
        BEGIN BLOCK XLXI_55 m8_1e
            PIN D0 D0(7)
            PIN D1 D1(7)
            PIN D2 D2(7)
            PIN D3 D3(7)
            PIN D4 D4(7)
            PIN D5 D5(7)
            PIN D6 D6(7)
            PIN D7 D7(7)
            PIN E XLXN_127
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN S2 Sel(2)
            PIN O O(7)
        END BLOCK
        BEGIN BLOCK XLXI_56 vcc
            PIN P XLXN_127
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D0(0)
            WIRE 784 720 816 720
            WIRE 816 720 864 720
            BEGIN DISPLAY 816 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(0)
            WIRE 784 784 816 784
            WIRE 816 784 864 784
            BEGIN DISPLAY 816 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(0)
            WIRE 784 848 816 848
            WIRE 816 848 864 848
            BEGIN DISPLAY 816 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(0)
            WIRE 784 912 800 912
            WIRE 800 912 864 912
            BEGIN DISPLAY 800 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(1)
            WIRE 1344 720 1376 720
            WIRE 1376 720 1424 720
            BEGIN DISPLAY 1376 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(1)
            WIRE 1344 784 1376 784
            WIRE 1376 784 1424 784
            BEGIN DISPLAY 1376 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(1)
            WIRE 1344 848 1376 848
            WIRE 1376 848 1424 848
            BEGIN DISPLAY 1376 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(1)
            WIRE 1344 912 1376 912
            WIRE 1376 912 1424 912
            BEGIN DISPLAY 1376 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(1)
            WIRE 1344 976 1392 976
            WIRE 1392 976 1424 976
            BEGIN DISPLAY 1392 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(1)
            WIRE 1344 1040 1376 1040
            WIRE 1376 1040 1424 1040
            BEGIN DISPLAY 1376 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(2)
            WIRE 1904 720 1952 720
            WIRE 1952 720 1984 720
            BEGIN DISPLAY 1952 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(2)
            WIRE 1904 784 1936 784
            WIRE 1936 784 1984 784
            BEGIN DISPLAY 1936 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(2)
            WIRE 1904 848 1936 848
            WIRE 1936 848 1984 848
            BEGIN DISPLAY 1936 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(2)
            WIRE 1904 912 1952 912
            WIRE 1952 912 1984 912
            BEGIN DISPLAY 1952 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(2)
            WIRE 1904 976 1936 976
            WIRE 1936 976 1984 976
            BEGIN DISPLAY 1936 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(2)
            WIRE 1904 1040 1936 1040
            WIRE 1936 1040 1984 1040
            BEGIN DISPLAY 1936 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(3)
            WIRE 2464 720 2512 720
            WIRE 2512 720 2544 720
            BEGIN DISPLAY 2512 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(3)
            WIRE 2464 784 2512 784
            WIRE 2512 784 2544 784
            BEGIN DISPLAY 2512 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(3)
            WIRE 2464 848 2496 848
            WIRE 2496 848 2544 848
            BEGIN DISPLAY 2496 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(3)
            WIRE 2464 912 2496 912
            WIRE 2496 912 2544 912
            BEGIN DISPLAY 2496 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(3)
            WIRE 2464 976 2496 976
            WIRE 2496 976 2544 976
            BEGIN DISPLAY 2496 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(3)
            WIRE 2464 1040 2496 1040
            WIRE 2496 1040 2544 1040
            BEGIN DISPLAY 2496 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 1104 560 1184 560
        END BRANCH
        IOMARKER 1184 560 O(7:0) R0 28
        BEGIN BRANCH D1(7:0)
            WIRE 960 320 1040 320
        END BRANCH
        BEGIN BRANCH D2(7:0)
            WIRE 960 368 1040 368
        END BRANCH
        BEGIN BRANCH D0(7:0)
            WIRE 960 272 1040 272
        END BRANCH
        BEGIN BRANCH D3(7:0)
            WIRE 960 416 1040 416
        END BRANCH
        IOMARKER 960 320 D1(7:0) R180 28
        IOMARKER 960 368 D2(7:0) R180 28
        IOMARKER 960 272 D0(7:0) R180 28
        IOMARKER 960 416 D3(7:0) R180 28
        BEGIN BRANCH D5(7:0)
            WIRE 960 512 1040 512
        END BRANCH
        BEGIN BRANCH D6(7:0)
            WIRE 960 560 1040 560
        END BRANCH
        BEGIN BRANCH D4(7:0)
            WIRE 960 464 1040 464
        END BRANCH
        BEGIN BRANCH D7(7:0)
            WIRE 960 608 1040 608
        END BRANCH
        IOMARKER 960 512 D5(7:0) R180 28
        IOMARKER 960 560 D6(7:0) R180 28
        IOMARKER 960 464 D4(7:0) R180 28
        IOMARKER 960 608 D7(7:0) R180 28
        BEGIN BRANCH D0(4)
            WIRE 784 1728 816 1728
            WIRE 816 1728 864 1728
            BEGIN DISPLAY 816 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(4)
            WIRE 784 1792 816 1792
            WIRE 816 1792 864 1792
            BEGIN DISPLAY 816 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(4)
            WIRE 784 1856 816 1856
            WIRE 816 1856 864 1856
            BEGIN DISPLAY 816 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(4)
            WIRE 784 1920 800 1920
            WIRE 800 1920 864 1920
            BEGIN DISPLAY 800 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(4)
            WIRE 784 1984 816 1984
            WIRE 816 1984 864 1984
            BEGIN DISPLAY 816 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(4)
            WIRE 784 2048 816 2048
            WIRE 816 2048 864 2048
            BEGIN DISPLAY 816 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(5)
            WIRE 1344 1728 1376 1728
            WIRE 1376 1728 1424 1728
            BEGIN DISPLAY 1376 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(5)
            WIRE 1344 1792 1392 1792
            WIRE 1392 1792 1424 1792
            BEGIN DISPLAY 1392 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(5)
            WIRE 1344 1856 1376 1856
            WIRE 1376 1856 1424 1856
            BEGIN DISPLAY 1376 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(5)
            WIRE 1344 1920 1376 1920
            WIRE 1376 1920 1424 1920
            BEGIN DISPLAY 1376 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(5)
            WIRE 1344 1984 1376 1984
            WIRE 1376 1984 1424 1984
            BEGIN DISPLAY 1376 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(5)
            WIRE 1344 2048 1376 2048
            WIRE 1376 2048 1424 2048
            BEGIN DISPLAY 1376 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(6)
            WIRE 1904 1728 1936 1728
            WIRE 1936 1728 1984 1728
            BEGIN DISPLAY 1936 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(6)
            WIRE 1904 1792 1936 1792
            WIRE 1936 1792 1984 1792
            BEGIN DISPLAY 1936 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(6)
            WIRE 1904 1856 1936 1856
            WIRE 1936 1856 1984 1856
            BEGIN DISPLAY 1936 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(6)
            WIRE 1904 1920 1936 1920
            WIRE 1936 1920 1984 1920
            BEGIN DISPLAY 1936 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(6)
            WIRE 1904 1984 1920 1984
            WIRE 1920 1984 1984 1984
            BEGIN DISPLAY 1920 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(6)
            WIRE 1904 2048 1936 2048
            WIRE 1936 2048 1984 2048
            BEGIN DISPLAY 1936 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(7)
            WIRE 2464 1728 2512 1728
            WIRE 2512 1728 2544 1728
            BEGIN DISPLAY 2512 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(7)
            WIRE 2464 1792 2496 1792
            WIRE 2496 1792 2544 1792
            BEGIN DISPLAY 2496 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(7)
            WIRE 2464 1856 2496 1856
            WIRE 2496 1856 2544 1856
            BEGIN DISPLAY 2496 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(7)
            WIRE 2464 1920 2496 1920
            WIRE 2496 1920 2544 1920
            BEGIN DISPLAY 2496 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(7)
            WIRE 2464 1984 2496 1984
            WIRE 2496 1984 2544 1984
            BEGIN DISPLAY 2496 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(7)
            WIRE 2464 2048 2480 2048
            WIRE 2480 2048 2544 2048
            BEGIN DISPLAY 2480 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_32 864 1456 R0
        BEGIN BRANCH O(0)
            WIRE 1184 944 1216 944
            WIRE 1216 944 1264 944
            BEGIN DISPLAY 1216 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 864 1424 864 1440
            WIRE 864 1440 864 1456
        END BRANCH
        INSTANCE XLXI_2 928 1456 R180
        BEGIN BRANCH Sel(0)
            WIRE 784 1232 816 1232
            WIRE 816 1232 864 1232
            BEGIN DISPLAY 816 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 784 1296 816 1296
            WIRE 816 1296 864 1296
            BEGIN DISPLAY 816 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_43 1424 1456 R0
        BEGIN BRANCH XLXN_121
            WIRE 1424 1424 1424 1440
            WIRE 1424 1440 1424 1456
        END BRANCH
        INSTANCE XLXI_44 1488 1456 R180
        INSTANCE XLXI_45 1984 1456 R0
        BEGIN BRANCH XLXN_122
            WIRE 1984 1424 1984 1440
            WIRE 1984 1440 1984 1456
        END BRANCH
        INSTANCE XLXI_46 2048 1456 R180
        INSTANCE XLXI_47 2544 1456 R0
        BEGIN BRANCH XLXN_123
            WIRE 2544 1424 2544 1440
            WIRE 2544 1440 2544 1456
        END BRANCH
        INSTANCE XLXI_48 2608 1456 R180
        INSTANCE XLXI_49 864 2464 R0
        BEGIN BRANCH XLXN_124
            WIRE 864 2432 864 2448
            WIRE 864 2448 864 2464
        END BRANCH
        INSTANCE XLXI_50 928 2464 R180
        INSTANCE XLXI_51 1424 2464 R0
        BEGIN BRANCH XLXN_125
            WIRE 1424 2432 1424 2448
            WIRE 1424 2448 1424 2464
        END BRANCH
        INSTANCE XLXI_52 1488 2464 R180
        INSTANCE XLXI_53 1984 2464 R0
        BEGIN BRANCH XLXN_126
            WIRE 1984 2432 1984 2448
            WIRE 1984 2448 1984 2464
        END BRANCH
        INSTANCE XLXI_54 2048 2464 R180
        INSTANCE XLXI_55 2544 2464 R0
        BEGIN BRANCH XLXN_127
            WIRE 2544 2432 2544 2448
            WIRE 2544 2448 2544 2464
        END BRANCH
        INSTANCE XLXI_56 2608 2464 R180
        BEGIN BRANCH O(1)
            WIRE 1744 944 1776 944
            WIRE 1776 944 1824 944
            BEGIN DISPLAY 1776 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 2304 944 2336 944
            WIRE 2336 944 2384 944
            BEGIN DISPLAY 2336 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 2864 944 2896 944
            WIRE 2896 944 2944 944
            BEGIN DISPLAY 2896 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(4)
            WIRE 1184 1952 1216 1952
            WIRE 1216 1952 1264 1952
            BEGIN DISPLAY 1216 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(5)
            WIRE 1744 1952 1776 1952
            WIRE 1776 1952 1824 1952
            BEGIN DISPLAY 1776 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(6)
            WIRE 2304 1952 2336 1952
            WIRE 2336 1952 2384 1952
            BEGIN DISPLAY 2336 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7)
            WIRE 2864 1952 2896 1952
            WIRE 2896 1952 2944 1952
            BEGIN DISPLAY 2896 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D4(0)
            WIRE 784 976 816 976
            WIRE 816 976 864 976
            BEGIN DISPLAY 816 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D5(0)
            WIRE 784 1040 816 1040
            WIRE 816 1040 864 1040
            BEGIN DISPLAY 816 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(0)
            WIRE 784 1104 816 1104
            WIRE 816 1104 864 1104
            BEGIN DISPLAY 816 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(0)
            WIRE 784 1168 800 1168
            WIRE 800 1168 864 1168
            BEGIN DISPLAY 800 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 784 1360 816 1360
            WIRE 816 1360 864 1360
            BEGIN DISPLAY 816 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2:0)
            WIRE 1248 480 1328 480
        END BRANCH
        IOMARKER 1248 480 Sel(2:0) R180 28
        BEGIN BRANCH D6(1)
            WIRE 1344 1104 1392 1104
            WIRE 1392 1104 1424 1104
            BEGIN DISPLAY 1392 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(1)
            WIRE 1344 1168 1376 1168
            WIRE 1376 1168 1424 1168
            BEGIN DISPLAY 1376 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1344 1232 1376 1232
            WIRE 1376 1232 1424 1232
            BEGIN DISPLAY 1376 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1344 1296 1392 1296
            WIRE 1392 1296 1424 1296
            BEGIN DISPLAY 1392 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 1344 1360 1376 1360
            WIRE 1376 1360 1424 1360
            BEGIN DISPLAY 1376 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(2)
            WIRE 1904 1104 1952 1104
            WIRE 1952 1104 1984 1104
            BEGIN DISPLAY 1952 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(2)
            WIRE 1904 1168 1936 1168
            WIRE 1936 1168 1984 1168
            BEGIN DISPLAY 1936 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1904 1232 1936 1232
            WIRE 1936 1232 1984 1232
            BEGIN DISPLAY 1936 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1904 1296 1952 1296
            WIRE 1952 1296 1984 1296
            BEGIN DISPLAY 1952 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 1904 1360 1936 1360
            WIRE 1936 1360 1984 1360
            BEGIN DISPLAY 1936 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(3)
            WIRE 2464 1104 2512 1104
            WIRE 2512 1104 2544 1104
            BEGIN DISPLAY 2512 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(3)
            WIRE 2464 1168 2496 1168
            WIRE 2496 1168 2544 1168
            BEGIN DISPLAY 2496 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 2464 1232 2496 1232
            WIRE 2496 1232 2544 1232
            BEGIN DISPLAY 2496 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 2464 1296 2512 1296
            WIRE 2512 1296 2544 1296
            BEGIN DISPLAY 2512 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 2464 1360 2496 1360
            WIRE 2496 1360 2544 1360
            BEGIN DISPLAY 2496 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(4)
            WIRE 784 2112 832 2112
            WIRE 832 2112 864 2112
            BEGIN DISPLAY 832 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(4)
            WIRE 784 2176 816 2176
            WIRE 816 2176 864 2176
            BEGIN DISPLAY 816 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 784 2240 816 2240
            WIRE 816 2240 864 2240
            BEGIN DISPLAY 816 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 784 2304 832 2304
            WIRE 832 2304 864 2304
            BEGIN DISPLAY 832 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 784 2368 816 2368
            WIRE 816 2368 864 2368
            BEGIN DISPLAY 816 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(5)
            WIRE 1344 2112 1392 2112
            WIRE 1392 2112 1424 2112
            BEGIN DISPLAY 1392 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(5)
            WIRE 1344 2176 1376 2176
            WIRE 1376 2176 1424 2176
            BEGIN DISPLAY 1376 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1344 2240 1376 2240
            WIRE 1376 2240 1424 2240
            BEGIN DISPLAY 1376 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1344 2304 1392 2304
            WIRE 1392 2304 1424 2304
            BEGIN DISPLAY 1392 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 1344 2368 1376 2368
            WIRE 1376 2368 1424 2368
            BEGIN DISPLAY 1376 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(6)
            WIRE 1904 2112 1952 2112
            WIRE 1952 2112 1984 2112
            BEGIN DISPLAY 1952 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(6)
            WIRE 1904 2176 1936 2176
            WIRE 1936 2176 1984 2176
            BEGIN DISPLAY 1936 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1904 2240 1936 2240
            WIRE 1936 2240 1984 2240
            BEGIN DISPLAY 1936 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1904 2304 1952 2304
            WIRE 1952 2304 1984 2304
            BEGIN DISPLAY 1952 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 1904 2368 1936 2368
            WIRE 1936 2368 1984 2368
            BEGIN DISPLAY 1936 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D6(7)
            WIRE 2464 2112 2512 2112
            WIRE 2512 2112 2544 2112
            BEGIN DISPLAY 2512 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D7(7)
            WIRE 2464 2176 2496 2176
            WIRE 2496 2176 2544 2176
            BEGIN DISPLAY 2496 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 2464 2240 2496 2240
            WIRE 2496 2240 2544 2240
            BEGIN DISPLAY 2496 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 2464 2304 2512 2304
            WIRE 2512 2304 2544 2304
            BEGIN DISPLAY 2512 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(2)
            WIRE 2464 2368 2496 2368
            WIRE 2496 2368 2544 2368
            BEGIN DISPLAY 2496 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
