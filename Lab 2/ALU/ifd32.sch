VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL D(31:0)
        SIGNAL Q(31:0)
        SIGNAL XLXN_38
        SIGNAL CLK
        SIGNAL D(15:0)
        SIGNAL D(31:16)
        SIGNAL Q(15:0)
        SIGNAL Q(31:16)
        PORT Input D(31:0)
        PORT Output Q(31:0)
        PORT Input CLK
        BEGIN BLOCKDEF ifd16
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 84 -128 64 -140 
            LINE N 64 -116 84 -128 
            LINE N 0 -128 64 -128 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
        END BLOCKDEF
        BEGIN BLOCK XLXI_13 ifd16
            PIN C CLK
            PIN D(15:0) D(15:0)
            PIN Q(15:0) Q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 ifd16
            PIN C CLK
            PIN D(15:0) D(31:16)
            PIN Q(15:0) Q(31:16)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH D(31:0)
            WIRE 1440 320 1472 320
            WIRE 1472 320 1520 320
        END BRANCH
        BEGIN BRANCH Q(31:0)
            WIRE 1600 320 1632 320
            WIRE 1632 320 1680 320
        END BRANCH
        INSTANCE XLXI_13 1360 816 R0
        INSTANCE XLXI_14 1360 1072 R0
        BEGIN BRANCH CLK
            WIRE 1280 944 1344 944
            WIRE 1344 944 1360 944
            WIRE 1344 688 1360 688
            WIRE 1344 688 1344 912
            WIRE 1344 912 1344 944
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 1280 560 1312 560
            WIRE 1312 560 1360 560
            BEGIN DISPLAY 1312 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(31:16)
            WIRE 1280 816 1296 816
            WIRE 1296 816 1360 816
            BEGIN DISPLAY 1296 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:0)
            WIRE 1744 560 1776 560
            WIRE 1776 560 1824 560
            BEGIN DISPLAY 1776 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:16)
            WIRE 1744 816 1776 816
            WIRE 1776 816 1824 816
            BEGIN DISPLAY 1776 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1280 944 CLK R180 28
        IOMARKER 1440 320 D(31:0) R180 28
        IOMARKER 1680 320 Q(31:0) R0 28
    END SHEET
END SCHEMATIC
