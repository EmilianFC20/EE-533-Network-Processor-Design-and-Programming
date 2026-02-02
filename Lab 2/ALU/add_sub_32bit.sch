VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A_S
        SIGNAL Cout
        SIGNAL S(31:0)
        SIGNAL A(31:0)
        SIGNAL BN(31:0)
        SIGNAL XLXN_12
        SIGNAL XLXN_15
        SIGNAL XLXN_18
        SIGNAL XLXN_21
        SIGNAL XLXN_24
        SIGNAL XLXN_27
        SIGNAL XLXN_30
        SIGNAL XLXN_81
        SIGNAL XLXN_84
        SIGNAL XLXN_87
        SIGNAL XLXN_90
        SIGNAL XLXN_93
        SIGNAL XLXN_96
        SIGNAL XLXN_99
        SIGNAL XLXN_102
        SIGNAL XLXN_108
        SIGNAL XLXN_111
        SIGNAL XLXN_114
        SIGNAL XLXN_117
        SIGNAL XLXN_120
        SIGNAL XLXN_123
        SIGNAL XLXN_126
        SIGNAL XLXN_129
        SIGNAL XLXN_132
        SIGNAL XLXN_135
        SIGNAL XLXN_138
        SIGNAL XLXN_141
        SIGNAL XLXN_144
        SIGNAL XLXN_147
        SIGNAL XLXN_150
        SIGNAL XLXN_301(31:0)
        SIGNAL XLXN_352(31:0)
        SIGNAL XLXN_353
        SIGNAL B(0)
        SIGNAL B(16)
        SIGNAL B(17)
        SIGNAL B(18)
        SIGNAL B(19)
        SIGNAL B(20)
        SIGNAL B(21)
        SIGNAL B(23)
        SIGNAL B(24)
        SIGNAL B(25)
        SIGNAL B(26)
        SIGNAL B(27)
        SIGNAL B(28)
        SIGNAL B(29)
        SIGNAL B(31)
        SIGNAL B(30)
        SIGNAL B(22)
        SIGNAL BN(31)
        SIGNAL BN(30)
        SIGNAL BN(29)
        SIGNAL BN(28)
        SIGNAL BN(27)
        SIGNAL BN(26)
        SIGNAL BN(25)
        SIGNAL BN(24)
        SIGNAL BN(23)
        SIGNAL BN(22)
        SIGNAL BN(21)
        SIGNAL BN(20)
        SIGNAL BN(19)
        SIGNAL BN(18)
        SIGNAL BN(17)
        SIGNAL BN(16)
        SIGNAL B(15)
        SIGNAL B(14)
        SIGNAL B(13)
        SIGNAL B(12)
        SIGNAL B(11)
        SIGNAL B(10)
        SIGNAL B(9)
        SIGNAL B(8)
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(31:0)
        SIGNAL BN(15)
        SIGNAL BN(14)
        SIGNAL BN(13)
        SIGNAL BN(12)
        SIGNAL BN(11)
        SIGNAL BN(10)
        SIGNAL BN(9)
        SIGNAL BN(8)
        SIGNAL BN(7)
        SIGNAL BN(6)
        SIGNAL BN(5)
        SIGNAL BN(4)
        SIGNAL BN(3)
        SIGNAL BN(2)
        SIGNAL BN(1)
        SIGNAL BN(0)
        PORT Input A_S
        PORT Output Cout
        PORT Output S(31:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
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
        BEGIN BLOCK XLXI_1 adder_32bit
            PIN Cin A_S
            PIN B(31:0) BN(31:0)
            PIN A(31:0) A(31:0)
            PIN Cout Cout
            PIN S(31:0) S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_51 xor2
            PIN I0 A_S
            PIN I1 B(31)
            PIN O BN(31)
        END BLOCK
        BEGIN BLOCK XLXI_50 xor2
            PIN I0 A_S
            PIN I1 B(30)
            PIN O BN(30)
        END BLOCK
        BEGIN BLOCK XLXI_49 xor2
            PIN I0 A_S
            PIN I1 B(29)
            PIN O BN(29)
        END BLOCK
        BEGIN BLOCK XLXI_48 xor2
            PIN I0 A_S
            PIN I1 B(28)
            PIN O BN(28)
        END BLOCK
        BEGIN BLOCK XLXI_47 xor2
            PIN I0 A_S
            PIN I1 B(27)
            PIN O BN(27)
        END BLOCK
        BEGIN BLOCK XLXI_46 xor2
            PIN I0 A_S
            PIN I1 B(26)
            PIN O BN(26)
        END BLOCK
        BEGIN BLOCK XLXI_45 xor2
            PIN I0 A_S
            PIN I1 B(25)
            PIN O BN(25)
        END BLOCK
        BEGIN BLOCK XLXI_44 xor2
            PIN I0 A_S
            PIN I1 B(24)
            PIN O BN(24)
        END BLOCK
        BEGIN BLOCK XLXI_43 xor2
            PIN I0 A_S
            PIN I1 B(23)
            PIN O BN(23)
        END BLOCK
        BEGIN BLOCK XLXI_42 xor2
            PIN I0 A_S
            PIN I1 B(22)
            PIN O BN(22)
        END BLOCK
        BEGIN BLOCK XLXI_41 xor2
            PIN I0 A_S
            PIN I1 B(21)
            PIN O BN(21)
        END BLOCK
        BEGIN BLOCK XLXI_40 xor2
            PIN I0 A_S
            PIN I1 B(20)
            PIN O BN(20)
        END BLOCK
        BEGIN BLOCK XLXI_39 xor2
            PIN I0 A_S
            PIN I1 B(19)
            PIN O BN(19)
        END BLOCK
        BEGIN BLOCK XLXI_38 xor2
            PIN I0 A_S
            PIN I1 B(18)
            PIN O BN(18)
        END BLOCK
        BEGIN BLOCK XLXI_37 xor2
            PIN I0 A_S
            PIN I1 B(17)
            PIN O BN(17)
        END BLOCK
        BEGIN BLOCK XLXI_36 xor2
            PIN I0 A_S
            PIN I1 B(16)
            PIN O BN(16)
        END BLOCK
        BEGIN BLOCK XLXI_35 xor2
            PIN I0 A_S
            PIN I1 B(15)
            PIN O BN(15)
        END BLOCK
        BEGIN BLOCK XLXI_34 xor2
            PIN I0 A_S
            PIN I1 B(14)
            PIN O BN(14)
        END BLOCK
        BEGIN BLOCK XLXI_33 xor2
            PIN I0 A_S
            PIN I1 B(13)
            PIN O BN(13)
        END BLOCK
        BEGIN BLOCK XLXI_32 xor2
            PIN I0 A_S
            PIN I1 B(12)
            PIN O BN(12)
        END BLOCK
        BEGIN BLOCK XLXI_31 xor2
            PIN I0 A_S
            PIN I1 B(11)
            PIN O BN(11)
        END BLOCK
        BEGIN BLOCK XLXI_30 xor2
            PIN I0 A_S
            PIN I1 B(10)
            PIN O BN(10)
        END BLOCK
        BEGIN BLOCK XLXI_29 xor2
            PIN I0 A_S
            PIN I1 B(9)
            PIN O BN(9)
        END BLOCK
        BEGIN BLOCK XLXI_28 xor2
            PIN I0 A_S
            PIN I1 B(8)
            PIN O BN(8)
        END BLOCK
        BEGIN BLOCK XLXI_11 xor2
            PIN I0 A_S
            PIN I1 B(7)
            PIN O BN(7)
        END BLOCK
        BEGIN BLOCK XLXI_10 xor2
            PIN I0 A_S
            PIN I1 B(6)
            PIN O BN(6)
        END BLOCK
        BEGIN BLOCK XLXI_9 xor2
            PIN I0 A_S
            PIN I1 B(5)
            PIN O BN(5)
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 A_S
            PIN I1 B(4)
            PIN O BN(4)
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 A_S
            PIN I1 B(3)
            PIN O BN(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 A_S
            PIN I1 B(2)
            PIN O BN(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 A_S
            PIN I1 B(1)
            PIN O BN(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 xor2
            PIN I0 A_S
            PIN I1 B(0)
            PIN O BN(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 960 480 R0
        END INSTANCE
        BEGIN BRANCH A_S
            WIRE 880 320 960 320
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1344 320 1424 320
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1344 448 1424 448
        END BRANCH
        IOMARKER 880 320 A_S R180 28
        IOMARKER 1424 320 Cout R0 28
        IOMARKER 1424 448 S(31:0) R0 28
        BEGIN BRANCH A(31:0)
            WIRE 880 448 960 448
        END BRANCH
        BEGIN BRANCH BN(31:0)
            WIRE 944 384 960 384
            WIRE 944 384 944 528
            WIRE 944 528 1696 528
            WIRE 1696 528 1696 640
            WIRE 1696 640 1696 768
            WIRE 1696 768 1696 896
            WIRE 1696 896 1696 1024
            WIRE 1696 1024 1696 1152
            WIRE 1696 1152 1696 1280
            WIRE 1696 1280 1696 1408
            WIRE 1696 1408 1696 1536
            WIRE 1696 1536 1696 1664
            WIRE 1696 1664 1696 1792
            WIRE 1696 1792 1696 1920
            WIRE 1696 1920 1696 2048
            WIRE 1696 2048 1696 2176
            WIRE 1696 2176 1696 2304
            WIRE 1696 2304 1696 2432
            WIRE 1696 2432 1696 2560
            WIRE 1696 2560 1696 2592
            WIRE 944 528 944 640
            WIRE 944 640 944 768
            WIRE 944 768 944 896
            WIRE 944 896 944 1024
            WIRE 944 1024 944 1152
            WIRE 944 1152 944 1280
            WIRE 944 1280 944 1408
            WIRE 944 1408 944 1536
            WIRE 944 1536 944 1664
            WIRE 944 1664 944 1792
            WIRE 944 1792 944 1920
            WIRE 944 1920 944 2048
            WIRE 944 2048 944 2176
            WIRE 944 2176 944 2304
            WIRE 944 2304 944 2432
            WIRE 944 2432 944 2560
            WIRE 944 2560 944 2592
        END BRANCH
        IOMARKER 880 448 A(31:0) R180 28
        BUSTAP 336 608 432 608
        BUSTAP 336 736 432 736
        BUSTAP 336 864 432 864
        BUSTAP 336 992 432 992
        BUSTAP 336 1120 432 1120
        BUSTAP 336 1248 432 1248
        BUSTAP 336 1376 432 1376
        BUSTAP 336 1504 432 1504
        BUSTAP 336 1632 432 1632
        BUSTAP 336 1760 432 1760
        BUSTAP 336 1888 432 1888
        BUSTAP 336 2016 432 2016
        BUSTAP 336 2144 432 2144
        BUSTAP 336 2272 432 2272
        BUSTAP 336 2400 432 2400
        BUSTAP 336 2528 432 2528
        BUSTAP 976 608 1072 608
        BUSTAP 976 736 1072 736
        BUSTAP 976 864 1072 864
        BUSTAP 976 992 1072 992
        BUSTAP 976 1120 1072 1120
        BUSTAP 976 1248 1072 1248
        BUSTAP 976 1376 1072 1376
        BUSTAP 976 1504 1072 1504
        BUSTAP 976 1632 1072 1632
        BUSTAP 976 1760 1072 1760
        BUSTAP 976 1888 1072 1888
        BUSTAP 976 2016 1072 2016
        BUSTAP 976 2144 1072 2144
        BUSTAP 976 2272 1072 2272
        BUSTAP 976 2400 1072 2400
        BUSTAP 976 2528 1072 2528
        INSTANCE XLXI_51 1200 2656 R0
        INSTANCE XLXI_50 1200 2528 R0
        INSTANCE XLXI_49 1200 2400 R0
        INSTANCE XLXI_48 1200 2272 R0
        INSTANCE XLXI_47 1200 2144 R0
        INSTANCE XLXI_46 1200 2016 R0
        INSTANCE XLXI_45 1200 1888 R0
        INSTANCE XLXI_44 1200 1760 R0
        INSTANCE XLXI_43 1200 1632 R0
        INSTANCE XLXI_42 1200 1504 R0
        INSTANCE XLXI_41 1200 1376 R0
        INSTANCE XLXI_40 1200 1248 R0
        INSTANCE XLXI_39 1200 1120 R0
        INSTANCE XLXI_38 1200 992 R0
        INSTANCE XLXI_37 1200 864 R0
        INSTANCE XLXI_36 1200 736 R0
        INSTANCE XLXI_35 560 2656 R0
        INSTANCE XLXI_34 560 2528 R0
        INSTANCE XLXI_33 560 2400 R0
        INSTANCE XLXI_32 560 2272 R0
        INSTANCE XLXI_31 560 2144 R0
        INSTANCE XLXI_30 560 2016 R0
        INSTANCE XLXI_29 560 1888 R0
        INSTANCE XLXI_28 560 1760 R0
        INSTANCE XLXI_11 560 1632 R0
        INSTANCE XLXI_10 560 1504 R0
        INSTANCE XLXI_9 560 1376 R0
        INSTANCE XLXI_8 560 1248 R0
        INSTANCE XLXI_7 560 1120 R0
        INSTANCE XLXI_6 560 992 R0
        INSTANCE XLXI_5 560 864 R0
        INSTANCE XLXI_3 560 736 R0
        BEGIN BRANCH B(0)
            WIRE 432 608 496 608
            WIRE 496 608 560 608
            BEGIN DISPLAY 496 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(16)
            WIRE 1072 608 1088 608
            WIRE 1088 608 1200 608
            BEGIN DISPLAY 1096 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(17)
            WIRE 1072 736 1088 736
            WIRE 1088 736 1200 736
            BEGIN DISPLAY 1096 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(18)
            WIRE 1072 864 1088 864
            WIRE 1088 864 1200 864
            BEGIN DISPLAY 1096 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(19)
            WIRE 1072 992 1088 992
            WIRE 1088 992 1200 992
            BEGIN DISPLAY 1096 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(20)
            WIRE 1072 1120 1088 1120
            WIRE 1088 1120 1200 1120
            BEGIN DISPLAY 1096 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(21)
            WIRE 1072 1248 1088 1248
            WIRE 1088 1248 1200 1248
            BEGIN DISPLAY 1096 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23)
            WIRE 1072 1504 1088 1504
            WIRE 1088 1504 1200 1504
            BEGIN DISPLAY 1096 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(24)
            WIRE 1072 1632 1088 1632
            WIRE 1088 1632 1200 1632
            BEGIN DISPLAY 1096 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(25)
            WIRE 1072 1760 1088 1760
            WIRE 1088 1760 1200 1760
            BEGIN DISPLAY 1096 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(26)
            WIRE 1072 1888 1088 1888
            WIRE 1088 1888 1200 1888
            BEGIN DISPLAY 1096 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(27)
            WIRE 1072 2016 1088 2016
            WIRE 1088 2016 1200 2016
            BEGIN DISPLAY 1096 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(28)
            WIRE 1072 2144 1088 2144
            WIRE 1088 2144 1200 2144
            BEGIN DISPLAY 1096 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(29)
            WIRE 1072 2272 1088 2272
            WIRE 1088 2272 1200 2272
            BEGIN DISPLAY 1096 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31)
            WIRE 1072 2528 1088 2528
            WIRE 1088 2528 1200 2528
            BEGIN DISPLAY 1096 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(30)
            WIRE 1072 2400 1088 2400
            WIRE 1088 2400 1200 2400
            BEGIN DISPLAY 1096 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(22)
            WIRE 1072 1376 1088 1376
            WIRE 1088 1376 1200 1376
            BEGIN DISPLAY 1096 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_S
            WIRE 464 672 464 800
            WIRE 464 800 464 928
            WIRE 464 928 464 1056
            WIRE 464 1056 464 1184
            WIRE 464 1184 464 1312
            WIRE 464 1312 464 1440
            WIRE 464 1440 464 1568
            WIRE 464 1568 464 1696
            WIRE 464 1696 464 1824
            WIRE 464 1824 464 1952
            WIRE 464 1952 464 2080
            WIRE 464 2080 464 2208
            WIRE 464 2208 464 2336
            WIRE 464 2336 464 2464
            WIRE 464 2464 560 2464
            WIRE 464 2464 464 2592
            WIRE 464 2592 560 2592
            WIRE 464 2336 560 2336
            WIRE 464 2208 560 2208
            WIRE 464 2080 560 2080
            WIRE 464 1952 560 1952
            WIRE 464 1824 560 1824
            WIRE 464 1696 560 1696
            WIRE 464 1568 560 1568
            WIRE 464 1440 560 1440
            WIRE 464 1312 560 1312
            WIRE 464 1184 560 1184
            WIRE 464 1056 560 1056
            WIRE 464 928 560 928
            WIRE 464 800 560 800
            WIRE 464 672 496 672
            WIRE 496 672 560 672
            BEGIN DISPLAY 496 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(31)
            WIRE 1456 2560 1536 2560
            WIRE 1536 2560 1568 2560
            WIRE 1568 2560 1600 2560
            BEGIN DISPLAY 1568 2560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(30)
            WIRE 1456 2432 1536 2432
            WIRE 1536 2432 1568 2432
            WIRE 1568 2432 1600 2432
            BEGIN DISPLAY 1568 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(29)
            WIRE 1456 2304 1536 2304
            WIRE 1536 2304 1568 2304
            WIRE 1568 2304 1600 2304
            BEGIN DISPLAY 1568 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(28)
            WIRE 1456 2176 1536 2176
            WIRE 1536 2176 1568 2176
            WIRE 1568 2176 1600 2176
            BEGIN DISPLAY 1568 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(27)
            WIRE 1456 2048 1536 2048
            WIRE 1536 2048 1568 2048
            WIRE 1568 2048 1600 2048
            BEGIN DISPLAY 1568 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(26)
            WIRE 1456 1920 1536 1920
            WIRE 1536 1920 1568 1920
            WIRE 1568 1920 1600 1920
            BEGIN DISPLAY 1568 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(25)
            WIRE 1456 1792 1536 1792
            WIRE 1536 1792 1568 1792
            WIRE 1568 1792 1600 1792
            BEGIN DISPLAY 1568 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(24)
            WIRE 1456 1664 1536 1664
            WIRE 1536 1664 1568 1664
            WIRE 1568 1664 1600 1664
            BEGIN DISPLAY 1568 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(23)
            WIRE 1456 1536 1536 1536
            WIRE 1536 1536 1568 1536
            WIRE 1568 1536 1600 1536
            BEGIN DISPLAY 1568 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(22)
            WIRE 1456 1408 1536 1408
            WIRE 1536 1408 1568 1408
            WIRE 1568 1408 1600 1408
            BEGIN DISPLAY 1568 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(21)
            WIRE 1456 1280 1536 1280
            WIRE 1536 1280 1568 1280
            WIRE 1568 1280 1600 1280
            BEGIN DISPLAY 1568 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(20)
            WIRE 1456 1152 1536 1152
            WIRE 1536 1152 1568 1152
            WIRE 1568 1152 1600 1152
            BEGIN DISPLAY 1568 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(19)
            WIRE 1456 1024 1536 1024
            WIRE 1536 1024 1568 1024
            WIRE 1568 1024 1600 1024
            BEGIN DISPLAY 1568 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(18)
            WIRE 1456 896 1536 896
            WIRE 1536 896 1568 896
            WIRE 1568 896 1600 896
            BEGIN DISPLAY 1568 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(17)
            WIRE 1456 768 1536 768
            WIRE 1536 768 1568 768
            WIRE 1568 768 1600 768
            BEGIN DISPLAY 1568 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BN(16)
            WIRE 1456 640 1536 640
            WIRE 1536 640 1568 640
            WIRE 1568 640 1600 640
            BEGIN DISPLAY 1568 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_S
            WIRE 1104 672 1104 800
            WIRE 1104 800 1104 928
            WIRE 1104 928 1104 1056
            WIRE 1104 1056 1104 1184
            WIRE 1104 1184 1104 1312
            WIRE 1104 1312 1104 1440
            WIRE 1104 1440 1104 1568
            WIRE 1104 1568 1104 1696
            WIRE 1104 1696 1104 1824
            WIRE 1104 1824 1104 1952
            WIRE 1104 1952 1104 2080
            WIRE 1104 2080 1104 2208
            WIRE 1104 2208 1104 2336
            WIRE 1104 2336 1104 2464
            WIRE 1104 2464 1104 2592
            WIRE 1104 2592 1200 2592
            WIRE 1104 2464 1200 2464
            WIRE 1104 2336 1200 2336
            WIRE 1104 2208 1200 2208
            WIRE 1104 2080 1200 2080
            WIRE 1104 1952 1200 1952
            WIRE 1104 1824 1200 1824
            WIRE 1104 1696 1200 1696
            WIRE 1104 1568 1200 1568
            WIRE 1104 1440 1200 1440
            WIRE 1104 1312 1200 1312
            WIRE 1104 1184 1200 1184
            WIRE 1104 1056 1200 1056
            WIRE 1104 928 1200 928
            WIRE 1104 800 1200 800
            WIRE 1104 672 1136 672
            WIRE 1136 672 1200 672
            BEGIN DISPLAY 1136 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15)
            WIRE 432 2528 448 2528
            WIRE 448 2528 560 2528
            BEGIN DISPLAY 456 2528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(14)
            WIRE 432 2400 448 2400
            WIRE 448 2400 560 2400
            BEGIN DISPLAY 456 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(13)
            WIRE 432 2272 448 2272
            WIRE 448 2272 560 2272
            BEGIN DISPLAY 456 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(12)
            WIRE 432 2144 448 2144
            WIRE 448 2144 560 2144
            BEGIN DISPLAY 456 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(11)
            WIRE 432 2016 448 2016
            WIRE 448 2016 560 2016
            BEGIN DISPLAY 456 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(10)
            WIRE 432 1888 448 1888
            WIRE 448 1888 560 1888
            BEGIN DISPLAY 456 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(9)
            WIRE 432 1760 448 1760
            WIRE 448 1760 560 1760
            BEGIN DISPLAY 456 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(8)
            WIRE 432 1632 448 1632
            WIRE 448 1632 560 1632
            BEGIN DISPLAY 456 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 432 1504 448 1504
            WIRE 448 1504 560 1504
            BEGIN DISPLAY 456 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 432 1376 448 1376
            WIRE 448 1376 560 1376
            BEGIN DISPLAY 456 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 432 1248 448 1248
            WIRE 448 1248 560 1248
            BEGIN DISPLAY 456 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 432 1120 448 1120
            WIRE 448 1120 560 1120
            BEGIN DISPLAY 456 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 432 992 448 992
            WIRE 448 992 560 992
            BEGIN DISPLAY 456 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 432 864 448 864
            WIRE 448 864 560 864
            BEGIN DISPLAY 456 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 432 736 448 736
            WIRE 448 736 560 736
            BEGIN DISPLAY 456 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 336 528 336 592
            WIRE 336 592 336 608
            WIRE 336 608 336 736
            WIRE 336 736 336 864
            WIRE 336 864 336 992
            WIRE 336 992 336 1120
            WIRE 336 1120 336 1248
            WIRE 336 1248 336 1376
            WIRE 336 1376 336 1504
            WIRE 336 1504 336 1632
            WIRE 336 1632 336 1760
            WIRE 336 1760 336 1888
            WIRE 336 1888 336 2016
            WIRE 336 2016 336 2144
            WIRE 336 2144 336 2272
            WIRE 336 2272 336 2400
            WIRE 336 2400 336 2528
            WIRE 336 2528 336 2656
            WIRE 336 2656 976 2656
            WIRE 976 576 976 608
            WIRE 976 608 976 736
            WIRE 976 736 976 864
            WIRE 976 864 976 992
            WIRE 976 992 976 1120
            WIRE 976 1120 976 1248
            WIRE 976 1248 976 1376
            WIRE 976 1376 976 1504
            WIRE 976 1504 976 1632
            WIRE 976 1632 976 1760
            WIRE 976 1760 976 1888
            WIRE 976 1888 976 2016
            WIRE 976 2016 976 2144
            WIRE 976 2144 976 2272
            WIRE 976 2272 976 2400
            WIRE 976 2400 976 2528
            WIRE 976 2528 976 2656
        END BRANCH
        IOMARKER 336 528 B(31:0) R270 28
        BUSTAP 1696 2560 1600 2560
        BUSTAP 1696 2432 1600 2432
        BUSTAP 1696 2304 1600 2304
        BUSTAP 1696 2176 1600 2176
        BUSTAP 1696 2048 1600 2048
        BUSTAP 1696 1920 1600 1920
        BUSTAP 1696 1792 1600 1792
        BUSTAP 1696 1664 1600 1664
        BUSTAP 1696 1536 1600 1536
        BUSTAP 1696 1408 1600 1408
        BUSTAP 1696 1280 1600 1280
        BUSTAP 1696 1152 1600 1152
        BUSTAP 1696 1024 1600 1024
        BUSTAP 1696 896 1600 896
        BUSTAP 1696 768 1600 768
        BUSTAP 1696 640 1600 640
        BUSTAP 944 2560 848 2560
        BEGIN BRANCH BN(15)
            WIRE 816 2560 832 2560
            WIRE 832 2560 848 2560
            BEGIN DISPLAY 832 2560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 2432 848 2432
        BEGIN BRANCH BN(14)
            WIRE 816 2432 832 2432
            WIRE 832 2432 848 2432
            BEGIN DISPLAY 832 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 2304 848 2304
        BEGIN BRANCH BN(13)
            WIRE 816 2304 832 2304
            WIRE 832 2304 848 2304
            BEGIN DISPLAY 832 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 2176 848 2176
        BEGIN BRANCH BN(12)
            WIRE 816 2176 832 2176
            WIRE 832 2176 848 2176
            BEGIN DISPLAY 832 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 2048 848 2048
        BEGIN BRANCH BN(11)
            WIRE 816 2048 832 2048
            WIRE 832 2048 848 2048
            BEGIN DISPLAY 832 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1920 848 1920
        BEGIN BRANCH BN(10)
            WIRE 816 1920 832 1920
            WIRE 832 1920 848 1920
            BEGIN DISPLAY 832 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1792 848 1792
        BEGIN BRANCH BN(9)
            WIRE 816 1792 832 1792
            WIRE 832 1792 848 1792
            BEGIN DISPLAY 832 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1664 848 1664
        BEGIN BRANCH BN(8)
            WIRE 816 1664 832 1664
            WIRE 832 1664 848 1664
            BEGIN DISPLAY 832 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1536 848 1536
        BEGIN BRANCH BN(7)
            WIRE 816 1536 832 1536
            WIRE 832 1536 848 1536
            BEGIN DISPLAY 832 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1408 848 1408
        BEGIN BRANCH BN(6)
            WIRE 816 1408 832 1408
            WIRE 832 1408 848 1408
            BEGIN DISPLAY 832 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1280 848 1280
        BEGIN BRANCH BN(5)
            WIRE 816 1280 832 1280
            WIRE 832 1280 848 1280
            BEGIN DISPLAY 832 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1152 848 1152
        BEGIN BRANCH BN(4)
            WIRE 816 1152 832 1152
            WIRE 832 1152 848 1152
            BEGIN DISPLAY 832 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1024 848 1024
        BEGIN BRANCH BN(3)
            WIRE 816 1024 832 1024
            WIRE 832 1024 848 1024
            BEGIN DISPLAY 832 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 896 848 896
        BEGIN BRANCH BN(2)
            WIRE 816 896 832 896
            WIRE 832 896 848 896
            BEGIN DISPLAY 832 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 768 848 768
        BEGIN BRANCH BN(1)
            WIRE 816 768 832 768
            WIRE 832 768 848 768
            BEGIN DISPLAY 832 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 640 848 640
        BEGIN BRANCH BN(0)
            WIRE 816 640 832 640
            WIRE 832 640 848 640
            BEGIN DISPLAY 832 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
