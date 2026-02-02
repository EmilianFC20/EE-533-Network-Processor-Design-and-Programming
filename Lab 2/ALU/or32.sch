VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2(31:0)
        SIGNAL XLXN_4(31:0)
        SIGNAL A(31:0)
        SIGNAL XLXN_39(31:0)
        SIGNAL B(31:0)
        SIGNAL XLXN_41(31:0)
        SIGNAL O(31:0)
        SIGNAL O(31)
        SIGNAL O(30)
        SIGNAL O(29)
        SIGNAL O(28)
        SIGNAL O(27)
        SIGNAL O(26)
        SIGNAL O(25)
        SIGNAL O(24)
        SIGNAL O(23)
        SIGNAL O(22)
        SIGNAL O(21)
        SIGNAL O(20)
        SIGNAL O(19)
        SIGNAL O(18)
        SIGNAL O(17)
        SIGNAL O(16)
        SIGNAL O(0)
        SIGNAL A(31)
        SIGNAL A(30)
        SIGNAL A(29)
        SIGNAL A(28)
        SIGNAL A(27)
        SIGNAL A(26)
        SIGNAL A(25)
        SIGNAL A(24)
        SIGNAL A(23)
        SIGNAL A(22)
        SIGNAL A(21)
        SIGNAL A(20)
        SIGNAL A(19)
        SIGNAL A(18)
        SIGNAL A(17)
        SIGNAL A(16)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL B(31)
        SIGNAL B(30)
        SIGNAL B(29)
        SIGNAL B(28)
        SIGNAL B(27)
        SIGNAL B(26)
        SIGNAL B(25)
        SIGNAL B(24)
        SIGNAL B(23)
        SIGNAL B(22)
        SIGNAL B(21)
        SIGNAL B(20)
        SIGNAL B(19)
        SIGNAL B(18)
        SIGNAL B(17)
        SIGNAL B(16)
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
        SIGNAL B(0)
        SIGNAL A(5)
        SIGNAL A(2)
        SIGNAL A(3)
        SIGNAL A(4)
        SIGNAL A(6)
        SIGNAL A(7)
        SIGNAL A(8)
        SIGNAL A(9)
        SIGNAL A(10)
        SIGNAL A(11)
        SIGNAL A(12)
        SIGNAL A(13)
        SIGNAL A(14)
        SIGNAL A(15)
        SIGNAL O(1)
        SIGNAL O(2)
        SIGNAL O(3)
        SIGNAL O(4)
        SIGNAL O(5)
        SIGNAL O(6)
        SIGNAL O(7)
        SIGNAL O(8)
        SIGNAL O(9)
        SIGNAL O(10)
        SIGNAL O(11)
        SIGNAL O(12)
        SIGNAL O(13)
        SIGNAL O(14)
        SIGNAL O(15)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output O(31:0)
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
        BEGIN BLOCK XLXI_60 or2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_62 or2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_63 or2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_64 or2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_65 or2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O O(4)
        END BLOCK
        BEGIN BLOCK XLXI_66 or2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O O(5)
        END BLOCK
        BEGIN BLOCK XLXI_67 or2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O O(6)
        END BLOCK
        BEGIN BLOCK XLXI_68 or2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O O(7)
        END BLOCK
        BEGIN BLOCK XLXI_69 or2
            PIN I0 B(8)
            PIN I1 A(8)
            PIN O O(8)
        END BLOCK
        BEGIN BLOCK XLXI_70 or2
            PIN I0 B(9)
            PIN I1 A(9)
            PIN O O(9)
        END BLOCK
        BEGIN BLOCK XLXI_71 or2
            PIN I0 B(10)
            PIN I1 A(10)
            PIN O O(10)
        END BLOCK
        BEGIN BLOCK XLXI_72 or2
            PIN I0 B(11)
            PIN I1 A(11)
            PIN O O(11)
        END BLOCK
        BEGIN BLOCK XLXI_73 or2
            PIN I0 B(12)
            PIN I1 A(12)
            PIN O O(12)
        END BLOCK
        BEGIN BLOCK XLXI_74 or2
            PIN I0 B(13)
            PIN I1 A(13)
            PIN O O(13)
        END BLOCK
        BEGIN BLOCK XLXI_75 or2
            PIN I0 B(14)
            PIN I1 A(14)
            PIN O O(14)
        END BLOCK
        BEGIN BLOCK XLXI_76 or2
            PIN I0 B(15)
            PIN I1 A(15)
            PIN O O(15)
        END BLOCK
        BEGIN BLOCK XLXI_77 or2
            PIN I0 B(16)
            PIN I1 A(16)
            PIN O O(16)
        END BLOCK
        BEGIN BLOCK XLXI_78 or2
            PIN I0 B(17)
            PIN I1 A(17)
            PIN O O(17)
        END BLOCK
        BEGIN BLOCK XLXI_79 or2
            PIN I0 B(18)
            PIN I1 A(18)
            PIN O O(18)
        END BLOCK
        BEGIN BLOCK XLXI_80 or2
            PIN I0 B(19)
            PIN I1 A(19)
            PIN O O(19)
        END BLOCK
        BEGIN BLOCK XLXI_81 or2
            PIN I0 B(20)
            PIN I1 A(20)
            PIN O O(20)
        END BLOCK
        BEGIN BLOCK XLXI_82 or2
            PIN I0 B(21)
            PIN I1 A(21)
            PIN O O(21)
        END BLOCK
        BEGIN BLOCK XLXI_83 or2
            PIN I0 B(22)
            PIN I1 A(22)
            PIN O O(22)
        END BLOCK
        BEGIN BLOCK XLXI_84 or2
            PIN I0 B(23)
            PIN I1 A(23)
            PIN O O(23)
        END BLOCK
        BEGIN BLOCK XLXI_85 or2
            PIN I0 B(24)
            PIN I1 A(24)
            PIN O O(24)
        END BLOCK
        BEGIN BLOCK XLXI_86 or2
            PIN I0 B(25)
            PIN I1 A(25)
            PIN O O(25)
        END BLOCK
        BEGIN BLOCK XLXI_87 or2
            PIN I0 B(26)
            PIN I1 A(26)
            PIN O O(26)
        END BLOCK
        BEGIN BLOCK XLXI_88 or2
            PIN I0 B(27)
            PIN I1 A(27)
            PIN O O(27)
        END BLOCK
        BEGIN BLOCK XLXI_89 or2
            PIN I0 B(28)
            PIN I1 A(28)
            PIN O O(28)
        END BLOCK
        BEGIN BLOCK XLXI_90 or2
            PIN I0 B(29)
            PIN I1 A(29)
            PIN O O(29)
        END BLOCK
        BEGIN BLOCK XLXI_91 or2
            PIN I0 B(30)
            PIN I1 A(30)
            PIN O O(30)
        END BLOCK
        BEGIN BLOCK XLXI_92 or2
            PIN I0 B(31)
            PIN I1 A(31)
            PIN O O(31)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31:0)
            WIRE 1168 352 1168 432
            WIRE 1168 432 1168 560
            WIRE 1168 560 1168 688
            WIRE 1168 688 1168 816
            WIRE 1168 816 1168 944
            WIRE 1168 944 1168 1072
            WIRE 1168 1072 1168 1088
            WIRE 1168 1088 1168 1200
            WIRE 1168 1200 1168 1328
            WIRE 1168 1328 1168 1456
            WIRE 1168 1456 1168 1584
            WIRE 1168 1584 1168 1712
            WIRE 1168 1712 1168 1840
            WIRE 1168 1840 1168 1968
            WIRE 1168 1968 1168 2096
            WIRE 1168 2096 1168 2224
            WIRE 1168 2224 1168 2352
            WIRE 1168 2352 1168 2528
            WIRE 1168 2528 1968 2528
            WIRE 1968 352 1968 432
            WIRE 1968 432 1968 560
            WIRE 1968 560 1968 688
            WIRE 1968 688 1968 816
            WIRE 1968 816 1968 944
            WIRE 1968 944 1968 1072
            WIRE 1968 1072 1968 1200
            WIRE 1968 1200 1968 1328
            WIRE 1968 1328 1968 1456
            WIRE 1968 1456 1968 1584
            WIRE 1968 1584 1968 1712
            WIRE 1968 1712 1968 1840
            WIRE 1968 1840 1968 1968
            WIRE 1968 1968 1968 2096
            WIRE 1968 2096 1968 2224
            WIRE 1968 2224 1968 2352
            WIRE 1968 2352 1968 2528
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 1008 352 1008 496
            WIRE 1008 496 1008 624
            WIRE 1008 624 1008 752
            WIRE 1008 752 1008 880
            WIRE 1008 880 1008 1008
            WIRE 1008 1008 1008 1136
            WIRE 1008 1136 1008 1264
            WIRE 1008 1264 1008 1392
            WIRE 1008 1392 1008 1520
            WIRE 1008 1520 1008 1648
            WIRE 1008 1648 1008 1776
            WIRE 1008 1776 1008 1904
            WIRE 1008 1904 1008 2032
            WIRE 1008 2032 1008 2160
            WIRE 1008 2160 1008 2288
            WIRE 1008 2288 1008 2416
            WIRE 1008 2416 1008 2544
            WIRE 1008 2544 1808 2544
            WIRE 1808 352 1808 496
            WIRE 1808 496 1808 624
            WIRE 1808 624 1808 752
            WIRE 1808 752 1808 880
            WIRE 1808 880 1808 1008
            WIRE 1808 1008 1808 1136
            WIRE 1808 1136 1808 1264
            WIRE 1808 1264 1808 1392
            WIRE 1808 1392 1808 1520
            WIRE 1808 1520 1808 1648
            WIRE 1808 1648 1808 1776
            WIRE 1808 1776 1808 1904
            WIRE 1808 1904 1808 2032
            WIRE 1808 2032 1808 2160
            WIRE 1808 2160 1808 2288
            WIRE 1808 2288 1808 2416
            WIRE 1808 2416 1808 2544
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 1664 320 1664 336
            WIRE 1664 336 1728 336
            WIRE 1728 336 2528 336
            WIRE 2528 336 2528 464
            WIRE 2528 464 2528 592
            WIRE 2528 592 2528 720
            WIRE 2528 720 2528 848
            WIRE 2528 848 2528 976
            WIRE 2528 976 2528 1104
            WIRE 2528 1104 2528 1232
            WIRE 2528 1232 2528 1360
            WIRE 2528 1360 2528 1488
            WIRE 2528 1488 2528 1616
            WIRE 2528 1616 2528 1744
            WIRE 2528 1744 2528 1872
            WIRE 2528 1872 2528 2000
            WIRE 2528 2000 2528 2128
            WIRE 2528 2128 2528 2256
            WIRE 2528 2256 2528 2384
            WIRE 2528 2384 2528 2512
            WIRE 1728 336 1728 464
            WIRE 1728 464 1728 592
            WIRE 1728 592 1728 720
            WIRE 1728 720 1728 848
            WIRE 1728 848 1728 976
            WIRE 1728 976 1728 1104
            WIRE 1728 1104 1728 1232
            WIRE 1728 1232 1728 1360
            WIRE 1728 1360 1728 1488
            WIRE 1728 1488 1728 1616
            WIRE 1728 1616 1728 1744
            WIRE 1728 1744 1728 1872
            WIRE 1728 1872 1728 2000
            WIRE 1728 2000 1728 2128
            WIRE 1728 2128 1728 2256
            WIRE 1728 2256 1728 2384
            WIRE 1728 2384 1728 2512
        END BRANCH
        BUSTAP 2528 2384 2432 2384
        BEGIN BRANCH O(31)
            WIRE 2384 2384 2400 2384
            WIRE 2400 2384 2432 2384
            BEGIN DISPLAY 2408 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 2256 2432 2256
        BEGIN BRANCH O(30)
            WIRE 2384 2256 2400 2256
            WIRE 2400 2256 2432 2256
            BEGIN DISPLAY 2408 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 2128 2432 2128
        BEGIN BRANCH O(29)
            WIRE 2384 2128 2400 2128
            WIRE 2400 2128 2432 2128
            BEGIN DISPLAY 2408 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 2000 2432 2000
        BEGIN BRANCH O(28)
            WIRE 2384 2000 2400 2000
            WIRE 2400 2000 2432 2000
            BEGIN DISPLAY 2408 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1872 2432 1872
        BEGIN BRANCH O(27)
            WIRE 2384 1872 2400 1872
            WIRE 2400 1872 2432 1872
            BEGIN DISPLAY 2408 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1744 2432 1744
        BEGIN BRANCH O(26)
            WIRE 2384 1744 2400 1744
            WIRE 2400 1744 2432 1744
            BEGIN DISPLAY 2408 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1616 2432 1616
        BEGIN BRANCH O(25)
            WIRE 2384 1616 2400 1616
            WIRE 2400 1616 2432 1616
            BEGIN DISPLAY 2408 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1488 2432 1488
        BEGIN BRANCH O(24)
            WIRE 2384 1488 2400 1488
            WIRE 2400 1488 2432 1488
            BEGIN DISPLAY 2408 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1360 2432 1360
        BEGIN BRANCH O(23)
            WIRE 2384 1360 2400 1360
            WIRE 2400 1360 2432 1360
            BEGIN DISPLAY 2408 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1232 2432 1232
        BEGIN BRANCH O(22)
            WIRE 2384 1232 2400 1232
            WIRE 2400 1232 2432 1232
            BEGIN DISPLAY 2408 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 1104 2432 1104
        BEGIN BRANCH O(21)
            WIRE 2384 1104 2400 1104
            WIRE 2400 1104 2432 1104
            BEGIN DISPLAY 2408 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 976 2432 976
        BEGIN BRANCH O(20)
            WIRE 2384 976 2400 976
            WIRE 2400 976 2432 976
            BEGIN DISPLAY 2408 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 848 2432 848
        BEGIN BRANCH O(19)
            WIRE 2384 848 2400 848
            WIRE 2400 848 2432 848
            BEGIN DISPLAY 2408 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 720 2432 720
        BEGIN BRANCH O(18)
            WIRE 2384 720 2400 720
            WIRE 2400 720 2432 720
            BEGIN DISPLAY 2408 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 592 2432 592
        BEGIN BRANCH O(17)
            WIRE 2384 592 2400 592
            WIRE 2400 592 2432 592
            BEGIN DISPLAY 2408 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2528 464 2432 464
        BEGIN BRANCH O(16)
            WIRE 2384 464 2400 464
            WIRE 2400 464 2432 464
            BEGIN DISPLAY 2408 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1728 2384 1632 2384
        BUSTAP 1728 2256 1632 2256
        BUSTAP 1728 2128 1632 2128
        BUSTAP 1728 2000 1632 2000
        BUSTAP 1728 1872 1632 1872
        BUSTAP 1728 1744 1632 1744
        BUSTAP 1728 1616 1632 1616
        BUSTAP 1728 1488 1632 1488
        BUSTAP 1728 1360 1632 1360
        BUSTAP 1728 1232 1632 1232
        BUSTAP 1728 1104 1632 1104
        BUSTAP 1728 976 1632 976
        BUSTAP 1728 848 1632 848
        BUSTAP 1728 720 1632 720
        BUSTAP 1728 592 1632 592
        BUSTAP 1728 464 1632 464
        BEGIN BRANCH O(0)
            WIRE 1584 464 1600 464
            WIRE 1600 464 1632 464
            BEGIN DISPLAY 1608 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 2352 2064 2352
        BEGIN BRANCH A(31)
            WIRE 2064 2352 2096 2352
            WIRE 2096 2352 2128 2352
            BEGIN DISPLAY 2096 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 2224 2064 2224
        BEGIN BRANCH A(30)
            WIRE 2064 2224 2096 2224
            WIRE 2096 2224 2128 2224
            BEGIN DISPLAY 2096 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 2096 2064 2096
        BEGIN BRANCH A(29)
            WIRE 2064 2096 2096 2096
            WIRE 2096 2096 2128 2096
            BEGIN DISPLAY 2096 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1968 2064 1968
        BEGIN BRANCH A(28)
            WIRE 2064 1968 2096 1968
            WIRE 2096 1968 2128 1968
            BEGIN DISPLAY 2096 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1840 2064 1840
        BEGIN BRANCH A(27)
            WIRE 2064 1840 2096 1840
            WIRE 2096 1840 2128 1840
            BEGIN DISPLAY 2096 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1712 2064 1712
        BEGIN BRANCH A(26)
            WIRE 2064 1712 2096 1712
            WIRE 2096 1712 2128 1712
            BEGIN DISPLAY 2096 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1584 2064 1584
        BEGIN BRANCH A(25)
            WIRE 2064 1584 2096 1584
            WIRE 2096 1584 2128 1584
            BEGIN DISPLAY 2096 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1456 2064 1456
        BEGIN BRANCH A(24)
            WIRE 2064 1456 2096 1456
            WIRE 2096 1456 2128 1456
            BEGIN DISPLAY 2096 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1328 2064 1328
        BEGIN BRANCH A(23)
            WIRE 2064 1328 2096 1328
            WIRE 2096 1328 2128 1328
            BEGIN DISPLAY 2096 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1200 2064 1200
        BEGIN BRANCH A(22)
            WIRE 2064 1200 2096 1200
            WIRE 2096 1200 2128 1200
            BEGIN DISPLAY 2096 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 1072 2064 1072
        BEGIN BRANCH A(21)
            WIRE 2064 1072 2096 1072
            WIRE 2096 1072 2128 1072
            BEGIN DISPLAY 2096 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 944 2064 944
        BEGIN BRANCH A(20)
            WIRE 2064 944 2096 944
            WIRE 2096 944 2128 944
            BEGIN DISPLAY 2096 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 816 2064 816
        BEGIN BRANCH A(19)
            WIRE 2064 816 2096 816
            WIRE 2096 816 2128 816
            BEGIN DISPLAY 2096 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 688 2064 688
        BEGIN BRANCH A(18)
            WIRE 2064 688 2096 688
            WIRE 2096 688 2128 688
            BEGIN DISPLAY 2096 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 560 2064 560
        BEGIN BRANCH A(17)
            WIRE 2064 560 2096 560
            WIRE 2096 560 2128 560
            BEGIN DISPLAY 2096 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1968 432 2064 432
        BEGIN BRANCH A(16)
            WIRE 2064 432 2096 432
            WIRE 2096 432 2128 432
            BEGIN DISPLAY 2096 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 2352 1264 2352
        BUSTAP 1168 2224 1264 2224
        BUSTAP 1168 2096 1264 2096
        BUSTAP 1168 1968 1264 1968
        BUSTAP 1168 1840 1264 1840
        BUSTAP 1168 1712 1264 1712
        BUSTAP 1168 1584 1264 1584
        BUSTAP 1168 1456 1264 1456
        BUSTAP 1168 1328 1264 1328
        BUSTAP 1168 1200 1264 1200
        BUSTAP 1168 944 1264 944
        BUSTAP 1168 816 1264 816
        BUSTAP 1168 688 1264 688
        BUSTAP 1168 560 1264 560
        BEGIN BRANCH A(1)
            WIRE 1264 560 1296 560
            WIRE 1296 560 1328 560
            BEGIN DISPLAY 1296 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 432 1264 432
        BEGIN BRANCH A(0)
            WIRE 1264 432 1296 432
            WIRE 1296 432 1328 432
            BEGIN DISPLAY 1296 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 2416 1904 2416
        BEGIN BRANCH B(31)
            WIRE 1904 2416 2016 2416
            WIRE 2016 2416 2128 2416
            BEGIN DISPLAY 2016 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 2288 1904 2288
        BEGIN BRANCH B(30)
            WIRE 1904 2288 2016 2288
            WIRE 2016 2288 2128 2288
            BEGIN DISPLAY 2016 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 2160 1904 2160
        BEGIN BRANCH B(29)
            WIRE 1904 2160 2016 2160
            WIRE 2016 2160 2128 2160
            BEGIN DISPLAY 2016 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 2032 1904 2032
        BEGIN BRANCH B(28)
            WIRE 1904 2032 2016 2032
            WIRE 2016 2032 2128 2032
            BEGIN DISPLAY 2016 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1904 1904 1904
        BEGIN BRANCH B(27)
            WIRE 1904 1904 2016 1904
            WIRE 2016 1904 2128 1904
            BEGIN DISPLAY 2016 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1776 1904 1776
        BEGIN BRANCH B(26)
            WIRE 1904 1776 2016 1776
            WIRE 2016 1776 2128 1776
            BEGIN DISPLAY 2016 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1648 1904 1648
        BEGIN BRANCH B(25)
            WIRE 1904 1648 2016 1648
            WIRE 2016 1648 2128 1648
            BEGIN DISPLAY 2016 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1520 1904 1520
        BEGIN BRANCH B(24)
            WIRE 1904 1520 2016 1520
            WIRE 2016 1520 2128 1520
            BEGIN DISPLAY 2016 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1392 1904 1392
        BEGIN BRANCH B(23)
            WIRE 1904 1392 2016 1392
            WIRE 2016 1392 2128 1392
            BEGIN DISPLAY 2016 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1264 1904 1264
        BEGIN BRANCH B(22)
            WIRE 1904 1264 2016 1264
            WIRE 2016 1264 2128 1264
            BEGIN DISPLAY 2016 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1136 1904 1136
        BEGIN BRANCH B(21)
            WIRE 1904 1136 2016 1136
            WIRE 2016 1136 2128 1136
            BEGIN DISPLAY 2016 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1008 1904 1008
        BEGIN BRANCH B(20)
            WIRE 1904 1008 2016 1008
            WIRE 2016 1008 2128 1008
            BEGIN DISPLAY 2016 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 880 1904 880
        BEGIN BRANCH B(19)
            WIRE 1904 880 2016 880
            WIRE 2016 880 2128 880
            BEGIN DISPLAY 2016 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 752 1904 752
        BEGIN BRANCH B(18)
            WIRE 1904 752 2016 752
            WIRE 2016 752 2128 752
            BEGIN DISPLAY 2016 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 624 1904 624
        BEGIN BRANCH B(17)
            WIRE 1904 624 2016 624
            WIRE 2016 624 2128 624
            BEGIN DISPLAY 2016 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 496 1904 496
        BEGIN BRANCH B(16)
            WIRE 1904 496 2016 496
            WIRE 2016 496 2128 496
            BEGIN DISPLAY 2016 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 2416 1104 2416
        BEGIN BRANCH B(15)
            WIRE 1104 2416 1216 2416
            WIRE 1216 2416 1328 2416
            BEGIN DISPLAY 1216 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 2288 1104 2288
        BEGIN BRANCH B(14)
            WIRE 1104 2288 1216 2288
            WIRE 1216 2288 1328 2288
            BEGIN DISPLAY 1216 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 2160 1104 2160
        BEGIN BRANCH B(13)
            WIRE 1104 2160 1216 2160
            WIRE 1216 2160 1328 2160
            BEGIN DISPLAY 1216 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 2032 1104 2032
        BEGIN BRANCH B(12)
            WIRE 1104 2032 1216 2032
            WIRE 1216 2032 1328 2032
            BEGIN DISPLAY 1216 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1904 1104 1904
        BEGIN BRANCH B(11)
            WIRE 1104 1904 1216 1904
            WIRE 1216 1904 1328 1904
            BEGIN DISPLAY 1216 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1776 1104 1776
        BEGIN BRANCH B(10)
            WIRE 1104 1776 1216 1776
            WIRE 1216 1776 1328 1776
            BEGIN DISPLAY 1216 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1648 1104 1648
        BEGIN BRANCH B(9)
            WIRE 1104 1648 1216 1648
            WIRE 1216 1648 1328 1648
            BEGIN DISPLAY 1216 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1520 1104 1520
        BEGIN BRANCH B(8)
            WIRE 1104 1520 1216 1520
            WIRE 1216 1520 1328 1520
            BEGIN DISPLAY 1216 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1392 1104 1392
        BEGIN BRANCH B(7)
            WIRE 1104 1392 1216 1392
            WIRE 1216 1392 1328 1392
            BEGIN DISPLAY 1216 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1264 1104 1264
        BEGIN BRANCH B(6)
            WIRE 1104 1264 1216 1264
            WIRE 1216 1264 1328 1264
            BEGIN DISPLAY 1216 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1136 1104 1136
        BEGIN BRANCH B(5)
            WIRE 1104 1136 1216 1136
            WIRE 1216 1136 1328 1136
            BEGIN DISPLAY 1216 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 1008 1104 1008
        BEGIN BRANCH B(4)
            WIRE 1104 1008 1216 1008
            WIRE 1216 1008 1328 1008
            BEGIN DISPLAY 1216 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 880 1104 880
        BEGIN BRANCH B(3)
            WIRE 1104 880 1216 880
            WIRE 1216 880 1328 880
            BEGIN DISPLAY 1216 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 752 1104 752
        BEGIN BRANCH B(2)
            WIRE 1104 752 1216 752
            WIRE 1216 752 1328 752
            BEGIN DISPLAY 1216 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 624 1104 624
        BEGIN BRANCH B(1)
            WIRE 1104 624 1216 624
            WIRE 1216 624 1328 624
            BEGIN DISPLAY 1216 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 496 1104 496
        BEGIN BRANCH B(0)
            WIRE 1104 496 1216 496
            WIRE 1216 496 1328 496
            BEGIN DISPLAY 1216 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 1072 1264 1072
        INSTANCE XLXI_60 1328 560 R0
        BEGIN BRANCH A(5)
            WIRE 1264 1072 1296 1072
            WIRE 1296 1072 1328 1072
            BEGIN DISPLAY 1296 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 1264 688 1296 688
            WIRE 1296 688 1328 688
            BEGIN DISPLAY 1296 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1264 816 1296 816
            WIRE 1296 816 1328 816
            BEGIN DISPLAY 1296 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 1264 944 1296 944
            WIRE 1296 944 1328 944
            BEGIN DISPLAY 1296 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 1264 1200 1296 1200
            WIRE 1296 1200 1328 1200
            BEGIN DISPLAY 1296 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 1264 1328 1296 1328
            WIRE 1296 1328 1328 1328
            BEGIN DISPLAY 1296 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(8)
            WIRE 1264 1456 1296 1456
            WIRE 1296 1456 1328 1456
            BEGIN DISPLAY 1296 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(9)
            WIRE 1264 1584 1296 1584
            WIRE 1296 1584 1328 1584
            BEGIN DISPLAY 1296 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(10)
            WIRE 1264 1712 1296 1712
            WIRE 1296 1712 1328 1712
            BEGIN DISPLAY 1296 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(11)
            WIRE 1264 1840 1296 1840
            WIRE 1296 1840 1328 1840
            BEGIN DISPLAY 1296 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(12)
            WIRE 1264 1968 1296 1968
            WIRE 1296 1968 1328 1968
            BEGIN DISPLAY 1296 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(13)
            WIRE 1264 2096 1296 2096
            WIRE 1296 2096 1328 2096
            BEGIN DISPLAY 1296 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(14)
            WIRE 1264 2224 1296 2224
            WIRE 1296 2224 1328 2224
            BEGIN DISPLAY 1296 2224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15)
            WIRE 1264 2352 1296 2352
            WIRE 1296 2352 1328 2352
            BEGIN DISPLAY 1296 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1584 592 1600 592
            WIRE 1600 592 1632 592
            BEGIN DISPLAY 1608 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1584 720 1600 720
            WIRE 1600 720 1632 720
            BEGIN DISPLAY 1608 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 1584 848 1600 848
            WIRE 1600 848 1632 848
            BEGIN DISPLAY 1608 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(4)
            WIRE 1584 976 1600 976
            WIRE 1600 976 1632 976
            BEGIN DISPLAY 1608 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(5)
            WIRE 1584 1104 1600 1104
            WIRE 1600 1104 1632 1104
            BEGIN DISPLAY 1608 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(6)
            WIRE 1584 1232 1600 1232
            WIRE 1600 1232 1632 1232
            BEGIN DISPLAY 1608 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(7)
            WIRE 1584 1360 1600 1360
            WIRE 1600 1360 1632 1360
            BEGIN DISPLAY 1608 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(8)
            WIRE 1584 1488 1600 1488
            WIRE 1600 1488 1632 1488
            BEGIN DISPLAY 1608 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(9)
            WIRE 1584 1616 1600 1616
            WIRE 1600 1616 1632 1616
            BEGIN DISPLAY 1608 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(10)
            WIRE 1584 1744 1600 1744
            WIRE 1600 1744 1632 1744
            BEGIN DISPLAY 1608 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(11)
            WIRE 1584 1872 1600 1872
            WIRE 1600 1872 1632 1872
            BEGIN DISPLAY 1608 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(12)
            WIRE 1584 2000 1600 2000
            WIRE 1600 2000 1632 2000
            BEGIN DISPLAY 1608 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(13)
            WIRE 1584 2128 1600 2128
            WIRE 1600 2128 1632 2128
            BEGIN DISPLAY 1608 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(14)
            WIRE 1584 2256 1600 2256
            WIRE 1600 2256 1632 2256
            BEGIN DISPLAY 1608 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(15)
            WIRE 1584 2384 1600 2384
            WIRE 1600 2384 1632 2384
            BEGIN DISPLAY 1608 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_62 1328 688 R0
        INSTANCE XLXI_63 1328 816 R0
        INSTANCE XLXI_64 1328 944 R0
        INSTANCE XLXI_65 1328 1072 R0
        INSTANCE XLXI_66 1328 1200 R0
        INSTANCE XLXI_67 1328 1328 R0
        INSTANCE XLXI_68 1328 1456 R0
        INSTANCE XLXI_69 1328 1584 R0
        INSTANCE XLXI_70 1328 1712 R0
        INSTANCE XLXI_71 1328 1840 R0
        INSTANCE XLXI_72 1328 1968 R0
        INSTANCE XLXI_73 1328 2096 R0
        INSTANCE XLXI_74 1328 2224 R0
        INSTANCE XLXI_75 1328 2352 R0
        INSTANCE XLXI_76 1328 2480 R0
        INSTANCE XLXI_77 2128 560 R0
        INSTANCE XLXI_78 2128 688 R0
        INSTANCE XLXI_79 2128 816 R0
        INSTANCE XLXI_80 2128 944 R0
        INSTANCE XLXI_81 2128 1072 R0
        INSTANCE XLXI_82 2128 1200 R0
        INSTANCE XLXI_83 2128 1328 R0
        INSTANCE XLXI_84 2128 1456 R0
        INSTANCE XLXI_85 2128 1584 R0
        INSTANCE XLXI_86 2128 1712 R0
        INSTANCE XLXI_87 2128 1840 R0
        INSTANCE XLXI_88 2128 1968 R0
        INSTANCE XLXI_89 2128 2096 R0
        INSTANCE XLXI_90 2128 2224 R0
        INSTANCE XLXI_91 2128 2352 R0
        INSTANCE XLXI_92 2128 2480 R0
        IOMARKER 1008 352 B(31:0) R270 28
        IOMARKER 1168 352 A(31:0) R270 28
        IOMARKER 1664 320 O(31:0) R270 28
    END SHEET
END SCHEMATIC
