VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_5
        SIGNAL XLXN_26(31:0)
        SIGNAL XLXN_27
        SIGNAL XLXN_28(31:0)
        SIGNAL XLXN_29(31:0)
        SIGNAL XLXN_25
        SIGNAL XLXN_16
        SIGNAL Cout
        SIGNAL Cin
        SIGNAL CLK
        SIGNAL XLXN_66(31:0)
        SIGNAL B(31:0)
        SIGNAL A(31:0)
        SIGNAL S(31:0)
        PORT Output Cout
        PORT Input Cin
        PORT Input CLK
        PORT Input B(31:0)
        PORT Input A(31:0)
        PORT Output S(31:0)
        BEGIN BLOCKDEF adder_32bit
            TIMESTAMP 2026 1 24 21 34 17
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
        BEGIN BLOCKDEF ifd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 84 -128 64 -140 
            LINE N 64 -116 84 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
        END BLOCKDEF
        BEGIN BLOCKDEF ifd32
            TIMESTAMP 2026 1 24 21 35 32
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder_32bit
            PIN Cin XLXN_16
            PIN B(31:0) XLXN_28(31:0)
            PIN A(31:0) XLXN_29(31:0)
            PIN Cout XLXN_25
            PIN S(31:0) XLXN_26(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 ifd
            PIN C CLK
            PIN D XLXN_25
            PIN Q Cout
        END BLOCK
        BEGIN BLOCK XLXI_42 ifd32
            PIN D(31:0) XLXN_26(31:0)
            PIN CLK CLK
            PIN Q(31:0) S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 ifd
            PIN C CLK
            PIN D Cin
            PIN Q XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_36 ifd32
            PIN D(31:0) A(31:0)
            PIN CLK CLK
            PIN Q(31:0) XLXN_29(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_35 ifd32
            PIN D(31:0) B(31:0)
            PIN CLK CLK
            PIN Q(31:0) XLXN_28(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1216 752 R0
        END INSTANCE
        BEGIN BRANCH XLXN_26(31:0)
            WIRE 1600 720 1680 720
            WIRE 1680 672 1872 672
            WIRE 1680 672 1680 720
        END BRANCH
        BEGIN BRANCH XLXN_28(31:0)
            WIRE 960 672 1136 672
            WIRE 1136 656 1216 656
            WIRE 1136 656 1136 672
        END BRANCH
        BEGIN BRANCH XLXN_29(31:0)
            WIRE 960 864 1136 864
            WIRE 1136 720 1216 720
            WIRE 1136 720 1136 864
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 960 384 1200 384
            WIRE 1200 384 1200 592
            WIRE 1200 592 1216 592
        END BRANCH
        INSTANCE XLXI_15 1872 640 R0
        BEGIN BRANCH CLK
            WIRE 1792 512 1824 512
            WIRE 1824 512 1872 512
            BEGIN DISPLAY 1824 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2256 384 2336 384
        END BRANCH
        BEGIN INSTANCE XLXI_42 1872 768 R0
        END INSTANCE
        IOMARKER 2336 384 Cout R0 28
        BEGIN BRANCH XLXN_25
            WIRE 1600 592 1616 592
            WIRE 1616 384 1872 384
            WIRE 1616 384 1616 592
        END BRANCH
        INSTANCE XLXI_10 576 640 R0
        BEGIN BRANCH Cin
            WIRE 496 384 576 384
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 496 512 576 512
        END BRANCH
        BEGIN INSTANCE XLXI_35 576 768 R0
        END INSTANCE
        IOMARKER 496 384 Cin R180 28
        IOMARKER 496 512 CLK R180 28
        BEGIN INSTANCE XLXI_36 576 960 R0
        END INSTANCE
        BEGIN BRANCH B(31:0)
            WIRE 496 672 576 672
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 496 736 528 736
            WIRE 528 736 576 736
            BEGIN DISPLAY 528 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 496 864 576 864
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 496 928 528 928
            WIRE 528 928 576 928
            BEGIN DISPLAY 528 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1792 736 1840 736
            WIRE 1840 736 1872 736
            BEGIN DISPLAY 1840 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 2256 672 2336 672
        END BRANCH
        IOMARKER 496 672 B(31:0) R180 28
        IOMARKER 496 864 A(31:0) R180 28
        IOMARKER 2336 672 S(31:0) R0 28
    END SHEET
END SCHEMATIC
