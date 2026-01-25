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
        SIGNAL C
        SIGNAL B
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL CO
        SIGNAL S
        SIGNAL A
        PORT Input C
        PORT Input B
        PORT Output CO
        PORT Output S
        PORT Input A
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 C
            PIN I1 XLXN_1
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 C
            PIN I1 A
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 C
            PIN I1 B
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 XLXN_17
            PIN I1 XLXN_16
            PIN I2 XLXN_15
            PIN O CO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1344 1008 R0
        INSTANCE XLXI_2 1744 1040 R0
        INSTANCE XLXI_3 1344 1280 R0
        INSTANCE XLXI_4 1344 1504 R0
        INSTANCE XLXI_5 1344 1728 R0
        INSTANCE XLXI_6 1744 1536 R0
        BEGIN BRANCH XLXN_1
            WIRE 1600 912 1744 912
        END BRANCH
        BEGIN BRANCH C
            WIRE 1072 1488 1216 1488
            WIRE 1216 1488 1296 1488
            WIRE 1296 1488 1296 1664
            WIRE 1296 1664 1344 1664
            WIRE 1296 976 1744 976
            WIRE 1296 976 1296 1440
            WIRE 1296 1440 1344 1440
            WIRE 1296 1440 1296 1488
        END BRANCH
        BEGIN BRANCH B
            WIRE 1072 1184 1216 1184
            WIRE 1216 1184 1264 1184
            WIRE 1264 1184 1264 1216
            WIRE 1264 1216 1344 1216
            WIRE 1264 1216 1264 1600
            WIRE 1264 1600 1344 1600
            WIRE 1264 944 1344 944
            WIRE 1264 944 1264 1184
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1600 1184 1744 1184
            WIRE 1744 1184 1744 1344
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1600 1408 1744 1408
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1600 1632 1744 1632
            WIRE 1744 1472 1744 1632
        END BRANCH
        BEGIN BRANCH CO
            WIRE 2000 1408 2048 1408
            WIRE 2048 1408 2192 1408
        END BRANCH
        BEGIN BRANCH S
            WIRE 2000 944 2048 944
            WIRE 2048 944 2192 944
        END BRANCH
        BEGIN BRANCH A
            WIRE 1056 880 1200 880
            WIRE 1200 880 1216 880
            WIRE 1216 880 1232 880
            WIRE 1232 880 1344 880
            WIRE 1232 880 1232 1152
            WIRE 1232 1152 1344 1152
            WIRE 1232 1152 1232 1376
            WIRE 1232 1376 1344 1376
        END BRANCH
        IOMARKER 1072 1184 B R180 28
        IOMARKER 1072 1488 C R180 28
        IOMARKER 1056 880 A R180 28
        IOMARKER 2192 944 S R0 28
        IOMARKER 2192 1408 CO R0 28
    END SHEET
END SCHEMATIC
