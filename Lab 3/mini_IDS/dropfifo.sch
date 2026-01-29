VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL fifowrite
        SIGNAL XLXN_12
        SIGNAL XLXN_13(7:0)
        SIGNAL XLXN_15(7:0)
        SIGNAL XLXN_20
        SIGNAL XLXN_20
        SIGNAL clk
        SIGNAL XLXN_16(7:0)
        SIGNAL XLXN_24
        SIGNAL drop_pkt
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL fiforead
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35(7:0)
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL valid_data
        SIGNAL XLXN_40
        PORT Input firstword
        PORT Input lastword
        PORT Input fifowrite
        PORT Input XLXN_20
        PORT Input clk
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Output valid_data
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 29 6 17 16
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 XLXN_5
            PIN I1 XLXN_4
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_4 and2b1
            PIN I0 XLXN_37
            PIN I1 XLXN_6
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C clk
            PIN CE XLXN_12
            PIN CLR
            PIN D(7:0) XLXN_13(7:0)
            PIN Q(7:0) XLXN_35(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) XLXN_13(7:0)
            PIN B(7:0) XLXN_15(7:0)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) XLXN_15(7:0)
            PIN B(7:0)
            PIN EQ XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_11 and3b2
            PIN I0 XLXN_28
            PIN I1 XLXN_27
            PIN I2 fiforead
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_12 cb8ce
            PIN C
            PIN CE XLXN_33
            PIN CLR XLXN_34
            PIN CEO
            PIN Q(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 fdc
            PIN C
            PIN CLR XLXN_34
            PIN D XLXN_33
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_14 cb8cle
            PIN C
            PIN CE XLXN_38
            PIN CLR
            PIN D(7:0) XLXN_35(7:0)
            PIN L XLXN_37
            PIN CEO
            PIN Q(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_15 reg9B
            PIN clk
            PIN clr
            PIN d(71:0)
            PIN ce XLXN_40
            PIN q(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 vcc
            PIN P XLXN_40
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 480 496 R0
        BEGIN BRANCH firstword
            WIRE 400 240 480 240
        END BRANCH
        IOMARKER 400 240 firstword R180 28
        INSTANCE XLXI_2 480 896 R0
        BEGIN BRANCH lastword
            WIRE 400 640 480 640
        END BRANCH
        IOMARKER 400 640 lastword R180 28
        BEGIN BRANCH XLXN_6
            WIRE 1248 496 1360 496
        END BRANCH
        INSTANCE XLXI_5 480 1296 R0
        INSTANCE XLXI_3 992 592 R0
        BEGIN BRANCH XLXN_4
            WIRE 864 240 880 240
            WIRE 880 240 880 464
            WIRE 880 464 992 464
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 864 640 880 640
            WIRE 880 528 992 528
            WIRE 880 528 880 640
        END BRANCH
        INSTANCE XLXI_4 1360 624 R0
        INSTANCE XLXI_7 1360 528 R0
        BEGIN BRANCH fifowrite
            WIRE 1328 272 1360 272
        END BRANCH
        IOMARKER 1328 272 fifowrite R180 28
        INSTANCE XLXI_8 1040 1520 R0
        BEGIN BRANCH XLXN_12
            WIRE 384 896 384 1104
            WIRE 384 1104 480 1104
            WIRE 384 896 1696 896
            WIRE 1616 528 1696 528
            WIRE 1696 528 1696 896
        END BRANCH
        BEGIN BRANCH XLXN_13(7:0)
            WIRE 416 912 416 1040
            WIRE 416 1040 480 1040
            WIRE 416 912 928 912
            WIRE 928 912 928 1200
            WIRE 928 1200 1040 1200
        END BRANCH
        IOMARKER 400 2048 clk R180 28
        BEGIN BRANCH clk
            WIRE 400 2048 448 2048
            WIRE 448 2048 448 2128
            WIRE 448 2128 480 2128
            WIRE 448 768 464 768
            WIRE 464 768 480 768
            WIRE 448 768 448 1168
            WIRE 448 1168 448 2048
            WIRE 448 1168 480 1168
            WIRE 464 368 480 368
            WIRE 464 368 464 448
            WIRE 464 448 464 768
            WIRE 464 448 912 448
            WIRE 912 400 912 448
            WIRE 912 400 1360 400
        END BRANCH
        BEGIN BRANCH XLXN_15(7:0)
            WIRE 1024 1392 1040 1392
            WIRE 1024 1392 1024 1680
            WIRE 1024 1680 1040 1680
        END BRANCH
        INSTANCE XLXI_9 1040 2000 R0
        INSTANCE XLXI_6 480 2256 R0
        BEGIN BRANCH drop_pkt
            WIRE 400 2000 480 2000
        END BRANCH
        IOMARKER 400 2000 drop_pkt R180 28
        INSTANCE XLXI_11 1616 1424 R0
        BEGIN BRANCH XLXN_27
            WIRE 1424 1296 1616 1296
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1424 1776 1520 1776
            WIRE 1520 1360 1520 1776
            WIRE 1520 1360 1616 1360
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1552 1104 1616 1104
            WIRE 1616 1104 1616 1232
        END BRANCH
        INSTANCE XLXI_12 2080 1488 R0
        INSTANCE XLXI_13 2080 1936 R0
        BEGIN BRANCH XLXN_33
            WIRE 1872 1296 1888 1296
            WIRE 1888 1296 1888 1680
            WIRE 1888 1680 2080 1680
            WIRE 1888 1296 2080 1296
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 2064 1456 2080 1456
            WIRE 2064 1456 2064 1904
            WIRE 2064 1904 2080 1904
        END BRANCH
        INSTANCE XLXI_14 2080 1024 R0
        IOMARKER 1552 1104 fiforead R180 28
        BEGIN BRANCH XLXN_35(7:0)
            WIRE 864 1040 1744 1040
            WIRE 1744 640 2080 640
            WIRE 1744 640 1744 1040
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 864 2000 2032 2000
            WIRE 1328 560 1360 560
            WIRE 1328 560 1328 768
            WIRE 1328 768 2032 768
            WIRE 2032 768 2080 768
            WIRE 2032 768 2032 2000
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1744 272 2000 272
            WIRE 2000 272 2000 832
            WIRE 2000 832 2080 832
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2464 1680 2560 1680
        END BRANCH
        IOMARKER 2560 1680 valid_data R0 28
        BEGIN INSTANCE XLXI_15 2160 384 R0
        END INSTANCE
        INSTANCE XLXI_16 2080 112 R0
        BEGIN BRANCH XLXN_40
            WIRE 2144 112 2144 352
            WIRE 2144 352 2160 352
        END BRANCH
    END SHEET
END SCHEMATIC
