VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:64)
        SIGNAL q(71:64)
        SIGNAL clk
        SIGNAL q(63:48)
        SIGNAL d(63:48)
        SIGNAL q(47:32)
        SIGNAL d(47:32)
        SIGNAL q(31:16)
        SIGNAL d(31:16)
        SIGNAL q(15:0)
        SIGNAL d(15:0)
        SIGNAL clr
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL ce
        PORT Input clk
        PORT Input clr
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input ce
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1440 576 R0
        INSTANCE XLXI_2 1440 928 R0
        BEGIN BRANCH d(71:64)
            WIRE 1280 320 1440 320
            BEGIN DISPLAY 1280 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1824 320 1984 320
            BEGIN DISPLAY 1984 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1280 384 1360 384
            WIRE 1360 384 1440 384
            BEGIN DISPLAY 1280 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1280 448 1440 448
            BEGIN DISPLAY 1280 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1280 544 1440 544
            BEGIN DISPLAY 1280 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1824 672 1984 672
            BEGIN DISPLAY 1984 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1280 672 1328 672
            WIRE 1328 672 1440 672
            BEGIN DISPLAY 1280 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1280 736 1440 736
            BEGIN DISPLAY 1280 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1280 800 1440 800
            BEGIN DISPLAY 1280 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1280 896 1440 896
            BEGIN DISPLAY 1280 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_3 1440 1280 R0
        BEGIN BRANCH q(47:32)
            WIRE 1824 1024 1984 1024
            BEGIN DISPLAY 1984 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1280 1024 1440 1024
            BEGIN DISPLAY 1280 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1280 1088 1440 1088
            BEGIN DISPLAY 1280 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1280 1152 1440 1152
            BEGIN DISPLAY 1280 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1280 1248 1440 1248
            BEGIN DISPLAY 1280 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1440 1632 R0
        BEGIN BRANCH q(31:16)
            WIRE 1824 1376 1984 1376
            BEGIN DISPLAY 1984 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1280 1376 1440 1376
            BEGIN DISPLAY 1280 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1280 1440 1440 1440
            BEGIN DISPLAY 1280 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1280 1504 1440 1504
            BEGIN DISPLAY 1280 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1280 1600 1440 1600
            BEGIN DISPLAY 1280 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 1440 1984 R0
        BEGIN BRANCH q(15:0)
            WIRE 1824 1728 1984 1728
            BEGIN DISPLAY 1984 1728 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1280 1728 1440 1728
            BEGIN DISPLAY 1280 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1280 1792 1440 1792
            BEGIN DISPLAY 1280 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1280 1856 1440 1856
            BEGIN DISPLAY 1280 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1280 1952 1440 1952
            BEGIN DISPLAY 1280 1952 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:0)
            WIRE 1360 80 1520 80
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1600 80 1760 80
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1360 112 1520 112
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1360 144 1520 144
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1360 176 1520 176
        END BRANCH
        IOMARKER 1360 80 d(71:0) R180 28
        IOMARKER 1760 80 q(71:0) R0 28
        IOMARKER 1360 112 ce R180 28
        IOMARKER 1360 144 clk R180 28
        IOMARKER 1360 176 clr R180 28
    END SHEET
END SCHEMATIC
