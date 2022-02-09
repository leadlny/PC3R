# maxx 1
wm title . "scenario"
wm geometry . 480x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 240 0 364 20 -fill black
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 239 -2 361 18 -fill ivory
.c create text 300 8 -text "1:observateur"
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 86 0 198 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 84 -2 196 18 -fill ivory
.c create text 140 8 -text "0:labyrinthe"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 300 32 -fill #eef -dash {6 4}
.c create line 140 36 140 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 1 (Used 1 nobox 0)
# ProcLine[1] stays at 1 (Used 1 nobox 1)
.c create rectangle 103 22 177 42 -fill white -width 0
.c create text 140 32 -text "go!ENTER"
.c create line 140 42 220 42 -fill darkred -tags mesg -width 2
.c create line 220 42 300 42 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 300 56 -fill #eef -dash {6 4}
.c create line 300 36 300 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 0 to 3 (Used 1 nobox 1)
# ProcLine[2] stays at 3 (Used 1 nobox 1)
.c create rectangle 263 46 337 66 -fill white -width 0
.c create text 300 56 -text "go?ENTER"
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 300 80 -fill #eef -dash {6 4}
.c create line 300 72 300 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 3 to 5 (Used 1 nobox 1)
# ProcLine[2] stays at 5 (Used 1 nobox 1)
.c create rectangle 239 70 361 90 -fill white -width 0
.c create text 300 80 -text "go to ENTER "
.c create text 70 104 -fill #eef -text "7"
.c create line 140 104 300 104 -fill #eef -dash {6 4}
.c create line 140 48 140 92 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1 to 7 (Used 1 nobox 1)
# ProcLine[1] stays at 7 (Used 1 nobox 1)
.c create rectangle 122 94 158 114 -fill white -width 0
.c create text 140 104 -text "go!N"
.c create line 140 114 220 114 -fill darkred -tags mesg -width 2
.c create line 220 114 300 114 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 128 -fill #eef -text "9"
.c create line 140 128 300 128 -fill #eef -dash {6 4}
.c create line 300 96 300 116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 5 to 9 (Used 1 nobox 1)
# ProcLine[2] stays at 9 (Used 1 nobox 1)
.c create rectangle 282 118 318 138 -fill white -width 0
.c create text 300 128 -text "go?N"
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 300 152 -fill #eef -dash {6 4}
.c create line 300 144 300 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 9 to 11 (Used 1 nobox 1)
# ProcLine[2] stays at 11 (Used 1 nobox 1)
.c create rectangle 258 142 342 162 -fill white -width 0
.c create text 300 152 -text "go to N "
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 300 176 -fill #eef -dash {6 4}
.c create line 140 120 140 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 7 to 13 (Used 1 nobox 1)
# ProcLine[1] stays at 13 (Used 1 nobox 1)
.c create rectangle 122 166 158 186 -fill white -width 0
.c create text 140 176 -text "go!W"
.c create line 140 186 220 186 -fill darkred -tags mesg -width 2
.c create line 220 186 300 186 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 300 200 -fill #eef -dash {6 4}
.c create line 300 168 300 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 11 to 15 (Used 1 nobox 1)
# ProcLine[2] stays at 15 (Used 1 nobox 1)
.c create rectangle 282 190 318 210 -fill white -width 0
.c create text 300 200 -text "go?W"
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 300 224 -fill #eef -dash {6 4}
.c create line 300 216 300 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 15 to 17 (Used 1 nobox 1)
# ProcLine[2] stays at 17 (Used 1 nobox 1)
.c create rectangle 258 214 342 234 -fill white -width 0
.c create text 300 224 -text "go to W "
.c create text 70 248 -fill #eef -text "19"
.c create line 140 248 300 248 -fill #eef -dash {6 4}
.c create line 140 192 140 236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 13 to 19 (Used 1 nobox 1)
# ProcLine[1] stays at 19 (Used 1 nobox 1)
.c create rectangle 122 238 158 258 -fill white -width 0
.c create text 140 248 -text "go!E"
.c create line 140 258 220 258 -fill darkred -tags mesg -width 2
.c create line 220 258 300 258 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 272 -fill #eef -text "21"
.c create line 140 272 300 272 -fill #eef -dash {6 4}
.c create line 300 240 300 260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 17 to 21 (Used 1 nobox 1)
# ProcLine[2] stays at 21 (Used 1 nobox 1)
.c create rectangle 282 262 318 282 -fill white -width 0
.c create text 300 272 -text "go?E"
.c create text 70 296 -fill #eef -text "23"
.c create line 140 296 300 296 -fill #eef -dash {6 4}
.c create line 300 288 300 284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 21 to 23 (Used 1 nobox 1)
# ProcLine[2] stays at 23 (Used 1 nobox 1)
.c create rectangle 258 286 342 306 -fill white -width 0
.c create text 300 296 -text "go to E "
.c create text 70 320 -fill #eef -text "25"
.c create line 140 320 300 320 -fill #eef -dash {6 4}
.c create line 140 264 140 308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 19 to 25 (Used 1 nobox 1)
# ProcLine[1] stays at 25 (Used 1 nobox 1)
.c create rectangle 122 310 158 330 -fill white -width 0
.c create text 140 320 -text "go!N"
.c create line 140 330 220 330 -fill darkred -tags mesg -width 2
.c create line 220 330 300 330 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 344 -fill #eef -text "27"
.c create line 140 344 300 344 -fill #eef -dash {6 4}
.c create line 300 312 300 332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 23 to 27 (Used 1 nobox 1)
# ProcLine[2] stays at 27 (Used 1 nobox 1)
.c create rectangle 282 334 318 354 -fill white -width 0
.c create text 300 344 -text "go?N"
.c create text 70 368 -fill #eef -text "29"
.c create line 140 368 300 368 -fill #eef -dash {6 4}
.c create line 300 360 300 356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 27 to 29 (Used 1 nobox 1)
# ProcLine[2] stays at 29 (Used 1 nobox 1)
.c create rectangle 258 358 342 378 -fill white -width 0
.c create text 300 368 -text "go to N "
.c create text 70 392 -fill #eef -text "31"
.c create line 140 392 300 392 -fill #eef -dash {6 4}
.c create line 140 336 140 380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 25 to 31 (Used 1 nobox 1)
# ProcLine[1] stays at 31 (Used 1 nobox 1)
.c create rectangle 122 382 158 402 -fill white -width 0
.c create text 140 392 -text "go!N"
.c create line 140 402 220 402 -fill darkred -tags mesg -width 2
.c create line 220 402 300 402 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 416 -fill #eef -text "33"
.c create line 140 416 300 416 -fill #eef -dash {6 4}
.c create line 300 384 300 404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 29 to 33 (Used 1 nobox 1)
# ProcLine[2] stays at 33 (Used 1 nobox 1)
.c create rectangle 282 406 318 426 -fill white -width 0
.c create text 300 416 -text "go?N"
.c create text 70 440 -fill #eef -text "35"
.c create line 140 440 300 440 -fill #eef -dash {6 4}
.c create line 300 432 300 428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 33 to 35 (Used 1 nobox 1)
# ProcLine[2] stays at 35 (Used 1 nobox 1)
.c create rectangle 258 430 342 450 -fill white -width 0
.c create text 300 440 -text "go to N "
.c create text 70 464 -fill #eef -text "37"
.c create line 140 464 300 464 -fill #eef -dash {6 4}
.c create line 140 408 140 452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 31 to 37 (Used 1 nobox 1)
# ProcLine[1] stays at 37 (Used 1 nobox 1)
.c create rectangle 122 454 158 474 -fill white -width 0
.c create text 140 464 -text "go!N"
.c create line 140 474 220 474 -fill darkred -tags mesg -width 2
.c create line 220 474 300 474 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 488 -fill #eef -text "39"
.c create line 140 488 300 488 -fill #eef -dash {6 4}
.c create line 300 456 300 476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 35 to 39 (Used 1 nobox 1)
# ProcLine[2] stays at 39 (Used 1 nobox 1)
.c create rectangle 282 478 318 498 -fill white -width 0
.c create text 300 488 -text "go?N"
.c create text 70 512 -fill #eef -text "41"
.c create line 140 512 300 512 -fill #eef -dash {6 4}
.c create line 300 504 300 500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 39 to 41 (Used 1 nobox 1)
# ProcLine[2] stays at 41 (Used 1 nobox 1)
.c create rectangle 258 502 342 522 -fill white -width 0
.c create text 300 512 -text "go to N "
.c create text 70 536 -fill #eef -text "43"
.c create line 140 536 300 536 -fill #eef -dash {6 4}
.c create line 140 480 140 524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 37 to 43 (Used 1 nobox 1)
# ProcLine[1] stays at 43 (Used 1 nobox 1)
.c create rectangle 122 526 158 546 -fill white -width 0
.c create text 140 536 -text "go!S"
.c create line 140 546 220 546 -fill darkred -tags mesg -width 2
.c create line 220 546 300 546 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 560 -fill #eef -text "45"
.c create line 140 560 300 560 -fill #eef -dash {6 4}
.c create line 300 528 300 548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 41 to 45 (Used 1 nobox 1)
# ProcLine[2] stays at 45 (Used 1 nobox 1)
.c create rectangle 282 550 318 570 -fill white -width 0
.c create text 300 560 -text "go?S"
.c create text 70 584 -fill #eef -text "47"
.c create line 140 584 300 584 -fill #eef -dash {6 4}
.c create line 300 576 300 572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 45 to 47 (Used 1 nobox 1)
# ProcLine[2] stays at 47 (Used 1 nobox 1)
.c create rectangle 258 574 342 594 -fill white -width 0
.c create text 300 584 -text "go to S "
.c create text 70 608 -fill #eef -text "49"
.c create line 140 608 300 608 -fill #eef -dash {6 4}
.c create line 140 552 140 596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 43 to 49 (Used 1 nobox 1)
# ProcLine[1] stays at 49 (Used 1 nobox 1)
.c create rectangle 122 598 158 618 -fill white -width 0
.c create text 140 608 -text "go!S"
.c create line 140 618 220 618 -fill darkred -tags mesg -width 2
.c create line 220 618 300 618 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 632 -fill #eef -text "51"
.c create line 140 632 300 632 -fill #eef -dash {6 4}
.c create line 300 600 300 620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 47 to 51 (Used 1 nobox 1)
# ProcLine[2] stays at 51 (Used 1 nobox 1)
.c create rectangle 282 622 318 642 -fill white -width 0
.c create text 300 632 -text "go?S"
.c create text 70 656 -fill #eef -text "53"
.c create line 140 656 300 656 -fill #eef -dash {6 4}
.c create line 300 648 300 644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 51 to 53 (Used 1 nobox 1)
# ProcLine[2] stays at 53 (Used 1 nobox 1)
.c create rectangle 258 646 342 666 -fill white -width 0
.c create text 300 656 -text "go to S "
.c create text 70 680 -fill #eef -text "55"
.c create line 140 680 300 680 -fill #eef -dash {6 4}
.c create line 140 624 140 668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 49 to 55 (Used 1 nobox 1)
# ProcLine[1] stays at 55 (Used 1 nobox 1)
.c create rectangle 122 670 158 690 -fill white -width 0
.c create text 140 680 -text "go!N"
.c create line 140 690 220 690 -fill darkred -tags mesg -width 2
.c create line 220 690 300 690 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 704 -fill #eef -text "57"
.c create line 140 704 300 704 -fill #eef -dash {6 4}
.c create line 300 672 300 692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 53 to 57 (Used 1 nobox 1)
# ProcLine[2] stays at 57 (Used 1 nobox 1)
.c create rectangle 282 694 318 714 -fill white -width 0
.c create text 300 704 -text "go?N"
.c create text 70 728 -fill #eef -text "59"
.c create line 140 728 300 728 -fill #eef -dash {6 4}
.c create line 300 720 300 716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 57 to 59 (Used 1 nobox 1)
# ProcLine[2] stays at 59 (Used 1 nobox 1)
.c create rectangle 258 718 342 738 -fill white -width 0
.c create text 300 728 -text "go to N "
.c create text 70 752 -fill #eef -text "61"
.c create line 140 752 300 752 -fill #eef -dash {6 4}
.c create line 140 696 140 740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 55 to 61 (Used 1 nobox 1)
# ProcLine[1] stays at 61 (Used 1 nobox 1)
.c create rectangle 122 742 158 762 -fill white -width 0
.c create text 140 752 -text "go!S"
.c create line 140 762 220 762 -fill darkred -tags mesg -width 2
.c create line 220 762 300 762 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 776 -fill #eef -text "63"
.c create line 140 776 300 776 -fill #eef -dash {6 4}
.c create line 300 744 300 764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 59 to 63 (Used 1 nobox 1)
# ProcLine[2] stays at 63 (Used 1 nobox 1)
.c create rectangle 282 766 318 786 -fill white -width 0
.c create text 300 776 -text "go?S"
.c create text 70 800 -fill #eef -text "65"
.c create line 140 800 300 800 -fill #eef -dash {6 4}
.c create line 300 792 300 788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 63 to 65 (Used 1 nobox 1)
# ProcLine[2] stays at 65 (Used 1 nobox 1)
.c create rectangle 258 790 342 810 -fill white -width 0
.c create text 300 800 -text "go to S "
.c create text 70 824 -fill #eef -text "67"
.c create line 140 824 300 824 -fill #eef -dash {6 4}
.c create line 140 768 140 812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 61 to 67 (Used 1 nobox 1)
# ProcLine[1] stays at 67 (Used 1 nobox 1)
.c create rectangle 122 814 158 834 -fill white -width 0
.c create text 140 824 -text "go!S"
.c create line 140 834 220 834 -fill darkred -tags mesg -width 2
.c create line 220 834 300 834 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 848 -fill #eef -text "69"
.c create line 140 848 300 848 -fill #eef -dash {6 4}
.c create line 300 816 300 836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 65 to 69 (Used 1 nobox 1)
# ProcLine[2] stays at 69 (Used 1 nobox 1)
.c create rectangle 282 838 318 858 -fill white -width 0
.c create text 300 848 -text "go?S"
.c create text 70 872 -fill #eef -text "71"
.c create line 140 872 300 872 -fill #eef -dash {6 4}
.c create line 300 864 300 860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 69 to 71 (Used 1 nobox 1)
# ProcLine[2] stays at 71 (Used 1 nobox 1)
.c create rectangle 258 862 342 882 -fill white -width 0
.c create text 300 872 -text "go to S "
.c create text 70 896 -fill #eef -text "73"
.c create line 140 896 300 896 -fill #eef -dash {6 4}
.c create line 140 840 140 884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 67 to 73 (Used 1 nobox 1)
# ProcLine[1] stays at 73 (Used 1 nobox 1)
.c create rectangle 122 886 158 906 -fill white -width 0
.c create text 140 896 -text "go!W"
.c create line 140 906 220 906 -fill darkred -tags mesg -width 2
.c create line 220 906 300 906 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 920 -fill #eef -text "75"
.c create line 140 920 300 920 -fill #eef -dash {6 4}
.c create line 300 888 300 908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 71 to 75 (Used 1 nobox 1)
# ProcLine[2] stays at 75 (Used 1 nobox 1)
.c create rectangle 282 910 318 930 -fill white -width 0
.c create text 300 920 -text "go?W"
.c create text 70 944 -fill #eef -text "77"
.c create line 140 944 300 944 -fill #eef -dash {6 4}
.c create line 300 936 300 932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 75 to 77 (Used 1 nobox 1)
# ProcLine[2] stays at 77 (Used 1 nobox 1)
.c create rectangle 258 934 342 954 -fill white -width 0
.c create text 300 944 -text "go to W "
.c create text 70 968 -fill #eef -text "79"
.c create line 140 968 300 968 -fill #eef -dash {6 4}
.c create line 140 912 140 956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 73 to 79 (Used 1 nobox 1)
# ProcLine[1] stays at 79 (Used 1 nobox 1)
.c create rectangle 122 958 158 978 -fill white -width 0
.c create text 140 968 -text "go!E"
.c create line 140 978 220 978 -fill darkred -tags mesg -width 2
.c create line 220 978 300 978 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 992 -fill #eef -text "81"
.c create line 140 992 300 992 -fill #eef -dash {6 4}
.c create line 300 960 300 980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 77 to 81 (Used 1 nobox 1)
# ProcLine[2] stays at 81 (Used 1 nobox 1)
.c create rectangle 282 982 318 1002 -fill white -width 0
.c create text 300 992 -text "go?E"
.c create text 70 1016 -fill #eef -text "83"
.c create line 140 1016 300 1016 -fill #eef -dash {6 4}
.c create line 300 1008 300 1004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 81 to 83 (Used 1 nobox 1)
# ProcLine[2] stays at 83 (Used 1 nobox 1)
.c create rectangle 258 1006 342 1026 -fill white -width 0
.c create text 300 1016 -text "go to E "
.c create text 70 1040 -fill #eef -text "85"
.c create line 140 1040 300 1040 -fill #eef -dash {6 4}
.c create line 140 984 140 1028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 79 to 85 (Used 1 nobox 1)
# ProcLine[1] stays at 85 (Used 1 nobox 1)
.c create rectangle 122 1030 158 1050 -fill white -width 0
.c create text 140 1040 -text "go!S"
.c create line 140 1050 220 1050 -fill darkred -tags mesg -width 2
.c create line 220 1050 300 1050 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1064 -fill #eef -text "87"
.c create line 140 1064 300 1064 -fill #eef -dash {6 4}
.c create line 300 1032 300 1052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 83 to 87 (Used 1 nobox 1)
# ProcLine[2] stays at 87 (Used 1 nobox 1)
.c create rectangle 282 1054 318 1074 -fill white -width 0
.c create text 300 1064 -text "go?S"
.c create text 70 1088 -fill #eef -text "89"
.c create line 140 1088 300 1088 -fill #eef -dash {6 4}
.c create line 300 1080 300 1076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 87 to 89 (Used 1 nobox 1)
# ProcLine[2] stays at 89 (Used 1 nobox 1)
.c create rectangle 258 1078 342 1098 -fill white -width 0
.c create text 300 1088 -text "go to S "
.c create text 70 1112 -fill #eef -text "91"
.c create line 140 1112 300 1112 -fill #eef -dash {6 4}
.c create line 140 1056 140 1100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 85 to 91 (Used 1 nobox 1)
# ProcLine[1] stays at 91 (Used 1 nobox 1)
.c create rectangle 122 1102 158 1122 -fill white -width 0
.c create text 140 1112 -text "go!N"
.c create line 140 1122 220 1122 -fill darkred -tags mesg -width 2
.c create line 220 1122 300 1122 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1136 -fill #eef -text "93"
.c create line 140 1136 300 1136 -fill #eef -dash {6 4}
.c create line 300 1104 300 1124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 89 to 93 (Used 1 nobox 1)
# ProcLine[2] stays at 93 (Used 1 nobox 1)
.c create rectangle 282 1126 318 1146 -fill white -width 0
.c create text 300 1136 -text "go?N"
.c create text 70 1160 -fill #eef -text "95"
.c create line 140 1160 300 1160 -fill #eef -dash {6 4}
.c create line 300 1152 300 1148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 93 to 95 (Used 1 nobox 1)
# ProcLine[2] stays at 95 (Used 1 nobox 1)
.c create rectangle 258 1150 342 1170 -fill white -width 0
.c create text 300 1160 -text "go to N "
.c create text 70 1184 -fill #eef -text "97"
.c create line 140 1184 300 1184 -fill #eef -dash {6 4}
.c create line 140 1128 140 1172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 91 to 97 (Used 1 nobox 1)
# ProcLine[1] stays at 97 (Used 1 nobox 1)
.c create rectangle 122 1174 158 1194 -fill white -width 0
.c create text 140 1184 -text "go!S"
.c create line 140 1194 220 1194 -fill darkred -tags mesg -width 2
.c create line 220 1194 300 1194 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1208 -fill #eef -text "99"
.c create line 140 1208 300 1208 -fill #eef -dash {6 4}
.c create line 300 1176 300 1196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 95 to 99 (Used 1 nobox 1)
# ProcLine[2] stays at 99 (Used 1 nobox 1)
.c create rectangle 282 1198 318 1218 -fill white -width 0
.c create text 300 1208 -text "go?S"
.c create text 70 1232 -fill #eef -text "101"
.c create line 140 1232 300 1232 -fill #eef -dash {6 4}
.c create line 300 1224 300 1220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 99 to 101 (Used 1 nobox 1)
# ProcLine[2] stays at 101 (Used 1 nobox 1)
.c create rectangle 258 1222 342 1242 -fill white -width 0
.c create text 300 1232 -text "go to S "
.c create text 70 1256 -fill #eef -text "103"
.c create line 140 1256 300 1256 -fill #eef -dash {6 4}
.c create line 140 1200 140 1244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 97 to 103 (Used 1 nobox 1)
# ProcLine[1] stays at 103 (Used 1 nobox 1)
.c create rectangle 122 1246 158 1266 -fill white -width 0
.c create text 140 1256 -text "go!N"
.c create line 140 1266 220 1266 -fill darkred -tags mesg -width 2
.c create line 220 1266 300 1266 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1280 -fill #eef -text "105"
.c create line 140 1280 300 1280 -fill #eef -dash {6 4}
.c create line 300 1248 300 1268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 101 to 105 (Used 1 nobox 1)
# ProcLine[2] stays at 105 (Used 1 nobox 1)
.c create rectangle 282 1270 318 1290 -fill white -width 0
.c create text 300 1280 -text "go?N"
.c create text 70 1304 -fill #eef -text "107"
.c create line 140 1304 300 1304 -fill #eef -dash {6 4}
.c create line 300 1296 300 1292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 105 to 107 (Used 1 nobox 1)
# ProcLine[2] stays at 107 (Used 1 nobox 1)
.c create rectangle 258 1294 342 1314 -fill white -width 0
.c create text 300 1304 -text "go to N "
.c create text 70 1328 -fill #eef -text "109"
.c create line 140 1328 300 1328 -fill #eef -dash {6 4}
.c create line 140 1272 140 1316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 103 to 109 (Used 1 nobox 1)
# ProcLine[1] stays at 109 (Used 1 nobox 1)
.c create rectangle 122 1318 158 1338 -fill white -width 0
.c create text 140 1328 -text "go!W"
.c create line 140 1338 220 1338 -fill darkred -tags mesg -width 2
.c create line 220 1338 300 1338 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1352 -fill #eef -text "111"
.c create line 140 1352 300 1352 -fill #eef -dash {6 4}
.c create line 300 1320 300 1340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 107 to 111 (Used 1 nobox 1)
# ProcLine[2] stays at 111 (Used 1 nobox 1)
.c create rectangle 282 1342 318 1362 -fill white -width 0
.c create text 300 1352 -text "go?W"
.c create text 70 1376 -fill #eef -text "113"
.c create line 140 1376 300 1376 -fill #eef -dash {6 4}
.c create line 300 1368 300 1364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 111 to 113 (Used 1 nobox 1)
# ProcLine[2] stays at 113 (Used 1 nobox 1)
.c create rectangle 258 1366 342 1386 -fill white -width 0
.c create text 300 1376 -text "go to W "
.c create text 70 1400 -fill #eef -text "115"
.c create line 140 1400 300 1400 -fill #eef -dash {6 4}
.c create line 140 1344 140 1388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 109 to 115 (Used 1 nobox 1)
# ProcLine[1] stays at 115 (Used 1 nobox 1)
.c create rectangle 122 1390 158 1410 -fill white -width 0
.c create text 140 1400 -text "go!W"
.c create line 140 1410 220 1410 -fill darkred -tags mesg -width 2
.c create line 220 1410 300 1410 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1424 -fill #eef -text "117"
.c create line 140 1424 300 1424 -fill #eef -dash {6 4}
.c create line 300 1392 300 1412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 113 to 117 (Used 1 nobox 1)
# ProcLine[2] stays at 117 (Used 1 nobox 1)
.c create rectangle 282 1414 318 1434 -fill white -width 0
.c create text 300 1424 -text "go?W"
.c create text 70 1448 -fill #eef -text "119"
.c create line 140 1448 300 1448 -fill #eef -dash {6 4}
.c create line 300 1440 300 1436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 117 to 119 (Used 1 nobox 1)
# ProcLine[2] stays at 119 (Used 1 nobox 1)
.c create rectangle 258 1438 342 1458 -fill white -width 0
.c create text 300 1448 -text "go to W "
.c create text 70 1472 -fill #eef -text "121"
.c create line 140 1472 300 1472 -fill #eef -dash {6 4}
.c create line 140 1416 140 1460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 115 to 121 (Used 1 nobox 1)
# ProcLine[1] stays at 121 (Used 1 nobox 1)
.c create rectangle 122 1462 158 1482 -fill white -width 0
.c create text 140 1472 -text "go!E"
.c create line 140 1482 220 1482 -fill darkred -tags mesg -width 2
.c create line 220 1482 300 1482 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1496 -fill #eef -text "123"
.c create line 140 1496 300 1496 -fill #eef -dash {6 4}
.c create line 300 1464 300 1484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 119 to 123 (Used 1 nobox 1)
# ProcLine[2] stays at 123 (Used 1 nobox 1)
.c create rectangle 282 1486 318 1506 -fill white -width 0
.c create text 300 1496 -text "go?E"
.c create text 70 1520 -fill #eef -text "125"
.c create line 140 1520 300 1520 -fill #eef -dash {6 4}
.c create line 300 1512 300 1508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 123 to 125 (Used 1 nobox 1)
# ProcLine[2] stays at 125 (Used 1 nobox 1)
.c create rectangle 258 1510 342 1530 -fill white -width 0
.c create text 300 1520 -text "go to E "
.c create text 70 1544 -fill #eef -text "127"
.c create line 140 1544 300 1544 -fill #eef -dash {6 4}
.c create line 140 1488 140 1532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 121 to 127 (Used 1 nobox 1)
# ProcLine[1] stays at 127 (Used 1 nobox 1)
.c create rectangle 122 1534 158 1554 -fill white -width 0
.c create text 140 1544 -text "go!W"
.c create line 140 1554 220 1554 -fill darkred -tags mesg -width 2
.c create line 220 1554 300 1554 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1568 -fill #eef -text "129"
.c create line 140 1568 300 1568 -fill #eef -dash {6 4}
.c create line 300 1536 300 1556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 125 to 129 (Used 1 nobox 1)
# ProcLine[2] stays at 129 (Used 1 nobox 1)
.c create rectangle 282 1558 318 1578 -fill white -width 0
.c create text 300 1568 -text "go?W"
.c create text 70 1592 -fill #eef -text "131"
.c create line 140 1592 300 1592 -fill #eef -dash {6 4}
.c create line 300 1584 300 1580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 129 to 131 (Used 1 nobox 1)
# ProcLine[2] stays at 131 (Used 1 nobox 1)
.c create rectangle 258 1582 342 1602 -fill white -width 0
.c create text 300 1592 -text "go to W "
.c create text 70 1616 -fill #eef -text "133"
.c create line 140 1616 300 1616 -fill #eef -dash {6 4}
.c create line 140 1560 140 1604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 127 to 133 (Used 1 nobox 1)
# ProcLine[1] stays at 133 (Used 1 nobox 1)
.c create rectangle 122 1606 158 1626 -fill white -width 0
.c create text 140 1616 -text "go!W"
.c create line 140 1626 220 1626 -fill darkred -tags mesg -width 2
.c create line 220 1626 300 1626 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1640 -fill #eef -text "135"
.c create line 140 1640 300 1640 -fill #eef -dash {6 4}
.c create line 300 1608 300 1628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 131 to 135 (Used 1 nobox 1)
# ProcLine[2] stays at 135 (Used 1 nobox 1)
.c create rectangle 282 1630 318 1650 -fill white -width 0
.c create text 300 1640 -text "go?W"
.c create text 70 1664 -fill #eef -text "137"
.c create line 140 1664 300 1664 -fill #eef -dash {6 4}
.c create line 300 1656 300 1652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 135 to 137 (Used 1 nobox 1)
# ProcLine[2] stays at 137 (Used 1 nobox 1)
.c create rectangle 258 1654 342 1674 -fill white -width 0
.c create text 300 1664 -text "go to W "
.c create text 70 1688 -fill #eef -text "139"
.c create line 140 1688 300 1688 -fill #eef -dash {6 4}
.c create line 140 1632 140 1676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 133 to 139 (Used 1 nobox 1)
# ProcLine[1] stays at 139 (Used 1 nobox 1)
.c create rectangle 122 1678 158 1698 -fill white -width 0
.c create text 140 1688 -text "go!N"
.c create line 140 1698 220 1698 -fill darkred -tags mesg -width 2
.c create line 220 1698 300 1698 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1712 -fill #eef -text "141"
.c create line 140 1712 300 1712 -fill #eef -dash {6 4}
.c create line 300 1680 300 1700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 137 to 141 (Used 1 nobox 1)
# ProcLine[2] stays at 141 (Used 1 nobox 1)
.c create rectangle 282 1702 318 1722 -fill white -width 0
.c create text 300 1712 -text "go?N"
.c create text 70 1736 -fill #eef -text "143"
.c create line 140 1736 300 1736 -fill #eef -dash {6 4}
.c create line 300 1728 300 1724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 141 to 143 (Used 1 nobox 1)
# ProcLine[2] stays at 143 (Used 1 nobox 1)
.c create rectangle 258 1726 342 1746 -fill white -width 0
.c create text 300 1736 -text "go to N "
.c create text 70 1760 -fill #eef -text "145"
.c create line 140 1760 300 1760 -fill #eef -dash {6 4}
.c create line 140 1704 140 1748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 139 to 145 (Used 1 nobox 1)
# ProcLine[1] stays at 145 (Used 1 nobox 1)
.c create rectangle 122 1750 158 1770 -fill white -width 0
.c create text 140 1760 -text "go!W"
.c create line 140 1770 220 1770 -fill darkred -tags mesg -width 2
.c create line 220 1770 300 1770 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1784 -fill #eef -text "147"
.c create line 140 1784 300 1784 -fill #eef -dash {6 4}
.c create line 300 1752 300 1772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 143 to 147 (Used 1 nobox 1)
# ProcLine[2] stays at 147 (Used 1 nobox 1)
.c create rectangle 282 1774 318 1794 -fill white -width 0
.c create text 300 1784 -text "go?W"
.c create text 70 1808 -fill #eef -text "149"
.c create line 140 1808 300 1808 -fill #eef -dash {6 4}
.c create line 300 1800 300 1796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 147 to 149 (Used 1 nobox 1)
# ProcLine[2] stays at 149 (Used 1 nobox 1)
.c create rectangle 258 1798 342 1818 -fill white -width 0
.c create text 300 1808 -text "go to W "
.c create text 70 1832 -fill #eef -text "151"
.c create line 140 1832 300 1832 -fill #eef -dash {6 4}
.c create line 140 1776 140 1820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 145 to 151 (Used 1 nobox 1)
# ProcLine[1] stays at 151 (Used 1 nobox 1)
.c create rectangle 122 1822 158 1842 -fill white -width 0
.c create text 140 1832 -text "go!E"
.c create line 140 1842 220 1842 -fill darkred -tags mesg -width 2
.c create line 220 1842 300 1842 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1856 -fill #eef -text "153"
.c create line 140 1856 300 1856 -fill #eef -dash {6 4}
.c create line 300 1824 300 1844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 149 to 153 (Used 1 nobox 1)
# ProcLine[2] stays at 153 (Used 1 nobox 1)
.c create rectangle 282 1846 318 1866 -fill white -width 0
.c create text 300 1856 -text "go?E"
.c create text 70 1880 -fill #eef -text "155"
.c create line 140 1880 300 1880 -fill #eef -dash {6 4}
.c create line 300 1872 300 1868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 153 to 155 (Used 1 nobox 1)
# ProcLine[2] stays at 155 (Used 1 nobox 1)
.c create rectangle 258 1870 342 1890 -fill white -width 0
.c create text 300 1880 -text "go to E "
.c create text 70 1904 -fill #eef -text "157"
.c create line 140 1904 300 1904 -fill #eef -dash {6 4}
.c create line 140 1848 140 1892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 151 to 157 (Used 1 nobox 1)
# ProcLine[1] stays at 157 (Used 1 nobox 1)
.c create rectangle 122 1894 158 1914 -fill white -width 0
.c create text 140 1904 -text "go!N"
.c create line 140 1914 220 1914 -fill darkred -tags mesg -width 2
.c create line 220 1914 300 1914 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1928 -fill #eef -text "159"
.c create line 140 1928 300 1928 -fill #eef -dash {6 4}
.c create line 300 1896 300 1916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 155 to 159 (Used 1 nobox 1)
# ProcLine[2] stays at 159 (Used 1 nobox 1)
.c create rectangle 282 1918 318 1938 -fill white -width 0
.c create text 300 1928 -text "go?N"
.c create text 70 1952 -fill #eef -text "161"
.c create line 140 1952 300 1952 -fill #eef -dash {6 4}
.c create line 300 1944 300 1940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 159 to 161 (Used 1 nobox 1)
# ProcLine[2] stays at 161 (Used 1 nobox 1)
.c create rectangle 258 1942 342 1962 -fill white -width 0
.c create text 300 1952 -text "go to N "
.c create text 70 1976 -fill #eef -text "163"
.c create line 140 1976 300 1976 -fill #eef -dash {6 4}
.c create line 140 1920 140 1964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 157 to 163 (Used 1 nobox 1)
# ProcLine[1] stays at 163 (Used 1 nobox 1)
.c create rectangle 122 1966 158 1986 -fill white -width 0
.c create text 140 1976 -text "go!E"
.c create line 140 1986 220 1986 -fill darkred -tags mesg -width 2
.c create line 220 1986 300 1986 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2000 -fill #eef -text "165"
.c create line 140 2000 300 2000 -fill #eef -dash {6 4}
.c create line 300 1968 300 1988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 161 to 165 (Used 1 nobox 1)
# ProcLine[2] stays at 165 (Used 1 nobox 1)
.c create rectangle 282 1990 318 2010 -fill white -width 0
.c create text 300 2000 -text "go?E"
.c create text 70 2024 -fill #eef -text "167"
.c create line 140 2024 300 2024 -fill #eef -dash {6 4}
.c create line 300 2016 300 2012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 165 to 167 (Used 1 nobox 1)
# ProcLine[2] stays at 167 (Used 1 nobox 1)
.c create rectangle 258 2014 342 2034 -fill white -width 0
.c create text 300 2024 -text "go to E "
.c create text 70 2048 -fill #eef -text "169"
.c create line 140 2048 300 2048 -fill #eef -dash {6 4}
.c create line 140 1992 140 2036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 163 to 169 (Used 1 nobox 1)
# ProcLine[1] stays at 169 (Used 1 nobox 1)
.c create rectangle 122 2038 158 2058 -fill white -width 0
.c create text 140 2048 -text "go!W"
.c create line 140 2058 220 2058 -fill darkred -tags mesg -width 2
.c create line 220 2058 300 2058 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2072 -fill #eef -text "171"
.c create line 140 2072 300 2072 -fill #eef -dash {6 4}
.c create line 300 2040 300 2060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 167 to 171 (Used 1 nobox 1)
# ProcLine[2] stays at 171 (Used 1 nobox 1)
.c create rectangle 282 2062 318 2082 -fill white -width 0
.c create text 300 2072 -text "go?W"
.c create text 70 2096 -fill #eef -text "173"
.c create line 140 2096 300 2096 -fill #eef -dash {6 4}
.c create line 300 2088 300 2084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 171 to 173 (Used 1 nobox 1)
# ProcLine[2] stays at 173 (Used 1 nobox 1)
.c create rectangle 258 2086 342 2106 -fill white -width 0
.c create text 300 2096 -text "go to W "
.c create text 70 2120 -fill #eef -text "175"
.c create line 140 2120 300 2120 -fill #eef -dash {6 4}
.c create line 140 2064 140 2108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 169 to 175 (Used 1 nobox 1)
# ProcLine[1] stays at 175 (Used 1 nobox 1)
.c create rectangle 122 2110 158 2130 -fill white -width 0
.c create text 140 2120 -text "go!S"
.c create line 140 2130 220 2130 -fill darkred -tags mesg -width 2
.c create line 220 2130 300 2130 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2144 -fill #eef -text "177"
.c create line 140 2144 300 2144 -fill #eef -dash {6 4}
.c create line 300 2112 300 2132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 173 to 177 (Used 1 nobox 1)
# ProcLine[2] stays at 177 (Used 1 nobox 1)
.c create rectangle 282 2134 318 2154 -fill white -width 0
.c create text 300 2144 -text "go?S"
.c create text 70 2168 -fill #eef -text "179"
.c create line 140 2168 300 2168 -fill #eef -dash {6 4}
.c create line 300 2160 300 2156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 177 to 179 (Used 1 nobox 1)
# ProcLine[2] stays at 179 (Used 1 nobox 1)
.c create rectangle 258 2158 342 2178 -fill white -width 0
.c create text 300 2168 -text "go to S "
.c create text 70 2192 -fill #eef -text "181"
.c create line 140 2192 300 2192 -fill #eef -dash {6 4}
.c create line 140 2136 140 2180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 175 to 181 (Used 1 nobox 1)
# ProcLine[1] stays at 181 (Used 1 nobox 1)
.c create rectangle 122 2182 158 2202 -fill white -width 0
.c create text 140 2192 -text "go!S"
.c create line 140 2202 220 2202 -fill darkred -tags mesg -width 2
.c create line 220 2202 300 2202 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2216 -fill #eef -text "183"
.c create line 140 2216 300 2216 -fill #eef -dash {6 4}
.c create line 300 2184 300 2204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 179 to 183 (Used 1 nobox 1)
# ProcLine[2] stays at 183 (Used 1 nobox 1)
.c create rectangle 282 2206 318 2226 -fill white -width 0
.c create text 300 2216 -text "go?S"
.c create text 70 2240 -fill #eef -text "185"
.c create line 140 2240 300 2240 -fill #eef -dash {6 4}
.c create line 300 2232 300 2228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 183 to 185 (Used 1 nobox 1)
# ProcLine[2] stays at 185 (Used 1 nobox 1)
.c create rectangle 258 2230 342 2250 -fill white -width 0
.c create text 300 2240 -text "go to S "
.c create text 70 2264 -fill #eef -text "187"
.c create line 140 2264 300 2264 -fill #eef -dash {6 4}
.c create line 140 2208 140 2252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 181 to 187 (Used 1 nobox 1)
# ProcLine[1] stays at 187 (Used 1 nobox 1)
.c create rectangle 122 2254 158 2274 -fill white -width 0
.c create text 140 2264 -text "go!E"
.c create line 140 2274 220 2274 -fill darkred -tags mesg -width 2
.c create line 220 2274 300 2274 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2288 -fill #eef -text "189"
.c create line 140 2288 300 2288 -fill #eef -dash {6 4}
.c create line 300 2256 300 2276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 185 to 189 (Used 1 nobox 1)
# ProcLine[2] stays at 189 (Used 1 nobox 1)
.c create rectangle 282 2278 318 2298 -fill white -width 0
.c create text 300 2288 -text "go?E"
.c create text 70 2312 -fill #eef -text "191"
.c create line 140 2312 300 2312 -fill #eef -dash {6 4}
.c create line 300 2304 300 2300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 189 to 191 (Used 1 nobox 1)
# ProcLine[2] stays at 191 (Used 1 nobox 1)
.c create rectangle 258 2302 342 2322 -fill white -width 0
.c create text 300 2312 -text "go to E "
.c create text 70 2336 -fill #eef -text "193"
.c create line 140 2336 300 2336 -fill #eef -dash {6 4}
.c create line 140 2280 140 2324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 187 to 193 (Used 1 nobox 1)
# ProcLine[1] stays at 193 (Used 1 nobox 1)
.c create rectangle 122 2326 158 2346 -fill white -width 0
.c create text 140 2336 -text "go!W"
.c create line 140 2346 220 2346 -fill darkred -tags mesg -width 2
.c create line 220 2346 300 2346 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2360 -fill #eef -text "195"
.c create line 140 2360 300 2360 -fill #eef -dash {6 4}
.c create line 300 2328 300 2348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 191 to 195 (Used 1 nobox 1)
# ProcLine[2] stays at 195 (Used 1 nobox 1)
.c create rectangle 282 2350 318 2370 -fill white -width 0
.c create text 300 2360 -text "go?W"
.c create text 70 2384 -fill #eef -text "197"
.c create line 140 2384 300 2384 -fill #eef -dash {6 4}
.c create line 300 2376 300 2372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 195 to 197 (Used 1 nobox 1)
# ProcLine[2] stays at 197 (Used 1 nobox 1)
.c create rectangle 258 2374 342 2394 -fill white -width 0
.c create text 300 2384 -text "go to W "
.c create text 70 2408 -fill #eef -text "199"
.c create line 140 2408 300 2408 -fill #eef -dash {6 4}
.c create line 140 2352 140 2396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 193 to 199 (Used 1 nobox 1)
# ProcLine[1] stays at 199 (Used 1 nobox 1)
.c create rectangle 122 2398 158 2418 -fill white -width 0
.c create text 140 2408 -text "go!N"
.c create line 140 2418 220 2418 -fill darkred -tags mesg -width 2
.c create line 220 2418 300 2418 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2432 -fill #eef -text "201"
.c create line 140 2432 300 2432 -fill #eef -dash {6 4}
.c create line 300 2400 300 2420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 197 to 201 (Used 1 nobox 1)
# ProcLine[2] stays at 201 (Used 1 nobox 1)
.c create rectangle 282 2422 318 2442 -fill white -width 0
.c create text 300 2432 -text "go?N"
.c create text 70 2456 -fill #eef -text "203"
.c create line 140 2456 300 2456 -fill #eef -dash {6 4}
.c create line 300 2448 300 2444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 201 to 203 (Used 1 nobox 1)
# ProcLine[2] stays at 203 (Used 1 nobox 1)
.c create rectangle 258 2446 342 2466 -fill white -width 0
.c create text 300 2456 -text "go to N "
.c create text 70 2480 -fill #eef -text "205"
.c create line 140 2480 300 2480 -fill #eef -dash {6 4}
.c create line 140 2424 140 2468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 199 to 205 (Used 1 nobox 1)
# ProcLine[1] stays at 205 (Used 1 nobox 1)
.c create rectangle 122 2470 158 2490 -fill white -width 0
.c create text 140 2480 -text "go!W"
.c create line 140 2490 220 2490 -fill darkred -tags mesg -width 2
.c create line 220 2490 300 2490 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2504 -fill #eef -text "207"
.c create line 140 2504 300 2504 -fill #eef -dash {6 4}
.c create line 300 2472 300 2492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 203 to 207 (Used 1 nobox 1)
# ProcLine[2] stays at 207 (Used 1 nobox 1)
.c create rectangle 282 2494 318 2514 -fill white -width 0
.c create text 300 2504 -text "go?W"
.c create text 70 2528 -fill #eef -text "209"
.c create line 140 2528 300 2528 -fill #eef -dash {6 4}
.c create line 300 2520 300 2516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 207 to 209 (Used 1 nobox 1)
# ProcLine[2] stays at 209 (Used 1 nobox 1)
.c create rectangle 258 2518 342 2538 -fill white -width 0
.c create text 300 2528 -text "go to W "
.c create text 70 2552 -fill #eef -text "211"
.c create line 140 2552 300 2552 -fill #eef -dash {6 4}
.c create line 140 2496 140 2540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 205 to 211 (Used 1 nobox 1)
# ProcLine[1] stays at 211 (Used 1 nobox 1)
.c create rectangle 122 2542 158 2562 -fill white -width 0
.c create text 140 2552 -text "go!E"
.c create line 140 2562 220 2562 -fill darkred -tags mesg -width 2
.c create line 220 2562 300 2562 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2576 -fill #eef -text "213"
.c create line 140 2576 300 2576 -fill #eef -dash {6 4}
.c create line 300 2544 300 2564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 209 to 213 (Used 1 nobox 1)
# ProcLine[2] stays at 213 (Used 1 nobox 1)
.c create rectangle 282 2566 318 2586 -fill white -width 0
.c create text 300 2576 -text "go?E"
.c create text 70 2600 -fill #eef -text "215"
.c create line 140 2600 300 2600 -fill #eef -dash {6 4}
.c create line 300 2592 300 2588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 213 to 215 (Used 1 nobox 1)
# ProcLine[2] stays at 215 (Used 1 nobox 1)
.c create rectangle 258 2590 342 2610 -fill white -width 0
.c create text 300 2600 -text "go to E "
.c create text 70 2624 -fill #eef -text "217"
.c create line 140 2624 300 2624 -fill #eef -dash {6 4}
.c create line 140 2568 140 2612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 211 to 217 (Used 1 nobox 1)
# ProcLine[1] stays at 217 (Used 1 nobox 1)
.c create rectangle 122 2614 158 2634 -fill white -width 0
.c create text 140 2624 -text "go!W"
.c create line 140 2634 220 2634 -fill darkred -tags mesg -width 2
.c create line 220 2634 300 2634 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2648 -fill #eef -text "219"
.c create line 140 2648 300 2648 -fill #eef -dash {6 4}
.c create line 300 2616 300 2636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 215 to 219 (Used 1 nobox 1)
# ProcLine[2] stays at 219 (Used 1 nobox 1)
.c create rectangle 282 2638 318 2658 -fill white -width 0
.c create text 300 2648 -text "go?W"
.c create text 70 2672 -fill #eef -text "221"
.c create line 140 2672 300 2672 -fill #eef -dash {6 4}
.c create line 300 2664 300 2660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 219 to 221 (Used 1 nobox 1)
# ProcLine[2] stays at 221 (Used 1 nobox 1)
.c create rectangle 258 2662 342 2682 -fill white -width 0
.c create text 300 2672 -text "go to W "
.c create text 70 2696 -fill #eef -text "223"
.c create line 140 2696 300 2696 -fill #eef -dash {6 4}
.c create line 140 2640 140 2684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 217 to 223 (Used 1 nobox 1)
# ProcLine[1] stays at 223 (Used 1 nobox 1)
.c create rectangle 122 2686 158 2706 -fill white -width 0
.c create text 140 2696 -text "go!E"
.c create line 140 2706 220 2706 -fill darkred -tags mesg -width 2
.c create line 220 2706 300 2706 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2720 -fill #eef -text "225"
.c create line 140 2720 300 2720 -fill #eef -dash {6 4}
.c create line 300 2688 300 2708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 221 to 225 (Used 1 nobox 1)
# ProcLine[2] stays at 225 (Used 1 nobox 1)
.c create rectangle 282 2710 318 2730 -fill white -width 0
.c create text 300 2720 -text "go?E"
.c create text 70 2744 -fill #eef -text "227"
.c create line 140 2744 300 2744 -fill #eef -dash {6 4}
.c create line 300 2736 300 2732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 225 to 227 (Used 1 nobox 1)
# ProcLine[2] stays at 227 (Used 1 nobox 1)
.c create rectangle 258 2734 342 2754 -fill white -width 0
.c create text 300 2744 -text "go to E "
.c create text 70 2768 -fill #eef -text "229"
.c create line 140 2768 300 2768 -fill #eef -dash {6 4}
.c create line 140 2712 140 2756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 223 to 229 (Used 1 nobox 1)
# ProcLine[1] stays at 229 (Used 1 nobox 1)
.c create rectangle 122 2758 158 2778 -fill white -width 0
.c create text 140 2768 -text "go!N"
.c create line 140 2778 220 2778 -fill darkred -tags mesg -width 2
.c create line 220 2778 300 2778 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2792 -fill #eef -text "231"
.c create line 140 2792 300 2792 -fill #eef -dash {6 4}
.c create line 300 2760 300 2780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 227 to 231 (Used 1 nobox 1)
# ProcLine[2] stays at 231 (Used 1 nobox 1)
.c create rectangle 282 2782 318 2802 -fill white -width 0
.c create text 300 2792 -text "go?N"
.c create text 70 2816 -fill #eef -text "233"
.c create line 140 2816 300 2816 -fill #eef -dash {6 4}
.c create line 300 2808 300 2804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 231 to 233 (Used 1 nobox 1)
# ProcLine[2] stays at 233 (Used 1 nobox 1)
.c create rectangle 258 2806 342 2826 -fill white -width 0
.c create text 300 2816 -text "go to N "
.c create text 70 2840 -fill #eef -text "235"
.c create line 140 2840 300 2840 -fill #eef -dash {6 4}
.c create line 140 2784 140 2828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 229 to 235 (Used 1 nobox 1)
# ProcLine[1] stays at 235 (Used 1 nobox 1)
.c create rectangle 122 2830 158 2850 -fill white -width 0
.c create text 140 2840 -text "go!S"
.c create line 140 2850 220 2850 -fill darkred -tags mesg -width 2
.c create line 220 2850 300 2850 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2864 -fill #eef -text "237"
.c create line 140 2864 300 2864 -fill #eef -dash {6 4}
.c create line 300 2832 300 2852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 233 to 237 (Used 1 nobox 1)
# ProcLine[2] stays at 237 (Used 1 nobox 1)
.c create rectangle 282 2854 318 2874 -fill white -width 0
.c create text 300 2864 -text "go?S"
.c create text 70 2888 -fill #eef -text "239"
.c create line 140 2888 300 2888 -fill #eef -dash {6 4}
.c create line 300 2880 300 2876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 237 to 239 (Used 1 nobox 1)
# ProcLine[2] stays at 239 (Used 1 nobox 1)
.c create rectangle 258 2878 342 2898 -fill white -width 0
.c create text 300 2888 -text "go to S "
.c create text 70 2912 -fill #eef -text "241"
.c create line 140 2912 300 2912 -fill #eef -dash {6 4}
.c create line 140 2856 140 2900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 235 to 241 (Used 1 nobox 1)
# ProcLine[1] stays at 241 (Used 1 nobox 1)
.c create rectangle 122 2902 158 2922 -fill white -width 0
.c create text 140 2912 -text "go!W"
.c create line 140 2922 220 2922 -fill darkred -tags mesg -width 2
.c create line 220 2922 300 2922 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2936 -fill #eef -text "243"
.c create line 140 2936 300 2936 -fill #eef -dash {6 4}
.c create line 300 2904 300 2924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 239 to 243 (Used 1 nobox 1)
# ProcLine[2] stays at 243 (Used 1 nobox 1)
.c create rectangle 282 2926 318 2946 -fill white -width 0
.c create text 300 2936 -text "go?W"
.c create text 70 2960 -fill #eef -text "245"
.c create line 140 2960 300 2960 -fill #eef -dash {6 4}
.c create line 300 2952 300 2948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 243 to 245 (Used 1 nobox 1)
# ProcLine[2] stays at 245 (Used 1 nobox 1)
.c create rectangle 258 2950 342 2970 -fill white -width 0
.c create text 300 2960 -text "go to W "
.c create text 70 2984 -fill #eef -text "247"
.c create line 140 2984 300 2984 -fill #eef -dash {6 4}
.c create line 140 2928 140 2972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 241 to 247 (Used 1 nobox 1)
# ProcLine[1] stays at 247 (Used 1 nobox 1)
.c create rectangle 122 2974 158 2994 -fill white -width 0
.c create text 140 2984 -text "go!E"
.c create line 140 2994 220 2994 -fill darkred -tags mesg -width 2
.c create line 220 2994 300 2994 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3008 -fill #eef -text "249"
.c create line 140 3008 300 3008 -fill #eef -dash {6 4}
.c create line 300 2976 300 2996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 245 to 249 (Used 1 nobox 1)
# ProcLine[2] stays at 249 (Used 1 nobox 1)
.c create rectangle 282 2998 318 3018 -fill white -width 0
.c create text 300 3008 -text "go?E"
.c create text 70 3032 -fill #eef -text "251"
.c create line 140 3032 300 3032 -fill #eef -dash {6 4}
.c create line 300 3024 300 3020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 249 to 251 (Used 1 nobox 1)
# ProcLine[2] stays at 251 (Used 1 nobox 1)
.c create rectangle 258 3022 342 3042 -fill white -width 0
.c create text 300 3032 -text "go to E "
.c create text 70 3056 -fill #eef -text "253"
.c create line 140 3056 300 3056 -fill #eef -dash {6 4}
.c create line 140 3000 140 3044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 247 to 253 (Used 1 nobox 1)
# ProcLine[1] stays at 253 (Used 1 nobox 1)
.c create rectangle 122 3046 158 3066 -fill white -width 0
.c create text 140 3056 -text "go!N"
.c create line 140 3066 220 3066 -fill darkred -tags mesg -width 2
.c create line 220 3066 300 3066 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3080 -fill #eef -text "255"
.c create line 140 3080 300 3080 -fill #eef -dash {6 4}
.c create line 300 3048 300 3068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 251 to 255 (Used 1 nobox 1)
# ProcLine[2] stays at 255 (Used 1 nobox 1)
.c create rectangle 282 3070 318 3090 -fill white -width 0
.c create text 300 3080 -text "go?N"
.c create text 70 3104 -fill #eef -text "257"
.c create line 140 3104 300 3104 -fill #eef -dash {6 4}
.c create line 300 3096 300 3092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 255 to 257 (Used 1 nobox 1)
# ProcLine[2] stays at 257 (Used 1 nobox 1)
.c create rectangle 258 3094 342 3114 -fill white -width 0
.c create text 300 3104 -text "go to N "
.c create text 70 3128 -fill #eef -text "259"
.c create line 140 3128 300 3128 -fill #eef -dash {6 4}
.c create line 140 3072 140 3116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 253 to 259 (Used 1 nobox 1)
# ProcLine[1] stays at 259 (Used 1 nobox 1)
.c create rectangle 122 3118 158 3138 -fill white -width 0
.c create text 140 3128 -text "go!S"
.c create line 140 3138 220 3138 -fill darkred -tags mesg -width 2
.c create line 220 3138 300 3138 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3152 -fill #eef -text "261"
.c create line 140 3152 300 3152 -fill #eef -dash {6 4}
.c create line 300 3120 300 3140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 257 to 261 (Used 1 nobox 1)
# ProcLine[2] stays at 261 (Used 1 nobox 1)
.c create rectangle 282 3142 318 3162 -fill white -width 0
.c create text 300 3152 -text "go?S"
.c create text 70 3176 -fill #eef -text "263"
.c create line 140 3176 300 3176 -fill #eef -dash {6 4}
.c create line 300 3168 300 3164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 261 to 263 (Used 1 nobox 1)
# ProcLine[2] stays at 263 (Used 1 nobox 1)
.c create rectangle 258 3166 342 3186 -fill white -width 0
.c create text 300 3176 -text "go to S "
.c create text 70 3200 -fill #eef -text "265"
.c create line 140 3200 300 3200 -fill #eef -dash {6 4}
.c create line 140 3144 140 3188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 259 to 265 (Used 1 nobox 1)
# ProcLine[1] stays at 265 (Used 1 nobox 1)
.c create rectangle 122 3190 158 3210 -fill white -width 0
.c create text 140 3200 -text "go!S"
.c create line 140 3210 220 3210 -fill darkred -tags mesg -width 2
.c create line 220 3210 300 3210 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3224 -fill #eef -text "267"
.c create line 140 3224 300 3224 -fill #eef -dash {6 4}
.c create line 300 3192 300 3212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 263 to 267 (Used 1 nobox 1)
# ProcLine[2] stays at 267 (Used 1 nobox 1)
.c create rectangle 282 3214 318 3234 -fill white -width 0
.c create text 300 3224 -text "go?S"
.c create text 70 3248 -fill #eef -text "269"
.c create line 140 3248 300 3248 -fill #eef -dash {6 4}
.c create line 300 3240 300 3236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 267 to 269 (Used 1 nobox 1)
# ProcLine[2] stays at 269 (Used 1 nobox 1)
.c create rectangle 258 3238 342 3258 -fill white -width 0
.c create text 300 3248 -text "go to S "
.c create text 70 3272 -fill #eef -text "271"
.c create line 140 3272 300 3272 -fill #eef -dash {6 4}
.c create line 140 3216 140 3260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 265 to 271 (Used 1 nobox 1)
# ProcLine[1] stays at 271 (Used 1 nobox 1)
.c create rectangle 122 3262 158 3282 -fill white -width 0
.c create text 140 3272 -text "go!N"
.c create line 140 3282 220 3282 -fill darkred -tags mesg -width 2
.c create line 220 3282 300 3282 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3296 -fill #eef -text "273"
.c create line 140 3296 300 3296 -fill #eef -dash {6 4}
.c create line 300 3264 300 3284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 269 to 273 (Used 1 nobox 1)
# ProcLine[2] stays at 273 (Used 1 nobox 1)
.c create rectangle 282 3286 318 3306 -fill white -width 0
.c create text 300 3296 -text "go?N"
.c create text 70 3320 -fill #eef -text "275"
.c create line 140 3320 300 3320 -fill #eef -dash {6 4}
.c create line 300 3312 300 3308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 273 to 275 (Used 1 nobox 1)
# ProcLine[2] stays at 275 (Used 1 nobox 1)
.c create rectangle 258 3310 342 3330 -fill white -width 0
.c create text 300 3320 -text "go to N "
.c create text 70 3344 -fill #eef -text "277"
.c create line 140 3344 300 3344 -fill #eef -dash {6 4}
.c create line 140 3288 140 3332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 271 to 277 (Used 1 nobox 1)
# ProcLine[1] stays at 277 (Used 1 nobox 1)
.c create rectangle 122 3334 158 3354 -fill white -width 0
.c create text 140 3344 -text "go!S"
.c create line 140 3354 220 3354 -fill darkred -tags mesg -width 2
.c create line 220 3354 300 3354 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3368 -fill #eef -text "279"
.c create line 140 3368 300 3368 -fill #eef -dash {6 4}
.c create line 300 3336 300 3356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 275 to 279 (Used 1 nobox 1)
# ProcLine[2] stays at 279 (Used 1 nobox 1)
.c create rectangle 282 3358 318 3378 -fill white -width 0
.c create text 300 3368 -text "go?S"
.c create text 70 3392 -fill #eef -text "281"
.c create line 140 3392 300 3392 -fill #eef -dash {6 4}
.c create line 300 3384 300 3380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 279 to 281 (Used 1 nobox 1)
# ProcLine[2] stays at 281 (Used 1 nobox 1)
.c create rectangle 258 3382 342 3402 -fill white -width 0
.c create text 300 3392 -text "go to S "
.c create text 70 3416 -fill #eef -text "283"
.c create line 140 3416 300 3416 -fill #eef -dash {6 4}
.c create line 140 3360 140 3404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 277 to 283 (Used 1 nobox 1)
# ProcLine[1] stays at 283 (Used 1 nobox 1)
.c create rectangle 122 3406 158 3426 -fill white -width 0
.c create text 140 3416 -text "go!E"
.c create line 140 3426 220 3426 -fill darkred -tags mesg -width 2
.c create line 220 3426 300 3426 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3440 -fill #eef -text "285"
.c create line 140 3440 300 3440 -fill #eef -dash {6 4}
.c create line 300 3408 300 3428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 281 to 285 (Used 1 nobox 1)
# ProcLine[2] stays at 285 (Used 1 nobox 1)
.c create rectangle 282 3430 318 3450 -fill white -width 0
.c create text 300 3440 -text "go?E"
.c create text 70 3464 -fill #eef -text "287"
.c create line 140 3464 300 3464 -fill #eef -dash {6 4}
.c create line 300 3456 300 3452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 285 to 287 (Used 1 nobox 1)
# ProcLine[2] stays at 287 (Used 1 nobox 1)
.c create rectangle 258 3454 342 3474 -fill white -width 0
.c create text 300 3464 -text "go to E "
.c create text 70 3488 -fill #eef -text "289"
.c create line 140 3488 300 3488 -fill #eef -dash {6 4}
.c create line 140 3432 140 3476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 283 to 289 (Used 1 nobox 1)
# ProcLine[1] stays at 289 (Used 1 nobox 1)
.c create rectangle 122 3478 158 3498 -fill white -width 0
.c create text 140 3488 -text "go!E"
.c create line 140 3498 220 3498 -fill darkred -tags mesg -width 2
.c create line 220 3498 300 3498 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3512 -fill #eef -text "291"
.c create line 140 3512 300 3512 -fill #eef -dash {6 4}
.c create line 300 3480 300 3500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 287 to 291 (Used 1 nobox 1)
# ProcLine[2] stays at 291 (Used 1 nobox 1)
.c create rectangle 282 3502 318 3522 -fill white -width 0
.c create text 300 3512 -text "go?E"
.c create text 70 3536 -fill #eef -text "293"
.c create line 140 3536 300 3536 -fill #eef -dash {6 4}
.c create line 300 3528 300 3524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 291 to 293 (Used 1 nobox 1)
# ProcLine[2] stays at 293 (Used 1 nobox 1)
.c create rectangle 258 3526 342 3546 -fill white -width 0
.c create text 300 3536 -text "go to E "
.c create text 70 3560 -fill #eef -text "295"
.c create line 140 3560 300 3560 -fill #eef -dash {6 4}
.c create line 140 3504 140 3548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 289 to 295 (Used 1 nobox 1)
# ProcLine[1] stays at 295 (Used 1 nobox 1)
.c create rectangle 122 3550 158 3570 -fill white -width 0
.c create text 140 3560 -text "go!W"
.c create line 140 3570 220 3570 -fill darkred -tags mesg -width 2
.c create line 220 3570 300 3570 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3584 -fill #eef -text "297"
.c create line 140 3584 300 3584 -fill #eef -dash {6 4}
.c create line 300 3552 300 3572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 293 to 297 (Used 1 nobox 1)
# ProcLine[2] stays at 297 (Used 1 nobox 1)
.c create rectangle 282 3574 318 3594 -fill white -width 0
.c create text 300 3584 -text "go?W"
.c create text 70 3608 -fill #eef -text "299"
.c create line 140 3608 300 3608 -fill #eef -dash {6 4}
.c create line 300 3600 300 3596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 297 to 299 (Used 1 nobox 1)
# ProcLine[2] stays at 299 (Used 1 nobox 1)
.c create rectangle 258 3598 342 3618 -fill white -width 0
.c create text 300 3608 -text "go to W "
.c create text 70 3632 -fill #eef -text "301"
.c create line 140 3632 300 3632 -fill #eef -dash {6 4}
.c create line 140 3576 140 3620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 295 to 301 (Used 1 nobox 1)
# ProcLine[1] stays at 301 (Used 1 nobox 1)
.c create rectangle 122 3622 158 3642 -fill white -width 0
.c create text 140 3632 -text "go!W"
.c create line 140 3642 220 3642 -fill darkred -tags mesg -width 2
.c create line 220 3642 300 3642 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3656 -fill #eef -text "303"
.c create line 140 3656 300 3656 -fill #eef -dash {6 4}
.c create line 300 3624 300 3644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 299 to 303 (Used 1 nobox 1)
# ProcLine[2] stays at 303 (Used 1 nobox 1)
.c create rectangle 282 3646 318 3666 -fill white -width 0
.c create text 300 3656 -text "go?W"
.c create text 70 3680 -fill #eef -text "305"
.c create line 140 3680 300 3680 -fill #eef -dash {6 4}
.c create line 300 3672 300 3668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 303 to 305 (Used 1 nobox 1)
# ProcLine[2] stays at 305 (Used 1 nobox 1)
.c create rectangle 258 3670 342 3690 -fill white -width 0
.c create text 300 3680 -text "go to W "
.c create text 70 3704 -fill #eef -text "307"
.c create line 140 3704 300 3704 -fill #eef -dash {6 4}
.c create line 140 3648 140 3692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 301 to 307 (Used 1 nobox 1)
# ProcLine[1] stays at 307 (Used 1 nobox 1)
.c create rectangle 122 3694 158 3714 -fill white -width 0
.c create text 140 3704 -text "go!N"
.c create line 140 3714 220 3714 -fill darkred -tags mesg -width 2
.c create line 220 3714 300 3714 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3728 -fill #eef -text "309"
.c create line 140 3728 300 3728 -fill #eef -dash {6 4}
.c create line 300 3696 300 3716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 305 to 309 (Used 1 nobox 1)
# ProcLine[2] stays at 309 (Used 1 nobox 1)
.c create rectangle 282 3718 318 3738 -fill white -width 0
.c create text 300 3728 -text "go?N"
.c create text 70 3752 -fill #eef -text "311"
.c create line 140 3752 300 3752 -fill #eef -dash {6 4}
.c create line 300 3744 300 3740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 309 to 311 (Used 1 nobox 1)
# ProcLine[2] stays at 311 (Used 1 nobox 1)
.c create rectangle 258 3742 342 3762 -fill white -width 0
.c create text 300 3752 -text "go to N "
.c create text 70 3776 -fill #eef -text "313"
.c create line 140 3776 300 3776 -fill #eef -dash {6 4}
.c create line 140 3720 140 3764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 307 to 313 (Used 1 nobox 1)
# ProcLine[1] stays at 313 (Used 1 nobox 1)
.c create rectangle 122 3766 158 3786 -fill white -width 0
.c create text 140 3776 -text "go!N"
.c create line 140 3786 220 3786 -fill darkred -tags mesg -width 2
.c create line 220 3786 300 3786 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3800 -fill #eef -text "315"
.c create line 140 3800 300 3800 -fill #eef -dash {6 4}
.c create line 300 3768 300 3788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 311 to 315 (Used 1 nobox 1)
# ProcLine[2] stays at 315 (Used 1 nobox 1)
.c create rectangle 282 3790 318 3810 -fill white -width 0
.c create text 300 3800 -text "go?N"
.c create text 70 3824 -fill #eef -text "317"
.c create line 140 3824 300 3824 -fill #eef -dash {6 4}
.c create line 300 3816 300 3812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 315 to 317 (Used 1 nobox 1)
# ProcLine[2] stays at 317 (Used 1 nobox 1)
.c create rectangle 258 3814 342 3834 -fill white -width 0
.c create text 300 3824 -text "go to N "
.c create text 70 3848 -fill #eef -text "319"
.c create line 140 3848 300 3848 -fill #eef -dash {6 4}
.c create line 140 3792 140 3836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 313 to 319 (Used 1 nobox 1)
# ProcLine[1] stays at 319 (Used 1 nobox 1)
.c create rectangle 122 3838 158 3858 -fill white -width 0
.c create text 140 3848 -text "go!E"
.c create line 140 3858 220 3858 -fill darkred -tags mesg -width 2
.c create line 220 3858 300 3858 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3872 -fill #eef -text "321"
.c create line 140 3872 300 3872 -fill #eef -dash {6 4}
.c create line 300 3840 300 3860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 317 to 321 (Used 1 nobox 1)
# ProcLine[2] stays at 321 (Used 1 nobox 1)
.c create rectangle 282 3862 318 3882 -fill white -width 0
.c create text 300 3872 -text "go?E"
.c create text 70 3896 -fill #eef -text "323"
.c create line 140 3896 300 3896 -fill #eef -dash {6 4}
.c create line 300 3888 300 3884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 321 to 323 (Used 1 nobox 1)
# ProcLine[2] stays at 323 (Used 1 nobox 1)
.c create rectangle 258 3886 342 3906 -fill white -width 0
.c create text 300 3896 -text "go to E "
.c create text 70 3920 -fill #eef -text "325"
.c create line 140 3920 300 3920 -fill #eef -dash {6 4}
.c create line 140 3864 140 3908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 319 to 325 (Used 1 nobox 1)
# ProcLine[1] stays at 325 (Used 1 nobox 1)
.c create rectangle 122 3910 158 3930 -fill white -width 0
.c create text 140 3920 -text "go!W"
.c create line 140 3930 220 3930 -fill darkred -tags mesg -width 2
.c create line 220 3930 300 3930 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3944 -fill #eef -text "327"
.c create line 140 3944 300 3944 -fill #eef -dash {6 4}
.c create line 300 3912 300 3932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 323 to 327 (Used 1 nobox 1)
# ProcLine[2] stays at 327 (Used 1 nobox 1)
.c create rectangle 282 3934 318 3954 -fill white -width 0
.c create text 300 3944 -text "go?W"
.c create text 70 3968 -fill #eef -text "329"
.c create line 140 3968 300 3968 -fill #eef -dash {6 4}
.c create line 300 3960 300 3956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 327 to 329 (Used 1 nobox 1)
# ProcLine[2] stays at 329 (Used 1 nobox 1)
.c create rectangle 258 3958 342 3978 -fill white -width 0
.c create text 300 3968 -text "go to W "
.c create text 70 3992 -fill #eef -text "331"
.c create line 140 3992 300 3992 -fill #eef -dash {6 4}
.c create line 140 3936 140 3980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 325 to 331 (Used 1 nobox 1)
# ProcLine[1] stays at 331 (Used 1 nobox 1)
.c create rectangle 122 3982 158 4002 -fill white -width 0
.c create text 140 3992 -text "go!S"
.c create line 140 4002 220 4002 -fill darkred -tags mesg -width 2
.c create line 220 4002 300 4002 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4016 -fill #eef -text "333"
.c create line 140 4016 300 4016 -fill #eef -dash {6 4}
.c create line 300 3984 300 4004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 329 to 333 (Used 1 nobox 1)
# ProcLine[2] stays at 333 (Used 1 nobox 1)
.c create rectangle 282 4006 318 4026 -fill white -width 0
.c create text 300 4016 -text "go?S"
.c create text 70 4040 -fill #eef -text "335"
.c create line 140 4040 300 4040 -fill #eef -dash {6 4}
.c create line 300 4032 300 4028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 333 to 335 (Used 1 nobox 1)
# ProcLine[2] stays at 335 (Used 1 nobox 1)
.c create rectangle 258 4030 342 4050 -fill white -width 0
.c create text 300 4040 -text "go to S "
.c create text 70 4064 -fill #eef -text "337"
.c create line 140 4064 300 4064 -fill #eef -dash {6 4}
.c create line 140 4008 140 4052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 331 to 337 (Used 1 nobox 1)
# ProcLine[1] stays at 337 (Used 1 nobox 1)
.c create rectangle 122 4054 158 4074 -fill white -width 0
.c create text 140 4064 -text "go!W"
.c create line 140 4074 220 4074 -fill darkred -tags mesg -width 2
.c create line 220 4074 300 4074 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4088 -fill #eef -text "339"
.c create line 140 4088 300 4088 -fill #eef -dash {6 4}
.c create line 300 4056 300 4076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 335 to 339 (Used 1 nobox 1)
# ProcLine[2] stays at 339 (Used 1 nobox 1)
.c create rectangle 282 4078 318 4098 -fill white -width 0
.c create text 300 4088 -text "go?W"
.c create text 70 4112 -fill #eef -text "341"
.c create line 140 4112 300 4112 -fill #eef -dash {6 4}
.c create line 300 4104 300 4100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 339 to 341 (Used 1 nobox 1)
# ProcLine[2] stays at 341 (Used 1 nobox 1)
.c create rectangle 258 4102 342 4122 -fill white -width 0
.c create text 300 4112 -text "go to W "
.c create text 70 4136 -fill #eef -text "343"
.c create line 140 4136 300 4136 -fill #eef -dash {6 4}
.c create line 140 4080 140 4124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 337 to 343 (Used 1 nobox 1)
# ProcLine[1] stays at 343 (Used 1 nobox 1)
.c create rectangle 122 4126 158 4146 -fill white -width 0
.c create text 140 4136 -text "go!E"
.c create line 140 4146 220 4146 -fill darkred -tags mesg -width 2
.c create line 220 4146 300 4146 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4160 -fill #eef -text "345"
.c create line 140 4160 300 4160 -fill #eef -dash {6 4}
.c create line 300 4128 300 4148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 341 to 345 (Used 1 nobox 1)
# ProcLine[2] stays at 345 (Used 1 nobox 1)
.c create rectangle 282 4150 318 4170 -fill white -width 0
.c create text 300 4160 -text "go?E"
.c create text 70 4184 -fill #eef -text "347"
.c create line 140 4184 300 4184 -fill #eef -dash {6 4}
.c create line 300 4176 300 4172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 345 to 347 (Used 1 nobox 1)
# ProcLine[2] stays at 347 (Used 1 nobox 1)
.c create rectangle 258 4174 342 4194 -fill white -width 0
.c create text 300 4184 -text "go to E "
.c create text 70 4208 -fill #eef -text "349"
.c create line 140 4208 300 4208 -fill #eef -dash {6 4}
.c create line 140 4152 140 4196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 343 to 349 (Used 1 nobox 1)
# ProcLine[1] stays at 349 (Used 1 nobox 1)
.c create rectangle 122 4198 158 4218 -fill white -width 0
.c create text 140 4208 -text "go!N"
.c create line 140 4218 220 4218 -fill darkred -tags mesg -width 2
.c create line 220 4218 300 4218 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4232 -fill #eef -text "351"
.c create line 140 4232 300 4232 -fill #eef -dash {6 4}
.c create line 300 4200 300 4220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 347 to 351 (Used 1 nobox 1)
# ProcLine[2] stays at 351 (Used 1 nobox 1)
.c create rectangle 282 4222 318 4242 -fill white -width 0
.c create text 300 4232 -text "go?N"
.c create text 70 4256 -fill #eef -text "353"
.c create line 140 4256 300 4256 -fill #eef -dash {6 4}
.c create line 300 4248 300 4244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 351 to 353 (Used 1 nobox 1)
# ProcLine[2] stays at 353 (Used 1 nobox 1)
.c create rectangle 258 4246 342 4266 -fill white -width 0
.c create text 300 4256 -text "go to N "
.c create text 70 4280 -fill #eef -text "355"
.c create line 140 4280 300 4280 -fill #eef -dash {6 4}
.c create line 140 4224 140 4268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 349 to 355 (Used 1 nobox 1)
# ProcLine[1] stays at 355 (Used 1 nobox 1)
.c create rectangle 122 4270 158 4290 -fill white -width 0
.c create text 140 4280 -text "go!S"
.c create line 140 4290 220 4290 -fill darkred -tags mesg -width 2
.c create line 220 4290 300 4290 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4304 -fill #eef -text "357"
.c create line 140 4304 300 4304 -fill #eef -dash {6 4}
.c create line 300 4272 300 4292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 353 to 357 (Used 1 nobox 1)
# ProcLine[2] stays at 357 (Used 1 nobox 1)
.c create rectangle 282 4294 318 4314 -fill white -width 0
.c create text 300 4304 -text "go?S"
.c create text 70 4328 -fill #eef -text "359"
.c create line 140 4328 300 4328 -fill #eef -dash {6 4}
.c create line 300 4320 300 4316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 357 to 359 (Used 1 nobox 1)
# ProcLine[2] stays at 359 (Used 1 nobox 1)
.c create rectangle 258 4318 342 4338 -fill white -width 0
.c create text 300 4328 -text "go to S "
.c create text 70 4352 -fill #eef -text "361"
.c create line 140 4352 300 4352 -fill #eef -dash {6 4}
.c create line 140 4296 140 4340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 355 to 361 (Used 1 nobox 1)
# ProcLine[1] stays at 361 (Used 1 nobox 1)
.c create rectangle 122 4342 158 4362 -fill white -width 0
.c create text 140 4352 -text "go!N"
.c create line 140 4362 220 4362 -fill darkred -tags mesg -width 2
.c create line 220 4362 300 4362 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4376 -fill #eef -text "363"
.c create line 140 4376 300 4376 -fill #eef -dash {6 4}
.c create line 300 4344 300 4364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 359 to 363 (Used 1 nobox 1)
# ProcLine[2] stays at 363 (Used 1 nobox 1)
.c create rectangle 282 4366 318 4386 -fill white -width 0
.c create text 300 4376 -text "go?N"
.c create text 70 4400 -fill #eef -text "365"
.c create line 140 4400 300 4400 -fill #eef -dash {6 4}
.c create line 300 4392 300 4388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 363 to 365 (Used 1 nobox 1)
# ProcLine[2] stays at 365 (Used 1 nobox 1)
.c create rectangle 258 4390 342 4410 -fill white -width 0
.c create text 300 4400 -text "go to N "
.c create text 70 4424 -fill #eef -text "367"
.c create line 140 4424 300 4424 -fill #eef -dash {6 4}
.c create line 140 4368 140 4412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 361 to 367 (Used 1 nobox 1)
# ProcLine[1] stays at 367 (Used 1 nobox 1)
.c create rectangle 122 4414 158 4434 -fill white -width 0
.c create text 140 4424 -text "go!E"
.c create line 140 4434 220 4434 -fill darkred -tags mesg -width 2
.c create line 220 4434 300 4434 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4448 -fill #eef -text "369"
.c create line 140 4448 300 4448 -fill #eef -dash {6 4}
.c create line 300 4416 300 4436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 365 to 369 (Used 1 nobox 1)
# ProcLine[2] stays at 369 (Used 1 nobox 1)
.c create rectangle 282 4438 318 4458 -fill white -width 0
.c create text 300 4448 -text "go?E"
.c create text 70 4472 -fill #eef -text "371"
.c create line 140 4472 300 4472 -fill #eef -dash {6 4}
.c create line 300 4464 300 4460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 369 to 371 (Used 1 nobox 1)
# ProcLine[2] stays at 371 (Used 1 nobox 1)
.c create rectangle 258 4462 342 4482 -fill white -width 0
.c create text 300 4472 -text "go to E "
.c create text 70 4496 -fill #eef -text "373"
.c create line 140 4496 300 4496 -fill #eef -dash {6 4}
.c create line 140 4440 140 4484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 367 to 373 (Used 1 nobox 1)
# ProcLine[1] stays at 373 (Used 1 nobox 1)
.c create rectangle 122 4486 158 4506 -fill white -width 0
.c create text 140 4496 -text "go!E"
.c create line 140 4506 220 4506 -fill darkred -tags mesg -width 2
.c create line 220 4506 300 4506 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4520 -fill #eef -text "375"
.c create line 140 4520 300 4520 -fill #eef -dash {6 4}
.c create line 300 4488 300 4508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 371 to 375 (Used 1 nobox 1)
# ProcLine[2] stays at 375 (Used 1 nobox 1)
.c create rectangle 282 4510 318 4530 -fill white -width 0
.c create text 300 4520 -text "go?E"
.c create text 70 4544 -fill #eef -text "377"
.c create line 140 4544 300 4544 -fill #eef -dash {6 4}
.c create line 300 4536 300 4532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 375 to 377 (Used 1 nobox 1)
# ProcLine[2] stays at 377 (Used 1 nobox 1)
.c create rectangle 258 4534 342 4554 -fill white -width 0
.c create text 300 4544 -text "go to E "
.c create text 70 4568 -fill #eef -text "379"
.c create line 140 4568 300 4568 -fill #eef -dash {6 4}
.c create line 140 4512 140 4556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 373 to 379 (Used 1 nobox 1)
# ProcLine[1] stays at 379 (Used 1 nobox 1)
.c create rectangle 122 4558 158 4578 -fill white -width 0
.c create text 140 4568 -text "go!N"
.c create line 140 4578 220 4578 -fill darkred -tags mesg -width 2
.c create line 220 4578 300 4578 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4592 -fill #eef -text "381"
.c create line 140 4592 300 4592 -fill #eef -dash {6 4}
.c create line 300 4560 300 4580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 377 to 381 (Used 1 nobox 1)
# ProcLine[2] stays at 381 (Used 1 nobox 1)
.c create rectangle 282 4582 318 4602 -fill white -width 0
.c create text 300 4592 -text "go?N"
.c create text 70 4616 -fill #eef -text "383"
.c create line 140 4616 300 4616 -fill #eef -dash {6 4}
.c create line 300 4608 300 4604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 381 to 383 (Used 1 nobox 1)
# ProcLine[2] stays at 383 (Used 1 nobox 1)
.c create rectangle 258 4606 342 4626 -fill white -width 0
.c create text 300 4616 -text "go to N "
.c create text 70 4640 -fill #eef -text "385"
.c create line 140 4640 300 4640 -fill #eef -dash {6 4}
.c create line 140 4584 140 4628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 379 to 385 (Used 1 nobox 1)
# ProcLine[1] stays at 385 (Used 1 nobox 1)
.c create rectangle 122 4630 158 4650 -fill white -width 0
.c create text 140 4640 -text "go!S"
.c create line 140 4650 220 4650 -fill darkred -tags mesg -width 2
.c create line 220 4650 300 4650 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4664 -fill #eef -text "387"
.c create line 140 4664 300 4664 -fill #eef -dash {6 4}
.c create line 300 4632 300 4652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 383 to 387 (Used 1 nobox 1)
# ProcLine[2] stays at 387 (Used 1 nobox 1)
.c create rectangle 282 4654 318 4674 -fill white -width 0
.c create text 300 4664 -text "go?S"
.c create text 70 4688 -fill #eef -text "389"
.c create line 140 4688 300 4688 -fill #eef -dash {6 4}
.c create line 300 4680 300 4676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 387 to 389 (Used 1 nobox 1)
# ProcLine[2] stays at 389 (Used 1 nobox 1)
.c create rectangle 258 4678 342 4698 -fill white -width 0
.c create text 300 4688 -text "go to S "
.c create text 70 4712 -fill #eef -text "391"
.c create line 140 4712 300 4712 -fill #eef -dash {6 4}
.c create line 140 4656 140 4700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 385 to 391 (Used 1 nobox 1)
# ProcLine[1] stays at 391 (Used 1 nobox 1)
.c create rectangle 122 4702 158 4722 -fill white -width 0
.c create text 140 4712 -text "go!N"
.c create line 140 4722 220 4722 -fill darkred -tags mesg -width 2
.c create line 220 4722 300 4722 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4736 -fill #eef -text "393"
.c create line 140 4736 300 4736 -fill #eef -dash {6 4}
.c create line 300 4704 300 4724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 389 to 393 (Used 1 nobox 1)
# ProcLine[2] stays at 393 (Used 1 nobox 1)
.c create rectangle 282 4726 318 4746 -fill white -width 0
.c create text 300 4736 -text "go?N"
.c create text 70 4760 -fill #eef -text "395"
.c create line 140 4760 300 4760 -fill #eef -dash {6 4}
.c create line 300 4752 300 4748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 393 to 395 (Used 1 nobox 1)
# ProcLine[2] stays at 395 (Used 1 nobox 1)
.c create rectangle 258 4750 342 4770 -fill white -width 0
.c create text 300 4760 -text "go to N "
.c create text 70 4784 -fill #eef -text "397"
.c create line 140 4784 300 4784 -fill #eef -dash {6 4}
.c create line 140 4728 140 4772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 391 to 397 (Used 1 nobox 1)
# ProcLine[1] stays at 397 (Used 1 nobox 1)
.c create rectangle 122 4774 158 4794 -fill white -width 0
.c create text 140 4784 -text "go!W"
.c create line 140 4794 220 4794 -fill darkred -tags mesg -width 2
.c create line 220 4794 300 4794 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4808 -fill #eef -text "399"
.c create line 140 4808 300 4808 -fill #eef -dash {6 4}
.c create line 300 4776 300 4796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 395 to 399 (Used 1 nobox 1)
# ProcLine[2] stays at 399 (Used 1 nobox 1)
.c create rectangle 282 4798 318 4818 -fill white -width 0
.c create text 300 4808 -text "go?W"
.c create text 70 4832 -fill #eef -text "401"
.c create line 140 4832 300 4832 -fill #eef -dash {6 4}
.c create line 300 4824 300 4820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 399 to 401 (Used 1 nobox 1)
# ProcLine[2] stays at 401 (Used 1 nobox 1)
.c create rectangle 258 4822 342 4842 -fill white -width 0
.c create text 300 4832 -text "go to W "
.c create text 70 4856 -fill #eef -text "403"
.c create line 140 4856 300 4856 -fill #eef -dash {6 4}
.c create line 140 4800 140 4844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 397 to 403 (Used 1 nobox 1)
# ProcLine[1] stays at 403 (Used 1 nobox 1)
.c create rectangle 122 4846 158 4866 -fill white -width 0
.c create text 140 4856 -text "go!W"
.c create line 140 4866 220 4866 -fill darkred -tags mesg -width 2
.c create line 220 4866 300 4866 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4880 -fill #eef -text "405"
.c create line 140 4880 300 4880 -fill #eef -dash {6 4}
.c create line 300 4848 300 4868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 401 to 405 (Used 1 nobox 1)
# ProcLine[2] stays at 405 (Used 1 nobox 1)
.c create rectangle 282 4870 318 4890 -fill white -width 0
.c create text 300 4880 -text "go?W"
.c create text 70 4904 -fill #eef -text "407"
.c create line 140 4904 300 4904 -fill #eef -dash {6 4}
.c create line 300 4896 300 4892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 405 to 407 (Used 1 nobox 1)
# ProcLine[2] stays at 407 (Used 1 nobox 1)
.c create rectangle 258 4894 342 4914 -fill white -width 0
.c create text 300 4904 -text "go to W "
.c create text 70 4928 -fill #eef -text "409"
.c create line 140 4928 300 4928 -fill #eef -dash {6 4}
.c create line 140 4872 140 4916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 403 to 409 (Used 1 nobox 1)
# ProcLine[1] stays at 409 (Used 1 nobox 1)
.c create rectangle 122 4918 158 4938 -fill white -width 0
.c create text 140 4928 -text "go!E"
.c create line 140 4938 220 4938 -fill darkred -tags mesg -width 2
.c create line 220 4938 300 4938 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4952 -fill #eef -text "411"
.c create line 140 4952 300 4952 -fill #eef -dash {6 4}
.c create line 300 4920 300 4940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 407 to 411 (Used 1 nobox 1)
# ProcLine[2] stays at 411 (Used 1 nobox 1)
.c create rectangle 282 4942 318 4962 -fill white -width 0
.c create text 300 4952 -text "go?E"
.c create text 70 4976 -fill #eef -text "413"
.c create line 140 4976 300 4976 -fill #eef -dash {6 4}
.c create line 300 4968 300 4964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 411 to 413 (Used 1 nobox 1)
# ProcLine[2] stays at 413 (Used 1 nobox 1)
.c create rectangle 258 4966 342 4986 -fill white -width 0
.c create text 300 4976 -text "go to E "
.c create text 70 5000 -fill #eef -text "415"
.c create line 140 5000 300 5000 -fill #eef -dash {6 4}
.c create line 140 4944 140 4988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 409 to 415 (Used 1 nobox 1)
# ProcLine[1] stays at 415 (Used 1 nobox 1)
.c create rectangle 122 4990 158 5010 -fill white -width 0
.c create text 140 5000 -text "go!E"
.c create line 140 5010 220 5010 -fill darkred -tags mesg -width 2
.c create line 220 5010 300 5010 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5024 -fill #eef -text "417"
.c create line 140 5024 300 5024 -fill #eef -dash {6 4}
.c create line 300 4992 300 5012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 413 to 417 (Used 1 nobox 1)
# ProcLine[2] stays at 417 (Used 1 nobox 1)
.c create rectangle 282 5014 318 5034 -fill white -width 0
.c create text 300 5024 -text "go?E"
.c create text 70 5048 -fill #eef -text "419"
.c create line 140 5048 300 5048 -fill #eef -dash {6 4}
.c create line 300 5040 300 5036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 417 to 419 (Used 1 nobox 1)
# ProcLine[2] stays at 419 (Used 1 nobox 1)
.c create rectangle 258 5038 342 5058 -fill white -width 0
.c create text 300 5048 -text "go to E "
.c create text 70 5072 -fill #eef -text "421"
.c create line 140 5072 300 5072 -fill #eef -dash {6 4}
.c create line 140 5016 140 5060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 415 to 421 (Used 1 nobox 1)
# ProcLine[1] stays at 421 (Used 1 nobox 1)
.c create rectangle 122 5062 158 5082 -fill white -width 0
.c create text 140 5072 -text "go!S"
.c create line 140 5082 220 5082 -fill darkred -tags mesg -width 2
.c create line 220 5082 300 5082 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5096 -fill #eef -text "423"
.c create line 140 5096 300 5096 -fill #eef -dash {6 4}
.c create line 300 5064 300 5084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 419 to 423 (Used 1 nobox 1)
# ProcLine[2] stays at 423 (Used 1 nobox 1)
.c create rectangle 282 5086 318 5106 -fill white -width 0
.c create text 300 5096 -text "go?S"
.c create text 70 5120 -fill #eef -text "425"
.c create line 140 5120 300 5120 -fill #eef -dash {6 4}
.c create line 300 5112 300 5108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 423 to 425 (Used 1 nobox 1)
# ProcLine[2] stays at 425 (Used 1 nobox 1)
.c create rectangle 258 5110 342 5130 -fill white -width 0
.c create text 300 5120 -text "go to S "
.c create text 70 5144 -fill #eef -text "427"
.c create line 140 5144 300 5144 -fill #eef -dash {6 4}
.c create line 140 5088 140 5132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 421 to 427 (Used 1 nobox 1)
# ProcLine[1] stays at 427 (Used 1 nobox 1)
.c create rectangle 122 5134 158 5154 -fill white -width 0
.c create text 140 5144 -text "go!W"
.c create line 140 5154 220 5154 -fill darkred -tags mesg -width 2
.c create line 220 5154 300 5154 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5168 -fill #eef -text "429"
.c create line 140 5168 300 5168 -fill #eef -dash {6 4}
.c create line 300 5136 300 5156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 425 to 429 (Used 1 nobox 1)
# ProcLine[2] stays at 429 (Used 1 nobox 1)
.c create rectangle 282 5158 318 5178 -fill white -width 0
.c create text 300 5168 -text "go?W"
.c create text 70 5192 -fill #eef -text "431"
.c create line 140 5192 300 5192 -fill #eef -dash {6 4}
.c create line 300 5184 300 5180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 429 to 431 (Used 1 nobox 1)
# ProcLine[2] stays at 431 (Used 1 nobox 1)
.c create rectangle 258 5182 342 5202 -fill white -width 0
.c create text 300 5192 -text "go to W "
.c create text 70 5216 -fill #eef -text "433"
.c create line 140 5216 300 5216 -fill #eef -dash {6 4}
.c create line 140 5160 140 5204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 427 to 433 (Used 1 nobox 1)
# ProcLine[1] stays at 433 (Used 1 nobox 1)
.c create rectangle 122 5206 158 5226 -fill white -width 0
.c create text 140 5216 -text "go!W"
.c create line 140 5226 220 5226 -fill darkred -tags mesg -width 2
.c create line 220 5226 300 5226 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5240 -fill #eef -text "435"
.c create line 140 5240 300 5240 -fill #eef -dash {6 4}
.c create line 300 5208 300 5228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 431 to 435 (Used 1 nobox 1)
# ProcLine[2] stays at 435 (Used 1 nobox 1)
.c create rectangle 282 5230 318 5250 -fill white -width 0
.c create text 300 5240 -text "go?W"
.c create text 70 5264 -fill #eef -text "437"
.c create line 140 5264 300 5264 -fill #eef -dash {6 4}
.c create line 300 5256 300 5252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 435 to 437 (Used 1 nobox 1)
# ProcLine[2] stays at 437 (Used 1 nobox 1)
.c create rectangle 258 5254 342 5274 -fill white -width 0
.c create text 300 5264 -text "go to W "
.c create text 70 5288 -fill #eef -text "439"
.c create line 140 5288 300 5288 -fill #eef -dash {6 4}
.c create line 140 5232 140 5276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 433 to 439 (Used 1 nobox 1)
# ProcLine[1] stays at 439 (Used 1 nobox 1)
.c create rectangle 122 5278 158 5298 -fill white -width 0
.c create text 140 5288 -text "go!S"
.c create line 140 5298 220 5298 -fill darkred -tags mesg -width 2
.c create line 220 5298 300 5298 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5312 -fill #eef -text "441"
.c create line 140 5312 300 5312 -fill #eef -dash {6 4}
.c create line 300 5280 300 5300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 437 to 441 (Used 1 nobox 1)
# ProcLine[2] stays at 441 (Used 1 nobox 1)
.c create rectangle 282 5302 318 5322 -fill white -width 0
.c create text 300 5312 -text "go?S"
.c create text 70 5336 -fill #eef -text "443"
.c create line 140 5336 300 5336 -fill #eef -dash {6 4}
.c create line 300 5328 300 5324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 441 to 443 (Used 1 nobox 1)
# ProcLine[2] stays at 443 (Used 1 nobox 1)
.c create rectangle 258 5326 342 5346 -fill white -width 0
.c create text 300 5336 -text "go to S "
.c create text 70 5360 -fill #eef -text "445"
.c create line 140 5360 300 5360 -fill #eef -dash {6 4}
.c create line 140 5304 140 5348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 439 to 445 (Used 1 nobox 1)
# ProcLine[1] stays at 445 (Used 1 nobox 1)
.c create rectangle 122 5350 158 5370 -fill white -width 0
.c create text 140 5360 -text "go!W"
.c create line 140 5370 220 5370 -fill darkred -tags mesg -width 2
.c create line 220 5370 300 5370 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5384 -fill #eef -text "447"
.c create line 140 5384 300 5384 -fill #eef -dash {6 4}
.c create line 300 5352 300 5372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 443 to 447 (Used 1 nobox 1)
# ProcLine[2] stays at 447 (Used 1 nobox 1)
.c create rectangle 282 5374 318 5394 -fill white -width 0
.c create text 300 5384 -text "go?W"
.c create text 70 5408 -fill #eef -text "449"
.c create line 140 5408 300 5408 -fill #eef -dash {6 4}
.c create line 300 5400 300 5396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 447 to 449 (Used 1 nobox 1)
# ProcLine[2] stays at 449 (Used 1 nobox 1)
.c create rectangle 258 5398 342 5418 -fill white -width 0
.c create text 300 5408 -text "go to W "
.c create text 70 5432 -fill #eef -text "451"
.c create line 140 5432 300 5432 -fill #eef -dash {6 4}
.c create line 140 5376 140 5420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 445 to 451 (Used 1 nobox 1)
# ProcLine[1] stays at 451 (Used 1 nobox 1)
.c create rectangle 122 5422 158 5442 -fill white -width 0
.c create text 140 5432 -text "go!E"
.c create line 140 5442 220 5442 -fill darkred -tags mesg -width 2
.c create line 220 5442 300 5442 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5456 -fill #eef -text "453"
.c create line 140 5456 300 5456 -fill #eef -dash {6 4}
.c create line 300 5424 300 5444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 449 to 453 (Used 1 nobox 1)
# ProcLine[2] stays at 453 (Used 1 nobox 1)
.c create rectangle 282 5446 318 5466 -fill white -width 0
.c create text 300 5456 -text "go?E"
.c create text 70 5480 -fill #eef -text "455"
.c create line 140 5480 300 5480 -fill #eef -dash {6 4}
.c create line 300 5472 300 5468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 453 to 455 (Used 1 nobox 1)
# ProcLine[2] stays at 455 (Used 1 nobox 1)
.c create rectangle 258 5470 342 5490 -fill white -width 0
.c create text 300 5480 -text "go to E "
.c create text 70 5504 -fill #eef -text "457"
.c create line 140 5504 300 5504 -fill #eef -dash {6 4}
.c create line 140 5448 140 5492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 451 to 457 (Used 1 nobox 1)
# ProcLine[1] stays at 457 (Used 1 nobox 1)
.c create rectangle 122 5494 158 5514 -fill white -width 0
.c create text 140 5504 -text "go!N"
.c create line 140 5514 220 5514 -fill darkred -tags mesg -width 2
.c create line 220 5514 300 5514 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5528 -fill #eef -text "459"
.c create line 140 5528 300 5528 -fill #eef -dash {6 4}
.c create line 300 5496 300 5516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 455 to 459 (Used 1 nobox 1)
# ProcLine[2] stays at 459 (Used 1 nobox 1)
.c create rectangle 282 5518 318 5538 -fill white -width 0
.c create text 300 5528 -text "go?N"
.c create text 70 5552 -fill #eef -text "461"
.c create line 140 5552 300 5552 -fill #eef -dash {6 4}
.c create line 300 5544 300 5540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 459 to 461 (Used 1 nobox 1)
# ProcLine[2] stays at 461 (Used 1 nobox 1)
.c create rectangle 258 5542 342 5562 -fill white -width 0
.c create text 300 5552 -text "go to N "
.c create text 70 5576 -fill #eef -text "463"
.c create line 140 5576 300 5576 -fill #eef -dash {6 4}
.c create line 140 5520 140 5564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 457 to 463 (Used 1 nobox 1)
# ProcLine[1] stays at 463 (Used 1 nobox 1)
.c create rectangle 122 5566 158 5586 -fill white -width 0
.c create text 140 5576 -text "go!S"
.c create line 140 5586 220 5586 -fill darkred -tags mesg -width 2
.c create line 220 5586 300 5586 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5600 -fill #eef -text "465"
.c create line 140 5600 300 5600 -fill #eef -dash {6 4}
.c create line 300 5568 300 5588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 461 to 465 (Used 1 nobox 1)
# ProcLine[2] stays at 465 (Used 1 nobox 1)
.c create rectangle 282 5590 318 5610 -fill white -width 0
.c create text 300 5600 -text "go?S"
.c create text 70 5624 -fill #eef -text "467"
.c create line 140 5624 300 5624 -fill #eef -dash {6 4}
.c create line 300 5616 300 5612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 465 to 467 (Used 1 nobox 1)
# ProcLine[2] stays at 467 (Used 1 nobox 1)
.c create rectangle 258 5614 342 5634 -fill white -width 0
.c create text 300 5624 -text "go to S "
.c create text 70 5648 -fill #eef -text "469"
.c create line 140 5648 300 5648 -fill #eef -dash {6 4}
.c create line 140 5592 140 5636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 463 to 469 (Used 1 nobox 1)
# ProcLine[1] stays at 469 (Used 1 nobox 1)
.c create rectangle 122 5638 158 5658 -fill white -width 0
.c create text 140 5648 -text "go!W"
.c create line 140 5658 220 5658 -fill darkred -tags mesg -width 2
.c create line 220 5658 300 5658 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5672 -fill #eef -text "471"
.c create line 140 5672 300 5672 -fill #eef -dash {6 4}
.c create line 300 5640 300 5660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 467 to 471 (Used 1 nobox 1)
# ProcLine[2] stays at 471 (Used 1 nobox 1)
.c create rectangle 282 5662 318 5682 -fill white -width 0
.c create text 300 5672 -text "go?W"
.c create text 70 5696 -fill #eef -text "473"
.c create line 140 5696 300 5696 -fill #eef -dash {6 4}
.c create line 300 5688 300 5684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 471 to 473 (Used 1 nobox 1)
# ProcLine[2] stays at 473 (Used 1 nobox 1)
.c create rectangle 258 5686 342 5706 -fill white -width 0
.c create text 300 5696 -text "go to W "
.c create text 70 5720 -fill #eef -text "475"
.c create line 140 5720 300 5720 -fill #eef -dash {6 4}
.c create line 140 5664 140 5708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 469 to 475 (Used 1 nobox 1)
# ProcLine[1] stays at 475 (Used 1 nobox 1)
.c create rectangle 122 5710 158 5730 -fill white -width 0
.c create text 140 5720 -text "go!E"
.c create line 140 5730 220 5730 -fill darkred -tags mesg -width 2
.c create line 220 5730 300 5730 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5744 -fill #eef -text "477"
.c create line 140 5744 300 5744 -fill #eef -dash {6 4}
.c create line 300 5712 300 5732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 473 to 477 (Used 1 nobox 1)
# ProcLine[2] stays at 477 (Used 1 nobox 1)
.c create rectangle 282 5734 318 5754 -fill white -width 0
.c create text 300 5744 -text "go?E"
.c create text 70 5768 -fill #eef -text "479"
.c create line 140 5768 300 5768 -fill #eef -dash {6 4}
.c create line 300 5760 300 5756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 477 to 479 (Used 1 nobox 1)
# ProcLine[2] stays at 479 (Used 1 nobox 1)
.c create rectangle 258 5758 342 5778 -fill white -width 0
.c create text 300 5768 -text "go to E "
.c create text 70 5792 -fill #eef -text "481"
.c create line 140 5792 300 5792 -fill #eef -dash {6 4}
.c create line 140 5736 140 5780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 475 to 481 (Used 1 nobox 1)
# ProcLine[1] stays at 481 (Used 1 nobox 1)
.c create rectangle 122 5782 158 5802 -fill white -width 0
.c create text 140 5792 -text "go!W"
.c create line 140 5802 220 5802 -fill darkred -tags mesg -width 2
.c create line 220 5802 300 5802 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5816 -fill #eef -text "483"
.c create line 140 5816 300 5816 -fill #eef -dash {6 4}
.c create line 300 5784 300 5804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 479 to 483 (Used 1 nobox 1)
# ProcLine[2] stays at 483 (Used 1 nobox 1)
.c create rectangle 282 5806 318 5826 -fill white -width 0
.c create text 300 5816 -text "go?W"
.c create text 70 5840 -fill #eef -text "485"
.c create line 140 5840 300 5840 -fill #eef -dash {6 4}
.c create line 300 5832 300 5828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 483 to 485 (Used 1 nobox 1)
# ProcLine[2] stays at 485 (Used 1 nobox 1)
.c create rectangle 258 5830 342 5850 -fill white -width 0
.c create text 300 5840 -text "go to W "
.c create text 70 5864 -fill #eef -text "487"
.c create line 140 5864 300 5864 -fill #eef -dash {6 4}
.c create line 140 5808 140 5852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 481 to 487 (Used 1 nobox 1)
# ProcLine[1] stays at 487 (Used 1 nobox 1)
.c create rectangle 122 5854 158 5874 -fill white -width 0
.c create text 140 5864 -text "go!E"
.c create line 140 5874 220 5874 -fill darkred -tags mesg -width 2
.c create line 220 5874 300 5874 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5888 -fill #eef -text "489"
.c create line 140 5888 300 5888 -fill #eef -dash {6 4}
.c create line 300 5856 300 5876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 485 to 489 (Used 1 nobox 1)
# ProcLine[2] stays at 489 (Used 1 nobox 1)
.c create rectangle 282 5878 318 5898 -fill white -width 0
.c create text 300 5888 -text "go?E"
.c create text 70 5912 -fill #eef -text "491"
.c create line 140 5912 300 5912 -fill #eef -dash {6 4}
.c create line 300 5904 300 5900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 489 to 491 (Used 1 nobox 1)
# ProcLine[2] stays at 491 (Used 1 nobox 1)
.c create rectangle 258 5902 342 5922 -fill white -width 0
.c create text 300 5912 -text "go to E "
.c create text 70 5936 -fill #eef -text "493"
.c create line 140 5936 300 5936 -fill #eef -dash {6 4}
.c create line 140 5880 140 5924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 487 to 493 (Used 1 nobox 1)
# ProcLine[1] stays at 493 (Used 1 nobox 1)
.c create rectangle 122 5926 158 5946 -fill white -width 0
.c create text 140 5936 -text "go!N"
.c create line 140 5946 220 5946 -fill darkred -tags mesg -width 2
.c create line 220 5946 300 5946 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5960 -fill #eef -text "495"
.c create line 140 5960 300 5960 -fill #eef -dash {6 4}
.c create line 300 5928 300 5948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 491 to 495 (Used 1 nobox 1)
# ProcLine[2] stays at 495 (Used 1 nobox 1)
.c create rectangle 282 5950 318 5970 -fill white -width 0
.c create text 300 5960 -text "go?N"
.c create text 70 5984 -fill #eef -text "497"
.c create line 140 5984 300 5984 -fill #eef -dash {6 4}
.c create line 300 5976 300 5972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 495 to 497 (Used 1 nobox 1)
# ProcLine[2] stays at 497 (Used 1 nobox 1)
.c create rectangle 258 5974 342 5994 -fill white -width 0
.c create text 300 5984 -text "go to N "
.c create text 70 6008 -fill #eef -text "499"
.c create line 140 6008 300 6008 -fill #eef -dash {6 4}
.c create line 140 5952 140 5996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 493 to 499 (Used 1 nobox 1)
# ProcLine[1] stays at 499 (Used 1 nobox 1)
.c create rectangle 122 5998 158 6018 -fill white -width 0
.c create text 140 6008 -text "go!S"
.c create line 140 6018 220 6018 -fill darkred -tags mesg -width 2
.c create line 220 6018 300 6018 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6032 -fill #eef -text "501"
.c create line 140 6032 300 6032 -fill #eef -dash {6 4}
.c create line 300 6000 300 6020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 497 to 501 (Used 1 nobox 1)
# ProcLine[2] stays at 501 (Used 1 nobox 1)
.c create rectangle 282 6022 318 6042 -fill white -width 0
.c create text 300 6032 -text "go?S"
.c create text 70 6056 -fill #eef -text "503"
.c create line 140 6056 300 6056 -fill #eef -dash {6 4}
.c create line 300 6048 300 6044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 501 to 503 (Used 1 nobox 1)
# ProcLine[2] stays at 503 (Used 1 nobox 1)
.c create rectangle 258 6046 342 6066 -fill white -width 0
.c create text 300 6056 -text "go to S "
.c create text 70 6080 -fill #eef -text "505"
.c create line 140 6080 300 6080 -fill #eef -dash {6 4}
.c create line 140 6024 140 6068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 499 to 505 (Used 1 nobox 1)
# ProcLine[1] stays at 505 (Used 1 nobox 1)
.c create rectangle 122 6070 158 6090 -fill white -width 0
.c create text 140 6080 -text "go!W"
.c create line 140 6090 220 6090 -fill darkred -tags mesg -width 2
.c create line 220 6090 300 6090 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6104 -fill #eef -text "507"
.c create line 140 6104 300 6104 -fill #eef -dash {6 4}
.c create line 300 6072 300 6092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 503 to 507 (Used 1 nobox 1)
# ProcLine[2] stays at 507 (Used 1 nobox 1)
.c create rectangle 282 6094 318 6114 -fill white -width 0
.c create text 300 6104 -text "go?W"
.c create text 70 6128 -fill #eef -text "509"
.c create line 140 6128 300 6128 -fill #eef -dash {6 4}
.c create line 300 6120 300 6116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 507 to 509 (Used 1 nobox 1)
# ProcLine[2] stays at 509 (Used 1 nobox 1)
.c create rectangle 258 6118 342 6138 -fill white -width 0
.c create text 300 6128 -text "go to W "
.c create text 70 6152 -fill #eef -text "511"
.c create line 140 6152 300 6152 -fill #eef -dash {6 4}
.c create line 140 6096 140 6140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 505 to 511 (Used 1 nobox 1)
# ProcLine[1] stays at 511 (Used 1 nobox 1)
.c create rectangle 122 6142 158 6162 -fill white -width 0
.c create text 140 6152 -text "go!E"
.c create line 140 6162 220 6162 -fill darkred -tags mesg -width 2
.c create line 220 6162 300 6162 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6176 -fill #eef -text "513"
.c create line 140 6176 300 6176 -fill #eef -dash {6 4}
.c create line 300 6144 300 6164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 509 to 513 (Used 1 nobox 1)
# ProcLine[2] stays at 513 (Used 1 nobox 1)
.c create rectangle 282 6166 318 6186 -fill white -width 0
.c create text 300 6176 -text "go?E"
.c create text 70 6200 -fill #eef -text "515"
.c create line 140 6200 300 6200 -fill #eef -dash {6 4}
.c create line 300 6192 300 6188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 513 to 515 (Used 1 nobox 1)
# ProcLine[2] stays at 515 (Used 1 nobox 1)
.c create rectangle 258 6190 342 6210 -fill white -width 0
.c create text 300 6200 -text "go to E "
.c create text 70 6224 -fill #eef -text "517"
.c create line 140 6224 300 6224 -fill #eef -dash {6 4}
.c create line 140 6168 140 6212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 511 to 517 (Used 1 nobox 1)
# ProcLine[1] stays at 517 (Used 1 nobox 1)
.c create rectangle 122 6214 158 6234 -fill white -width 0
.c create text 140 6224 -text "go!N"
.c create line 140 6234 220 6234 -fill darkred -tags mesg -width 2
.c create line 220 6234 300 6234 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6248 -fill #eef -text "519"
.c create line 140 6248 300 6248 -fill #eef -dash {6 4}
.c create line 300 6216 300 6236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 515 to 519 (Used 1 nobox 1)
# ProcLine[2] stays at 519 (Used 1 nobox 1)
.c create rectangle 282 6238 318 6258 -fill white -width 0
.c create text 300 6248 -text "go?N"
.c create text 70 6272 -fill #eef -text "521"
.c create line 140 6272 300 6272 -fill #eef -dash {6 4}
.c create line 300 6264 300 6260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 519 to 521 (Used 1 nobox 1)
# ProcLine[2] stays at 521 (Used 1 nobox 1)
.c create rectangle 258 6262 342 6282 -fill white -width 0
.c create text 300 6272 -text "go to N "
.c create text 70 6296 -fill #eef -text "523"
.c create line 140 6296 300 6296 -fill #eef -dash {6 4}
.c create line 140 6240 140 6284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 517 to 523 (Used 1 nobox 1)
# ProcLine[1] stays at 523 (Used 1 nobox 1)
.c create rectangle 122 6286 158 6306 -fill white -width 0
.c create text 140 6296 -text "go!S"
.c create line 140 6306 220 6306 -fill darkred -tags mesg -width 2
.c create line 220 6306 300 6306 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6320 -fill #eef -text "525"
.c create line 140 6320 300 6320 -fill #eef -dash {6 4}
.c create line 300 6288 300 6308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 521 to 525 (Used 1 nobox 1)
# ProcLine[2] stays at 525 (Used 1 nobox 1)
.c create rectangle 282 6310 318 6330 -fill white -width 0
.c create text 300 6320 -text "go?S"
.c create text 70 6344 -fill #eef -text "527"
.c create line 140 6344 300 6344 -fill #eef -dash {6 4}
.c create line 300 6336 300 6332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 525 to 527 (Used 1 nobox 1)
# ProcLine[2] stays at 527 (Used 1 nobox 1)
.c create rectangle 258 6334 342 6354 -fill white -width 0
.c create text 300 6344 -text "go to S "
.c create text 70 6368 -fill #eef -text "529"
.c create line 140 6368 300 6368 -fill #eef -dash {6 4}
.c create line 140 6312 140 6356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 523 to 529 (Used 1 nobox 1)
# ProcLine[1] stays at 529 (Used 1 nobox 1)
.c create rectangle 122 6358 158 6378 -fill white -width 0
.c create text 140 6368 -text "go!N"
.c create line 140 6378 220 6378 -fill darkred -tags mesg -width 2
.c create line 220 6378 300 6378 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6392 -fill #eef -text "531"
.c create line 140 6392 300 6392 -fill #eef -dash {6 4}
.c create line 300 6360 300 6380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 527 to 531 (Used 1 nobox 1)
# ProcLine[2] stays at 531 (Used 1 nobox 1)
.c create rectangle 282 6382 318 6402 -fill white -width 0
.c create text 300 6392 -text "go?N"
.c create text 70 6416 -fill #eef -text "533"
.c create line 140 6416 300 6416 -fill #eef -dash {6 4}
.c create line 300 6408 300 6404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 531 to 533 (Used 1 nobox 1)
# ProcLine[2] stays at 533 (Used 1 nobox 1)
.c create rectangle 258 6406 342 6426 -fill white -width 0
.c create text 300 6416 -text "go to N "
.c create text 70 6440 -fill #eef -text "535"
.c create line 140 6440 300 6440 -fill #eef -dash {6 4}
.c create line 140 6384 140 6428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 529 to 535 (Used 1 nobox 1)
# ProcLine[1] stays at 535 (Used 1 nobox 1)
.c create rectangle 122 6430 158 6450 -fill white -width 0
.c create text 140 6440 -text "go!S"
.c create line 140 6450 220 6450 -fill darkred -tags mesg -width 2
.c create line 220 6450 300 6450 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6464 -fill #eef -text "537"
.c create line 140 6464 300 6464 -fill #eef -dash {6 4}
.c create line 300 6432 300 6452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 533 to 537 (Used 1 nobox 1)
# ProcLine[2] stays at 537 (Used 1 nobox 1)
.c create rectangle 282 6454 318 6474 -fill white -width 0
.c create text 300 6464 -text "go?S"
.c create text 70 6488 -fill #eef -text "539"
.c create line 140 6488 300 6488 -fill #eef -dash {6 4}
.c create line 300 6480 300 6476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 537 to 539 (Used 1 nobox 1)
# ProcLine[2] stays at 539 (Used 1 nobox 1)
.c create rectangle 258 6478 342 6498 -fill white -width 0
.c create text 300 6488 -text "go to S "
.c create text 70 6512 -fill #eef -text "541"
.c create line 140 6512 300 6512 -fill #eef -dash {6 4}
.c create line 140 6456 140 6500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 535 to 541 (Used 1 nobox 1)
# ProcLine[1] stays at 541 (Used 1 nobox 1)
.c create rectangle 122 6502 158 6522 -fill white -width 0
.c create text 140 6512 -text "go!W"
.c create line 140 6522 220 6522 -fill darkred -tags mesg -width 2
.c create line 220 6522 300 6522 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6536 -fill #eef -text "543"
.c create line 140 6536 300 6536 -fill #eef -dash {6 4}
.c create line 300 6504 300 6524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 539 to 543 (Used 1 nobox 1)
# ProcLine[2] stays at 543 (Used 1 nobox 1)
.c create rectangle 282 6526 318 6546 -fill white -width 0
.c create text 300 6536 -text "go?W"
.c create text 70 6560 -fill #eef -text "545"
.c create line 140 6560 300 6560 -fill #eef -dash {6 4}
.c create line 300 6552 300 6548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 543 to 545 (Used 1 nobox 1)
# ProcLine[2] stays at 545 (Used 1 nobox 1)
.c create rectangle 258 6550 342 6570 -fill white -width 0
.c create text 300 6560 -text "go to W "
.c create text 70 6584 -fill #eef -text "547"
.c create line 140 6584 300 6584 -fill #eef -dash {6 4}
.c create line 140 6528 140 6572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 541 to 547 (Used 1 nobox 1)
# ProcLine[1] stays at 547 (Used 1 nobox 1)
.c create rectangle 122 6574 158 6594 -fill white -width 0
.c create text 140 6584 -text "go!E"
.c create line 140 6594 220 6594 -fill darkred -tags mesg -width 2
.c create line 220 6594 300 6594 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6608 -fill #eef -text "549"
.c create line 140 6608 300 6608 -fill #eef -dash {6 4}
.c create line 300 6576 300 6596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 545 to 549 (Used 1 nobox 1)
# ProcLine[2] stays at 549 (Used 1 nobox 1)
.c create rectangle 282 6598 318 6618 -fill white -width 0
.c create text 300 6608 -text "go?E"
.c create text 70 6632 -fill #eef -text "551"
.c create line 140 6632 300 6632 -fill #eef -dash {6 4}
.c create line 300 6624 300 6620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 549 to 551 (Used 1 nobox 1)
# ProcLine[2] stays at 551 (Used 1 nobox 1)
.c create rectangle 258 6622 342 6642 -fill white -width 0
.c create text 300 6632 -text "go to E "
.c create text 70 6656 -fill #eef -text "553"
.c create line 140 6656 300 6656 -fill #eef -dash {6 4}
.c create line 140 6600 140 6644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 547 to 553 (Used 1 nobox 1)
# ProcLine[1] stays at 553 (Used 1 nobox 1)
.c create rectangle 122 6646 158 6666 -fill white -width 0
.c create text 140 6656 -text "go!N"
.c create line 140 6666 220 6666 -fill darkred -tags mesg -width 2
.c create line 220 6666 300 6666 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6680 -fill #eef -text "555"
.c create line 140 6680 300 6680 -fill #eef -dash {6 4}
.c create line 300 6648 300 6668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 551 to 555 (Used 1 nobox 1)
# ProcLine[2] stays at 555 (Used 1 nobox 1)
.c create rectangle 282 6670 318 6690 -fill white -width 0
.c create text 300 6680 -text "go?N"
.c create text 70 6704 -fill #eef -text "557"
.c create line 140 6704 300 6704 -fill #eef -dash {6 4}
.c create line 300 6696 300 6692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 555 to 557 (Used 1 nobox 1)
# ProcLine[2] stays at 557 (Used 1 nobox 1)
.c create rectangle 258 6694 342 6714 -fill white -width 0
.c create text 300 6704 -text "go to N "
.c create text 70 6728 -fill #eef -text "559"
.c create line 140 6728 300 6728 -fill #eef -dash {6 4}
.c create line 140 6672 140 6716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 553 to 559 (Used 1 nobox 1)
# ProcLine[1] stays at 559 (Used 1 nobox 1)
.c create rectangle 122 6718 158 6738 -fill white -width 0
.c create text 140 6728 -text "go!E"
.c create line 140 6738 220 6738 -fill darkred -tags mesg -width 2
.c create line 220 6738 300 6738 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6752 -fill #eef -text "561"
.c create line 140 6752 300 6752 -fill #eef -dash {6 4}
.c create line 300 6720 300 6740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 557 to 561 (Used 1 nobox 1)
# ProcLine[2] stays at 561 (Used 1 nobox 1)
.c create rectangle 282 6742 318 6762 -fill white -width 0
.c create text 300 6752 -text "go?E"
.c create text 70 6776 -fill #eef -text "563"
.c create line 140 6776 300 6776 -fill #eef -dash {6 4}
.c create line 300 6768 300 6764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 561 to 563 (Used 1 nobox 1)
# ProcLine[2] stays at 563 (Used 1 nobox 1)
.c create rectangle 258 6766 342 6786 -fill white -width 0
.c create text 300 6776 -text "go to E "
.c create text 70 6800 -fill #eef -text "565"
.c create line 140 6800 300 6800 -fill #eef -dash {6 4}
.c create line 140 6744 140 6788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 559 to 565 (Used 1 nobox 1)
# ProcLine[1] stays at 565 (Used 1 nobox 1)
.c create rectangle 122 6790 158 6810 -fill white -width 0
.c create text 140 6800 -text "go!W"
.c create line 140 6810 220 6810 -fill darkred -tags mesg -width 2
.c create line 220 6810 300 6810 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6824 -fill #eef -text "567"
.c create line 140 6824 300 6824 -fill #eef -dash {6 4}
.c create line 300 6792 300 6812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 563 to 567 (Used 1 nobox 1)
# ProcLine[2] stays at 567 (Used 1 nobox 1)
.c create rectangle 282 6814 318 6834 -fill white -width 0
.c create text 300 6824 -text "go?W"
.c create text 70 6848 -fill #eef -text "569"
.c create line 140 6848 300 6848 -fill #eef -dash {6 4}
.c create line 300 6840 300 6836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 567 to 569 (Used 1 nobox 1)
# ProcLine[2] stays at 569 (Used 1 nobox 1)
.c create rectangle 258 6838 342 6858 -fill white -width 0
.c create text 300 6848 -text "go to W "
.c create text 70 6872 -fill #eef -text "571"
.c create line 140 6872 300 6872 -fill #eef -dash {6 4}
.c create line 140 6816 140 6860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 565 to 571 (Used 1 nobox 1)
# ProcLine[1] stays at 571 (Used 1 nobox 1)
.c create rectangle 122 6862 158 6882 -fill white -width 0
.c create text 140 6872 -text "go!S"
.c create line 140 6882 220 6882 -fill darkred -tags mesg -width 2
.c create line 220 6882 300 6882 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6896 -fill #eef -text "573"
.c create line 140 6896 300 6896 -fill #eef -dash {6 4}
.c create line 300 6864 300 6884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 569 to 573 (Used 1 nobox 1)
# ProcLine[2] stays at 573 (Used 1 nobox 1)
.c create rectangle 282 6886 318 6906 -fill white -width 0
.c create text 300 6896 -text "go?S"
.c create text 70 6920 -fill #eef -text "575"
.c create line 140 6920 300 6920 -fill #eef -dash {6 4}
.c create line 300 6912 300 6908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 573 to 575 (Used 1 nobox 1)
# ProcLine[2] stays at 575 (Used 1 nobox 1)
.c create rectangle 258 6910 342 6930 -fill white -width 0
.c create text 300 6920 -text "go to S "
.c create text 70 6944 -fill #eef -text "577"
.c create line 140 6944 300 6944 -fill #eef -dash {6 4}
.c create line 140 6888 140 6932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 571 to 577 (Used 1 nobox 1)
# ProcLine[1] stays at 577 (Used 1 nobox 1)
.c create rectangle 122 6934 158 6954 -fill white -width 0
.c create text 140 6944 -text "go!S"
.c create line 140 6954 220 6954 -fill darkred -tags mesg -width 2
.c create line 220 6954 300 6954 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6968 -fill #eef -text "579"
.c create line 140 6968 300 6968 -fill #eef -dash {6 4}
.c create line 300 6936 300 6956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 575 to 579 (Used 1 nobox 1)
# ProcLine[2] stays at 579 (Used 1 nobox 1)
.c create rectangle 282 6958 318 6978 -fill white -width 0
.c create text 300 6968 -text "go?S"
.c create text 70 6992 -fill #eef -text "581"
.c create line 140 6992 300 6992 -fill #eef -dash {6 4}
.c create line 300 6984 300 6980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 579 to 581 (Used 1 nobox 1)
# ProcLine[2] stays at 581 (Used 1 nobox 1)
.c create rectangle 258 6982 342 7002 -fill white -width 0
.c create text 300 6992 -text "go to S "
.c create text 70 7016 -fill #eef -text "583"
.c create line 140 7016 300 7016 -fill #eef -dash {6 4}
.c create line 140 6960 140 7004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 577 to 583 (Used 1 nobox 1)
# ProcLine[1] stays at 583 (Used 1 nobox 1)
.c create rectangle 122 7006 158 7026 -fill white -width 0
.c create text 140 7016 -text "go!E"
.c create line 140 7026 220 7026 -fill darkred -tags mesg -width 2
.c create line 220 7026 300 7026 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7040 -fill #eef -text "585"
.c create line 140 7040 300 7040 -fill #eef -dash {6 4}
.c create line 300 7008 300 7028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 581 to 585 (Used 1 nobox 1)
# ProcLine[2] stays at 585 (Used 1 nobox 1)
.c create rectangle 282 7030 318 7050 -fill white -width 0
.c create text 300 7040 -text "go?E"
.c create text 70 7064 -fill #eef -text "587"
.c create line 140 7064 300 7064 -fill #eef -dash {6 4}
.c create line 300 7056 300 7052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 585 to 587 (Used 1 nobox 1)
# ProcLine[2] stays at 587 (Used 1 nobox 1)
.c create rectangle 258 7054 342 7074 -fill white -width 0
.c create text 300 7064 -text "go to E "
.c create text 70 7088 -fill #eef -text "589"
.c create line 140 7088 300 7088 -fill #eef -dash {6 4}
.c create line 140 7032 140 7076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 583 to 589 (Used 1 nobox 1)
# ProcLine[1] stays at 589 (Used 1 nobox 1)
.c create rectangle 122 7078 158 7098 -fill white -width 0
.c create text 140 7088 -text "go!W"
.c create line 140 7098 220 7098 -fill darkred -tags mesg -width 2
.c create line 220 7098 300 7098 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7112 -fill #eef -text "591"
.c create line 140 7112 300 7112 -fill #eef -dash {6 4}
.c create line 300 7080 300 7100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 587 to 591 (Used 1 nobox 1)
# ProcLine[2] stays at 591 (Used 1 nobox 1)
.c create rectangle 282 7102 318 7122 -fill white -width 0
.c create text 300 7112 -text "go?W"
.c create text 70 7136 -fill #eef -text "593"
.c create line 140 7136 300 7136 -fill #eef -dash {6 4}
.c create line 300 7128 300 7124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 591 to 593 (Used 1 nobox 1)
# ProcLine[2] stays at 593 (Used 1 nobox 1)
.c create rectangle 258 7126 342 7146 -fill white -width 0
.c create text 300 7136 -text "go to W "
.c create text 70 7160 -fill #eef -text "595"
.c create line 140 7160 300 7160 -fill #eef -dash {6 4}
.c create line 140 7104 140 7148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 589 to 595 (Used 1 nobox 1)
# ProcLine[1] stays at 595 (Used 1 nobox 1)
.c create rectangle 122 7150 158 7170 -fill white -width 0
.c create text 140 7160 -text "go!E"
.c create line 140 7170 220 7170 -fill darkred -tags mesg -width 2
.c create line 220 7170 300 7170 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7184 -fill #eef -text "597"
.c create line 140 7184 300 7184 -fill #eef -dash {6 4}
.c create line 300 7152 300 7172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 593 to 597 (Used 1 nobox 1)
# ProcLine[2] stays at 597 (Used 1 nobox 1)
.c create rectangle 282 7174 318 7194 -fill white -width 0
.c create text 300 7184 -text "go?E"
.c create text 70 7208 -fill #eef -text "599"
.c create line 140 7208 300 7208 -fill #eef -dash {6 4}
.c create line 300 7200 300 7196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 597 to 599 (Used 1 nobox 1)
# ProcLine[2] stays at 599 (Used 1 nobox 1)
.c create rectangle 258 7198 342 7218 -fill white -width 0
.c create text 300 7208 -text "go to E "
.c create text 70 7232 -fill #eef -text "601"
.c create line 140 7232 300 7232 -fill #eef -dash {6 4}
.c create line 140 7176 140 7220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 595 to 601 (Used 1 nobox 1)
# ProcLine[1] stays at 601 (Used 1 nobox 1)
.c create rectangle 122 7222 158 7242 -fill white -width 0
.c create text 140 7232 -text "go!E"
.c create line 140 7242 220 7242 -fill darkred -tags mesg -width 2
.c create line 220 7242 300 7242 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7256 -fill #eef -text "603"
.c create line 140 7256 300 7256 -fill #eef -dash {6 4}
.c create line 300 7224 300 7244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 599 to 603 (Used 1 nobox 1)
# ProcLine[2] stays at 603 (Used 1 nobox 1)
.c create rectangle 282 7246 318 7266 -fill white -width 0
.c create text 300 7256 -text "go?E"
.c create text 70 7280 -fill #eef -text "605"
.c create line 140 7280 300 7280 -fill #eef -dash {6 4}
.c create line 300 7272 300 7268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 603 to 605 (Used 1 nobox 1)
# ProcLine[2] stays at 605 (Used 1 nobox 1)
.c create rectangle 258 7270 342 7290 -fill white -width 0
.c create text 300 7280 -text "go to E "
.c create text 70 7304 -fill #eef -text "607"
.c create line 140 7304 300 7304 -fill #eef -dash {6 4}
.c create line 140 7248 140 7292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 601 to 607 (Used 1 nobox 1)
# ProcLine[1] stays at 607 (Used 1 nobox 1)
.c create rectangle 122 7294 158 7314 -fill white -width 0
.c create text 140 7304 -text "go!W"
.c create line 140 7314 220 7314 -fill darkred -tags mesg -width 2
.c create line 220 7314 300 7314 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7328 -fill #eef -text "609"
.c create line 140 7328 300 7328 -fill #eef -dash {6 4}
.c create line 300 7296 300 7316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 605 to 609 (Used 1 nobox 1)
# ProcLine[2] stays at 609 (Used 1 nobox 1)
.c create rectangle 282 7318 318 7338 -fill white -width 0
.c create text 300 7328 -text "go?W"
.c create text 70 7352 -fill #eef -text "611"
.c create line 140 7352 300 7352 -fill #eef -dash {6 4}
.c create line 300 7344 300 7340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 609 to 611 (Used 1 nobox 1)
# ProcLine[2] stays at 611 (Used 1 nobox 1)
.c create rectangle 258 7342 342 7362 -fill white -width 0
.c create text 300 7352 -text "go to W "
.c create text 70 7376 -fill #eef -text "613"
.c create line 140 7376 300 7376 -fill #eef -dash {6 4}
.c create line 140 7320 140 7364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 607 to 613 (Used 1 nobox 1)
# ProcLine[1] stays at 613 (Used 1 nobox 1)
.c create rectangle 122 7366 158 7386 -fill white -width 0
.c create text 140 7376 -text "go!E"
.c create line 140 7386 220 7386 -fill darkred -tags mesg -width 2
.c create line 220 7386 300 7386 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7400 -fill #eef -text "615"
.c create line 140 7400 300 7400 -fill #eef -dash {6 4}
.c create line 300 7368 300 7388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 611 to 615 (Used 1 nobox 1)
# ProcLine[2] stays at 615 (Used 1 nobox 1)
.c create rectangle 282 7390 318 7410 -fill white -width 0
.c create text 300 7400 -text "go?E"
.c create text 70 7424 -fill #eef -text "617"
.c create line 140 7424 300 7424 -fill #eef -dash {6 4}
.c create line 300 7416 300 7412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 615 to 617 (Used 1 nobox 1)
# ProcLine[2] stays at 617 (Used 1 nobox 1)
.c create rectangle 258 7414 342 7434 -fill white -width 0
.c create text 300 7424 -text "go to E "
.c create text 70 7448 -fill #eef -text "619"
.c create line 140 7448 300 7448 -fill #eef -dash {6 4}
.c create line 140 7392 140 7436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 613 to 619 (Used 1 nobox 1)
# ProcLine[1] stays at 619 (Used 1 nobox 1)
.c create rectangle 122 7438 158 7458 -fill white -width 0
.c create text 140 7448 -text "go!W"
.c create line 140 7458 220 7458 -fill darkred -tags mesg -width 2
.c create line 220 7458 300 7458 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7472 -fill #eef -text "621"
.c create line 140 7472 300 7472 -fill #eef -dash {6 4}
.c create line 300 7440 300 7460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 617 to 621 (Used 1 nobox 1)
# ProcLine[2] stays at 621 (Used 1 nobox 1)
.c create rectangle 282 7462 318 7482 -fill white -width 0
.c create text 300 7472 -text "go?W"
.c create text 70 7496 -fill #eef -text "623"
.c create line 140 7496 300 7496 -fill #eef -dash {6 4}
.c create line 300 7488 300 7484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 621 to 623 (Used 1 nobox 1)
# ProcLine[2] stays at 623 (Used 1 nobox 1)
.c create rectangle 258 7486 342 7506 -fill white -width 0
.c create text 300 7496 -text "go to W "
.c create text 70 7520 -fill #eef -text "625"
.c create line 140 7520 300 7520 -fill #eef -dash {6 4}
.c create line 140 7464 140 7508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 619 to 625 (Used 1 nobox 1)
# ProcLine[1] stays at 625 (Used 1 nobox 1)
.c create rectangle 122 7510 158 7530 -fill white -width 0
.c create text 140 7520 -text "go!W"
.c create line 140 7530 220 7530 -fill darkred -tags mesg -width 2
.c create line 220 7530 300 7530 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7544 -fill #eef -text "627"
.c create line 140 7544 300 7544 -fill #eef -dash {6 4}
.c create line 300 7512 300 7532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 623 to 627 (Used 1 nobox 1)
# ProcLine[2] stays at 627 (Used 1 nobox 1)
.c create rectangle 282 7534 318 7554 -fill white -width 0
.c create text 300 7544 -text "go?W"
.c create text 70 7568 -fill #eef -text "629"
.c create line 140 7568 300 7568 -fill #eef -dash {6 4}
.c create line 300 7560 300 7556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 627 to 629 (Used 1 nobox 1)
# ProcLine[2] stays at 629 (Used 1 nobox 1)
.c create rectangle 258 7558 342 7578 -fill white -width 0
.c create text 300 7568 -text "go to W "
.c create text 70 7592 -fill #eef -text "631"
.c create line 140 7592 300 7592 -fill #eef -dash {6 4}
.c create line 140 7536 140 7580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 625 to 631 (Used 1 nobox 1)
# ProcLine[1] stays at 631 (Used 1 nobox 1)
.c create rectangle 122 7582 158 7602 -fill white -width 0
.c create text 140 7592 -text "go!N"
.c create line 140 7602 220 7602 -fill darkred -tags mesg -width 2
.c create line 220 7602 300 7602 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7616 -fill #eef -text "633"
.c create line 140 7616 300 7616 -fill #eef -dash {6 4}
.c create line 300 7584 300 7604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 629 to 633 (Used 1 nobox 1)
# ProcLine[2] stays at 633 (Used 1 nobox 1)
.c create rectangle 282 7606 318 7626 -fill white -width 0
.c create text 300 7616 -text "go?N"
.c create text 70 7640 -fill #eef -text "635"
.c create line 140 7640 300 7640 -fill #eef -dash {6 4}
.c create line 300 7632 300 7628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 633 to 635 (Used 1 nobox 1)
# ProcLine[2] stays at 635 (Used 1 nobox 1)
.c create rectangle 258 7630 342 7650 -fill white -width 0
.c create text 300 7640 -text "go to N "
.c create text 70 7664 -fill #eef -text "637"
.c create line 140 7664 300 7664 -fill #eef -dash {6 4}
.c create line 140 7608 140 7652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 631 to 637 (Used 1 nobox 1)
# ProcLine[1] stays at 637 (Used 1 nobox 1)
.c create rectangle 122 7654 158 7674 -fill white -width 0
.c create text 140 7664 -text "go!W"
.c create line 140 7674 220 7674 -fill darkred -tags mesg -width 2
.c create line 220 7674 300 7674 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7688 -fill #eef -text "639"
.c create line 140 7688 300 7688 -fill #eef -dash {6 4}
.c create line 300 7656 300 7676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 635 to 639 (Used 1 nobox 1)
# ProcLine[2] stays at 639 (Used 1 nobox 1)
.c create rectangle 282 7678 318 7698 -fill white -width 0
.c create text 300 7688 -text "go?W"
.c create text 70 7712 -fill #eef -text "641"
.c create line 140 7712 300 7712 -fill #eef -dash {6 4}
.c create line 300 7704 300 7700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 639 to 641 (Used 1 nobox 1)
# ProcLine[2] stays at 641 (Used 1 nobox 1)
.c create rectangle 258 7702 342 7722 -fill white -width 0
.c create text 300 7712 -text "go to W "
.c create text 70 7736 -fill #eef -text "643"
.c create line 140 7736 300 7736 -fill #eef -dash {6 4}
.c create line 140 7680 140 7724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 637 to 643 (Used 1 nobox 1)
# ProcLine[1] stays at 643 (Used 1 nobox 1)
.c create rectangle 122 7726 158 7746 -fill white -width 0
.c create text 140 7736 -text "go!E"
.c create line 140 7746 220 7746 -fill darkred -tags mesg -width 2
.c create line 220 7746 300 7746 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7760 -fill #eef -text "645"
.c create line 140 7760 300 7760 -fill #eef -dash {6 4}
.c create line 300 7728 300 7748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 641 to 645 (Used 1 nobox 1)
# ProcLine[2] stays at 645 (Used 1 nobox 1)
.c create rectangle 282 7750 318 7770 -fill white -width 0
.c create text 300 7760 -text "go?E"
.c create text 70 7784 -fill #eef -text "647"
.c create line 140 7784 300 7784 -fill #eef -dash {6 4}
.c create line 300 7776 300 7772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 645 to 647 (Used 1 nobox 1)
# ProcLine[2] stays at 647 (Used 1 nobox 1)
.c create rectangle 258 7774 342 7794 -fill white -width 0
.c create text 300 7784 -text "go to E "
.c create text 70 7808 -fill #eef -text "649"
.c create line 140 7808 300 7808 -fill #eef -dash {6 4}
.c create line 140 7752 140 7796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 643 to 649 (Used 1 nobox 1)
# ProcLine[1] stays at 649 (Used 1 nobox 1)
.c create rectangle 122 7798 158 7818 -fill white -width 0
.c create text 140 7808 -text "go!S"
.c create line 140 7818 220 7818 -fill darkred -tags mesg -width 2
.c create line 220 7818 300 7818 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7832 -fill #eef -text "651"
.c create line 140 7832 300 7832 -fill #eef -dash {6 4}
.c create line 300 7800 300 7820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 647 to 651 (Used 1 nobox 1)
# ProcLine[2] stays at 651 (Used 1 nobox 1)
.c create rectangle 282 7822 318 7842 -fill white -width 0
.c create text 300 7832 -text "go?S"
.c create text 70 7856 -fill #eef -text "653"
.c create line 140 7856 300 7856 -fill #eef -dash {6 4}
.c create line 300 7848 300 7844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 651 to 653 (Used 1 nobox 1)
# ProcLine[2] stays at 653 (Used 1 nobox 1)
.c create rectangle 258 7846 342 7866 -fill white -width 0
.c create text 300 7856 -text "go to S "
.c create text 70 7880 -fill #eef -text "655"
.c create line 140 7880 300 7880 -fill #eef -dash {6 4}
.c create line 140 7824 140 7868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 649 to 655 (Used 1 nobox 1)
# ProcLine[1] stays at 655 (Used 1 nobox 1)
.c create rectangle 122 7870 158 7890 -fill white -width 0
.c create text 140 7880 -text "go!N"
.c create line 140 7890 220 7890 -fill darkred -tags mesg -width 2
.c create line 220 7890 300 7890 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7904 -fill #eef -text "657"
.c create line 140 7904 300 7904 -fill #eef -dash {6 4}
.c create line 300 7872 300 7892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 653 to 657 (Used 1 nobox 1)
# ProcLine[2] stays at 657 (Used 1 nobox 1)
.c create rectangle 282 7894 318 7914 -fill white -width 0
.c create text 300 7904 -text "go?N"
.c create text 70 7928 -fill #eef -text "659"
.c create line 140 7928 300 7928 -fill #eef -dash {6 4}
.c create line 300 7920 300 7916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 657 to 659 (Used 1 nobox 1)
# ProcLine[2] stays at 659 (Used 1 nobox 1)
.c create rectangle 258 7918 342 7938 -fill white -width 0
.c create text 300 7928 -text "go to N "
.c create text 70 7952 -fill #eef -text "661"
.c create line 140 7952 300 7952 -fill #eef -dash {6 4}
.c create line 140 7896 140 7940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 655 to 661 (Used 1 nobox 1)
# ProcLine[1] stays at 661 (Used 1 nobox 1)
.c create rectangle 122 7942 158 7962 -fill white -width 0
.c create text 140 7952 -text "go!W"
.c create line 140 7962 220 7962 -fill darkred -tags mesg -width 2
.c create line 220 7962 300 7962 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7976 -fill #eef -text "663"
.c create line 140 7976 300 7976 -fill #eef -dash {6 4}
.c create line 300 7944 300 7964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 659 to 663 (Used 1 nobox 1)
# ProcLine[2] stays at 663 (Used 1 nobox 1)
.c create rectangle 282 7966 318 7986 -fill white -width 0
.c create text 300 7976 -text "go?W"
.c create text 70 8000 -fill #eef -text "665"
.c create line 140 8000 300 8000 -fill #eef -dash {6 4}
.c create line 300 7992 300 7988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 663 to 665 (Used 1 nobox 1)
# ProcLine[2] stays at 665 (Used 1 nobox 1)
.c create rectangle 258 7990 342 8010 -fill white -width 0
.c create text 300 8000 -text "go to W "
.c create text 70 8024 -fill #eef -text "667"
.c create line 140 8024 300 8024 -fill #eef -dash {6 4}
.c create line 140 7968 140 8012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 661 to 667 (Used 1 nobox 1)
# ProcLine[1] stays at 667 (Used 1 nobox 1)
.c create rectangle 122 8014 158 8034 -fill white -width 0
.c create text 140 8024 -text "go!E"
.c create line 140 8034 220 8034 -fill darkred -tags mesg -width 2
.c create line 220 8034 300 8034 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8048 -fill #eef -text "669"
.c create line 140 8048 300 8048 -fill #eef -dash {6 4}
.c create line 300 8016 300 8036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 665 to 669 (Used 1 nobox 1)
# ProcLine[2] stays at 669 (Used 1 nobox 1)
.c create rectangle 282 8038 318 8058 -fill white -width 0
.c create text 300 8048 -text "go?E"
.c create text 70 8072 -fill #eef -text "671"
.c create line 140 8072 300 8072 -fill #eef -dash {6 4}
.c create line 300 8064 300 8060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 669 to 671 (Used 1 nobox 1)
# ProcLine[2] stays at 671 (Used 1 nobox 1)
.c create rectangle 258 8062 342 8082 -fill white -width 0
.c create text 300 8072 -text "go to E "
.c create text 70 8096 -fill #eef -text "673"
.c create line 140 8096 300 8096 -fill #eef -dash {6 4}
.c create line 140 8040 140 8084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 667 to 673 (Used 1 nobox 1)
# ProcLine[1] stays at 673 (Used 1 nobox 1)
.c create rectangle 122 8086 158 8106 -fill white -width 0
.c create text 140 8096 -text "go!N"
.c create line 140 8106 220 8106 -fill darkred -tags mesg -width 2
.c create line 220 8106 300 8106 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8120 -fill #eef -text "675"
.c create line 140 8120 300 8120 -fill #eef -dash {6 4}
.c create line 300 8088 300 8108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 671 to 675 (Used 1 nobox 1)
# ProcLine[2] stays at 675 (Used 1 nobox 1)
.c create rectangle 282 8110 318 8130 -fill white -width 0
.c create text 300 8120 -text "go?N"
.c create text 70 8144 -fill #eef -text "677"
.c create line 140 8144 300 8144 -fill #eef -dash {6 4}
.c create line 300 8136 300 8132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 675 to 677 (Used 1 nobox 1)
# ProcLine[2] stays at 677 (Used 1 nobox 1)
.c create rectangle 258 8134 342 8154 -fill white -width 0
.c create text 300 8144 -text "go to N "
.c create text 70 8168 -fill #eef -text "679"
.c create line 140 8168 300 8168 -fill #eef -dash {6 4}
.c create line 140 8112 140 8156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 673 to 679 (Used 1 nobox 1)
# ProcLine[1] stays at 679 (Used 1 nobox 1)
.c create rectangle 122 8158 158 8178 -fill white -width 0
.c create text 140 8168 -text "go!E"
.c create line 140 8178 220 8178 -fill darkred -tags mesg -width 2
.c create line 220 8178 300 8178 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8192 -fill #eef -text "681"
.c create line 140 8192 300 8192 -fill #eef -dash {6 4}
.c create line 300 8160 300 8180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 677 to 681 (Used 1 nobox 1)
# ProcLine[2] stays at 681 (Used 1 nobox 1)
.c create rectangle 282 8182 318 8202 -fill white -width 0
.c create text 300 8192 -text "go?E"
.c create text 70 8216 -fill #eef -text "683"
.c create line 140 8216 300 8216 -fill #eef -dash {6 4}
.c create line 300 8208 300 8204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 681 to 683 (Used 1 nobox 1)
# ProcLine[2] stays at 683 (Used 1 nobox 1)
.c create rectangle 258 8206 342 8226 -fill white -width 0
.c create text 300 8216 -text "go to E "
.c create text 70 8240 -fill #eef -text "685"
.c create line 140 8240 300 8240 -fill #eef -dash {6 4}
.c create line 140 8184 140 8228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 679 to 685 (Used 1 nobox 1)
# ProcLine[1] stays at 685 (Used 1 nobox 1)
.c create rectangle 122 8230 158 8250 -fill white -width 0
.c create text 140 8240 -text "go!W"
.c create line 140 8250 220 8250 -fill darkred -tags mesg -width 2
.c create line 220 8250 300 8250 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8264 -fill #eef -text "687"
.c create line 140 8264 300 8264 -fill #eef -dash {6 4}
.c create line 300 8232 300 8252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 683 to 687 (Used 1 nobox 1)
# ProcLine[2] stays at 687 (Used 1 nobox 1)
.c create rectangle 282 8254 318 8274 -fill white -width 0
.c create text 300 8264 -text "go?W"
.c create text 70 8288 -fill #eef -text "689"
.c create line 140 8288 300 8288 -fill #eef -dash {6 4}
.c create line 300 8280 300 8276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 687 to 689 (Used 1 nobox 1)
# ProcLine[2] stays at 689 (Used 1 nobox 1)
.c create rectangle 258 8278 342 8298 -fill white -width 0
.c create text 300 8288 -text "go to W "
.c create text 70 8312 -fill #eef -text "691"
.c create line 140 8312 300 8312 -fill #eef -dash {6 4}
.c create line 140 8256 140 8300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 685 to 691 (Used 1 nobox 1)
# ProcLine[1] stays at 691 (Used 1 nobox 1)
.c create rectangle 122 8302 158 8322 -fill white -width 0
.c create text 140 8312 -text "go!E"
.c create line 140 8322 220 8322 -fill darkred -tags mesg -width 2
.c create line 220 8322 300 8322 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8336 -fill #eef -text "693"
.c create line 140 8336 300 8336 -fill #eef -dash {6 4}
.c create line 300 8304 300 8324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 689 to 693 (Used 1 nobox 1)
# ProcLine[2] stays at 693 (Used 1 nobox 1)
.c create rectangle 282 8326 318 8346 -fill white -width 0
.c create text 300 8336 -text "go?E"
.c create text 70 8360 -fill #eef -text "695"
.c create line 140 8360 300 8360 -fill #eef -dash {6 4}
.c create line 300 8352 300 8348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 693 to 695 (Used 1 nobox 1)
# ProcLine[2] stays at 695 (Used 1 nobox 1)
.c create rectangle 258 8350 342 8370 -fill white -width 0
.c create text 300 8360 -text "go to E "
.c create text 70 8384 -fill #eef -text "697"
.c create line 140 8384 300 8384 -fill #eef -dash {6 4}
.c create line 140 8328 140 8372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 691 to 697 (Used 1 nobox 1)
# ProcLine[1] stays at 697 (Used 1 nobox 1)
.c create rectangle 122 8374 158 8394 -fill white -width 0
.c create text 140 8384 -text "go!W"
.c create line 140 8394 220 8394 -fill darkred -tags mesg -width 2
.c create line 220 8394 300 8394 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8408 -fill #eef -text "699"
.c create line 140 8408 300 8408 -fill #eef -dash {6 4}
.c create line 300 8376 300 8396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 695 to 699 (Used 1 nobox 1)
# ProcLine[2] stays at 699 (Used 1 nobox 1)
.c create rectangle 282 8398 318 8418 -fill white -width 0
.c create text 300 8408 -text "go?W"
.c create text 70 8432 -fill #eef -text "701"
.c create line 140 8432 300 8432 -fill #eef -dash {6 4}
.c create line 300 8424 300 8420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 699 to 701 (Used 1 nobox 1)
# ProcLine[2] stays at 701 (Used 1 nobox 1)
.c create rectangle 258 8422 342 8442 -fill white -width 0
.c create text 300 8432 -text "go to W "
.c create text 70 8456 -fill #eef -text "703"
.c create line 140 8456 300 8456 -fill #eef -dash {6 4}
.c create line 140 8400 140 8444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 697 to 703 (Used 1 nobox 1)
# ProcLine[1] stays at 703 (Used 1 nobox 1)
.c create rectangle 122 8446 158 8466 -fill white -width 0
.c create text 140 8456 -text "go!E"
.c create line 140 8466 220 8466 -fill darkred -tags mesg -width 2
.c create line 220 8466 300 8466 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8480 -fill #eef -text "705"
.c create line 140 8480 300 8480 -fill #eef -dash {6 4}
.c create line 300 8448 300 8468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 701 to 705 (Used 1 nobox 1)
# ProcLine[2] stays at 705 (Used 1 nobox 1)
.c create rectangle 282 8470 318 8490 -fill white -width 0
.c create text 300 8480 -text "go?E"
.c create text 70 8504 -fill #eef -text "707"
.c create line 140 8504 300 8504 -fill #eef -dash {6 4}
.c create line 300 8496 300 8492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 705 to 707 (Used 1 nobox 1)
# ProcLine[2] stays at 707 (Used 1 nobox 1)
.c create rectangle 258 8494 342 8514 -fill white -width 0
.c create text 300 8504 -text "go to E "
.c create text 70 8528 -fill #eef -text "709"
.c create line 140 8528 300 8528 -fill #eef -dash {6 4}
.c create line 140 8472 140 8516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 703 to 709 (Used 1 nobox 1)
# ProcLine[1] stays at 709 (Used 1 nobox 1)
.c create rectangle 122 8518 158 8538 -fill white -width 0
.c create text 140 8528 -text "go!E"
.c create line 140 8538 220 8538 -fill darkred -tags mesg -width 2
.c create line 220 8538 300 8538 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8552 -fill #eef -text "711"
.c create line 140 8552 300 8552 -fill #eef -dash {6 4}
.c create line 300 8520 300 8540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 707 to 711 (Used 1 nobox 1)
# ProcLine[2] stays at 711 (Used 1 nobox 1)
.c create rectangle 282 8542 318 8562 -fill white -width 0
.c create text 300 8552 -text "go?E"
.c create text 70 8576 -fill #eef -text "713"
.c create line 140 8576 300 8576 -fill #eef -dash {6 4}
.c create line 300 8568 300 8564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 711 to 713 (Used 1 nobox 1)
# ProcLine[2] stays at 713 (Used 1 nobox 1)
.c create rectangle 258 8566 342 8586 -fill white -width 0
.c create text 300 8576 -text "go to E "
.c create text 70 8600 -fill #eef -text "715"
.c create line 140 8600 300 8600 -fill #eef -dash {6 4}
.c create line 140 8544 140 8588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 709 to 715 (Used 1 nobox 1)
# ProcLine[1] stays at 715 (Used 1 nobox 1)
.c create rectangle 122 8590 158 8610 -fill white -width 0
.c create text 140 8600 -text "go!W"
.c create line 140 8610 220 8610 -fill darkred -tags mesg -width 2
.c create line 220 8610 300 8610 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8624 -fill #eef -text "717"
.c create line 140 8624 300 8624 -fill #eef -dash {6 4}
.c create line 300 8592 300 8612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 713 to 717 (Used 1 nobox 1)
# ProcLine[2] stays at 717 (Used 1 nobox 1)
.c create rectangle 282 8614 318 8634 -fill white -width 0
.c create text 300 8624 -text "go?W"
.c create text 70 8648 -fill #eef -text "719"
.c create line 140 8648 300 8648 -fill #eef -dash {6 4}
.c create line 300 8640 300 8636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 717 to 719 (Used 1 nobox 1)
# ProcLine[2] stays at 719 (Used 1 nobox 1)
.c create rectangle 258 8638 342 8658 -fill white -width 0
.c create text 300 8648 -text "go to W "
.c create text 70 8672 -fill #eef -text "721"
.c create line 140 8672 300 8672 -fill #eef -dash {6 4}
.c create line 140 8616 140 8660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 715 to 721 (Used 1 nobox 1)
# ProcLine[1] stays at 721 (Used 1 nobox 1)
.c create rectangle 122 8662 158 8682 -fill white -width 0
.c create text 140 8672 -text "go!W"
.c create line 140 8682 220 8682 -fill darkred -tags mesg -width 2
.c create line 220 8682 300 8682 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8696 -fill #eef -text "723"
.c create line 140 8696 300 8696 -fill #eef -dash {6 4}
.c create line 300 8664 300 8684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 719 to 723 (Used 1 nobox 1)
# ProcLine[2] stays at 723 (Used 1 nobox 1)
.c create rectangle 282 8686 318 8706 -fill white -width 0
.c create text 300 8696 -text "go?W"
.c create text 70 8720 -fill #eef -text "725"
.c create line 140 8720 300 8720 -fill #eef -dash {6 4}
.c create line 300 8712 300 8708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 723 to 725 (Used 1 nobox 1)
# ProcLine[2] stays at 725 (Used 1 nobox 1)
.c create rectangle 258 8710 342 8730 -fill white -width 0
.c create text 300 8720 -text "go to W "
.c create text 70 8744 -fill #eef -text "727"
.c create line 140 8744 300 8744 -fill #eef -dash {6 4}
.c create line 140 8688 140 8732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 721 to 727 (Used 1 nobox 1)
# ProcLine[1] stays at 727 (Used 1 nobox 1)
.c create rectangle 122 8734 158 8754 -fill white -width 0
.c create text 140 8744 -text "go!S"
.c create line 140 8754 220 8754 -fill darkred -tags mesg -width 2
.c create line 220 8754 300 8754 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8768 -fill #eef -text "729"
.c create line 140 8768 300 8768 -fill #eef -dash {6 4}
.c create line 300 8736 300 8756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 725 to 729 (Used 1 nobox 1)
# ProcLine[2] stays at 729 (Used 1 nobox 1)
.c create rectangle 282 8758 318 8778 -fill white -width 0
.c create text 300 8768 -text "go?S"
.c create text 70 8792 -fill #eef -text "731"
.c create line 140 8792 300 8792 -fill #eef -dash {6 4}
.c create line 300 8784 300 8780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 729 to 731 (Used 1 nobox 1)
# ProcLine[2] stays at 731 (Used 1 nobox 1)
.c create rectangle 258 8782 342 8802 -fill white -width 0
.c create text 300 8792 -text "go to S "
.c create text 70 8816 -fill #eef -text "733"
.c create line 140 8816 300 8816 -fill #eef -dash {6 4}
.c create line 140 8760 140 8804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 727 to 733 (Used 1 nobox 1)
# ProcLine[1] stays at 733 (Used 1 nobox 1)
.c create rectangle 122 8806 158 8826 -fill white -width 0
.c create text 140 8816 -text "go!W"
.c create line 140 8826 220 8826 -fill darkred -tags mesg -width 2
.c create line 220 8826 300 8826 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8840 -fill #eef -text "735"
.c create line 140 8840 300 8840 -fill #eef -dash {6 4}
.c create line 300 8808 300 8828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 731 to 735 (Used 1 nobox 1)
# ProcLine[2] stays at 735 (Used 1 nobox 1)
.c create rectangle 282 8830 318 8850 -fill white -width 0
.c create text 300 8840 -text "go?W"
.c create text 70 8864 -fill #eef -text "737"
.c create line 140 8864 300 8864 -fill #eef -dash {6 4}
.c create line 300 8856 300 8852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 735 to 737 (Used 1 nobox 1)
# ProcLine[2] stays at 737 (Used 1 nobox 1)
.c create rectangle 258 8854 342 8874 -fill white -width 0
.c create text 300 8864 -text "go to W "
.c create text 70 8888 -fill #eef -text "739"
.c create line 140 8888 300 8888 -fill #eef -dash {6 4}
.c create line 140 8832 140 8876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 733 to 739 (Used 1 nobox 1)
# ProcLine[1] stays at 739 (Used 1 nobox 1)
.c create rectangle 122 8878 158 8898 -fill white -width 0
.c create text 140 8888 -text "go!E"
.c create line 140 8898 220 8898 -fill darkred -tags mesg -width 2
.c create line 220 8898 300 8898 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8912 -fill #eef -text "741"
.c create line 140 8912 300 8912 -fill #eef -dash {6 4}
.c create line 300 8880 300 8900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 737 to 741 (Used 1 nobox 1)
# ProcLine[2] stays at 741 (Used 1 nobox 1)
.c create rectangle 282 8902 318 8922 -fill white -width 0
.c create text 300 8912 -text "go?E"
.c create text 70 8936 -fill #eef -text "743"
.c create line 140 8936 300 8936 -fill #eef -dash {6 4}
.c create line 300 8928 300 8924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 741 to 743 (Used 1 nobox 1)
# ProcLine[2] stays at 743 (Used 1 nobox 1)
.c create rectangle 258 8926 342 8946 -fill white -width 0
.c create text 300 8936 -text "go to E "
.c create text 70 8960 -fill #eef -text "745"
.c create line 140 8960 300 8960 -fill #eef -dash {6 4}
.c create line 140 8904 140 8948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 739 to 745 (Used 1 nobox 1)
# ProcLine[1] stays at 745 (Used 1 nobox 1)
.c create rectangle 122 8950 158 8970 -fill white -width 0
.c create text 140 8960 -text "go!S"
.c create line 140 8970 220 8970 -fill darkred -tags mesg -width 2
.c create line 220 8970 300 8970 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8984 -fill #eef -text "747"
.c create line 140 8984 300 8984 -fill #eef -dash {6 4}
.c create line 300 8952 300 8972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 743 to 747 (Used 1 nobox 1)
# ProcLine[2] stays at 747 (Used 1 nobox 1)
.c create rectangle 282 8974 318 8994 -fill white -width 0
.c create text 300 8984 -text "go?S"
.c create text 70 9008 -fill #eef -text "749"
.c create line 140 9008 300 9008 -fill #eef -dash {6 4}
.c create line 300 9000 300 8996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 747 to 749 (Used 1 nobox 1)
# ProcLine[2] stays at 749 (Used 1 nobox 1)
.c create rectangle 258 8998 342 9018 -fill white -width 0
.c create text 300 9008 -text "go to S "
.c create text 70 9032 -fill #eef -text "751"
.c create line 140 9032 300 9032 -fill #eef -dash {6 4}
.c create line 140 8976 140 9020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 745 to 751 (Used 1 nobox 1)
# ProcLine[1] stays at 751 (Used 1 nobox 1)
.c create rectangle 122 9022 158 9042 -fill white -width 0
.c create text 140 9032 -text "go!E"
.c create line 140 9042 220 9042 -fill darkred -tags mesg -width 2
.c create line 220 9042 300 9042 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9056 -fill #eef -text "753"
.c create line 140 9056 300 9056 -fill #eef -dash {6 4}
.c create line 300 9024 300 9044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 749 to 753 (Used 1 nobox 1)
# ProcLine[2] stays at 753 (Used 1 nobox 1)
.c create rectangle 282 9046 318 9066 -fill white -width 0
.c create text 300 9056 -text "go?E"
.c create text 70 9080 -fill #eef -text "755"
.c create line 140 9080 300 9080 -fill #eef -dash {6 4}
.c create line 300 9072 300 9068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 753 to 755 (Used 1 nobox 1)
# ProcLine[2] stays at 755 (Used 1 nobox 1)
.c create rectangle 258 9070 342 9090 -fill white -width 0
.c create text 300 9080 -text "go to E "
.c create text 70 9104 -fill #eef -text "757"
.c create line 140 9104 300 9104 -fill #eef -dash {6 4}
.c create line 140 9048 140 9092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 751 to 757 (Used 1 nobox 1)
# ProcLine[1] stays at 757 (Used 1 nobox 1)
.c create rectangle 122 9094 158 9114 -fill white -width 0
.c create text 140 9104 -text "go!E"
.c create line 140 9114 220 9114 -fill darkred -tags mesg -width 2
.c create line 220 9114 300 9114 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9128 -fill #eef -text "759"
.c create line 140 9128 300 9128 -fill #eef -dash {6 4}
.c create line 300 9096 300 9116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 755 to 759 (Used 1 nobox 1)
# ProcLine[2] stays at 759 (Used 1 nobox 1)
.c create rectangle 282 9118 318 9138 -fill white -width 0
.c create text 300 9128 -text "go?E"
.c create text 70 9152 -fill #eef -text "761"
.c create line 140 9152 300 9152 -fill #eef -dash {6 4}
.c create line 300 9144 300 9140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 759 to 761 (Used 1 nobox 1)
# ProcLine[2] stays at 761 (Used 1 nobox 1)
.c create rectangle 258 9142 342 9162 -fill white -width 0
.c create text 300 9152 -text "go to E "
.c create text 70 9176 -fill #eef -text "763"
.c create line 140 9176 300 9176 -fill #eef -dash {6 4}
.c create line 140 9120 140 9164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 757 to 763 (Used 1 nobox 1)
# ProcLine[1] stays at 763 (Used 1 nobox 1)
.c create rectangle 122 9166 158 9186 -fill white -width 0
.c create text 140 9176 -text "go!E"
.c create line 140 9186 220 9186 -fill darkred -tags mesg -width 2
.c create line 220 9186 300 9186 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9200 -fill #eef -text "765"
.c create line 140 9200 300 9200 -fill #eef -dash {6 4}
.c create line 300 9168 300 9188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 761 to 765 (Used 1 nobox 1)
# ProcLine[2] stays at 765 (Used 1 nobox 1)
.c create rectangle 282 9190 318 9210 -fill white -width 0
.c create text 300 9200 -text "go?E"
.c create text 70 9224 -fill #eef -text "767"
.c create line 140 9224 300 9224 -fill #eef -dash {6 4}
.c create line 300 9216 300 9212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 765 to 767 (Used 1 nobox 1)
# ProcLine[2] stays at 767 (Used 1 nobox 1)
.c create rectangle 258 9214 342 9234 -fill white -width 0
.c create text 300 9224 -text "go to E "
.c create text 70 9248 -fill #eef -text "769"
.c create line 140 9248 300 9248 -fill #eef -dash {6 4}
.c create line 140 9192 140 9236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 763 to 769 (Used 1 nobox 1)
# ProcLine[1] stays at 769 (Used 1 nobox 1)
.c create rectangle 122 9238 158 9258 -fill white -width 0
.c create text 140 9248 -text "go!W"
.c create line 140 9258 220 9258 -fill darkred -tags mesg -width 2
.c create line 220 9258 300 9258 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9272 -fill #eef -text "771"
.c create line 140 9272 300 9272 -fill #eef -dash {6 4}
.c create line 300 9240 300 9260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 767 to 771 (Used 1 nobox 1)
# ProcLine[2] stays at 771 (Used 1 nobox 1)
.c create rectangle 282 9262 318 9282 -fill white -width 0
.c create text 300 9272 -text "go?W"
.c create text 70 9296 -fill #eef -text "773"
.c create line 140 9296 300 9296 -fill #eef -dash {6 4}
.c create line 300 9288 300 9284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 771 to 773 (Used 1 nobox 1)
# ProcLine[2] stays at 773 (Used 1 nobox 1)
.c create rectangle 258 9286 342 9306 -fill white -width 0
.c create text 300 9296 -text "go to W "
.c create text 70 9320 -fill #eef -text "775"
.c create line 140 9320 300 9320 -fill #eef -dash {6 4}
.c create line 140 9264 140 9308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 769 to 775 (Used 1 nobox 1)
# ProcLine[1] stays at 775 (Used 1 nobox 1)
.c create rectangle 122 9310 158 9330 -fill white -width 0
.c create text 140 9320 -text "go!W"
.c create line 140 9330 220 9330 -fill darkred -tags mesg -width 2
.c create line 220 9330 300 9330 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9344 -fill #eef -text "777"
.c create line 140 9344 300 9344 -fill #eef -dash {6 4}
.c create line 300 9312 300 9332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 773 to 777 (Used 1 nobox 1)
# ProcLine[2] stays at 777 (Used 1 nobox 1)
.c create rectangle 282 9334 318 9354 -fill white -width 0
.c create text 300 9344 -text "go?W"
.c create text 70 9368 -fill #eef -text "779"
.c create line 140 9368 300 9368 -fill #eef -dash {6 4}
.c create line 300 9360 300 9356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 777 to 779 (Used 1 nobox 1)
# ProcLine[2] stays at 779 (Used 1 nobox 1)
.c create rectangle 258 9358 342 9378 -fill white -width 0
.c create text 300 9368 -text "go to W "
.c create text 70 9392 -fill #eef -text "781"
.c create line 140 9392 300 9392 -fill #eef -dash {6 4}
.c create line 140 9336 140 9380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 775 to 781 (Used 1 nobox 1)
# ProcLine[1] stays at 781 (Used 1 nobox 1)
.c create rectangle 122 9382 158 9402 -fill white -width 0
.c create text 140 9392 -text "go!W"
.c create line 140 9402 220 9402 -fill darkred -tags mesg -width 2
.c create line 220 9402 300 9402 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9416 -fill #eef -text "783"
.c create line 140 9416 300 9416 -fill #eef -dash {6 4}
.c create line 300 9384 300 9404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 779 to 783 (Used 1 nobox 1)
# ProcLine[2] stays at 783 (Used 1 nobox 1)
.c create rectangle 282 9406 318 9426 -fill white -width 0
.c create text 300 9416 -text "go?W"
.c create text 70 9440 -fill #eef -text "785"
.c create line 140 9440 300 9440 -fill #eef -dash {6 4}
.c create line 300 9432 300 9428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 783 to 785 (Used 1 nobox 1)
# ProcLine[2] stays at 785 (Used 1 nobox 1)
.c create rectangle 258 9430 342 9450 -fill white -width 0
.c create text 300 9440 -text "go to W "
.c create text 70 9464 -fill #eef -text "787"
.c create line 140 9464 300 9464 -fill #eef -dash {6 4}
.c create line 140 9408 140 9452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 781 to 787 (Used 1 nobox 1)
# ProcLine[1] stays at 787 (Used 1 nobox 1)
.c create rectangle 122 9454 158 9474 -fill white -width 0
.c create text 140 9464 -text "go!E"
.c create line 140 9474 220 9474 -fill darkred -tags mesg -width 2
.c create line 220 9474 300 9474 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9488 -fill #eef -text "789"
.c create line 140 9488 300 9488 -fill #eef -dash {6 4}
.c create line 300 9456 300 9476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 785 to 789 (Used 1 nobox 1)
# ProcLine[2] stays at 789 (Used 1 nobox 1)
.c create rectangle 282 9478 318 9498 -fill white -width 0
.c create text 300 9488 -text "go?E"
.c create text 70 9512 -fill #eef -text "791"
.c create line 140 9512 300 9512 -fill #eef -dash {6 4}
.c create line 300 9504 300 9500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 789 to 791 (Used 1 nobox 1)
# ProcLine[2] stays at 791 (Used 1 nobox 1)
.c create rectangle 258 9502 342 9522 -fill white -width 0
.c create text 300 9512 -text "go to E "
.c create text 70 9536 -fill #eef -text "793"
.c create line 140 9536 300 9536 -fill #eef -dash {6 4}
.c create line 140 9480 140 9524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 787 to 793 (Used 1 nobox 1)
# ProcLine[1] stays at 793 (Used 1 nobox 1)
.c create rectangle 122 9526 158 9546 -fill white -width 0
.c create text 140 9536 -text "go!E"
.c create line 140 9546 220 9546 -fill darkred -tags mesg -width 2
.c create line 220 9546 300 9546 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9560 -fill #eef -text "795"
.c create line 140 9560 300 9560 -fill #eef -dash {6 4}
.c create line 300 9528 300 9548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 791 to 795 (Used 1 nobox 1)
# ProcLine[2] stays at 795 (Used 1 nobox 1)
.c create rectangle 282 9550 318 9570 -fill white -width 0
.c create text 300 9560 -text "go?E"
.c create text 70 9584 -fill #eef -text "797"
.c create line 140 9584 300 9584 -fill #eef -dash {6 4}
.c create line 300 9576 300 9572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 795 to 797 (Used 1 nobox 1)
# ProcLine[2] stays at 797 (Used 1 nobox 1)
.c create rectangle 258 9574 342 9594 -fill white -width 0
.c create text 300 9584 -text "go to E "
.c create text 70 9608 -fill #eef -text "799"
.c create line 140 9608 300 9608 -fill #eef -dash {6 4}
.c create line 140 9552 140 9596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 793 to 799 (Used 1 nobox 1)
# ProcLine[1] stays at 799 (Used 1 nobox 1)
.c create rectangle 122 9598 158 9618 -fill white -width 0
.c create text 140 9608 -text "go!W"
.c create line 140 9618 220 9618 -fill darkred -tags mesg -width 2
.c create line 220 9618 300 9618 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9632 -fill #eef -text "801"
.c create line 140 9632 300 9632 -fill #eef -dash {6 4}
.c create line 300 9600 300 9620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 797 to 801 (Used 1 nobox 1)
# ProcLine[2] stays at 801 (Used 1 nobox 1)
.c create rectangle 282 9622 318 9642 -fill white -width 0
.c create text 300 9632 -text "go?W"
.c create text 70 9656 -fill #eef -text "803"
.c create line 140 9656 300 9656 -fill #eef -dash {6 4}
.c create line 300 9648 300 9644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 801 to 803 (Used 1 nobox 1)
# ProcLine[2] stays at 803 (Used 1 nobox 1)
.c create rectangle 258 9646 342 9666 -fill white -width 0
.c create text 300 9656 -text "go to W "
.c create text 70 9680 -fill #eef -text "805"
.c create line 140 9680 300 9680 -fill #eef -dash {6 4}
.c create line 140 9624 140 9668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 799 to 805 (Used 1 nobox 1)
# ProcLine[1] stays at 805 (Used 1 nobox 1)
.c create rectangle 122 9670 158 9690 -fill white -width 0
.c create text 140 9680 -text "go!W"
.c create line 140 9690 220 9690 -fill darkred -tags mesg -width 2
.c create line 220 9690 300 9690 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9704 -fill #eef -text "807"
.c create line 140 9704 300 9704 -fill #eef -dash {6 4}
.c create line 300 9672 300 9692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 803 to 807 (Used 1 nobox 1)
# ProcLine[2] stays at 807 (Used 1 nobox 1)
.c create rectangle 282 9694 318 9714 -fill white -width 0
.c create text 300 9704 -text "go?W"
.c create text 70 9728 -fill #eef -text "809"
.c create line 140 9728 300 9728 -fill #eef -dash {6 4}
.c create line 300 9720 300 9716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 807 to 809 (Used 1 nobox 1)
# ProcLine[2] stays at 809 (Used 1 nobox 1)
.c create rectangle 258 9718 342 9738 -fill white -width 0
.c create text 300 9728 -text "go to W "
.c create text 70 9752 -fill #eef -text "811"
.c create line 140 9752 300 9752 -fill #eef -dash {6 4}
.c create line 140 9696 140 9740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 805 to 811 (Used 1 nobox 1)
# ProcLine[1] stays at 811 (Used 1 nobox 1)
.c create rectangle 122 9742 158 9762 -fill white -width 0
.c create text 140 9752 -text "go!N"
.c create line 140 9762 220 9762 -fill darkred -tags mesg -width 2
.c create line 220 9762 300 9762 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9776 -fill #eef -text "813"
.c create line 140 9776 300 9776 -fill #eef -dash {6 4}
.c create line 300 9744 300 9764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 809 to 813 (Used 1 nobox 1)
# ProcLine[2] stays at 813 (Used 1 nobox 1)
.c create rectangle 282 9766 318 9786 -fill white -width 0
.c create text 300 9776 -text "go?N"
.c create text 70 9800 -fill #eef -text "815"
.c create line 140 9800 300 9800 -fill #eef -dash {6 4}
.c create line 300 9792 300 9788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 813 to 815 (Used 1 nobox 1)
# ProcLine[2] stays at 815 (Used 1 nobox 1)
.c create rectangle 258 9790 342 9810 -fill white -width 0
.c create text 300 9800 -text "go to N "
.c create text 70 9824 -fill #eef -text "817"
.c create line 140 9824 300 9824 -fill #eef -dash {6 4}
.c create line 140 9768 140 9812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 811 to 817 (Used 1 nobox 1)
# ProcLine[1] stays at 817 (Used 1 nobox 1)
.c create rectangle 122 9814 158 9834 -fill white -width 0
.c create text 140 9824 -text "go!N"
.c create line 140 9834 220 9834 -fill darkred -tags mesg -width 2
.c create line 220 9834 300 9834 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9848 -fill #eef -text "819"
.c create line 140 9848 300 9848 -fill #eef -dash {6 4}
.c create line 300 9816 300 9836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 815 to 819 (Used 1 nobox 1)
# ProcLine[2] stays at 819 (Used 1 nobox 1)
.c create rectangle 282 9838 318 9858 -fill white -width 0
.c create text 300 9848 -text "go?N"
.c create text 70 9872 -fill #eef -text "821"
.c create line 140 9872 300 9872 -fill #eef -dash {6 4}
.c create line 300 9864 300 9860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 819 to 821 (Used 1 nobox 1)
# ProcLine[2] stays at 821 (Used 1 nobox 1)
.c create rectangle 258 9862 342 9882 -fill white -width 0
.c create text 300 9872 -text "go to N "
.c create text 70 9896 -fill #eef -text "823"
.c create line 140 9896 300 9896 -fill #eef -dash {6 4}
.c create line 140 9840 140 9884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 817 to 823 (Used 1 nobox 1)
# ProcLine[1] stays at 823 (Used 1 nobox 1)
.c create rectangle 122 9886 158 9906 -fill white -width 0
.c create text 140 9896 -text "go!S"
.c create line 140 9906 220 9906 -fill darkred -tags mesg -width 2
.c create line 220 9906 300 9906 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9920 -fill #eef -text "825"
.c create line 140 9920 300 9920 -fill #eef -dash {6 4}
.c create line 300 9888 300 9908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 821 to 825 (Used 1 nobox 1)
# ProcLine[2] stays at 825 (Used 1 nobox 1)
.c create rectangle 282 9910 318 9930 -fill white -width 0
.c create text 300 9920 -text "go?S"
.c create text 70 9944 -fill #eef -text "827"
.c create line 140 9944 300 9944 -fill #eef -dash {6 4}
.c create line 300 9936 300 9932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 825 to 827 (Used 1 nobox 1)
# ProcLine[2] stays at 827 (Used 1 nobox 1)
.c create rectangle 258 9934 342 9954 -fill white -width 0
.c create text 300 9944 -text "go to S "
.c create text 70 9968 -fill #eef -text "829"
.c create line 140 9968 300 9968 -fill #eef -dash {6 4}
.c create line 140 9912 140 9956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 823 to 829 (Used 1 nobox 1)
# ProcLine[1] stays at 829 (Used 1 nobox 1)
.c create rectangle 122 9958 158 9978 -fill white -width 0
.c create text 140 9968 -text "go!S"
.c create line 140 9978 220 9978 -fill darkred -tags mesg -width 2
.c create line 220 9978 300 9978 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 9992 -fill #eef -text "831"
.c create line 140 9992 300 9992 -fill #eef -dash {6 4}
.c create line 300 9960 300 9980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 827 to 831 (Used 1 nobox 1)
# ProcLine[2] stays at 831 (Used 1 nobox 1)
.c create rectangle 282 9982 318 10002 -fill white -width 0
.c create text 300 9992 -text "go?S"
.c create text 70 10016 -fill #eef -text "833"
.c create line 140 10016 300 10016 -fill #eef -dash {6 4}
.c create line 300 10008 300 10004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 831 to 833 (Used 1 nobox 1)
# ProcLine[2] stays at 833 (Used 1 nobox 1)
.c create rectangle 258 10006 342 10026 -fill white -width 0
.c create text 300 10016 -text "go to S "
.c create text 70 10040 -fill #eef -text "835"
.c create line 140 10040 300 10040 -fill #eef -dash {6 4}
.c create line 140 9984 140 10028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 829 to 835 (Used 1 nobox 1)
# ProcLine[1] stays at 835 (Used 1 nobox 1)
.c create rectangle 122 10030 158 10050 -fill white -width 0
.c create text 140 10040 -text "go!N"
.c create line 140 10050 220 10050 -fill darkred -tags mesg -width 2
.c create line 220 10050 300 10050 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10064 -fill #eef -text "837"
.c create line 140 10064 300 10064 -fill #eef -dash {6 4}
.c create line 300 10032 300 10052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 833 to 837 (Used 1 nobox 1)
# ProcLine[2] stays at 837 (Used 1 nobox 1)
.c create rectangle 282 10054 318 10074 -fill white -width 0
.c create text 300 10064 -text "go?N"
.c create text 70 10088 -fill #eef -text "839"
.c create line 140 10088 300 10088 -fill #eef -dash {6 4}
.c create line 300 10080 300 10076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 837 to 839 (Used 1 nobox 1)
# ProcLine[2] stays at 839 (Used 1 nobox 1)
.c create rectangle 258 10078 342 10098 -fill white -width 0
.c create text 300 10088 -text "go to N "
.c create text 70 10112 -fill #eef -text "841"
.c create line 140 10112 300 10112 -fill #eef -dash {6 4}
.c create line 140 10056 140 10100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 835 to 841 (Used 1 nobox 1)
# ProcLine[1] stays at 841 (Used 1 nobox 1)
.c create rectangle 122 10102 158 10122 -fill white -width 0
.c create text 140 10112 -text "go!W"
.c create line 140 10122 220 10122 -fill darkred -tags mesg -width 2
.c create line 220 10122 300 10122 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10136 -fill #eef -text "843"
.c create line 140 10136 300 10136 -fill #eef -dash {6 4}
.c create line 300 10104 300 10124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 839 to 843 (Used 1 nobox 1)
# ProcLine[2] stays at 843 (Used 1 nobox 1)
.c create rectangle 282 10126 318 10146 -fill white -width 0
.c create text 300 10136 -text "go?W"
.c create text 70 10160 -fill #eef -text "845"
.c create line 140 10160 300 10160 -fill #eef -dash {6 4}
.c create line 300 10152 300 10148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 843 to 845 (Used 1 nobox 1)
# ProcLine[2] stays at 845 (Used 1 nobox 1)
.c create rectangle 258 10150 342 10170 -fill white -width 0
.c create text 300 10160 -text "go to W "
.c create text 70 10184 -fill #eef -text "847"
.c create line 140 10184 300 10184 -fill #eef -dash {6 4}
.c create line 140 10128 140 10172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 841 to 847 (Used 1 nobox 1)
# ProcLine[1] stays at 847 (Used 1 nobox 1)
.c create rectangle 122 10174 158 10194 -fill white -width 0
.c create text 140 10184 -text "go!E"
.c create line 140 10194 220 10194 -fill darkred -tags mesg -width 2
.c create line 220 10194 300 10194 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10208 -fill #eef -text "849"
.c create line 140 10208 300 10208 -fill #eef -dash {6 4}
.c create line 300 10176 300 10196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 845 to 849 (Used 1 nobox 1)
# ProcLine[2] stays at 849 (Used 1 nobox 1)
.c create rectangle 282 10198 318 10218 -fill white -width 0
.c create text 300 10208 -text "go?E"
.c create text 70 10232 -fill #eef -text "851"
.c create line 140 10232 300 10232 -fill #eef -dash {6 4}
.c create line 300 10224 300 10220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 849 to 851 (Used 1 nobox 1)
# ProcLine[2] stays at 851 (Used 1 nobox 1)
.c create rectangle 258 10222 342 10242 -fill white -width 0
.c create text 300 10232 -text "go to E "
.c create text 70 10256 -fill #eef -text "853"
.c create line 140 10256 300 10256 -fill #eef -dash {6 4}
.c create line 140 10200 140 10244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 847 to 853 (Used 1 nobox 1)
# ProcLine[1] stays at 853 (Used 1 nobox 1)
.c create rectangle 122 10246 158 10266 -fill white -width 0
.c create text 140 10256 -text "go!W"
.c create line 140 10266 220 10266 -fill darkred -tags mesg -width 2
.c create line 220 10266 300 10266 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10280 -fill #eef -text "855"
.c create line 140 10280 300 10280 -fill #eef -dash {6 4}
.c create line 300 10248 300 10268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 851 to 855 (Used 1 nobox 1)
# ProcLine[2] stays at 855 (Used 1 nobox 1)
.c create rectangle 282 10270 318 10290 -fill white -width 0
.c create text 300 10280 -text "go?W"
.c create text 70 10304 -fill #eef -text "857"
.c create line 140 10304 300 10304 -fill #eef -dash {6 4}
.c create line 300 10296 300 10292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 855 to 857 (Used 1 nobox 1)
# ProcLine[2] stays at 857 (Used 1 nobox 1)
.c create rectangle 258 10294 342 10314 -fill white -width 0
.c create text 300 10304 -text "go to W "
.c create text 70 10328 -fill #eef -text "859"
.c create line 140 10328 300 10328 -fill #eef -dash {6 4}
.c create line 140 10272 140 10316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 853 to 859 (Used 1 nobox 1)
# ProcLine[1] stays at 859 (Used 1 nobox 1)
.c create rectangle 122 10318 158 10338 -fill white -width 0
.c create text 140 10328 -text "go!E"
.c create line 140 10338 220 10338 -fill darkred -tags mesg -width 2
.c create line 220 10338 300 10338 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10352 -fill #eef -text "861"
.c create line 140 10352 300 10352 -fill #eef -dash {6 4}
.c create line 300 10320 300 10340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 857 to 861 (Used 1 nobox 1)
# ProcLine[2] stays at 861 (Used 1 nobox 1)
.c create rectangle 282 10342 318 10362 -fill white -width 0
.c create text 300 10352 -text "go?E"
.c create text 70 10376 -fill #eef -text "863"
.c create line 140 10376 300 10376 -fill #eef -dash {6 4}
.c create line 300 10368 300 10364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 861 to 863 (Used 1 nobox 1)
# ProcLine[2] stays at 863 (Used 1 nobox 1)
.c create rectangle 258 10366 342 10386 -fill white -width 0
.c create text 300 10376 -text "go to E "
.c create text 70 10400 -fill #eef -text "865"
.c create line 140 10400 300 10400 -fill #eef -dash {6 4}
.c create line 140 10344 140 10388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 859 to 865 (Used 1 nobox 1)
# ProcLine[1] stays at 865 (Used 1 nobox 1)
.c create rectangle 122 10390 158 10410 -fill white -width 0
.c create text 140 10400 -text "go!W"
.c create line 140 10410 220 10410 -fill darkred -tags mesg -width 2
.c create line 220 10410 300 10410 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10424 -fill #eef -text "867"
.c create line 140 10424 300 10424 -fill #eef -dash {6 4}
.c create line 300 10392 300 10412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 863 to 867 (Used 1 nobox 1)
# ProcLine[2] stays at 867 (Used 1 nobox 1)
.c create rectangle 282 10414 318 10434 -fill white -width 0
.c create text 300 10424 -text "go?W"
.c create text 70 10448 -fill #eef -text "869"
.c create line 140 10448 300 10448 -fill #eef -dash {6 4}
.c create line 300 10440 300 10436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 867 to 869 (Used 1 nobox 1)
# ProcLine[2] stays at 869 (Used 1 nobox 1)
.c create rectangle 258 10438 342 10458 -fill white -width 0
.c create text 300 10448 -text "go to W "
.c create text 70 10472 -fill #eef -text "871"
.c create line 140 10472 300 10472 -fill #eef -dash {6 4}
.c create line 140 10416 140 10460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 865 to 871 (Used 1 nobox 1)
# ProcLine[1] stays at 871 (Used 1 nobox 1)
.c create rectangle 122 10462 158 10482 -fill white -width 0
.c create text 140 10472 -text "go!E"
.c create line 140 10482 220 10482 -fill darkred -tags mesg -width 2
.c create line 220 10482 300 10482 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10496 -fill #eef -text "873"
.c create line 140 10496 300 10496 -fill #eef -dash {6 4}
.c create line 300 10464 300 10484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 869 to 873 (Used 1 nobox 1)
# ProcLine[2] stays at 873 (Used 1 nobox 1)
.c create rectangle 282 10486 318 10506 -fill white -width 0
.c create text 300 10496 -text "go?E"
.c create text 70 10520 -fill #eef -text "875"
.c create line 140 10520 300 10520 -fill #eef -dash {6 4}
.c create line 300 10512 300 10508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 873 to 875 (Used 1 nobox 1)
# ProcLine[2] stays at 875 (Used 1 nobox 1)
.c create rectangle 258 10510 342 10530 -fill white -width 0
.c create text 300 10520 -text "go to E "
.c create text 70 10544 -fill #eef -text "877"
.c create line 140 10544 300 10544 -fill #eef -dash {6 4}
.c create line 140 10488 140 10532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 871 to 877 (Used 1 nobox 1)
# ProcLine[1] stays at 877 (Used 1 nobox 1)
.c create rectangle 122 10534 158 10554 -fill white -width 0
.c create text 140 10544 -text "go!N"
.c create line 140 10554 220 10554 -fill darkred -tags mesg -width 2
.c create line 220 10554 300 10554 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10568 -fill #eef -text "879"
.c create line 140 10568 300 10568 -fill #eef -dash {6 4}
.c create line 300 10536 300 10556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 875 to 879 (Used 1 nobox 1)
# ProcLine[2] stays at 879 (Used 1 nobox 1)
.c create rectangle 282 10558 318 10578 -fill white -width 0
.c create text 300 10568 -text "go?N"
.c create text 70 10592 -fill #eef -text "881"
.c create line 140 10592 300 10592 -fill #eef -dash {6 4}
.c create line 300 10584 300 10580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 879 to 881 (Used 1 nobox 1)
# ProcLine[2] stays at 881 (Used 1 nobox 1)
.c create rectangle 258 10582 342 10602 -fill white -width 0
.c create text 300 10592 -text "go to N "
.c create text 70 10616 -fill #eef -text "883"
.c create line 140 10616 300 10616 -fill #eef -dash {6 4}
.c create line 140 10560 140 10604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 877 to 883 (Used 1 nobox 1)
# ProcLine[1] stays at 883 (Used 1 nobox 1)
.c create rectangle 122 10606 158 10626 -fill white -width 0
.c create text 140 10616 -text "go!E"
.c create line 140 10626 220 10626 -fill darkred -tags mesg -width 2
.c create line 220 10626 300 10626 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10640 -fill #eef -text "885"
.c create line 140 10640 300 10640 -fill #eef -dash {6 4}
.c create line 300 10608 300 10628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 881 to 885 (Used 1 nobox 1)
# ProcLine[2] stays at 885 (Used 1 nobox 1)
.c create rectangle 282 10630 318 10650 -fill white -width 0
.c create text 300 10640 -text "go?E"
.c create text 70 10664 -fill #eef -text "887"
.c create line 140 10664 300 10664 -fill #eef -dash {6 4}
.c create line 300 10656 300 10652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 885 to 887 (Used 1 nobox 1)
# ProcLine[2] stays at 887 (Used 1 nobox 1)
.c create rectangle 258 10654 342 10674 -fill white -width 0
.c create text 300 10664 -text "go to E "
.c create text 70 10688 -fill #eef -text "889"
.c create line 140 10688 300 10688 -fill #eef -dash {6 4}
.c create line 140 10632 140 10676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 883 to 889 (Used 1 nobox 1)
# ProcLine[1] stays at 889 (Used 1 nobox 1)
.c create rectangle 122 10678 158 10698 -fill white -width 0
.c create text 140 10688 -text "go!E"
.c create line 140 10698 220 10698 -fill darkred -tags mesg -width 2
.c create line 220 10698 300 10698 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10712 -fill #eef -text "891"
.c create line 140 10712 300 10712 -fill #eef -dash {6 4}
.c create line 300 10680 300 10700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 887 to 891 (Used 1 nobox 1)
# ProcLine[2] stays at 891 (Used 1 nobox 1)
.c create rectangle 282 10702 318 10722 -fill white -width 0
.c create text 300 10712 -text "go?E"
.c create text 70 10736 -fill #eef -text "893"
.c create line 140 10736 300 10736 -fill #eef -dash {6 4}
.c create line 300 10728 300 10724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 891 to 893 (Used 1 nobox 1)
# ProcLine[2] stays at 893 (Used 1 nobox 1)
.c create rectangle 258 10726 342 10746 -fill white -width 0
.c create text 300 10736 -text "go to E "
.c create text 70 10760 -fill #eef -text "895"
.c create line 140 10760 300 10760 -fill #eef -dash {6 4}
.c create line 140 10704 140 10748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 889 to 895 (Used 1 nobox 1)
# ProcLine[1] stays at 895 (Used 1 nobox 1)
.c create rectangle 122 10750 158 10770 -fill white -width 0
.c create text 140 10760 -text "go!W"
.c create line 140 10770 220 10770 -fill darkred -tags mesg -width 2
.c create line 220 10770 300 10770 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10784 -fill #eef -text "897"
.c create line 140 10784 300 10784 -fill #eef -dash {6 4}
.c create line 300 10752 300 10772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 893 to 897 (Used 1 nobox 1)
# ProcLine[2] stays at 897 (Used 1 nobox 1)
.c create rectangle 282 10774 318 10794 -fill white -width 0
.c create text 300 10784 -text "go?W"
.c create text 70 10808 -fill #eef -text "899"
.c create line 140 10808 300 10808 -fill #eef -dash {6 4}
.c create line 300 10800 300 10796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 897 to 899 (Used 1 nobox 1)
# ProcLine[2] stays at 899 (Used 1 nobox 1)
.c create rectangle 258 10798 342 10818 -fill white -width 0
.c create text 300 10808 -text "go to W "
.c create text 70 10832 -fill #eef -text "901"
.c create line 140 10832 300 10832 -fill #eef -dash {6 4}
.c create line 140 10776 140 10820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 895 to 901 (Used 1 nobox 1)
# ProcLine[1] stays at 901 (Used 1 nobox 1)
.c create rectangle 122 10822 158 10842 -fill white -width 0
.c create text 140 10832 -text "go!W"
.c create line 140 10842 220 10842 -fill darkred -tags mesg -width 2
.c create line 220 10842 300 10842 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10856 -fill #eef -text "903"
.c create line 140 10856 300 10856 -fill #eef -dash {6 4}
.c create line 300 10824 300 10844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 899 to 903 (Used 1 nobox 1)
# ProcLine[2] stays at 903 (Used 1 nobox 1)
.c create rectangle 282 10846 318 10866 -fill white -width 0
.c create text 300 10856 -text "go?W"
.c create text 70 10880 -fill #eef -text "905"
.c create line 140 10880 300 10880 -fill #eef -dash {6 4}
.c create line 300 10872 300 10868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 903 to 905 (Used 1 nobox 1)
# ProcLine[2] stays at 905 (Used 1 nobox 1)
.c create rectangle 258 10870 342 10890 -fill white -width 0
.c create text 300 10880 -text "go to W "
.c create text 70 10904 -fill #eef -text "907"
.c create line 140 10904 300 10904 -fill #eef -dash {6 4}
.c create line 140 10848 140 10892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 901 to 907 (Used 1 nobox 1)
# ProcLine[1] stays at 907 (Used 1 nobox 1)
.c create rectangle 122 10894 158 10914 -fill white -width 0
.c create text 140 10904 -text "go!S"
.c create line 140 10914 220 10914 -fill darkred -tags mesg -width 2
.c create line 220 10914 300 10914 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 10928 -fill #eef -text "909"
.c create line 140 10928 300 10928 -fill #eef -dash {6 4}
.c create line 300 10896 300 10916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 905 to 909 (Used 1 nobox 1)
# ProcLine[2] stays at 909 (Used 1 nobox 1)
.c create rectangle 282 10918 318 10938 -fill white -width 0
.c create text 300 10928 -text "go?S"
.c create text 70 10952 -fill #eef -text "911"
.c create line 140 10952 300 10952 -fill #eef -dash {6 4}
.c create line 300 10944 300 10940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 909 to 911 (Used 1 nobox 1)
# ProcLine[2] stays at 911 (Used 1 nobox 1)
.c create rectangle 258 10942 342 10962 -fill white -width 0
.c create text 300 10952 -text "go to S "
.c create text 70 10976 -fill #eef -text "913"
.c create line 140 10976 300 10976 -fill #eef -dash {6 4}
.c create line 140 10920 140 10964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 907 to 913 (Used 1 nobox 1)
# ProcLine[1] stays at 913 (Used 1 nobox 1)
.c create rectangle 122 10966 158 10986 -fill white -width 0
.c create text 140 10976 -text "go!S"
.c create line 140 10986 220 10986 -fill darkred -tags mesg -width 2
.c create line 220 10986 300 10986 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11000 -fill #eef -text "915"
.c create line 140 11000 300 11000 -fill #eef -dash {6 4}
.c create line 300 10968 300 10988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 911 to 915 (Used 1 nobox 1)
# ProcLine[2] stays at 915 (Used 1 nobox 1)
.c create rectangle 282 10990 318 11010 -fill white -width 0
.c create text 300 11000 -text "go?S"
.c create text 70 11024 -fill #eef -text "917"
.c create line 140 11024 300 11024 -fill #eef -dash {6 4}
.c create line 300 11016 300 11012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 915 to 917 (Used 1 nobox 1)
# ProcLine[2] stays at 917 (Used 1 nobox 1)
.c create rectangle 258 11014 342 11034 -fill white -width 0
.c create text 300 11024 -text "go to S "
.c create text 70 11048 -fill #eef -text "919"
.c create line 140 11048 300 11048 -fill #eef -dash {6 4}
.c create line 140 10992 140 11036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 913 to 919 (Used 1 nobox 1)
# ProcLine[1] stays at 919 (Used 1 nobox 1)
.c create rectangle 122 11038 158 11058 -fill white -width 0
.c create text 140 11048 -text "go!E"
.c create line 140 11058 220 11058 -fill darkred -tags mesg -width 2
.c create line 220 11058 300 11058 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11072 -fill #eef -text "921"
.c create line 140 11072 300 11072 -fill #eef -dash {6 4}
.c create line 300 11040 300 11060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 917 to 921 (Used 1 nobox 1)
# ProcLine[2] stays at 921 (Used 1 nobox 1)
.c create rectangle 282 11062 318 11082 -fill white -width 0
.c create text 300 11072 -text "go?E"
.c create text 70 11096 -fill #eef -text "923"
.c create line 140 11096 300 11096 -fill #eef -dash {6 4}
.c create line 300 11088 300 11084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 921 to 923 (Used 1 nobox 1)
# ProcLine[2] stays at 923 (Used 1 nobox 1)
.c create rectangle 258 11086 342 11106 -fill white -width 0
.c create text 300 11096 -text "go to E "
.c create text 70 11120 -fill #eef -text "925"
.c create line 140 11120 300 11120 -fill #eef -dash {6 4}
.c create line 140 11064 140 11108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 919 to 925 (Used 1 nobox 1)
# ProcLine[1] stays at 925 (Used 1 nobox 1)
.c create rectangle 122 11110 158 11130 -fill white -width 0
.c create text 140 11120 -text "go!W"
.c create line 140 11130 220 11130 -fill darkred -tags mesg -width 2
.c create line 220 11130 300 11130 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11144 -fill #eef -text "927"
.c create line 140 11144 300 11144 -fill #eef -dash {6 4}
.c create line 300 11112 300 11132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 923 to 927 (Used 1 nobox 1)
# ProcLine[2] stays at 927 (Used 1 nobox 1)
.c create rectangle 282 11134 318 11154 -fill white -width 0
.c create text 300 11144 -text "go?W"
.c create text 70 11168 -fill #eef -text "929"
.c create line 140 11168 300 11168 -fill #eef -dash {6 4}
.c create line 300 11160 300 11156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 927 to 929 (Used 1 nobox 1)
# ProcLine[2] stays at 929 (Used 1 nobox 1)
.c create rectangle 258 11158 342 11178 -fill white -width 0
.c create text 300 11168 -text "go to W "
.c create text 70 11192 -fill #eef -text "931"
.c create line 140 11192 300 11192 -fill #eef -dash {6 4}
.c create line 140 11136 140 11180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 925 to 931 (Used 1 nobox 1)
# ProcLine[1] stays at 931 (Used 1 nobox 1)
.c create rectangle 122 11182 158 11202 -fill white -width 0
.c create text 140 11192 -text "go!N"
.c create line 140 11202 220 11202 -fill darkred -tags mesg -width 2
.c create line 220 11202 300 11202 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11216 -fill #eef -text "933"
.c create line 140 11216 300 11216 -fill #eef -dash {6 4}
.c create line 300 11184 300 11204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 929 to 933 (Used 1 nobox 1)
# ProcLine[2] stays at 933 (Used 1 nobox 1)
.c create rectangle 282 11206 318 11226 -fill white -width 0
.c create text 300 11216 -text "go?N"
.c create text 70 11240 -fill #eef -text "935"
.c create line 140 11240 300 11240 -fill #eef -dash {6 4}
.c create line 300 11232 300 11228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 933 to 935 (Used 1 nobox 1)
# ProcLine[2] stays at 935 (Used 1 nobox 1)
.c create rectangle 258 11230 342 11250 -fill white -width 0
.c create text 300 11240 -text "go to N "
.c create text 70 11264 -fill #eef -text "937"
.c create line 140 11264 300 11264 -fill #eef -dash {6 4}
.c create line 140 11208 140 11252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 931 to 937 (Used 1 nobox 1)
# ProcLine[1] stays at 937 (Used 1 nobox 1)
.c create rectangle 122 11254 158 11274 -fill white -width 0
.c create text 140 11264 -text "go!N"
.c create line 140 11274 220 11274 -fill darkred -tags mesg -width 2
.c create line 220 11274 300 11274 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11288 -fill #eef -text "939"
.c create line 140 11288 300 11288 -fill #eef -dash {6 4}
.c create line 300 11256 300 11276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 935 to 939 (Used 1 nobox 1)
# ProcLine[2] stays at 939 (Used 1 nobox 1)
.c create rectangle 282 11278 318 11298 -fill white -width 0
.c create text 300 11288 -text "go?N"
.c create text 70 11312 -fill #eef -text "941"
.c create line 140 11312 300 11312 -fill #eef -dash {6 4}
.c create line 300 11304 300 11300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 939 to 941 (Used 1 nobox 1)
# ProcLine[2] stays at 941 (Used 1 nobox 1)
.c create rectangle 258 11302 342 11322 -fill white -width 0
.c create text 300 11312 -text "go to N "
.c create text 70 11336 -fill #eef -text "943"
.c create line 140 11336 300 11336 -fill #eef -dash {6 4}
.c create line 140 11280 140 11324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 937 to 943 (Used 1 nobox 1)
# ProcLine[1] stays at 943 (Used 1 nobox 1)
.c create rectangle 122 11326 158 11346 -fill white -width 0
.c create text 140 11336 -text "go!E"
.c create line 140 11346 220 11346 -fill darkred -tags mesg -width 2
.c create line 220 11346 300 11346 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11360 -fill #eef -text "945"
.c create line 140 11360 300 11360 -fill #eef -dash {6 4}
.c create line 300 11328 300 11348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 941 to 945 (Used 1 nobox 1)
# ProcLine[2] stays at 945 (Used 1 nobox 1)
.c create rectangle 282 11350 318 11370 -fill white -width 0
.c create text 300 11360 -text "go?E"
.c create text 70 11384 -fill #eef -text "947"
.c create line 140 11384 300 11384 -fill #eef -dash {6 4}
.c create line 300 11376 300 11372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 945 to 947 (Used 1 nobox 1)
# ProcLine[2] stays at 947 (Used 1 nobox 1)
.c create rectangle 258 11374 342 11394 -fill white -width 0
.c create text 300 11384 -text "go to E "
.c create text 70 11408 -fill #eef -text "949"
.c create line 140 11408 300 11408 -fill #eef -dash {6 4}
.c create line 140 11352 140 11396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 943 to 949 (Used 1 nobox 1)
# ProcLine[1] stays at 949 (Used 1 nobox 1)
.c create rectangle 122 11398 158 11418 -fill white -width 0
.c create text 140 11408 -text "go!W"
.c create line 140 11418 220 11418 -fill darkred -tags mesg -width 2
.c create line 220 11418 300 11418 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11432 -fill #eef -text "951"
.c create line 140 11432 300 11432 -fill #eef -dash {6 4}
.c create line 300 11400 300 11420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 947 to 951 (Used 1 nobox 1)
# ProcLine[2] stays at 951 (Used 1 nobox 1)
.c create rectangle 282 11422 318 11442 -fill white -width 0
.c create text 300 11432 -text "go?W"
.c create text 70 11456 -fill #eef -text "953"
.c create line 140 11456 300 11456 -fill #eef -dash {6 4}
.c create line 300 11448 300 11444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 951 to 953 (Used 1 nobox 1)
# ProcLine[2] stays at 953 (Used 1 nobox 1)
.c create rectangle 258 11446 342 11466 -fill white -width 0
.c create text 300 11456 -text "go to W "
.c create text 70 11480 -fill #eef -text "955"
.c create line 140 11480 300 11480 -fill #eef -dash {6 4}
.c create line 140 11424 140 11468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 949 to 955 (Used 1 nobox 1)
# ProcLine[1] stays at 955 (Used 1 nobox 1)
.c create rectangle 122 11470 158 11490 -fill white -width 0
.c create text 140 11480 -text "go!S"
.c create line 140 11490 220 11490 -fill darkred -tags mesg -width 2
.c create line 220 11490 300 11490 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11504 -fill #eef -text "957"
.c create line 140 11504 300 11504 -fill #eef -dash {6 4}
.c create line 300 11472 300 11492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 953 to 957 (Used 1 nobox 1)
# ProcLine[2] stays at 957 (Used 1 nobox 1)
.c create rectangle 282 11494 318 11514 -fill white -width 0
.c create text 300 11504 -text "go?S"
.c create text 70 11528 -fill #eef -text "959"
.c create line 140 11528 300 11528 -fill #eef -dash {6 4}
.c create line 300 11520 300 11516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 957 to 959 (Used 1 nobox 1)
# ProcLine[2] stays at 959 (Used 1 nobox 1)
.c create rectangle 258 11518 342 11538 -fill white -width 0
.c create text 300 11528 -text "go to S "
.c create text 70 11552 -fill #eef -text "961"
.c create line 140 11552 300 11552 -fill #eef -dash {6 4}
.c create line 140 11496 140 11540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 955 to 961 (Used 1 nobox 1)
# ProcLine[1] stays at 961 (Used 1 nobox 1)
.c create rectangle 122 11542 158 11562 -fill white -width 0
.c create text 140 11552 -text "go!S"
.c create line 140 11562 220 11562 -fill darkred -tags mesg -width 2
.c create line 220 11562 300 11562 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11576 -fill #eef -text "963"
.c create line 140 11576 300 11576 -fill #eef -dash {6 4}
.c create line 300 11544 300 11564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 959 to 963 (Used 1 nobox 1)
# ProcLine[2] stays at 963 (Used 1 nobox 1)
.c create rectangle 282 11566 318 11586 -fill white -width 0
.c create text 300 11576 -text "go?S"
.c create text 70 11600 -fill #eef -text "965"
.c create line 140 11600 300 11600 -fill #eef -dash {6 4}
.c create line 300 11592 300 11588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 963 to 965 (Used 1 nobox 1)
# ProcLine[2] stays at 965 (Used 1 nobox 1)
.c create rectangle 258 11590 342 11610 -fill white -width 0
.c create text 300 11600 -text "go to S "
.c create text 70 11624 -fill #eef -text "967"
.c create line 140 11624 300 11624 -fill #eef -dash {6 4}
.c create line 140 11568 140 11612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 961 to 967 (Used 1 nobox 1)
# ProcLine[1] stays at 967 (Used 1 nobox 1)
.c create rectangle 122 11614 158 11634 -fill white -width 0
.c create text 140 11624 -text "go!E"
.c create line 140 11634 220 11634 -fill darkred -tags mesg -width 2
.c create line 220 11634 300 11634 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11648 -fill #eef -text "969"
.c create line 140 11648 300 11648 -fill #eef -dash {6 4}
.c create line 300 11616 300 11636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 965 to 969 (Used 1 nobox 1)
# ProcLine[2] stays at 969 (Used 1 nobox 1)
.c create rectangle 282 11638 318 11658 -fill white -width 0
.c create text 300 11648 -text "go?E"
.c create text 70 11672 -fill #eef -text "971"
.c create line 140 11672 300 11672 -fill #eef -dash {6 4}
.c create line 300 11664 300 11660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 969 to 971 (Used 1 nobox 1)
# ProcLine[2] stays at 971 (Used 1 nobox 1)
.c create rectangle 258 11662 342 11682 -fill white -width 0
.c create text 300 11672 -text "go to E "
.c create text 70 11696 -fill #eef -text "973"
.c create line 140 11696 300 11696 -fill #eef -dash {6 4}
.c create line 140 11640 140 11684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 967 to 973 (Used 1 nobox 1)
# ProcLine[1] stays at 973 (Used 1 nobox 1)
.c create rectangle 122 11686 158 11706 -fill white -width 0
.c create text 140 11696 -text "go!E"
.c create line 140 11706 220 11706 -fill darkred -tags mesg -width 2
.c create line 220 11706 300 11706 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11720 -fill #eef -text "975"
.c create line 140 11720 300 11720 -fill #eef -dash {6 4}
.c create line 300 11688 300 11708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 971 to 975 (Used 1 nobox 1)
# ProcLine[2] stays at 975 (Used 1 nobox 1)
.c create rectangle 282 11710 318 11730 -fill white -width 0
.c create text 300 11720 -text "go?E"
.c create text 70 11744 -fill #eef -text "977"
.c create line 140 11744 300 11744 -fill #eef -dash {6 4}
.c create line 300 11736 300 11732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 975 to 977 (Used 1 nobox 1)
# ProcLine[2] stays at 977 (Used 1 nobox 1)
.c create rectangle 258 11734 342 11754 -fill white -width 0
.c create text 300 11744 -text "go to E "
.c create text 70 11768 -fill #eef -text "979"
.c create line 140 11768 300 11768 -fill #eef -dash {6 4}
.c create line 140 11712 140 11756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 973 to 979 (Used 1 nobox 1)
# ProcLine[1] stays at 979 (Used 1 nobox 1)
.c create rectangle 122 11758 158 11778 -fill white -width 0
.c create text 140 11768 -text "go!W"
.c create line 140 11778 220 11778 -fill darkred -tags mesg -width 2
.c create line 220 11778 300 11778 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11792 -fill #eef -text "981"
.c create line 140 11792 300 11792 -fill #eef -dash {6 4}
.c create line 300 11760 300 11780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 977 to 981 (Used 1 nobox 1)
# ProcLine[2] stays at 981 (Used 1 nobox 1)
.c create rectangle 282 11782 318 11802 -fill white -width 0
.c create text 300 11792 -text "go?W"
.c create text 70 11816 -fill #eef -text "983"
.c create line 140 11816 300 11816 -fill #eef -dash {6 4}
.c create line 300 11808 300 11804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 981 to 983 (Used 1 nobox 1)
# ProcLine[2] stays at 983 (Used 1 nobox 1)
.c create rectangle 258 11806 342 11826 -fill white -width 0
.c create text 300 11816 -text "go to W "
.c create text 70 11840 -fill #eef -text "985"
.c create line 140 11840 300 11840 -fill #eef -dash {6 4}
.c create line 140 11784 140 11828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 979 to 985 (Used 1 nobox 1)
# ProcLine[1] stays at 985 (Used 1 nobox 1)
.c create rectangle 122 11830 158 11850 -fill white -width 0
.c create text 140 11840 -text "go!E"
.c create line 140 11850 220 11850 -fill darkred -tags mesg -width 2
.c create line 220 11850 300 11850 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11864 -fill #eef -text "987"
.c create line 140 11864 300 11864 -fill #eef -dash {6 4}
.c create line 300 11832 300 11852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 983 to 987 (Used 1 nobox 1)
# ProcLine[2] stays at 987 (Used 1 nobox 1)
.c create rectangle 282 11854 318 11874 -fill white -width 0
.c create text 300 11864 -text "go?E"
.c create text 70 11888 -fill #eef -text "989"
.c create line 140 11888 300 11888 -fill #eef -dash {6 4}
.c create line 300 11880 300 11876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 987 to 989 (Used 1 nobox 1)
# ProcLine[2] stays at 989 (Used 1 nobox 1)
.c create rectangle 258 11878 342 11898 -fill white -width 0
.c create text 300 11888 -text "go to E "
.c create text 70 11912 -fill #eef -text "991"
.c create line 140 11912 300 11912 -fill #eef -dash {6 4}
.c create line 140 11856 140 11900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 985 to 991 (Used 1 nobox 1)
# ProcLine[1] stays at 991 (Used 1 nobox 1)
.c create rectangle 122 11902 158 11922 -fill white -width 0
.c create text 140 11912 -text "go!W"
.c create line 140 11922 220 11922 -fill darkred -tags mesg -width 2
.c create line 220 11922 300 11922 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 11936 -fill #eef -text "993"
.c create line 140 11936 300 11936 -fill #eef -dash {6 4}
.c create line 300 11904 300 11924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 989 to 993 (Used 1 nobox 1)
# ProcLine[2] stays at 993 (Used 1 nobox 1)
.c create rectangle 282 11926 318 11946 -fill white -width 0
.c create text 300 11936 -text "go?W"
.c create text 70 11960 -fill #eef -text "995"
.c create line 140 11960 300 11960 -fill #eef -dash {6 4}
.c create line 300 11952 300 11948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 993 to 995 (Used 1 nobox 1)
# ProcLine[2] stays at 995 (Used 1 nobox 1)
.c create rectangle 258 11950 342 11970 -fill white -width 0
.c create text 300 11960 -text "go to W "
.c create text 70 11984 -fill #eef -text "997"
.c create line 140 11984 300 11984 -fill #eef -dash {6 4}
.c create line 140 11928 140 11972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 991 to 997 (Used 1 nobox 1)
# ProcLine[1] stays at 997 (Used 1 nobox 1)
.c create rectangle 122 11974 158 11994 -fill white -width 0
.c create text 140 11984 -text "go!W"
.c create line 140 11994 220 11994 -fill darkred -tags mesg -width 2
.c create line 220 11994 300 11994 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12008 -fill #eef -text "999"
.c create line 140 12008 300 12008 -fill #eef -dash {6 4}
.c create line 300 11976 300 11996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 995 to 999 (Used 1 nobox 1)
# ProcLine[2] stays at 999 (Used 1 nobox 1)
.c create rectangle 282 11998 318 12018 -fill white -width 0
.c create text 300 12008 -text "go?W"
.c create text 70 12032 -fill #eef -text "1001"
.c create line 140 12032 300 12032 -fill #eef -dash {6 4}
.c create line 300 12024 300 12020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 999 to 1001 (Used 1 nobox 1)
# ProcLine[2] stays at 1001 (Used 1 nobox 1)
.c create rectangle 258 12022 342 12042 -fill white -width 0
.c create text 300 12032 -text "go to W "
.c create text 70 12056 -fill #eef -text "1003"
.c create line 140 12056 300 12056 -fill #eef -dash {6 4}
.c create line 140 12000 140 12044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 997 to 1003 (Used 1 nobox 1)
# ProcLine[1] stays at 1003 (Used 1 nobox 1)
.c create rectangle 122 12046 158 12066 -fill white -width 0
.c create text 140 12056 -text "go!E"
.c create line 140 12066 220 12066 -fill darkred -tags mesg -width 2
.c create line 220 12066 300 12066 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12080 -fill #eef -text "1005"
.c create line 140 12080 300 12080 -fill #eef -dash {6 4}
.c create line 300 12048 300 12068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1001 to 1005 (Used 1 nobox 1)
# ProcLine[2] stays at 1005 (Used 1 nobox 1)
.c create rectangle 282 12070 318 12090 -fill white -width 0
.c create text 300 12080 -text "go?E"
.c create text 70 12104 -fill #eef -text "1007"
.c create line 140 12104 300 12104 -fill #eef -dash {6 4}
.c create line 300 12096 300 12092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1005 to 1007 (Used 1 nobox 1)
# ProcLine[2] stays at 1007 (Used 1 nobox 1)
.c create rectangle 258 12094 342 12114 -fill white -width 0
.c create text 300 12104 -text "go to E "
.c create text 70 12128 -fill #eef -text "1009"
.c create line 140 12128 300 12128 -fill #eef -dash {6 4}
.c create line 140 12072 140 12116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1003 to 1009 (Used 1 nobox 1)
# ProcLine[1] stays at 1009 (Used 1 nobox 1)
.c create rectangle 122 12118 158 12138 -fill white -width 0
.c create text 140 12128 -text "go!E"
.c create line 140 12138 220 12138 -fill darkred -tags mesg -width 2
.c create line 220 12138 300 12138 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12152 -fill #eef -text "1011"
.c create line 140 12152 300 12152 -fill #eef -dash {6 4}
.c create line 300 12120 300 12140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1007 to 1011 (Used 1 nobox 1)
# ProcLine[2] stays at 1011 (Used 1 nobox 1)
.c create rectangle 282 12142 318 12162 -fill white -width 0
.c create text 300 12152 -text "go?E"
.c create text 70 12176 -fill #eef -text "1013"
.c create line 140 12176 300 12176 -fill #eef -dash {6 4}
.c create line 300 12168 300 12164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1011 to 1013 (Used 1 nobox 1)
# ProcLine[2] stays at 1013 (Used 1 nobox 1)
.c create rectangle 258 12166 342 12186 -fill white -width 0
.c create text 300 12176 -text "go to E "
.c create text 70 12200 -fill #eef -text "1015"
.c create line 140 12200 300 12200 -fill #eef -dash {6 4}
.c create line 140 12144 140 12188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1009 to 1015 (Used 1 nobox 1)
# ProcLine[1] stays at 1015 (Used 1 nobox 1)
.c create rectangle 122 12190 158 12210 -fill white -width 0
.c create text 140 12200 -text "go!E"
.c create line 140 12210 220 12210 -fill darkred -tags mesg -width 2
.c create line 220 12210 300 12210 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12224 -fill #eef -text "1017"
.c create line 140 12224 300 12224 -fill #eef -dash {6 4}
.c create line 300 12192 300 12212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1013 to 1017 (Used 1 nobox 1)
# ProcLine[2] stays at 1017 (Used 1 nobox 1)
.c create rectangle 282 12214 318 12234 -fill white -width 0
.c create text 300 12224 -text "go?E"
.c create text 70 12248 -fill #eef -text "1019"
.c create line 140 12248 300 12248 -fill #eef -dash {6 4}
.c create line 300 12240 300 12236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1017 to 1019 (Used 1 nobox 1)
# ProcLine[2] stays at 1019 (Used 1 nobox 1)
.c create rectangle 258 12238 342 12258 -fill white -width 0
.c create text 300 12248 -text "go to E "
.c create text 70 12272 -fill #eef -text "1021"
.c create line 140 12272 300 12272 -fill #eef -dash {6 4}
.c create line 140 12216 140 12260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1015 to 1021 (Used 1 nobox 1)
# ProcLine[1] stays at 1021 (Used 1 nobox 1)
.c create rectangle 122 12262 158 12282 -fill white -width 0
.c create text 140 12272 -text "go!S"
.c create line 140 12282 220 12282 -fill darkred -tags mesg -width 2
.c create line 220 12282 300 12282 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12296 -fill #eef -text "1023"
.c create line 140 12296 300 12296 -fill #eef -dash {6 4}
.c create line 300 12264 300 12284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1019 to 1023 (Used 1 nobox 1)
# ProcLine[2] stays at 1023 (Used 1 nobox 1)
.c create rectangle 282 12286 318 12306 -fill white -width 0
.c create text 300 12296 -text "go?S"
.c create text 70 12320 -fill #eef -text "1025"
.c create line 140 12320 300 12320 -fill #eef -dash {6 4}
.c create line 300 12312 300 12308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1023 to 1025 (Used 1 nobox 1)
# ProcLine[2] stays at 1025 (Used 1 nobox 1)
.c create rectangle 258 12310 342 12330 -fill white -width 0
.c create text 300 12320 -text "go to S "
.c create text 70 12344 -fill #eef -text "1027"
.c create line 140 12344 300 12344 -fill #eef -dash {6 4}
.c create line 140 12288 140 12332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1021 to 1027 (Used 1 nobox 1)
# ProcLine[1] stays at 1027 (Used 1 nobox 1)
.c create rectangle 122 12334 158 12354 -fill white -width 0
.c create text 140 12344 -text "go!N"
.c create line 140 12354 220 12354 -fill darkred -tags mesg -width 2
.c create line 220 12354 300 12354 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12368 -fill #eef -text "1029"
.c create line 140 12368 300 12368 -fill #eef -dash {6 4}
.c create line 300 12336 300 12356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1025 to 1029 (Used 1 nobox 1)
# ProcLine[2] stays at 1029 (Used 1 nobox 1)
.c create rectangle 282 12358 318 12378 -fill white -width 0
.c create text 300 12368 -text "go?N"
.c create text 70 12392 -fill #eef -text "1031"
.c create line 140 12392 300 12392 -fill #eef -dash {6 4}
.c create line 300 12384 300 12380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1029 to 1031 (Used 1 nobox 1)
# ProcLine[2] stays at 1031 (Used 1 nobox 1)
.c create rectangle 258 12382 342 12402 -fill white -width 0
.c create text 300 12392 -text "go to N "
.c create text 70 12416 -fill #eef -text "1033"
.c create line 140 12416 300 12416 -fill #eef -dash {6 4}
.c create line 140 12360 140 12404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1027 to 1033 (Used 1 nobox 1)
# ProcLine[1] stays at 1033 (Used 1 nobox 1)
.c create rectangle 122 12406 158 12426 -fill white -width 0
.c create text 140 12416 -text "go!W"
.c create line 140 12426 220 12426 -fill darkred -tags mesg -width 2
.c create line 220 12426 300 12426 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12440 -fill #eef -text "1035"
.c create line 140 12440 300 12440 -fill #eef -dash {6 4}
.c create line 300 12408 300 12428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1031 to 1035 (Used 1 nobox 1)
# ProcLine[2] stays at 1035 (Used 1 nobox 1)
.c create rectangle 282 12430 318 12450 -fill white -width 0
.c create text 300 12440 -text "go?W"
.c create text 70 12464 -fill #eef -text "1037"
.c create line 140 12464 300 12464 -fill #eef -dash {6 4}
.c create line 300 12456 300 12452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1035 to 1037 (Used 1 nobox 1)
# ProcLine[2] stays at 1037 (Used 1 nobox 1)
.c create rectangle 258 12454 342 12474 -fill white -width 0
.c create text 300 12464 -text "go to W "
.c create text 70 12488 -fill #eef -text "1039"
.c create line 140 12488 300 12488 -fill #eef -dash {6 4}
.c create line 140 12432 140 12476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1033 to 1039 (Used 1 nobox 1)
# ProcLine[1] stays at 1039 (Used 1 nobox 1)
.c create rectangle 122 12478 158 12498 -fill white -width 0
.c create text 140 12488 -text "go!E"
.c create line 140 12498 220 12498 -fill darkred -tags mesg -width 2
.c create line 220 12498 300 12498 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12512 -fill #eef -text "1041"
.c create line 140 12512 300 12512 -fill #eef -dash {6 4}
.c create line 300 12480 300 12500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1037 to 1041 (Used 1 nobox 1)
# ProcLine[2] stays at 1041 (Used 1 nobox 1)
.c create rectangle 282 12502 318 12522 -fill white -width 0
.c create text 300 12512 -text "go?E"
.c create text 70 12536 -fill #eef -text "1043"
.c create line 140 12536 300 12536 -fill #eef -dash {6 4}
.c create line 300 12528 300 12524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1041 to 1043 (Used 1 nobox 1)
# ProcLine[2] stays at 1043 (Used 1 nobox 1)
.c create rectangle 258 12526 342 12546 -fill white -width 0
.c create text 300 12536 -text "go to E "
.c create text 70 12560 -fill #eef -text "1045"
.c create line 140 12560 300 12560 -fill #eef -dash {6 4}
.c create line 140 12504 140 12548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1039 to 1045 (Used 1 nobox 1)
# ProcLine[1] stays at 1045 (Used 1 nobox 1)
.c create rectangle 122 12550 158 12570 -fill white -width 0
.c create text 140 12560 -text "go!S"
.c create line 140 12570 220 12570 -fill darkred -tags mesg -width 2
.c create line 220 12570 300 12570 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12584 -fill #eef -text "1047"
.c create line 140 12584 300 12584 -fill #eef -dash {6 4}
.c create line 300 12552 300 12572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1043 to 1047 (Used 1 nobox 1)
# ProcLine[2] stays at 1047 (Used 1 nobox 1)
.c create rectangle 282 12574 318 12594 -fill white -width 0
.c create text 300 12584 -text "go?S"
.c create text 70 12608 -fill #eef -text "1049"
.c create line 140 12608 300 12608 -fill #eef -dash {6 4}
.c create line 300 12600 300 12596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1047 to 1049 (Used 1 nobox 1)
# ProcLine[2] stays at 1049 (Used 1 nobox 1)
.c create rectangle 258 12598 342 12618 -fill white -width 0
.c create text 300 12608 -text "go to S "
.c create text 70 12632 -fill #eef -text "1051"
.c create line 140 12632 300 12632 -fill #eef -dash {6 4}
.c create line 140 12576 140 12620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1045 to 1051 (Used 1 nobox 1)
# ProcLine[1] stays at 1051 (Used 1 nobox 1)
.c create rectangle 122 12622 158 12642 -fill white -width 0
.c create text 140 12632 -text "go!N"
.c create line 140 12642 220 12642 -fill darkred -tags mesg -width 2
.c create line 220 12642 300 12642 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12656 -fill #eef -text "1053"
.c create line 140 12656 300 12656 -fill #eef -dash {6 4}
.c create line 300 12624 300 12644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1049 to 1053 (Used 1 nobox 1)
# ProcLine[2] stays at 1053 (Used 1 nobox 1)
.c create rectangle 282 12646 318 12666 -fill white -width 0
.c create text 300 12656 -text "go?N"
.c create text 70 12680 -fill #eef -text "1055"
.c create line 140 12680 300 12680 -fill #eef -dash {6 4}
.c create line 300 12672 300 12668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1053 to 1055 (Used 1 nobox 1)
# ProcLine[2] stays at 1055 (Used 1 nobox 1)
.c create rectangle 258 12670 342 12690 -fill white -width 0
.c create text 300 12680 -text "go to N "
.c create text 70 12704 -fill #eef -text "1057"
.c create line 140 12704 300 12704 -fill #eef -dash {6 4}
.c create line 140 12648 140 12692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1051 to 1057 (Used 1 nobox 1)
# ProcLine[1] stays at 1057 (Used 1 nobox 1)
.c create rectangle 122 12694 158 12714 -fill white -width 0
.c create text 140 12704 -text "go!W"
.c create line 140 12714 220 12714 -fill darkred -tags mesg -width 2
.c create line 220 12714 300 12714 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12728 -fill #eef -text "1059"
.c create line 140 12728 300 12728 -fill #eef -dash {6 4}
.c create line 300 12696 300 12716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1055 to 1059 (Used 1 nobox 1)
# ProcLine[2] stays at 1059 (Used 1 nobox 1)
.c create rectangle 282 12718 318 12738 -fill white -width 0
.c create text 300 12728 -text "go?W"
.c create text 70 12752 -fill #eef -text "1061"
.c create line 140 12752 300 12752 -fill #eef -dash {6 4}
.c create line 300 12744 300 12740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1059 to 1061 (Used 1 nobox 1)
# ProcLine[2] stays at 1061 (Used 1 nobox 1)
.c create rectangle 258 12742 342 12762 -fill white -width 0
.c create text 300 12752 -text "go to W "
.c create text 70 12776 -fill #eef -text "1063"
.c create line 140 12776 300 12776 -fill #eef -dash {6 4}
.c create line 140 12720 140 12764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1057 to 1063 (Used 1 nobox 1)
# ProcLine[1] stays at 1063 (Used 1 nobox 1)
.c create rectangle 122 12766 158 12786 -fill white -width 0
.c create text 140 12776 -text "go!W"
.c create line 140 12786 220 12786 -fill darkred -tags mesg -width 2
.c create line 220 12786 300 12786 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12800 -fill #eef -text "1065"
.c create line 140 12800 300 12800 -fill #eef -dash {6 4}
.c create line 300 12768 300 12788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1061 to 1065 (Used 1 nobox 1)
# ProcLine[2] stays at 1065 (Used 1 nobox 1)
.c create rectangle 282 12790 318 12810 -fill white -width 0
.c create text 300 12800 -text "go?W"
.c create text 70 12824 -fill #eef -text "1067"
.c create line 140 12824 300 12824 -fill #eef -dash {6 4}
.c create line 300 12816 300 12812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1065 to 1067 (Used 1 nobox 1)
# ProcLine[2] stays at 1067 (Used 1 nobox 1)
.c create rectangle 258 12814 342 12834 -fill white -width 0
.c create text 300 12824 -text "go to W "
.c create text 70 12848 -fill #eef -text "1069"
.c create line 140 12848 300 12848 -fill #eef -dash {6 4}
.c create line 140 12792 140 12836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1063 to 1069 (Used 1 nobox 1)
# ProcLine[1] stays at 1069 (Used 1 nobox 1)
.c create rectangle 122 12838 158 12858 -fill white -width 0
.c create text 140 12848 -text "go!W"
.c create line 140 12858 220 12858 -fill darkred -tags mesg -width 2
.c create line 220 12858 300 12858 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12872 -fill #eef -text "1071"
.c create line 140 12872 300 12872 -fill #eef -dash {6 4}
.c create line 300 12840 300 12860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1067 to 1071 (Used 1 nobox 1)
# ProcLine[2] stays at 1071 (Used 1 nobox 1)
.c create rectangle 282 12862 318 12882 -fill white -width 0
.c create text 300 12872 -text "go?W"
.c create text 70 12896 -fill #eef -text "1073"
.c create line 140 12896 300 12896 -fill #eef -dash {6 4}
.c create line 300 12888 300 12884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1071 to 1073 (Used 1 nobox 1)
# ProcLine[2] stays at 1073 (Used 1 nobox 1)
.c create rectangle 258 12886 342 12906 -fill white -width 0
.c create text 300 12896 -text "go to W "
.c create text 70 12920 -fill #eef -text "1075"
.c create line 140 12920 300 12920 -fill #eef -dash {6 4}
.c create line 140 12864 140 12908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1069 to 1075 (Used 1 nobox 1)
# ProcLine[1] stays at 1075 (Used 1 nobox 1)
.c create rectangle 122 12910 158 12930 -fill white -width 0
.c create text 140 12920 -text "go!E"
.c create line 140 12930 220 12930 -fill darkred -tags mesg -width 2
.c create line 220 12930 300 12930 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 12944 -fill #eef -text "1077"
.c create line 140 12944 300 12944 -fill #eef -dash {6 4}
.c create line 300 12912 300 12932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1073 to 1077 (Used 1 nobox 1)
# ProcLine[2] stays at 1077 (Used 1 nobox 1)
.c create rectangle 282 12934 318 12954 -fill white -width 0
.c create text 300 12944 -text "go?E"
.c create text 70 12968 -fill #eef -text "1079"
.c create line 140 12968 300 12968 -fill #eef -dash {6 4}
.c create line 300 12960 300 12956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1077 to 1079 (Used 1 nobox 1)
# ProcLine[2] stays at 1079 (Used 1 nobox 1)
.c create rectangle 258 12958 342 12978 -fill white -width 0
.c create text 300 12968 -text "go to E "
.c create text 70 12992 -fill #eef -text "1081"
.c create line 140 12992 300 12992 -fill #eef -dash {6 4}
.c create line 140 12936 140 12980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1075 to 1081 (Used 1 nobox 1)
# ProcLine[1] stays at 1081 (Used 1 nobox 1)
.c create rectangle 122 12982 158 13002 -fill white -width 0
.c create text 140 12992 -text "go!E"
.c create line 140 13002 220 13002 -fill darkred -tags mesg -width 2
.c create line 220 13002 300 13002 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13016 -fill #eef -text "1083"
.c create line 140 13016 300 13016 -fill #eef -dash {6 4}
.c create line 300 12984 300 13004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1079 to 1083 (Used 1 nobox 1)
# ProcLine[2] stays at 1083 (Used 1 nobox 1)
.c create rectangle 282 13006 318 13026 -fill white -width 0
.c create text 300 13016 -text "go?E"
.c create text 70 13040 -fill #eef -text "1085"
.c create line 140 13040 300 13040 -fill #eef -dash {6 4}
.c create line 300 13032 300 13028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1083 to 1085 (Used 1 nobox 1)
# ProcLine[2] stays at 1085 (Used 1 nobox 1)
.c create rectangle 258 13030 342 13050 -fill white -width 0
.c create text 300 13040 -text "go to E "
.c create text 70 13064 -fill #eef -text "1087"
.c create line 140 13064 300 13064 -fill #eef -dash {6 4}
.c create line 140 13008 140 13052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1081 to 1087 (Used 1 nobox 1)
# ProcLine[1] stays at 1087 (Used 1 nobox 1)
.c create rectangle 122 13054 158 13074 -fill white -width 0
.c create text 140 13064 -text "go!E"
.c create line 140 13074 220 13074 -fill darkred -tags mesg -width 2
.c create line 220 13074 300 13074 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13088 -fill #eef -text "1089"
.c create line 140 13088 300 13088 -fill #eef -dash {6 4}
.c create line 300 13056 300 13076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1085 to 1089 (Used 1 nobox 1)
# ProcLine[2] stays at 1089 (Used 1 nobox 1)
.c create rectangle 282 13078 318 13098 -fill white -width 0
.c create text 300 13088 -text "go?E"
.c create text 70 13112 -fill #eef -text "1091"
.c create line 140 13112 300 13112 -fill #eef -dash {6 4}
.c create line 300 13104 300 13100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1089 to 1091 (Used 1 nobox 1)
# ProcLine[2] stays at 1091 (Used 1 nobox 1)
.c create rectangle 258 13102 342 13122 -fill white -width 0
.c create text 300 13112 -text "go to E "
.c create text 70 13136 -fill #eef -text "1093"
.c create line 140 13136 300 13136 -fill #eef -dash {6 4}
.c create line 140 13080 140 13124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1087 to 1093 (Used 1 nobox 1)
# ProcLine[1] stays at 1093 (Used 1 nobox 1)
.c create rectangle 122 13126 158 13146 -fill white -width 0
.c create text 140 13136 -text "go!N"
.c create line 140 13146 220 13146 -fill darkred -tags mesg -width 2
.c create line 220 13146 300 13146 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13160 -fill #eef -text "1095"
.c create line 140 13160 300 13160 -fill #eef -dash {6 4}
.c create line 300 13128 300 13148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1091 to 1095 (Used 1 nobox 1)
# ProcLine[2] stays at 1095 (Used 1 nobox 1)
.c create rectangle 282 13150 318 13170 -fill white -width 0
.c create text 300 13160 -text "go?N"
.c create text 70 13184 -fill #eef -text "1097"
.c create line 140 13184 300 13184 -fill #eef -dash {6 4}
.c create line 300 13176 300 13172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1095 to 1097 (Used 1 nobox 1)
# ProcLine[2] stays at 1097 (Used 1 nobox 1)
.c create rectangle 258 13174 342 13194 -fill white -width 0
.c create text 300 13184 -text "go to N "
.c create text 70 13208 -fill #eef -text "1099"
.c create line 140 13208 300 13208 -fill #eef -dash {6 4}
.c create line 140 13152 140 13196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1093 to 1099 (Used 1 nobox 1)
# ProcLine[1] stays at 1099 (Used 1 nobox 1)
.c create rectangle 122 13198 158 13218 -fill white -width 0
.c create text 140 13208 -text "go!S"
.c create line 140 13218 220 13218 -fill darkred -tags mesg -width 2
.c create line 220 13218 300 13218 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13232 -fill #eef -text "1101"
.c create line 140 13232 300 13232 -fill #eef -dash {6 4}
.c create line 300 13200 300 13220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1097 to 1101 (Used 1 nobox 1)
# ProcLine[2] stays at 1101 (Used 1 nobox 1)
.c create rectangle 282 13222 318 13242 -fill white -width 0
.c create text 300 13232 -text "go?S"
.c create text 70 13256 -fill #eef -text "1103"
.c create line 140 13256 300 13256 -fill #eef -dash {6 4}
.c create line 300 13248 300 13244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1101 to 1103 (Used 1 nobox 1)
# ProcLine[2] stays at 1103 (Used 1 nobox 1)
.c create rectangle 258 13246 342 13266 -fill white -width 0
.c create text 300 13256 -text "go to S "
.c create text 70 13280 -fill #eef -text "1105"
.c create line 140 13280 300 13280 -fill #eef -dash {6 4}
.c create line 140 13224 140 13268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1099 to 1105 (Used 1 nobox 1)
# ProcLine[1] stays at 1105 (Used 1 nobox 1)
.c create rectangle 122 13270 158 13290 -fill white -width 0
.c create text 140 13280 -text "go!S"
.c create line 140 13290 220 13290 -fill darkred -tags mesg -width 2
.c create line 220 13290 300 13290 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13304 -fill #eef -text "1107"
.c create line 140 13304 300 13304 -fill #eef -dash {6 4}
.c create line 300 13272 300 13292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1103 to 1107 (Used 1 nobox 1)
# ProcLine[2] stays at 1107 (Used 1 nobox 1)
.c create rectangle 282 13294 318 13314 -fill white -width 0
.c create text 300 13304 -text "go?S"
.c create text 70 13328 -fill #eef -text "1109"
.c create line 140 13328 300 13328 -fill #eef -dash {6 4}
.c create line 300 13320 300 13316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1107 to 1109 (Used 1 nobox 1)
# ProcLine[2] stays at 1109 (Used 1 nobox 1)
.c create rectangle 258 13318 342 13338 -fill white -width 0
.c create text 300 13328 -text "go to S "
.c create text 70 13352 -fill #eef -text "1111"
.c create line 140 13352 300 13352 -fill #eef -dash {6 4}
.c create line 140 13296 140 13340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1105 to 1111 (Used 1 nobox 1)
# ProcLine[1] stays at 1111 (Used 1 nobox 1)
.c create rectangle 122 13342 158 13362 -fill white -width 0
.c create text 140 13352 -text "go!N"
.c create line 140 13362 220 13362 -fill darkred -tags mesg -width 2
.c create line 220 13362 300 13362 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13376 -fill #eef -text "1113"
.c create line 140 13376 300 13376 -fill #eef -dash {6 4}
.c create line 300 13344 300 13364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1109 to 1113 (Used 1 nobox 1)
# ProcLine[2] stays at 1113 (Used 1 nobox 1)
.c create rectangle 282 13366 318 13386 -fill white -width 0
.c create text 300 13376 -text "go?N"
.c create text 70 13400 -fill #eef -text "1115"
.c create line 140 13400 300 13400 -fill #eef -dash {6 4}
.c create line 300 13392 300 13388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1113 to 1115 (Used 1 nobox 1)
# ProcLine[2] stays at 1115 (Used 1 nobox 1)
.c create rectangle 258 13390 342 13410 -fill white -width 0
.c create text 300 13400 -text "go to N "
.c create text 70 13424 -fill #eef -text "1117"
.c create line 140 13424 300 13424 -fill #eef -dash {6 4}
.c create line 140 13368 140 13412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1111 to 1117 (Used 1 nobox 1)
# ProcLine[1] stays at 1117 (Used 1 nobox 1)
.c create rectangle 122 13414 158 13434 -fill white -width 0
.c create text 140 13424 -text "go!W"
.c create line 140 13434 220 13434 -fill darkred -tags mesg -width 2
.c create line 220 13434 300 13434 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13448 -fill #eef -text "1119"
.c create line 140 13448 300 13448 -fill #eef -dash {6 4}
.c create line 300 13416 300 13436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1115 to 1119 (Used 1 nobox 1)
# ProcLine[2] stays at 1119 (Used 1 nobox 1)
.c create rectangle 282 13438 318 13458 -fill white -width 0
.c create text 300 13448 -text "go?W"
.c create text 70 13472 -fill #eef -text "1121"
.c create line 140 13472 300 13472 -fill #eef -dash {6 4}
.c create line 300 13464 300 13460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1119 to 1121 (Used 1 nobox 1)
# ProcLine[2] stays at 1121 (Used 1 nobox 1)
.c create rectangle 258 13462 342 13482 -fill white -width 0
.c create text 300 13472 -text "go to W "
.c create text 70 13496 -fill #eef -text "1123"
.c create line 140 13496 300 13496 -fill #eef -dash {6 4}
.c create line 140 13440 140 13484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1117 to 1123 (Used 1 nobox 1)
# ProcLine[1] stays at 1123 (Used 1 nobox 1)
.c create rectangle 122 13486 158 13506 -fill white -width 0
.c create text 140 13496 -text "go!W"
.c create line 140 13506 220 13506 -fill darkred -tags mesg -width 2
.c create line 220 13506 300 13506 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13520 -fill #eef -text "1125"
.c create line 140 13520 300 13520 -fill #eef -dash {6 4}
.c create line 300 13488 300 13508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1121 to 1125 (Used 1 nobox 1)
# ProcLine[2] stays at 1125 (Used 1 nobox 1)
.c create rectangle 282 13510 318 13530 -fill white -width 0
.c create text 300 13520 -text "go?W"
.c create text 70 13544 -fill #eef -text "1127"
.c create line 140 13544 300 13544 -fill #eef -dash {6 4}
.c create line 300 13536 300 13532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1125 to 1127 (Used 1 nobox 1)
# ProcLine[2] stays at 1127 (Used 1 nobox 1)
.c create rectangle 258 13534 342 13554 -fill white -width 0
.c create text 300 13544 -text "go to W "
.c create text 70 13568 -fill #eef -text "1129"
.c create line 140 13568 300 13568 -fill #eef -dash {6 4}
.c create line 140 13512 140 13556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1123 to 1129 (Used 1 nobox 1)
# ProcLine[1] stays at 1129 (Used 1 nobox 1)
.c create rectangle 122 13558 158 13578 -fill white -width 0
.c create text 140 13568 -text "go!E"
.c create line 140 13578 220 13578 -fill darkred -tags mesg -width 2
.c create line 220 13578 300 13578 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13592 -fill #eef -text "1131"
.c create line 140 13592 300 13592 -fill #eef -dash {6 4}
.c create line 300 13560 300 13580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1127 to 1131 (Used 1 nobox 1)
# ProcLine[2] stays at 1131 (Used 1 nobox 1)
.c create rectangle 282 13582 318 13602 -fill white -width 0
.c create text 300 13592 -text "go?E"
.c create text 70 13616 -fill #eef -text "1133"
.c create line 140 13616 300 13616 -fill #eef -dash {6 4}
.c create line 300 13608 300 13604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1131 to 1133 (Used 1 nobox 1)
# ProcLine[2] stays at 1133 (Used 1 nobox 1)
.c create rectangle 258 13606 342 13626 -fill white -width 0
.c create text 300 13616 -text "go to E "
.c create text 70 13640 -fill #eef -text "1135"
.c create line 140 13640 300 13640 -fill #eef -dash {6 4}
.c create line 140 13584 140 13628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1129 to 1135 (Used 1 nobox 1)
# ProcLine[1] stays at 1135 (Used 1 nobox 1)
.c create rectangle 122 13630 158 13650 -fill white -width 0
.c create text 140 13640 -text "go!E"
.c create line 140 13650 220 13650 -fill darkred -tags mesg -width 2
.c create line 220 13650 300 13650 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13664 -fill #eef -text "1137"
.c create line 140 13664 300 13664 -fill #eef -dash {6 4}
.c create line 300 13632 300 13652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1133 to 1137 (Used 1 nobox 1)
# ProcLine[2] stays at 1137 (Used 1 nobox 1)
.c create rectangle 282 13654 318 13674 -fill white -width 0
.c create text 300 13664 -text "go?E"
.c create text 70 13688 -fill #eef -text "1139"
.c create line 140 13688 300 13688 -fill #eef -dash {6 4}
.c create line 300 13680 300 13676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1137 to 1139 (Used 1 nobox 1)
# ProcLine[2] stays at 1139 (Used 1 nobox 1)
.c create rectangle 258 13678 342 13698 -fill white -width 0
.c create text 300 13688 -text "go to E "
.c create text 70 13712 -fill #eef -text "1141"
.c create line 140 13712 300 13712 -fill #eef -dash {6 4}
.c create line 140 13656 140 13700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1135 to 1141 (Used 1 nobox 1)
# ProcLine[1] stays at 1141 (Used 1 nobox 1)
.c create rectangle 122 13702 158 13722 -fill white -width 0
.c create text 140 13712 -text "go!S"
.c create line 140 13722 220 13722 -fill darkred -tags mesg -width 2
.c create line 220 13722 300 13722 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13736 -fill #eef -text "1143"
.c create line 140 13736 300 13736 -fill #eef -dash {6 4}
.c create line 300 13704 300 13724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1139 to 1143 (Used 1 nobox 1)
# ProcLine[2] stays at 1143 (Used 1 nobox 1)
.c create rectangle 282 13726 318 13746 -fill white -width 0
.c create text 300 13736 -text "go?S"
.c create text 70 13760 -fill #eef -text "1145"
.c create line 140 13760 300 13760 -fill #eef -dash {6 4}
.c create line 300 13752 300 13748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1143 to 1145 (Used 1 nobox 1)
# ProcLine[2] stays at 1145 (Used 1 nobox 1)
.c create rectangle 258 13750 342 13770 -fill white -width 0
.c create text 300 13760 -text "go to S "
.c create text 70 13784 -fill #eef -text "1147"
.c create line 140 13784 300 13784 -fill #eef -dash {6 4}
.c create line 140 13728 140 13772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1141 to 1147 (Used 1 nobox 1)
# ProcLine[1] stays at 1147 (Used 1 nobox 1)
.c create rectangle 122 13774 158 13794 -fill white -width 0
.c create text 140 13784 -text "go!N"
.c create line 140 13794 220 13794 -fill darkred -tags mesg -width 2
.c create line 220 13794 300 13794 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13808 -fill #eef -text "1149"
.c create line 140 13808 300 13808 -fill #eef -dash {6 4}
.c create line 300 13776 300 13796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1145 to 1149 (Used 1 nobox 1)
# ProcLine[2] stays at 1149 (Used 1 nobox 1)
.c create rectangle 282 13798 318 13818 -fill white -width 0
.c create text 300 13808 -text "go?N"
.c create text 70 13832 -fill #eef -text "1151"
.c create line 140 13832 300 13832 -fill #eef -dash {6 4}
.c create line 300 13824 300 13820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1149 to 1151 (Used 1 nobox 1)
# ProcLine[2] stays at 1151 (Used 1 nobox 1)
.c create rectangle 258 13822 342 13842 -fill white -width 0
.c create text 300 13832 -text "go to N "
.c create text 70 13856 -fill #eef -text "1153"
.c create line 140 13856 300 13856 -fill #eef -dash {6 4}
.c create line 140 13800 140 13844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1147 to 1153 (Used 1 nobox 1)
# ProcLine[1] stays at 1153 (Used 1 nobox 1)
.c create rectangle 122 13846 158 13866 -fill white -width 0
.c create text 140 13856 -text "go!N"
.c create line 140 13866 220 13866 -fill darkred -tags mesg -width 2
.c create line 220 13866 300 13866 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13880 -fill #eef -text "1155"
.c create line 140 13880 300 13880 -fill #eef -dash {6 4}
.c create line 300 13848 300 13868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1151 to 1155 (Used 1 nobox 1)
# ProcLine[2] stays at 1155 (Used 1 nobox 1)
.c create rectangle 282 13870 318 13890 -fill white -width 0
.c create text 300 13880 -text "go?N"
.c create text 70 13904 -fill #eef -text "1157"
.c create line 140 13904 300 13904 -fill #eef -dash {6 4}
.c create line 300 13896 300 13892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1155 to 1157 (Used 1 nobox 1)
# ProcLine[2] stays at 1157 (Used 1 nobox 1)
.c create rectangle 258 13894 342 13914 -fill white -width 0
.c create text 300 13904 -text "go to N "
.c create text 70 13928 -fill #eef -text "1159"
.c create line 140 13928 300 13928 -fill #eef -dash {6 4}
.c create line 140 13872 140 13916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1153 to 1159 (Used 1 nobox 1)
# ProcLine[1] stays at 1159 (Used 1 nobox 1)
.c create rectangle 122 13918 158 13938 -fill white -width 0
.c create text 140 13928 -text "go!N"
.c create line 140 13938 220 13938 -fill darkred -tags mesg -width 2
.c create line 220 13938 300 13938 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 13952 -fill #eef -text "1161"
.c create line 140 13952 300 13952 -fill #eef -dash {6 4}
.c create line 300 13920 300 13940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1157 to 1161 (Used 1 nobox 1)
# ProcLine[2] stays at 1161 (Used 1 nobox 1)
.c create rectangle 282 13942 318 13962 -fill white -width 0
.c create text 300 13952 -text "go?N"
.c create text 70 13976 -fill #eef -text "1163"
.c create line 140 13976 300 13976 -fill #eef -dash {6 4}
.c create line 300 13968 300 13964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1161 to 1163 (Used 1 nobox 1)
# ProcLine[2] stays at 1163 (Used 1 nobox 1)
.c create rectangle 258 13966 342 13986 -fill white -width 0
.c create text 300 13976 -text "go to N "
.c create text 70 14000 -fill #eef -text "1165"
.c create line 140 14000 300 14000 -fill #eef -dash {6 4}
.c create line 140 13944 140 13988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1159 to 1165 (Used 1 nobox 1)
# ProcLine[1] stays at 1165 (Used 1 nobox 1)
.c create rectangle 122 13990 158 14010 -fill white -width 0
.c create text 140 14000 -text "go!N"
.c create line 140 14010 220 14010 -fill darkred -tags mesg -width 2
.c create line 220 14010 300 14010 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14024 -fill #eef -text "1167"
.c create line 140 14024 300 14024 -fill #eef -dash {6 4}
.c create line 300 13992 300 14012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1163 to 1167 (Used 1 nobox 1)
# ProcLine[2] stays at 1167 (Used 1 nobox 1)
.c create rectangle 282 14014 318 14034 -fill white -width 0
.c create text 300 14024 -text "go?N"
.c create text 70 14048 -fill #eef -text "1169"
.c create line 140 14048 300 14048 -fill #eef -dash {6 4}
.c create line 300 14040 300 14036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1167 to 1169 (Used 1 nobox 1)
# ProcLine[2] stays at 1169 (Used 1 nobox 1)
.c create rectangle 258 14038 342 14058 -fill white -width 0
.c create text 300 14048 -text "go to N "
.c create text 70 14072 -fill #eef -text "1171"
.c create line 140 14072 300 14072 -fill #eef -dash {6 4}
.c create line 140 14016 140 14060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1165 to 1171 (Used 1 nobox 1)
# ProcLine[1] stays at 1171 (Used 1 nobox 1)
.c create rectangle 122 14062 158 14082 -fill white -width 0
.c create text 140 14072 -text "go!S"
.c create line 140 14082 220 14082 -fill darkred -tags mesg -width 2
.c create line 220 14082 300 14082 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14096 -fill #eef -text "1173"
.c create line 140 14096 300 14096 -fill #eef -dash {6 4}
.c create line 300 14064 300 14084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1169 to 1173 (Used 1 nobox 1)
# ProcLine[2] stays at 1173 (Used 1 nobox 1)
.c create rectangle 282 14086 318 14106 -fill white -width 0
.c create text 300 14096 -text "go?S"
.c create text 70 14120 -fill #eef -text "1175"
.c create line 140 14120 300 14120 -fill #eef -dash {6 4}
.c create line 300 14112 300 14108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1173 to 1175 (Used 1 nobox 1)
# ProcLine[2] stays at 1175 (Used 1 nobox 1)
.c create rectangle 258 14110 342 14130 -fill white -width 0
.c create text 300 14120 -text "go to S "
.c create text 70 14144 -fill #eef -text "1177"
.c create line 140 14144 300 14144 -fill #eef -dash {6 4}
.c create line 140 14088 140 14132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1171 to 1177 (Used 1 nobox 1)
# ProcLine[1] stays at 1177 (Used 1 nobox 1)
.c create rectangle 122 14134 158 14154 -fill white -width 0
.c create text 140 14144 -text "go!S"
.c create line 140 14154 220 14154 -fill darkred -tags mesg -width 2
.c create line 220 14154 300 14154 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14168 -fill #eef -text "1179"
.c create line 140 14168 300 14168 -fill #eef -dash {6 4}
.c create line 300 14136 300 14156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1175 to 1179 (Used 1 nobox 1)
# ProcLine[2] stays at 1179 (Used 1 nobox 1)
.c create rectangle 282 14158 318 14178 -fill white -width 0
.c create text 300 14168 -text "go?S"
.c create text 70 14192 -fill #eef -text "1181"
.c create line 140 14192 300 14192 -fill #eef -dash {6 4}
.c create line 300 14184 300 14180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1179 to 1181 (Used 1 nobox 1)
# ProcLine[2] stays at 1181 (Used 1 nobox 1)
.c create rectangle 258 14182 342 14202 -fill white -width 0
.c create text 300 14192 -text "go to S "
.c create text 70 14216 -fill #eef -text "1183"
.c create line 140 14216 300 14216 -fill #eef -dash {6 4}
.c create line 140 14160 140 14204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1177 to 1183 (Used 1 nobox 1)
# ProcLine[1] stays at 1183 (Used 1 nobox 1)
.c create rectangle 122 14206 158 14226 -fill white -width 0
.c create text 140 14216 -text "go!S"
.c create line 140 14226 220 14226 -fill darkred -tags mesg -width 2
.c create line 220 14226 300 14226 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14240 -fill #eef -text "1185"
.c create line 140 14240 300 14240 -fill #eef -dash {6 4}
.c create line 300 14208 300 14228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1181 to 1185 (Used 1 nobox 1)
# ProcLine[2] stays at 1185 (Used 1 nobox 1)
.c create rectangle 282 14230 318 14250 -fill white -width 0
.c create text 300 14240 -text "go?S"
.c create text 70 14264 -fill #eef -text "1187"
.c create line 140 14264 300 14264 -fill #eef -dash {6 4}
.c create line 300 14256 300 14252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1185 to 1187 (Used 1 nobox 1)
# ProcLine[2] stays at 1187 (Used 1 nobox 1)
.c create rectangle 258 14254 342 14274 -fill white -width 0
.c create text 300 14264 -text "go to S "
.c create text 70 14288 -fill #eef -text "1189"
.c create line 140 14288 300 14288 -fill #eef -dash {6 4}
.c create line 140 14232 140 14276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1183 to 1189 (Used 1 nobox 1)
# ProcLine[1] stays at 1189 (Used 1 nobox 1)
.c create rectangle 122 14278 158 14298 -fill white -width 0
.c create text 140 14288 -text "go!W"
.c create line 140 14298 220 14298 -fill darkred -tags mesg -width 2
.c create line 220 14298 300 14298 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14312 -fill #eef -text "1191"
.c create line 140 14312 300 14312 -fill #eef -dash {6 4}
.c create line 300 14280 300 14300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1187 to 1191 (Used 1 nobox 1)
# ProcLine[2] stays at 1191 (Used 1 nobox 1)
.c create rectangle 282 14302 318 14322 -fill white -width 0
.c create text 300 14312 -text "go?W"
.c create text 70 14336 -fill #eef -text "1193"
.c create line 140 14336 300 14336 -fill #eef -dash {6 4}
.c create line 300 14328 300 14324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1191 to 1193 (Used 1 nobox 1)
# ProcLine[2] stays at 1193 (Used 1 nobox 1)
.c create rectangle 258 14326 342 14346 -fill white -width 0
.c create text 300 14336 -text "go to W "
.c create text 70 14360 -fill #eef -text "1195"
.c create line 140 14360 300 14360 -fill #eef -dash {6 4}
.c create line 140 14304 140 14348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1189 to 1195 (Used 1 nobox 1)
# ProcLine[1] stays at 1195 (Used 1 nobox 1)
.c create rectangle 122 14350 158 14370 -fill white -width 0
.c create text 140 14360 -text "go!E"
.c create line 140 14370 220 14370 -fill darkred -tags mesg -width 2
.c create line 220 14370 300 14370 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14384 -fill #eef -text "1197"
.c create line 140 14384 300 14384 -fill #eef -dash {6 4}
.c create line 300 14352 300 14372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1193 to 1197 (Used 1 nobox 1)
# ProcLine[2] stays at 1197 (Used 1 nobox 1)
.c create rectangle 282 14374 318 14394 -fill white -width 0
.c create text 300 14384 -text "go?E"
.c create text 70 14408 -fill #eef -text "1199"
.c create line 140 14408 300 14408 -fill #eef -dash {6 4}
.c create line 300 14400 300 14396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1197 to 1199 (Used 1 nobox 1)
# ProcLine[2] stays at 1199 (Used 1 nobox 1)
.c create rectangle 258 14398 342 14418 -fill white -width 0
.c create text 300 14408 -text "go to E "
.c create text 70 14432 -fill #eef -text "1201"
.c create line 140 14432 300 14432 -fill #eef -dash {6 4}
.c create line 140 14376 140 14420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1195 to 1201 (Used 1 nobox 1)
# ProcLine[1] stays at 1201 (Used 1 nobox 1)
.c create rectangle 122 14422 158 14442 -fill white -width 0
.c create text 140 14432 -text "go!W"
.c create line 140 14442 220 14442 -fill darkred -tags mesg -width 2
.c create line 220 14442 300 14442 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14456 -fill #eef -text "1203"
.c create line 140 14456 300 14456 -fill #eef -dash {6 4}
.c create line 300 14424 300 14444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1199 to 1203 (Used 1 nobox 1)
# ProcLine[2] stays at 1203 (Used 1 nobox 1)
.c create rectangle 282 14446 318 14466 -fill white -width 0
.c create text 300 14456 -text "go?W"
.c create text 70 14480 -fill #eef -text "1205"
.c create line 140 14480 300 14480 -fill #eef -dash {6 4}
.c create line 300 14472 300 14468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1203 to 1205 (Used 1 nobox 1)
# ProcLine[2] stays at 1205 (Used 1 nobox 1)
.c create rectangle 258 14470 342 14490 -fill white -width 0
.c create text 300 14480 -text "go to W "
.c create text 70 14504 -fill #eef -text "1207"
.c create line 140 14504 300 14504 -fill #eef -dash {6 4}
.c create line 140 14448 140 14492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1201 to 1207 (Used 1 nobox 1)
# ProcLine[1] stays at 1207 (Used 1 nobox 1)
.c create rectangle 122 14494 158 14514 -fill white -width 0
.c create text 140 14504 -text "go!E"
.c create line 140 14514 220 14514 -fill darkred -tags mesg -width 2
.c create line 220 14514 300 14514 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14528 -fill #eef -text "1209"
.c create line 140 14528 300 14528 -fill #eef -dash {6 4}
.c create line 300 14496 300 14516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1205 to 1209 (Used 1 nobox 1)
# ProcLine[2] stays at 1209 (Used 1 nobox 1)
.c create rectangle 282 14518 318 14538 -fill white -width 0
.c create text 300 14528 -text "go?E"
.c create text 70 14552 -fill #eef -text "1211"
.c create line 140 14552 300 14552 -fill #eef -dash {6 4}
.c create line 300 14544 300 14540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1209 to 1211 (Used 1 nobox 1)
# ProcLine[2] stays at 1211 (Used 1 nobox 1)
.c create rectangle 258 14542 342 14562 -fill white -width 0
.c create text 300 14552 -text "go to E "
.c create text 70 14576 -fill #eef -text "1213"
.c create line 140 14576 300 14576 -fill #eef -dash {6 4}
.c create line 140 14520 140 14564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1207 to 1213 (Used 1 nobox 1)
# ProcLine[1] stays at 1213 (Used 1 nobox 1)
.c create rectangle 122 14566 158 14586 -fill white -width 0
.c create text 140 14576 -text "go!W"
.c create line 140 14586 220 14586 -fill darkred -tags mesg -width 2
.c create line 220 14586 300 14586 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14600 -fill #eef -text "1215"
.c create line 140 14600 300 14600 -fill #eef -dash {6 4}
.c create line 300 14568 300 14588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1211 to 1215 (Used 1 nobox 1)
# ProcLine[2] stays at 1215 (Used 1 nobox 1)
.c create rectangle 282 14590 318 14610 -fill white -width 0
.c create text 300 14600 -text "go?W"
.c create text 70 14624 -fill #eef -text "1217"
.c create line 140 14624 300 14624 -fill #eef -dash {6 4}
.c create line 300 14616 300 14612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1215 to 1217 (Used 1 nobox 1)
# ProcLine[2] stays at 1217 (Used 1 nobox 1)
.c create rectangle 258 14614 342 14634 -fill white -width 0
.c create text 300 14624 -text "go to W "
.c create text 70 14648 -fill #eef -text "1219"
.c create line 140 14648 300 14648 -fill #eef -dash {6 4}
.c create line 140 14592 140 14636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1213 to 1219 (Used 1 nobox 1)
# ProcLine[1] stays at 1219 (Used 1 nobox 1)
.c create rectangle 122 14638 158 14658 -fill white -width 0
.c create text 140 14648 -text "go!W"
.c create line 140 14658 220 14658 -fill darkred -tags mesg -width 2
.c create line 220 14658 300 14658 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14672 -fill #eef -text "1221"
.c create line 140 14672 300 14672 -fill #eef -dash {6 4}
.c create line 300 14640 300 14660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1217 to 1221 (Used 1 nobox 1)
# ProcLine[2] stays at 1221 (Used 1 nobox 1)
.c create rectangle 282 14662 318 14682 -fill white -width 0
.c create text 300 14672 -text "go?W"
.c create text 70 14696 -fill #eef -text "1223"
.c create line 140 14696 300 14696 -fill #eef -dash {6 4}
.c create line 300 14688 300 14684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1221 to 1223 (Used 1 nobox 1)
# ProcLine[2] stays at 1223 (Used 1 nobox 1)
.c create rectangle 258 14686 342 14706 -fill white -width 0
.c create text 300 14696 -text "go to W "
.c create text 70 14720 -fill #eef -text "1225"
.c create line 140 14720 300 14720 -fill #eef -dash {6 4}
.c create line 140 14664 140 14708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1219 to 1225 (Used 1 nobox 1)
# ProcLine[1] stays at 1225 (Used 1 nobox 1)
.c create rectangle 122 14710 158 14730 -fill white -width 0
.c create text 140 14720 -text "go!E"
.c create line 140 14730 220 14730 -fill darkred -tags mesg -width 2
.c create line 220 14730 300 14730 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14744 -fill #eef -text "1227"
.c create line 140 14744 300 14744 -fill #eef -dash {6 4}
.c create line 300 14712 300 14732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1223 to 1227 (Used 1 nobox 1)
# ProcLine[2] stays at 1227 (Used 1 nobox 1)
.c create rectangle 282 14734 318 14754 -fill white -width 0
.c create text 300 14744 -text "go?E"
.c create text 70 14768 -fill #eef -text "1229"
.c create line 140 14768 300 14768 -fill #eef -dash {6 4}
.c create line 300 14760 300 14756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1227 to 1229 (Used 1 nobox 1)
# ProcLine[2] stays at 1229 (Used 1 nobox 1)
.c create rectangle 258 14758 342 14778 -fill white -width 0
.c create text 300 14768 -text "go to E "
.c create text 70 14792 -fill #eef -text "1231"
.c create line 140 14792 300 14792 -fill #eef -dash {6 4}
.c create line 140 14736 140 14780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1225 to 1231 (Used 1 nobox 1)
# ProcLine[1] stays at 1231 (Used 1 nobox 1)
.c create rectangle 122 14782 158 14802 -fill white -width 0
.c create text 140 14792 -text "go!E"
.c create line 140 14802 220 14802 -fill darkred -tags mesg -width 2
.c create line 220 14802 300 14802 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14816 -fill #eef -text "1233"
.c create line 140 14816 300 14816 -fill #eef -dash {6 4}
.c create line 300 14784 300 14804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1229 to 1233 (Used 1 nobox 1)
# ProcLine[2] stays at 1233 (Used 1 nobox 1)
.c create rectangle 282 14806 318 14826 -fill white -width 0
.c create text 300 14816 -text "go?E"
.c create text 70 14840 -fill #eef -text "1235"
.c create line 140 14840 300 14840 -fill #eef -dash {6 4}
.c create line 300 14832 300 14828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1233 to 1235 (Used 1 nobox 1)
# ProcLine[2] stays at 1235 (Used 1 nobox 1)
.c create rectangle 258 14830 342 14850 -fill white -width 0
.c create text 300 14840 -text "go to E "
.c create text 70 14864 -fill #eef -text "1237"
.c create line 140 14864 300 14864 -fill #eef -dash {6 4}
.c create line 140 14808 140 14852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1231 to 1237 (Used 1 nobox 1)
# ProcLine[1] stays at 1237 (Used 1 nobox 1)
.c create rectangle 122 14854 158 14874 -fill white -width 0
.c create text 140 14864 -text "go!N"
.c create line 140 14874 220 14874 -fill darkred -tags mesg -width 2
.c create line 220 14874 300 14874 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14888 -fill #eef -text "1239"
.c create line 140 14888 300 14888 -fill #eef -dash {6 4}
.c create line 300 14856 300 14876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1235 to 1239 (Used 1 nobox 1)
# ProcLine[2] stays at 1239 (Used 1 nobox 1)
.c create rectangle 282 14878 318 14898 -fill white -width 0
.c create text 300 14888 -text "go?N"
.c create text 70 14912 -fill #eef -text "1241"
.c create line 140 14912 300 14912 -fill #eef -dash {6 4}
.c create line 300 14904 300 14900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1239 to 1241 (Used 1 nobox 1)
# ProcLine[2] stays at 1241 (Used 1 nobox 1)
.c create rectangle 258 14902 342 14922 -fill white -width 0
.c create text 300 14912 -text "go to N "
.c create text 70 14936 -fill #eef -text "1243"
.c create line 140 14936 300 14936 -fill #eef -dash {6 4}
.c create line 140 14880 140 14924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1237 to 1243 (Used 1 nobox 1)
# ProcLine[1] stays at 1243 (Used 1 nobox 1)
.c create rectangle 122 14926 158 14946 -fill white -width 0
.c create text 140 14936 -text "go!S"
.c create line 140 14946 220 14946 -fill darkred -tags mesg -width 2
.c create line 220 14946 300 14946 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 14960 -fill #eef -text "1245"
.c create line 140 14960 300 14960 -fill #eef -dash {6 4}
.c create line 300 14928 300 14948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1241 to 1245 (Used 1 nobox 1)
# ProcLine[2] stays at 1245 (Used 1 nobox 1)
.c create rectangle 282 14950 318 14970 -fill white -width 0
.c create text 300 14960 -text "go?S"
.c create text 70 14984 -fill #eef -text "1247"
.c create line 140 14984 300 14984 -fill #eef -dash {6 4}
.c create line 300 14976 300 14972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1245 to 1247 (Used 1 nobox 1)
# ProcLine[2] stays at 1247 (Used 1 nobox 1)
.c create rectangle 258 14974 342 14994 -fill white -width 0
.c create text 300 14984 -text "go to S "
.c create text 70 15008 -fill #eef -text "1249"
.c create line 140 15008 300 15008 -fill #eef -dash {6 4}
.c create line 140 14952 140 14996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1243 to 1249 (Used 1 nobox 1)
# ProcLine[1] stays at 1249 (Used 1 nobox 1)
.c create rectangle 122 14998 158 15018 -fill white -width 0
.c create text 140 15008 -text "go!S"
.c create line 140 15018 220 15018 -fill darkred -tags mesg -width 2
.c create line 220 15018 300 15018 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15032 -fill #eef -text "1251"
.c create line 140 15032 300 15032 -fill #eef -dash {6 4}
.c create line 300 15000 300 15020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1247 to 1251 (Used 1 nobox 1)
# ProcLine[2] stays at 1251 (Used 1 nobox 1)
.c create rectangle 282 15022 318 15042 -fill white -width 0
.c create text 300 15032 -text "go?S"
.c create text 70 15056 -fill #eef -text "1253"
.c create line 140 15056 300 15056 -fill #eef -dash {6 4}
.c create line 300 15048 300 15044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1251 to 1253 (Used 1 nobox 1)
# ProcLine[2] stays at 1253 (Used 1 nobox 1)
.c create rectangle 258 15046 342 15066 -fill white -width 0
.c create text 300 15056 -text "go to S "
.c create text 70 15080 -fill #eef -text "1255"
.c create line 140 15080 300 15080 -fill #eef -dash {6 4}
.c create line 140 15024 140 15068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1249 to 1255 (Used 1 nobox 1)
# ProcLine[1] stays at 1255 (Used 1 nobox 1)
.c create rectangle 122 15070 158 15090 -fill white -width 0
.c create text 140 15080 -text "go!N"
.c create line 140 15090 220 15090 -fill darkred -tags mesg -width 2
.c create line 220 15090 300 15090 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15104 -fill #eef -text "1257"
.c create line 140 15104 300 15104 -fill #eef -dash {6 4}
.c create line 300 15072 300 15092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1253 to 1257 (Used 1 nobox 1)
# ProcLine[2] stays at 1257 (Used 1 nobox 1)
.c create rectangle 282 15094 318 15114 -fill white -width 0
.c create text 300 15104 -text "go?N"
.c create text 70 15128 -fill #eef -text "1259"
.c create line 140 15128 300 15128 -fill #eef -dash {6 4}
.c create line 300 15120 300 15116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1257 to 1259 (Used 1 nobox 1)
# ProcLine[2] stays at 1259 (Used 1 nobox 1)
.c create rectangle 258 15118 342 15138 -fill white -width 0
.c create text 300 15128 -text "go to N "
.c create text 70 15152 -fill #eef -text "1261"
.c create line 140 15152 300 15152 -fill #eef -dash {6 4}
.c create line 140 15096 140 15140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1255 to 1261 (Used 1 nobox 1)
# ProcLine[1] stays at 1261 (Used 1 nobox 1)
.c create rectangle 122 15142 158 15162 -fill white -width 0
.c create text 140 15152 -text "go!W"
.c create line 140 15162 220 15162 -fill darkred -tags mesg -width 2
.c create line 220 15162 300 15162 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15176 -fill #eef -text "1263"
.c create line 140 15176 300 15176 -fill #eef -dash {6 4}
.c create line 300 15144 300 15164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1259 to 1263 (Used 1 nobox 1)
# ProcLine[2] stays at 1263 (Used 1 nobox 1)
.c create rectangle 282 15166 318 15186 -fill white -width 0
.c create text 300 15176 -text "go?W"
.c create text 70 15200 -fill #eef -text "1265"
.c create line 140 15200 300 15200 -fill #eef -dash {6 4}
.c create line 300 15192 300 15188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1263 to 1265 (Used 1 nobox 1)
# ProcLine[2] stays at 1265 (Used 1 nobox 1)
.c create rectangle 258 15190 342 15210 -fill white -width 0
.c create text 300 15200 -text "go to W "
.c create text 70 15224 -fill #eef -text "1267"
.c create line 140 15224 300 15224 -fill #eef -dash {6 4}
.c create line 140 15168 140 15212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1261 to 1267 (Used 1 nobox 1)
# ProcLine[1] stays at 1267 (Used 1 nobox 1)
.c create rectangle 122 15214 158 15234 -fill white -width 0
.c create text 140 15224 -text "go!W"
.c create line 140 15234 220 15234 -fill darkred -tags mesg -width 2
.c create line 220 15234 300 15234 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15248 -fill #eef -text "1269"
.c create line 140 15248 300 15248 -fill #eef -dash {6 4}
.c create line 300 15216 300 15236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1265 to 1269 (Used 1 nobox 1)
# ProcLine[2] stays at 1269 (Used 1 nobox 1)
.c create rectangle 282 15238 318 15258 -fill white -width 0
.c create text 300 15248 -text "go?W"
.c create text 70 15272 -fill #eef -text "1271"
.c create line 140 15272 300 15272 -fill #eef -dash {6 4}
.c create line 300 15264 300 15260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1269 to 1271 (Used 1 nobox 1)
# ProcLine[2] stays at 1271 (Used 1 nobox 1)
.c create rectangle 258 15262 342 15282 -fill white -width 0
.c create text 300 15272 -text "go to W "
.c create text 70 15296 -fill #eef -text "1273"
.c create line 140 15296 300 15296 -fill #eef -dash {6 4}
.c create line 140 15240 140 15284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1267 to 1273 (Used 1 nobox 1)
# ProcLine[1] stays at 1273 (Used 1 nobox 1)
.c create rectangle 122 15286 158 15306 -fill white -width 0
.c create text 140 15296 -text "go!W"
.c create line 140 15306 220 15306 -fill darkred -tags mesg -width 2
.c create line 220 15306 300 15306 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15320 -fill #eef -text "1275"
.c create line 140 15320 300 15320 -fill #eef -dash {6 4}
.c create line 300 15288 300 15308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1271 to 1275 (Used 1 nobox 1)
# ProcLine[2] stays at 1275 (Used 1 nobox 1)
.c create rectangle 282 15310 318 15330 -fill white -width 0
.c create text 300 15320 -text "go?W"
.c create text 70 15344 -fill #eef -text "1277"
.c create line 140 15344 300 15344 -fill #eef -dash {6 4}
.c create line 300 15336 300 15332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1275 to 1277 (Used 1 nobox 1)
# ProcLine[2] stays at 1277 (Used 1 nobox 1)
.c create rectangle 258 15334 342 15354 -fill white -width 0
.c create text 300 15344 -text "go to W "
.c create text 70 15368 -fill #eef -text "1279"
.c create line 140 15368 300 15368 -fill #eef -dash {6 4}
.c create line 140 15312 140 15356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1273 to 1279 (Used 1 nobox 1)
# ProcLine[1] stays at 1279 (Used 1 nobox 1)
.c create rectangle 122 15358 158 15378 -fill white -width 0
.c create text 140 15368 -text "go!E"
.c create line 140 15378 220 15378 -fill darkred -tags mesg -width 2
.c create line 220 15378 300 15378 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15392 -fill #eef -text "1281"
.c create line 140 15392 300 15392 -fill #eef -dash {6 4}
.c create line 300 15360 300 15380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1277 to 1281 (Used 1 nobox 1)
# ProcLine[2] stays at 1281 (Used 1 nobox 1)
.c create rectangle 282 15382 318 15402 -fill white -width 0
.c create text 300 15392 -text "go?E"
.c create text 70 15416 -fill #eef -text "1283"
.c create line 140 15416 300 15416 -fill #eef -dash {6 4}
.c create line 300 15408 300 15404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1281 to 1283 (Used 1 nobox 1)
# ProcLine[2] stays at 1283 (Used 1 nobox 1)
.c create rectangle 258 15406 342 15426 -fill white -width 0
.c create text 300 15416 -text "go to E "
.c create text 70 15440 -fill #eef -text "1285"
.c create line 140 15440 300 15440 -fill #eef -dash {6 4}
.c create line 140 15384 140 15428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1279 to 1285 (Used 1 nobox 1)
# ProcLine[1] stays at 1285 (Used 1 nobox 1)
.c create rectangle 122 15430 158 15450 -fill white -width 0
.c create text 140 15440 -text "go!E"
.c create line 140 15450 220 15450 -fill darkred -tags mesg -width 2
.c create line 220 15450 300 15450 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15464 -fill #eef -text "1287"
.c create line 140 15464 300 15464 -fill #eef -dash {6 4}
.c create line 300 15432 300 15452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1283 to 1287 (Used 1 nobox 1)
# ProcLine[2] stays at 1287 (Used 1 nobox 1)
.c create rectangle 282 15454 318 15474 -fill white -width 0
.c create text 300 15464 -text "go?E"
.c create text 70 15488 -fill #eef -text "1289"
.c create line 140 15488 300 15488 -fill #eef -dash {6 4}
.c create line 300 15480 300 15476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1287 to 1289 (Used 1 nobox 1)
# ProcLine[2] stays at 1289 (Used 1 nobox 1)
.c create rectangle 258 15478 342 15498 -fill white -width 0
.c create text 300 15488 -text "go to E "
.c create text 70 15512 -fill #eef -text "1291"
.c create line 140 15512 300 15512 -fill #eef -dash {6 4}
.c create line 140 15456 140 15500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1285 to 1291 (Used 1 nobox 1)
# ProcLine[1] stays at 1291 (Used 1 nobox 1)
.c create rectangle 122 15502 158 15522 -fill white -width 0
.c create text 140 15512 -text "go!W"
.c create line 140 15522 220 15522 -fill darkred -tags mesg -width 2
.c create line 220 15522 300 15522 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15536 -fill #eef -text "1293"
.c create line 140 15536 300 15536 -fill #eef -dash {6 4}
.c create line 300 15504 300 15524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1289 to 1293 (Used 1 nobox 1)
# ProcLine[2] stays at 1293 (Used 1 nobox 1)
.c create rectangle 282 15526 318 15546 -fill white -width 0
.c create text 300 15536 -text "go?W"
.c create text 70 15560 -fill #eef -text "1295"
.c create line 140 15560 300 15560 -fill #eef -dash {6 4}
.c create line 300 15552 300 15548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1293 to 1295 (Used 1 nobox 1)
# ProcLine[2] stays at 1295 (Used 1 nobox 1)
.c create rectangle 258 15550 342 15570 -fill white -width 0
.c create text 300 15560 -text "go to W "
.c create text 70 15584 -fill #eef -text "1297"
.c create line 140 15584 300 15584 -fill #eef -dash {6 4}
.c create line 140 15528 140 15572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1291 to 1297 (Used 1 nobox 1)
# ProcLine[1] stays at 1297 (Used 1 nobox 1)
.c create rectangle 122 15574 158 15594 -fill white -width 0
.c create text 140 15584 -text "go!E"
.c create line 140 15594 220 15594 -fill darkred -tags mesg -width 2
.c create line 220 15594 300 15594 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15608 -fill #eef -text "1299"
.c create line 140 15608 300 15608 -fill #eef -dash {6 4}
.c create line 300 15576 300 15596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1295 to 1299 (Used 1 nobox 1)
# ProcLine[2] stays at 1299 (Used 1 nobox 1)
.c create rectangle 282 15598 318 15618 -fill white -width 0
.c create text 300 15608 -text "go?E"
.c create text 70 15632 -fill #eef -text "1301"
.c create line 140 15632 300 15632 -fill #eef -dash {6 4}
.c create line 300 15624 300 15620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1299 to 1301 (Used 1 nobox 1)
# ProcLine[2] stays at 1301 (Used 1 nobox 1)
.c create rectangle 258 15622 342 15642 -fill white -width 0
.c create text 300 15632 -text "go to E "
.c create text 70 15656 -fill #eef -text "1303"
.c create line 140 15656 300 15656 -fill #eef -dash {6 4}
.c create line 140 15600 140 15644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1297 to 1303 (Used 1 nobox 1)
# ProcLine[1] stays at 1303 (Used 1 nobox 1)
.c create rectangle 122 15646 158 15666 -fill white -width 0
.c create text 140 15656 -text "go!W"
.c create line 140 15666 220 15666 -fill darkred -tags mesg -width 2
.c create line 220 15666 300 15666 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15680 -fill #eef -text "1305"
.c create line 140 15680 300 15680 -fill #eef -dash {6 4}
.c create line 300 15648 300 15668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1301 to 1305 (Used 1 nobox 1)
# ProcLine[2] stays at 1305 (Used 1 nobox 1)
.c create rectangle 282 15670 318 15690 -fill white -width 0
.c create text 300 15680 -text "go?W"
.c create text 70 15704 -fill #eef -text "1307"
.c create line 140 15704 300 15704 -fill #eef -dash {6 4}
.c create line 300 15696 300 15692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1305 to 1307 (Used 1 nobox 1)
# ProcLine[2] stays at 1307 (Used 1 nobox 1)
.c create rectangle 258 15694 342 15714 -fill white -width 0
.c create text 300 15704 -text "go to W "
.c create text 70 15728 -fill #eef -text "1309"
.c create line 140 15728 300 15728 -fill #eef -dash {6 4}
.c create line 140 15672 140 15716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1303 to 1309 (Used 1 nobox 1)
# ProcLine[1] stays at 1309 (Used 1 nobox 1)
.c create rectangle 122 15718 158 15738 -fill white -width 0
.c create text 140 15728 -text "go!E"
.c create line 140 15738 220 15738 -fill darkred -tags mesg -width 2
.c create line 220 15738 300 15738 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15752 -fill #eef -text "1311"
.c create line 140 15752 300 15752 -fill #eef -dash {6 4}
.c create line 300 15720 300 15740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1307 to 1311 (Used 1 nobox 1)
# ProcLine[2] stays at 1311 (Used 1 nobox 1)
.c create rectangle 282 15742 318 15762 -fill white -width 0
.c create text 300 15752 -text "go?E"
.c create text 70 15776 -fill #eef -text "1313"
.c create line 140 15776 300 15776 -fill #eef -dash {6 4}
.c create line 300 15768 300 15764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1311 to 1313 (Used 1 nobox 1)
# ProcLine[2] stays at 1313 (Used 1 nobox 1)
.c create rectangle 258 15766 342 15786 -fill white -width 0
.c create text 300 15776 -text "go to E "
.c create text 70 15800 -fill #eef -text "1315"
.c create line 140 15800 300 15800 -fill #eef -dash {6 4}
.c create line 140 15744 140 15788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1309 to 1315 (Used 1 nobox 1)
# ProcLine[1] stays at 1315 (Used 1 nobox 1)
.c create rectangle 122 15790 158 15810 -fill white -width 0
.c create text 140 15800 -text "go!E"
.c create line 140 15810 220 15810 -fill darkred -tags mesg -width 2
.c create line 220 15810 300 15810 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15824 -fill #eef -text "1317"
.c create line 140 15824 300 15824 -fill #eef -dash {6 4}
.c create line 300 15792 300 15812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1313 to 1317 (Used 1 nobox 1)
# ProcLine[2] stays at 1317 (Used 1 nobox 1)
.c create rectangle 282 15814 318 15834 -fill white -width 0
.c create text 300 15824 -text "go?E"
.c create text 70 15848 -fill #eef -text "1319"
.c create line 140 15848 300 15848 -fill #eef -dash {6 4}
.c create line 300 15840 300 15836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1317 to 1319 (Used 1 nobox 1)
# ProcLine[2] stays at 1319 (Used 1 nobox 1)
.c create rectangle 258 15838 342 15858 -fill white -width 0
.c create text 300 15848 -text "go to E "
.c create text 70 15872 -fill #eef -text "1321"
.c create line 140 15872 300 15872 -fill #eef -dash {6 4}
.c create line 140 15816 140 15860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1315 to 1321 (Used 1 nobox 1)
# ProcLine[1] stays at 1321 (Used 1 nobox 1)
.c create rectangle 122 15862 158 15882 -fill white -width 0
.c create text 140 15872 -text "go!S"
.c create line 140 15882 220 15882 -fill darkred -tags mesg -width 2
.c create line 220 15882 300 15882 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15896 -fill #eef -text "1323"
.c create line 140 15896 300 15896 -fill #eef -dash {6 4}
.c create line 300 15864 300 15884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1319 to 1323 (Used 1 nobox 1)
# ProcLine[2] stays at 1323 (Used 1 nobox 1)
.c create rectangle 282 15886 318 15906 -fill white -width 0
.c create text 300 15896 -text "go?S"
.c create text 70 15920 -fill #eef -text "1325"
.c create line 140 15920 300 15920 -fill #eef -dash {6 4}
.c create line 300 15912 300 15908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1323 to 1325 (Used 1 nobox 1)
# ProcLine[2] stays at 1325 (Used 1 nobox 1)
.c create rectangle 258 15910 342 15930 -fill white -width 0
.c create text 300 15920 -text "go to S "
.c create text 70 15944 -fill #eef -text "1327"
.c create line 140 15944 300 15944 -fill #eef -dash {6 4}
.c create line 140 15888 140 15932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1321 to 1327 (Used 1 nobox 1)
# ProcLine[1] stays at 1327 (Used 1 nobox 1)
.c create rectangle 122 15934 158 15954 -fill white -width 0
.c create text 140 15944 -text "go!N"
.c create line 140 15954 220 15954 -fill darkred -tags mesg -width 2
.c create line 220 15954 300 15954 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 15968 -fill #eef -text "1329"
.c create line 140 15968 300 15968 -fill #eef -dash {6 4}
.c create line 300 15936 300 15956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1325 to 1329 (Used 1 nobox 1)
# ProcLine[2] stays at 1329 (Used 1 nobox 1)
.c create rectangle 282 15958 318 15978 -fill white -width 0
.c create text 300 15968 -text "go?N"
.c create text 70 15992 -fill #eef -text "1331"
.c create line 140 15992 300 15992 -fill #eef -dash {6 4}
.c create line 300 15984 300 15980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1329 to 1331 (Used 1 nobox 1)
# ProcLine[2] stays at 1331 (Used 1 nobox 1)
.c create rectangle 258 15982 342 16002 -fill white -width 0
.c create text 300 15992 -text "go to N "
.c create text 70 16016 -fill #eef -text "1333"
.c create line 140 16016 300 16016 -fill #eef -dash {6 4}
.c create line 140 15960 140 16004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1327 to 1333 (Used 1 nobox 1)
# ProcLine[1] stays at 1333 (Used 1 nobox 1)
.c create rectangle 122 16006 158 16026 -fill white -width 0
.c create text 140 16016 -text "go!W"
.c create line 140 16026 220 16026 -fill darkred -tags mesg -width 2
.c create line 220 16026 300 16026 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16040 -fill #eef -text "1335"
.c create line 140 16040 300 16040 -fill #eef -dash {6 4}
.c create line 300 16008 300 16028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1331 to 1335 (Used 1 nobox 1)
# ProcLine[2] stays at 1335 (Used 1 nobox 1)
.c create rectangle 282 16030 318 16050 -fill white -width 0
.c create text 300 16040 -text "go?W"
.c create text 70 16064 -fill #eef -text "1337"
.c create line 140 16064 300 16064 -fill #eef -dash {6 4}
.c create line 300 16056 300 16052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1335 to 1337 (Used 1 nobox 1)
# ProcLine[2] stays at 1337 (Used 1 nobox 1)
.c create rectangle 258 16054 342 16074 -fill white -width 0
.c create text 300 16064 -text "go to W "
.c create text 70 16088 -fill #eef -text "1339"
.c create line 140 16088 300 16088 -fill #eef -dash {6 4}
.c create line 140 16032 140 16076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1333 to 1339 (Used 1 nobox 1)
# ProcLine[1] stays at 1339 (Used 1 nobox 1)
.c create rectangle 122 16078 158 16098 -fill white -width 0
.c create text 140 16088 -text "go!E"
.c create line 140 16098 220 16098 -fill darkred -tags mesg -width 2
.c create line 220 16098 300 16098 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16112 -fill #eef -text "1341"
.c create line 140 16112 300 16112 -fill #eef -dash {6 4}
.c create line 300 16080 300 16100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1337 to 1341 (Used 1 nobox 1)
# ProcLine[2] stays at 1341 (Used 1 nobox 1)
.c create rectangle 282 16102 318 16122 -fill white -width 0
.c create text 300 16112 -text "go?E"
.c create text 70 16136 -fill #eef -text "1343"
.c create line 140 16136 300 16136 -fill #eef -dash {6 4}
.c create line 300 16128 300 16124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1341 to 1343 (Used 1 nobox 1)
# ProcLine[2] stays at 1343 (Used 1 nobox 1)
.c create rectangle 258 16126 342 16146 -fill white -width 0
.c create text 300 16136 -text "go to E "
.c create text 70 16160 -fill #eef -text "1345"
.c create line 140 16160 300 16160 -fill #eef -dash {6 4}
.c create line 140 16104 140 16148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1339 to 1345 (Used 1 nobox 1)
# ProcLine[1] stays at 1345 (Used 1 nobox 1)
.c create rectangle 122 16150 158 16170 -fill white -width 0
.c create text 140 16160 -text "go!N"
.c create line 140 16170 220 16170 -fill darkred -tags mesg -width 2
.c create line 220 16170 300 16170 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16184 -fill #eef -text "1347"
.c create line 140 16184 300 16184 -fill #eef -dash {6 4}
.c create line 300 16152 300 16172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1343 to 1347 (Used 1 nobox 1)
# ProcLine[2] stays at 1347 (Used 1 nobox 1)
.c create rectangle 282 16174 318 16194 -fill white -width 0
.c create text 300 16184 -text "go?N"
.c create text 70 16208 -fill #eef -text "1349"
.c create line 140 16208 300 16208 -fill #eef -dash {6 4}
.c create line 300 16200 300 16196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1347 to 1349 (Used 1 nobox 1)
# ProcLine[2] stays at 1349 (Used 1 nobox 1)
.c create rectangle 258 16198 342 16218 -fill white -width 0
.c create text 300 16208 -text "go to N "
.c create text 70 16232 -fill #eef -text "1351"
.c create line 140 16232 300 16232 -fill #eef -dash {6 4}
.c create line 140 16176 140 16220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1345 to 1351 (Used 1 nobox 1)
# ProcLine[1] stays at 1351 (Used 1 nobox 1)
.c create rectangle 122 16222 158 16242 -fill white -width 0
.c create text 140 16232 -text "go!N"
.c create line 140 16242 220 16242 -fill darkred -tags mesg -width 2
.c create line 220 16242 300 16242 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16256 -fill #eef -text "1353"
.c create line 140 16256 300 16256 -fill #eef -dash {6 4}
.c create line 300 16224 300 16244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1349 to 1353 (Used 1 nobox 1)
# ProcLine[2] stays at 1353 (Used 1 nobox 1)
.c create rectangle 282 16246 318 16266 -fill white -width 0
.c create text 300 16256 -text "go?N"
.c create text 70 16280 -fill #eef -text "1355"
.c create line 140 16280 300 16280 -fill #eef -dash {6 4}
.c create line 300 16272 300 16268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1353 to 1355 (Used 1 nobox 1)
# ProcLine[2] stays at 1355 (Used 1 nobox 1)
.c create rectangle 258 16270 342 16290 -fill white -width 0
.c create text 300 16280 -text "go to N "
.c create text 70 16304 -fill #eef -text "1357"
.c create line 140 16304 300 16304 -fill #eef -dash {6 4}
.c create line 140 16248 140 16292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1351 to 1357 (Used 1 nobox 1)
# ProcLine[1] stays at 1357 (Used 1 nobox 1)
.c create rectangle 122 16294 158 16314 -fill white -width 0
.c create text 140 16304 -text "go!N"
.c create line 140 16314 220 16314 -fill darkred -tags mesg -width 2
.c create line 220 16314 300 16314 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16328 -fill #eef -text "1359"
.c create line 140 16328 300 16328 -fill #eef -dash {6 4}
.c create line 300 16296 300 16316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1355 to 1359 (Used 1 nobox 1)
# ProcLine[2] stays at 1359 (Used 1 nobox 1)
.c create rectangle 282 16318 318 16338 -fill white -width 0
.c create text 300 16328 -text "go?N"
.c create text 70 16352 -fill #eef -text "1361"
.c create line 140 16352 300 16352 -fill #eef -dash {6 4}
.c create line 300 16344 300 16340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1359 to 1361 (Used 1 nobox 1)
# ProcLine[2] stays at 1361 (Used 1 nobox 1)
.c create rectangle 258 16342 342 16362 -fill white -width 0
.c create text 300 16352 -text "go to N "
.c create text 70 16376 -fill #eef -text "1363"
.c create line 140 16376 300 16376 -fill #eef -dash {6 4}
.c create line 140 16320 140 16364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1357 to 1363 (Used 1 nobox 1)
# ProcLine[1] stays at 1363 (Used 1 nobox 1)
.c create rectangle 122 16366 158 16386 -fill white -width 0
.c create text 140 16376 -text "go!S"
.c create line 140 16386 220 16386 -fill darkred -tags mesg -width 2
.c create line 220 16386 300 16386 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16400 -fill #eef -text "1365"
.c create line 140 16400 300 16400 -fill #eef -dash {6 4}
.c create line 300 16368 300 16388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1361 to 1365 (Used 1 nobox 1)
# ProcLine[2] stays at 1365 (Used 1 nobox 1)
.c create rectangle 282 16390 318 16410 -fill white -width 0
.c create text 300 16400 -text "go?S"
.c create text 70 16424 -fill #eef -text "1367"
.c create line 140 16424 300 16424 -fill #eef -dash {6 4}
.c create line 300 16416 300 16412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1365 to 1367 (Used 1 nobox 1)
# ProcLine[2] stays at 1367 (Used 1 nobox 1)
.c create rectangle 258 16414 342 16434 -fill white -width 0
.c create text 300 16424 -text "go to S "
.c create text 70 16448 -fill #eef -text "1369"
.c create line 140 16448 300 16448 -fill #eef -dash {6 4}
.c create line 140 16392 140 16436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1363 to 1369 (Used 1 nobox 1)
# ProcLine[1] stays at 1369 (Used 1 nobox 1)
.c create rectangle 122 16438 158 16458 -fill white -width 0
.c create text 140 16448 -text "go!N"
.c create line 140 16458 220 16458 -fill darkred -tags mesg -width 2
.c create line 220 16458 300 16458 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16472 -fill #eef -text "1371"
.c create line 140 16472 300 16472 -fill #eef -dash {6 4}
.c create line 300 16440 300 16460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1367 to 1371 (Used 1 nobox 1)
# ProcLine[2] stays at 1371 (Used 1 nobox 1)
.c create rectangle 282 16462 318 16482 -fill white -width 0
.c create text 300 16472 -text "go?N"
.c create text 70 16496 -fill #eef -text "1373"
.c create line 140 16496 300 16496 -fill #eef -dash {6 4}
.c create line 300 16488 300 16484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1371 to 1373 (Used 1 nobox 1)
# ProcLine[2] stays at 1373 (Used 1 nobox 1)
.c create rectangle 258 16486 342 16506 -fill white -width 0
.c create text 300 16496 -text "go to N "
.c create text 70 16520 -fill #eef -text "1375"
.c create line 140 16520 300 16520 -fill #eef -dash {6 4}
.c create line 140 16464 140 16508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1369 to 1375 (Used 1 nobox 1)
# ProcLine[1] stays at 1375 (Used 1 nobox 1)
.c create rectangle 122 16510 158 16530 -fill white -width 0
.c create text 140 16520 -text "go!S"
.c create line 140 16530 220 16530 -fill darkred -tags mesg -width 2
.c create line 220 16530 300 16530 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16544 -fill #eef -text "1377"
.c create line 140 16544 300 16544 -fill #eef -dash {6 4}
.c create line 300 16512 300 16532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1373 to 1377 (Used 1 nobox 1)
# ProcLine[2] stays at 1377 (Used 1 nobox 1)
.c create rectangle 282 16534 318 16554 -fill white -width 0
.c create text 300 16544 -text "go?S"
.c create text 70 16568 -fill #eef -text "1379"
.c create line 140 16568 300 16568 -fill #eef -dash {6 4}
.c create line 300 16560 300 16556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1377 to 1379 (Used 1 nobox 1)
# ProcLine[2] stays at 1379 (Used 1 nobox 1)
.c create rectangle 258 16558 342 16578 -fill white -width 0
.c create text 300 16568 -text "go to S "
.c create text 70 16592 -fill #eef -text "1381"
.c create line 140 16592 300 16592 -fill #eef -dash {6 4}
.c create line 140 16536 140 16580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1375 to 1381 (Used 1 nobox 1)
# ProcLine[1] stays at 1381 (Used 1 nobox 1)
.c create rectangle 122 16582 158 16602 -fill white -width 0
.c create text 140 16592 -text "go!N"
.c create line 140 16602 220 16602 -fill darkred -tags mesg -width 2
.c create line 220 16602 300 16602 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16616 -fill #eef -text "1383"
.c create line 140 16616 300 16616 -fill #eef -dash {6 4}
.c create line 300 16584 300 16604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1379 to 1383 (Used 1 nobox 1)
# ProcLine[2] stays at 1383 (Used 1 nobox 1)
.c create rectangle 282 16606 318 16626 -fill white -width 0
.c create text 300 16616 -text "go?N"
.c create text 70 16640 -fill #eef -text "1385"
.c create line 140 16640 300 16640 -fill #eef -dash {6 4}
.c create line 300 16632 300 16628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1383 to 1385 (Used 1 nobox 1)
# ProcLine[2] stays at 1385 (Used 1 nobox 1)
.c create rectangle 258 16630 342 16650 -fill white -width 0
.c create text 300 16640 -text "go to N "
.c create text 70 16664 -fill #eef -text "1387"
.c create line 140 16664 300 16664 -fill #eef -dash {6 4}
.c create line 140 16608 140 16652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1381 to 1387 (Used 1 nobox 1)
# ProcLine[1] stays at 1387 (Used 1 nobox 1)
.c create rectangle 122 16654 158 16674 -fill white -width 0
.c create text 140 16664 -text "go!S"
.c create line 140 16674 220 16674 -fill darkred -tags mesg -width 2
.c create line 220 16674 300 16674 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16688 -fill #eef -text "1389"
.c create line 140 16688 300 16688 -fill #eef -dash {6 4}
.c create line 300 16656 300 16676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1385 to 1389 (Used 1 nobox 1)
# ProcLine[2] stays at 1389 (Used 1 nobox 1)
.c create rectangle 282 16678 318 16698 -fill white -width 0
.c create text 300 16688 -text "go?S"
.c create text 70 16712 -fill #eef -text "1391"
.c create line 140 16712 300 16712 -fill #eef -dash {6 4}
.c create line 300 16704 300 16700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1389 to 1391 (Used 1 nobox 1)
# ProcLine[2] stays at 1391 (Used 1 nobox 1)
.c create rectangle 258 16702 342 16722 -fill white -width 0
.c create text 300 16712 -text "go to S "
.c create text 70 16736 -fill #eef -text "1393"
.c create line 140 16736 300 16736 -fill #eef -dash {6 4}
.c create line 140 16680 140 16724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1387 to 1393 (Used 1 nobox 1)
# ProcLine[1] stays at 1393 (Used 1 nobox 1)
.c create rectangle 122 16726 158 16746 -fill white -width 0
.c create text 140 16736 -text "go!N"
.c create line 140 16746 220 16746 -fill darkred -tags mesg -width 2
.c create line 220 16746 300 16746 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16760 -fill #eef -text "1395"
.c create line 140 16760 300 16760 -fill #eef -dash {6 4}
.c create line 300 16728 300 16748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1391 to 1395 (Used 1 nobox 1)
# ProcLine[2] stays at 1395 (Used 1 nobox 1)
.c create rectangle 282 16750 318 16770 -fill white -width 0
.c create text 300 16760 -text "go?N"
.c create text 70 16784 -fill #eef -text "1397"
.c create line 140 16784 300 16784 -fill #eef -dash {6 4}
.c create line 300 16776 300 16772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1395 to 1397 (Used 1 nobox 1)
# ProcLine[2] stays at 1397 (Used 1 nobox 1)
.c create rectangle 258 16774 342 16794 -fill white -width 0
.c create text 300 16784 -text "go to N "
.c create text 70 16808 -fill #eef -text "1399"
.c create line 140 16808 300 16808 -fill #eef -dash {6 4}
.c create line 140 16752 140 16796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1393 to 1399 (Used 1 nobox 1)
# ProcLine[1] stays at 1399 (Used 1 nobox 1)
.c create rectangle 122 16798 158 16818 -fill white -width 0
.c create text 140 16808 -text "go!S"
.c create line 140 16818 220 16818 -fill darkred -tags mesg -width 2
.c create line 220 16818 300 16818 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16832 -fill #eef -text "1401"
.c create line 140 16832 300 16832 -fill #eef -dash {6 4}
.c create line 300 16800 300 16820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1397 to 1401 (Used 1 nobox 1)
# ProcLine[2] stays at 1401 (Used 1 nobox 1)
.c create rectangle 282 16822 318 16842 -fill white -width 0
.c create text 300 16832 -text "go?S"
.c create text 70 16856 -fill #eef -text "1403"
.c create line 140 16856 300 16856 -fill #eef -dash {6 4}
.c create line 300 16848 300 16844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1401 to 1403 (Used 1 nobox 1)
# ProcLine[2] stays at 1403 (Used 1 nobox 1)
.c create rectangle 258 16846 342 16866 -fill white -width 0
.c create text 300 16856 -text "go to S "
.c create text 70 16880 -fill #eef -text "1405"
.c create line 140 16880 300 16880 -fill #eef -dash {6 4}
.c create line 140 16824 140 16868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1399 to 1405 (Used 1 nobox 1)
# ProcLine[1] stays at 1405 (Used 1 nobox 1)
.c create rectangle 122 16870 158 16890 -fill white -width 0
.c create text 140 16880 -text "go!N"
.c create line 140 16890 220 16890 -fill darkred -tags mesg -width 2
.c create line 220 16890 300 16890 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16904 -fill #eef -text "1407"
.c create line 140 16904 300 16904 -fill #eef -dash {6 4}
.c create line 300 16872 300 16892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1403 to 1407 (Used 1 nobox 1)
# ProcLine[2] stays at 1407 (Used 1 nobox 1)
.c create rectangle 282 16894 318 16914 -fill white -width 0
.c create text 300 16904 -text "go?N"
.c create text 70 16928 -fill #eef -text "1409"
.c create line 140 16928 300 16928 -fill #eef -dash {6 4}
.c create line 300 16920 300 16916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1407 to 1409 (Used 1 nobox 1)
# ProcLine[2] stays at 1409 (Used 1 nobox 1)
.c create rectangle 258 16918 342 16938 -fill white -width 0
.c create text 300 16928 -text "go to N "
.c create text 70 16952 -fill #eef -text "1411"
.c create line 140 16952 300 16952 -fill #eef -dash {6 4}
.c create line 140 16896 140 16940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1405 to 1411 (Used 1 nobox 1)
# ProcLine[1] stays at 1411 (Used 1 nobox 1)
.c create rectangle 122 16942 158 16962 -fill white -width 0
.c create text 140 16952 -text "go!S"
.c create line 140 16962 220 16962 -fill darkred -tags mesg -width 2
.c create line 220 16962 300 16962 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 16976 -fill #eef -text "1413"
.c create line 140 16976 300 16976 -fill #eef -dash {6 4}
.c create line 300 16944 300 16964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1409 to 1413 (Used 1 nobox 1)
# ProcLine[2] stays at 1413 (Used 1 nobox 1)
.c create rectangle 282 16966 318 16986 -fill white -width 0
.c create text 300 16976 -text "go?S"
.c create text 70 17000 -fill #eef -text "1415"
.c create line 140 17000 300 17000 -fill #eef -dash {6 4}
.c create line 300 16992 300 16988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1413 to 1415 (Used 1 nobox 1)
# ProcLine[2] stays at 1415 (Used 1 nobox 1)
.c create rectangle 258 16990 342 17010 -fill white -width 0
.c create text 300 17000 -text "go to S "
.c create text 70 17024 -fill #eef -text "1417"
.c create line 140 17024 300 17024 -fill #eef -dash {6 4}
.c create line 140 16968 140 17012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1411 to 1417 (Used 1 nobox 1)
# ProcLine[1] stays at 1417 (Used 1 nobox 1)
.c create rectangle 122 17014 158 17034 -fill white -width 0
.c create text 140 17024 -text "go!S"
.c create line 140 17034 220 17034 -fill darkred -tags mesg -width 2
.c create line 220 17034 300 17034 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17048 -fill #eef -text "1419"
.c create line 140 17048 300 17048 -fill #eef -dash {6 4}
.c create line 300 17016 300 17036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1415 to 1419 (Used 1 nobox 1)
# ProcLine[2] stays at 1419 (Used 1 nobox 1)
.c create rectangle 282 17038 318 17058 -fill white -width 0
.c create text 300 17048 -text "go?S"
.c create text 70 17072 -fill #eef -text "1421"
.c create line 140 17072 300 17072 -fill #eef -dash {6 4}
.c create line 300 17064 300 17060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1419 to 1421 (Used 1 nobox 1)
# ProcLine[2] stays at 1421 (Used 1 nobox 1)
.c create rectangle 258 17062 342 17082 -fill white -width 0
.c create text 300 17072 -text "go to S "
.c create text 70 17096 -fill #eef -text "1423"
.c create line 140 17096 300 17096 -fill #eef -dash {6 4}
.c create line 140 17040 140 17084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1417 to 1423 (Used 1 nobox 1)
# ProcLine[1] stays at 1423 (Used 1 nobox 1)
.c create rectangle 122 17086 158 17106 -fill white -width 0
.c create text 140 17096 -text "go!N"
.c create line 140 17106 220 17106 -fill darkred -tags mesg -width 2
.c create line 220 17106 300 17106 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17120 -fill #eef -text "1425"
.c create line 140 17120 300 17120 -fill #eef -dash {6 4}
.c create line 300 17088 300 17108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1421 to 1425 (Used 1 nobox 1)
# ProcLine[2] stays at 1425 (Used 1 nobox 1)
.c create rectangle 282 17110 318 17130 -fill white -width 0
.c create text 300 17120 -text "go?N"
.c create text 70 17144 -fill #eef -text "1427"
.c create line 140 17144 300 17144 -fill #eef -dash {6 4}
.c create line 300 17136 300 17132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1425 to 1427 (Used 1 nobox 1)
# ProcLine[2] stays at 1427 (Used 1 nobox 1)
.c create rectangle 258 17134 342 17154 -fill white -width 0
.c create text 300 17144 -text "go to N "
.c create text 70 17168 -fill #eef -text "1429"
.c create line 140 17168 300 17168 -fill #eef -dash {6 4}
.c create line 140 17112 140 17156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1423 to 1429 (Used 1 nobox 1)
# ProcLine[1] stays at 1429 (Used 1 nobox 1)
.c create rectangle 122 17158 158 17178 -fill white -width 0
.c create text 140 17168 -text "go!S"
.c create line 140 17178 220 17178 -fill darkred -tags mesg -width 2
.c create line 220 17178 300 17178 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17192 -fill #eef -text "1431"
.c create line 140 17192 300 17192 -fill #eef -dash {6 4}
.c create line 300 17160 300 17180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1427 to 1431 (Used 1 nobox 1)
# ProcLine[2] stays at 1431 (Used 1 nobox 1)
.c create rectangle 282 17182 318 17202 -fill white -width 0
.c create text 300 17192 -text "go?S"
.c create text 70 17216 -fill #eef -text "1433"
.c create line 140 17216 300 17216 -fill #eef -dash {6 4}
.c create line 300 17208 300 17204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1431 to 1433 (Used 1 nobox 1)
# ProcLine[2] stays at 1433 (Used 1 nobox 1)
.c create rectangle 258 17206 342 17226 -fill white -width 0
.c create text 300 17216 -text "go to S "
.c create text 70 17240 -fill #eef -text "1435"
.c create line 140 17240 300 17240 -fill #eef -dash {6 4}
.c create line 140 17184 140 17228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1429 to 1435 (Used 1 nobox 1)
# ProcLine[1] stays at 1435 (Used 1 nobox 1)
.c create rectangle 122 17230 158 17250 -fill white -width 0
.c create text 140 17240 -text "go!S"
.c create line 140 17250 220 17250 -fill darkred -tags mesg -width 2
.c create line 220 17250 300 17250 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17264 -fill #eef -text "1437"
.c create line 140 17264 300 17264 -fill #eef -dash {6 4}
.c create line 300 17232 300 17252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1433 to 1437 (Used 1 nobox 1)
# ProcLine[2] stays at 1437 (Used 1 nobox 1)
.c create rectangle 282 17254 318 17274 -fill white -width 0
.c create text 300 17264 -text "go?S"
.c create text 70 17288 -fill #eef -text "1439"
.c create line 140 17288 300 17288 -fill #eef -dash {6 4}
.c create line 300 17280 300 17276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1437 to 1439 (Used 1 nobox 1)
# ProcLine[2] stays at 1439 (Used 1 nobox 1)
.c create rectangle 258 17278 342 17298 -fill white -width 0
.c create text 300 17288 -text "go to S "
.c create text 70 17312 -fill #eef -text "1441"
.c create line 140 17312 300 17312 -fill #eef -dash {6 4}
.c create line 140 17256 140 17300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1435 to 1441 (Used 1 nobox 1)
# ProcLine[1] stays at 1441 (Used 1 nobox 1)
.c create rectangle 122 17302 158 17322 -fill white -width 0
.c create text 140 17312 -text "go!W"
.c create line 140 17322 220 17322 -fill darkred -tags mesg -width 2
.c create line 220 17322 300 17322 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17336 -fill #eef -text "1443"
.c create line 140 17336 300 17336 -fill #eef -dash {6 4}
.c create line 300 17304 300 17324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1439 to 1443 (Used 1 nobox 1)
# ProcLine[2] stays at 1443 (Used 1 nobox 1)
.c create rectangle 282 17326 318 17346 -fill white -width 0
.c create text 300 17336 -text "go?W"
.c create text 70 17360 -fill #eef -text "1445"
.c create line 140 17360 300 17360 -fill #eef -dash {6 4}
.c create line 300 17352 300 17348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1443 to 1445 (Used 1 nobox 1)
# ProcLine[2] stays at 1445 (Used 1 nobox 1)
.c create rectangle 258 17350 342 17370 -fill white -width 0
.c create text 300 17360 -text "go to W "
.c create text 70 17384 -fill #eef -text "1447"
.c create line 140 17384 300 17384 -fill #eef -dash {6 4}
.c create line 140 17328 140 17372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1441 to 1447 (Used 1 nobox 1)
# ProcLine[1] stays at 1447 (Used 1 nobox 1)
.c create rectangle 122 17374 158 17394 -fill white -width 0
.c create text 140 17384 -text "go!W"
.c create line 140 17394 220 17394 -fill darkred -tags mesg -width 2
.c create line 220 17394 300 17394 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17408 -fill #eef -text "1449"
.c create line 140 17408 300 17408 -fill #eef -dash {6 4}
.c create line 300 17376 300 17396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1445 to 1449 (Used 1 nobox 1)
# ProcLine[2] stays at 1449 (Used 1 nobox 1)
.c create rectangle 282 17398 318 17418 -fill white -width 0
.c create text 300 17408 -text "go?W"
.c create text 70 17432 -fill #eef -text "1451"
.c create line 140 17432 300 17432 -fill #eef -dash {6 4}
.c create line 300 17424 300 17420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1449 to 1451 (Used 1 nobox 1)
# ProcLine[2] stays at 1451 (Used 1 nobox 1)
.c create rectangle 258 17422 342 17442 -fill white -width 0
.c create text 300 17432 -text "go to W "
.c create text 70 17456 -fill #eef -text "1453"
.c create line 140 17456 300 17456 -fill #eef -dash {6 4}
.c create line 140 17400 140 17444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1447 to 1453 (Used 1 nobox 1)
# ProcLine[1] stays at 1453 (Used 1 nobox 1)
.c create rectangle 122 17446 158 17466 -fill white -width 0
.c create text 140 17456 -text "go!W"
.c create line 140 17466 220 17466 -fill darkred -tags mesg -width 2
.c create line 220 17466 300 17466 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17480 -fill #eef -text "1455"
.c create line 140 17480 300 17480 -fill #eef -dash {6 4}
.c create line 300 17448 300 17468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1451 to 1455 (Used 1 nobox 1)
# ProcLine[2] stays at 1455 (Used 1 nobox 1)
.c create rectangle 282 17470 318 17490 -fill white -width 0
.c create text 300 17480 -text "go?W"
.c create text 70 17504 -fill #eef -text "1457"
.c create line 140 17504 300 17504 -fill #eef -dash {6 4}
.c create line 300 17496 300 17492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1455 to 1457 (Used 1 nobox 1)
# ProcLine[2] stays at 1457 (Used 1 nobox 1)
.c create rectangle 258 17494 342 17514 -fill white -width 0
.c create text 300 17504 -text "go to W "
.c create text 70 17528 -fill #eef -text "1459"
.c create line 140 17528 300 17528 -fill #eef -dash {6 4}
.c create line 140 17472 140 17516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1453 to 1459 (Used 1 nobox 1)
# ProcLine[1] stays at 1459 (Used 1 nobox 1)
.c create rectangle 122 17518 158 17538 -fill white -width 0
.c create text 140 17528 -text "go!E"
.c create line 140 17538 220 17538 -fill darkred -tags mesg -width 2
.c create line 220 17538 300 17538 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17552 -fill #eef -text "1461"
.c create line 140 17552 300 17552 -fill #eef -dash {6 4}
.c create line 300 17520 300 17540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1457 to 1461 (Used 1 nobox 1)
# ProcLine[2] stays at 1461 (Used 1 nobox 1)
.c create rectangle 282 17542 318 17562 -fill white -width 0
.c create text 300 17552 -text "go?E"
.c create text 70 17576 -fill #eef -text "1463"
.c create line 140 17576 300 17576 -fill #eef -dash {6 4}
.c create line 300 17568 300 17564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1461 to 1463 (Used 1 nobox 1)
# ProcLine[2] stays at 1463 (Used 1 nobox 1)
.c create rectangle 258 17566 342 17586 -fill white -width 0
.c create text 300 17576 -text "go to E "
.c create text 70 17600 -fill #eef -text "1465"
.c create line 140 17600 300 17600 -fill #eef -dash {6 4}
.c create line 140 17544 140 17588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1459 to 1465 (Used 1 nobox 1)
# ProcLine[1] stays at 1465 (Used 1 nobox 1)
.c create rectangle 122 17590 158 17610 -fill white -width 0
.c create text 140 17600 -text "go!E"
.c create line 140 17610 220 17610 -fill darkred -tags mesg -width 2
.c create line 220 17610 300 17610 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17624 -fill #eef -text "1467"
.c create line 140 17624 300 17624 -fill #eef -dash {6 4}
.c create line 300 17592 300 17612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1463 to 1467 (Used 1 nobox 1)
# ProcLine[2] stays at 1467 (Used 1 nobox 1)
.c create rectangle 282 17614 318 17634 -fill white -width 0
.c create text 300 17624 -text "go?E"
.c create text 70 17648 -fill #eef -text "1469"
.c create line 140 17648 300 17648 -fill #eef -dash {6 4}
.c create line 300 17640 300 17636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1467 to 1469 (Used 1 nobox 1)
# ProcLine[2] stays at 1469 (Used 1 nobox 1)
.c create rectangle 258 17638 342 17658 -fill white -width 0
.c create text 300 17648 -text "go to E "
.c create text 70 17672 -fill #eef -text "1471"
.c create line 140 17672 300 17672 -fill #eef -dash {6 4}
.c create line 140 17616 140 17660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1465 to 1471 (Used 1 nobox 1)
# ProcLine[1] stays at 1471 (Used 1 nobox 1)
.c create rectangle 122 17662 158 17682 -fill white -width 0
.c create text 140 17672 -text "go!E"
.c create line 140 17682 220 17682 -fill darkred -tags mesg -width 2
.c create line 220 17682 300 17682 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17696 -fill #eef -text "1473"
.c create line 140 17696 300 17696 -fill #eef -dash {6 4}
.c create line 300 17664 300 17684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1469 to 1473 (Used 1 nobox 1)
# ProcLine[2] stays at 1473 (Used 1 nobox 1)
.c create rectangle 282 17686 318 17706 -fill white -width 0
.c create text 300 17696 -text "go?E"
.c create text 70 17720 -fill #eef -text "1475"
.c create line 140 17720 300 17720 -fill #eef -dash {6 4}
.c create line 300 17712 300 17708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1473 to 1475 (Used 1 nobox 1)
# ProcLine[2] stays at 1475 (Used 1 nobox 1)
.c create rectangle 258 17710 342 17730 -fill white -width 0
.c create text 300 17720 -text "go to E "
.c create text 70 17744 -fill #eef -text "1477"
.c create line 140 17744 300 17744 -fill #eef -dash {6 4}
.c create line 140 17688 140 17732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1471 to 1477 (Used 1 nobox 1)
# ProcLine[1] stays at 1477 (Used 1 nobox 1)
.c create rectangle 122 17734 158 17754 -fill white -width 0
.c create text 140 17744 -text "go!S"
.c create line 140 17754 220 17754 -fill darkred -tags mesg -width 2
.c create line 220 17754 300 17754 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17768 -fill #eef -text "1479"
.c create line 140 17768 300 17768 -fill #eef -dash {6 4}
.c create line 300 17736 300 17756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1475 to 1479 (Used 1 nobox 1)
# ProcLine[2] stays at 1479 (Used 1 nobox 1)
.c create rectangle 282 17758 318 17778 -fill white -width 0
.c create text 300 17768 -text "go?S"
.c create text 70 17792 -fill #eef -text "1481"
.c create line 140 17792 300 17792 -fill #eef -dash {6 4}
.c create line 300 17784 300 17780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1479 to 1481 (Used 1 nobox 1)
# ProcLine[2] stays at 1481 (Used 1 nobox 1)
.c create rectangle 258 17782 342 17802 -fill white -width 0
.c create text 300 17792 -text "go to S "
.c create text 70 17816 -fill #eef -text "1483"
.c create line 140 17816 300 17816 -fill #eef -dash {6 4}
.c create line 140 17760 140 17804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1477 to 1483 (Used 1 nobox 1)
# ProcLine[1] stays at 1483 (Used 1 nobox 1)
.c create rectangle 122 17806 158 17826 -fill white -width 0
.c create text 140 17816 -text "go!N"
.c create line 140 17826 220 17826 -fill darkred -tags mesg -width 2
.c create line 220 17826 300 17826 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17840 -fill #eef -text "1485"
.c create line 140 17840 300 17840 -fill #eef -dash {6 4}
.c create line 300 17808 300 17828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1481 to 1485 (Used 1 nobox 1)
# ProcLine[2] stays at 1485 (Used 1 nobox 1)
.c create rectangle 282 17830 318 17850 -fill white -width 0
.c create text 300 17840 -text "go?N"
.c create text 70 17864 -fill #eef -text "1487"
.c create line 140 17864 300 17864 -fill #eef -dash {6 4}
.c create line 300 17856 300 17852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1485 to 1487 (Used 1 nobox 1)
# ProcLine[2] stays at 1487 (Used 1 nobox 1)
.c create rectangle 258 17854 342 17874 -fill white -width 0
.c create text 300 17864 -text "go to N "
.c create text 70 17888 -fill #eef -text "1489"
.c create line 140 17888 300 17888 -fill #eef -dash {6 4}
.c create line 140 17832 140 17876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1483 to 1489 (Used 1 nobox 1)
# ProcLine[1] stays at 1489 (Used 1 nobox 1)
.c create rectangle 122 17878 158 17898 -fill white -width 0
.c create text 140 17888 -text "go!W"
.c create line 140 17898 220 17898 -fill darkred -tags mesg -width 2
.c create line 220 17898 300 17898 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17912 -fill #eef -text "1491"
.c create line 140 17912 300 17912 -fill #eef -dash {6 4}
.c create line 300 17880 300 17900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1487 to 1491 (Used 1 nobox 1)
# ProcLine[2] stays at 1491 (Used 1 nobox 1)
.c create rectangle 282 17902 318 17922 -fill white -width 0
.c create text 300 17912 -text "go?W"
.c create text 70 17936 -fill #eef -text "1493"
.c create line 140 17936 300 17936 -fill #eef -dash {6 4}
.c create line 300 17928 300 17924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1491 to 1493 (Used 1 nobox 1)
# ProcLine[2] stays at 1493 (Used 1 nobox 1)
.c create rectangle 258 17926 342 17946 -fill white -width 0
.c create text 300 17936 -text "go to W "
.c create text 70 17960 -fill #eef -text "1495"
.c create line 140 17960 300 17960 -fill #eef -dash {6 4}
.c create line 140 17904 140 17948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1489 to 1495 (Used 1 nobox 1)
# ProcLine[1] stays at 1495 (Used 1 nobox 1)
.c create rectangle 122 17950 158 17970 -fill white -width 0
.c create text 140 17960 -text "go!E"
.c create line 140 17970 220 17970 -fill darkred -tags mesg -width 2
.c create line 220 17970 300 17970 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 17984 -fill #eef -text "1497"
.c create line 140 17984 300 17984 -fill #eef -dash {6 4}
.c create line 300 17952 300 17972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1493 to 1497 (Used 1 nobox 1)
# ProcLine[2] stays at 1497 (Used 1 nobox 1)
.c create rectangle 282 17974 318 17994 -fill white -width 0
.c create text 300 17984 -text "go?E"
.c create text 70 18008 -fill #eef -text "1499"
.c create line 140 18008 300 18008 -fill #eef -dash {6 4}
.c create line 300 18000 300 17996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1497 to 1499 (Used 1 nobox 1)
# ProcLine[2] stays at 1499 (Used 1 nobox 1)
.c create rectangle 258 17998 342 18018 -fill white -width 0
.c create text 300 18008 -text "go to E "
.c create text 70 18032 -fill #eef -text "1501"
.c create line 140 18032 300 18032 -fill #eef -dash {6 4}
.c create line 140 17976 140 18020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1495 to 1501 (Used 1 nobox 1)
# ProcLine[1] stays at 1501 (Used 1 nobox 1)
.c create rectangle 122 18022 158 18042 -fill white -width 0
.c create text 140 18032 -text "go!S"
.c create line 140 18042 220 18042 -fill darkred -tags mesg -width 2
.c create line 220 18042 300 18042 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18056 -fill #eef -text "1503"
.c create line 140 18056 300 18056 -fill #eef -dash {6 4}
.c create line 300 18024 300 18044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1499 to 1503 (Used 1 nobox 1)
# ProcLine[2] stays at 1503 (Used 1 nobox 1)
.c create rectangle 282 18046 318 18066 -fill white -width 0
.c create text 300 18056 -text "go?S"
.c create text 70 18080 -fill #eef -text "1505"
.c create line 140 18080 300 18080 -fill #eef -dash {6 4}
.c create line 300 18072 300 18068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1503 to 1505 (Used 1 nobox 1)
# ProcLine[2] stays at 1505 (Used 1 nobox 1)
.c create rectangle 258 18070 342 18090 -fill white -width 0
.c create text 300 18080 -text "go to S "
.c create text 70 18104 -fill #eef -text "1507"
.c create line 140 18104 300 18104 -fill #eef -dash {6 4}
.c create line 140 18048 140 18092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1501 to 1507 (Used 1 nobox 1)
# ProcLine[1] stays at 1507 (Used 1 nobox 1)
.c create rectangle 122 18094 158 18114 -fill white -width 0
.c create text 140 18104 -text "go!N"
.c create line 140 18114 220 18114 -fill darkred -tags mesg -width 2
.c create line 220 18114 300 18114 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18128 -fill #eef -text "1509"
.c create line 140 18128 300 18128 -fill #eef -dash {6 4}
.c create line 300 18096 300 18116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1505 to 1509 (Used 1 nobox 1)
# ProcLine[2] stays at 1509 (Used 1 nobox 1)
.c create rectangle 282 18118 318 18138 -fill white -width 0
.c create text 300 18128 -text "go?N"
.c create text 70 18152 -fill #eef -text "1511"
.c create line 140 18152 300 18152 -fill #eef -dash {6 4}
.c create line 300 18144 300 18140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1509 to 1511 (Used 1 nobox 1)
# ProcLine[2] stays at 1511 (Used 1 nobox 1)
.c create rectangle 258 18142 342 18162 -fill white -width 0
.c create text 300 18152 -text "go to N "
.c create text 70 18176 -fill #eef -text "1513"
.c create line 140 18176 300 18176 -fill #eef -dash {6 4}
.c create line 140 18120 140 18164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1507 to 1513 (Used 1 nobox 1)
# ProcLine[1] stays at 1513 (Used 1 nobox 1)
.c create rectangle 122 18166 158 18186 -fill white -width 0
.c create text 140 18176 -text "go!N"
.c create line 140 18186 220 18186 -fill darkred -tags mesg -width 2
.c create line 220 18186 300 18186 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18200 -fill #eef -text "1515"
.c create line 140 18200 300 18200 -fill #eef -dash {6 4}
.c create line 300 18168 300 18188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1511 to 1515 (Used 1 nobox 1)
# ProcLine[2] stays at 1515 (Used 1 nobox 1)
.c create rectangle 282 18190 318 18210 -fill white -width 0
.c create text 300 18200 -text "go?N"
.c create text 70 18224 -fill #eef -text "1517"
.c create line 140 18224 300 18224 -fill #eef -dash {6 4}
.c create line 300 18216 300 18212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1515 to 1517 (Used 1 nobox 1)
# ProcLine[2] stays at 1517 (Used 1 nobox 1)
.c create rectangle 258 18214 342 18234 -fill white -width 0
.c create text 300 18224 -text "go to N "
.c create text 70 18248 -fill #eef -text "1519"
.c create line 140 18248 300 18248 -fill #eef -dash {6 4}
.c create line 140 18192 140 18236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1513 to 1519 (Used 1 nobox 1)
# ProcLine[1] stays at 1519 (Used 1 nobox 1)
.c create rectangle 122 18238 158 18258 -fill white -width 0
.c create text 140 18248 -text "go!N"
.c create line 140 18258 220 18258 -fill darkred -tags mesg -width 2
.c create line 220 18258 300 18258 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18272 -fill #eef -text "1521"
.c create line 140 18272 300 18272 -fill #eef -dash {6 4}
.c create line 300 18240 300 18260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1517 to 1521 (Used 1 nobox 1)
# ProcLine[2] stays at 1521 (Used 1 nobox 1)
.c create rectangle 282 18262 318 18282 -fill white -width 0
.c create text 300 18272 -text "go?N"
.c create text 70 18296 -fill #eef -text "1523"
.c create line 140 18296 300 18296 -fill #eef -dash {6 4}
.c create line 300 18288 300 18284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1521 to 1523 (Used 1 nobox 1)
# ProcLine[2] stays at 1523 (Used 1 nobox 1)
.c create rectangle 258 18286 342 18306 -fill white -width 0
.c create text 300 18296 -text "go to N "
.c create text 70 18320 -fill #eef -text "1525"
.c create line 140 18320 300 18320 -fill #eef -dash {6 4}
.c create line 140 18264 140 18308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1519 to 1525 (Used 1 nobox 1)
# ProcLine[1] stays at 1525 (Used 1 nobox 1)
.c create rectangle 122 18310 158 18330 -fill white -width 0
.c create text 140 18320 -text "go!N"
.c create line 140 18330 220 18330 -fill darkred -tags mesg -width 2
.c create line 220 18330 300 18330 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18344 -fill #eef -text "1527"
.c create line 140 18344 300 18344 -fill #eef -dash {6 4}
.c create line 300 18312 300 18332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1523 to 1527 (Used 1 nobox 1)
# ProcLine[2] stays at 1527 (Used 1 nobox 1)
.c create rectangle 282 18334 318 18354 -fill white -width 0
.c create text 300 18344 -text "go?N"
.c create text 70 18368 -fill #eef -text "1529"
.c create line 140 18368 300 18368 -fill #eef -dash {6 4}
.c create line 300 18360 300 18356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1527 to 1529 (Used 1 nobox 1)
# ProcLine[2] stays at 1529 (Used 1 nobox 1)
.c create rectangle 258 18358 342 18378 -fill white -width 0
.c create text 300 18368 -text "go to N "
.c create text 70 18392 -fill #eef -text "1531"
.c create line 140 18392 300 18392 -fill #eef -dash {6 4}
.c create line 140 18336 140 18380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1525 to 1531 (Used 1 nobox 1)
# ProcLine[1] stays at 1531 (Used 1 nobox 1)
.c create rectangle 122 18382 158 18402 -fill white -width 0
.c create text 140 18392 -text "go!S"
.c create line 140 18402 220 18402 -fill darkred -tags mesg -width 2
.c create line 220 18402 300 18402 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18416 -fill #eef -text "1533"
.c create line 140 18416 300 18416 -fill #eef -dash {6 4}
.c create line 300 18384 300 18404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1529 to 1533 (Used 1 nobox 1)
# ProcLine[2] stays at 1533 (Used 1 nobox 1)
.c create rectangle 282 18406 318 18426 -fill white -width 0
.c create text 300 18416 -text "go?S"
.c create text 70 18440 -fill #eef -text "1535"
.c create line 140 18440 300 18440 -fill #eef -dash {6 4}
.c create line 300 18432 300 18428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1533 to 1535 (Used 1 nobox 1)
# ProcLine[2] stays at 1535 (Used 1 nobox 1)
.c create rectangle 258 18430 342 18450 -fill white -width 0
.c create text 300 18440 -text "go to S "
.c create text 70 18464 -fill #eef -text "1537"
.c create line 140 18464 300 18464 -fill #eef -dash {6 4}
.c create line 140 18408 140 18452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1531 to 1537 (Used 1 nobox 1)
# ProcLine[1] stays at 1537 (Used 1 nobox 1)
.c create rectangle 122 18454 158 18474 -fill white -width 0
.c create text 140 18464 -text "go!S"
.c create line 140 18474 220 18474 -fill darkred -tags mesg -width 2
.c create line 220 18474 300 18474 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18488 -fill #eef -text "1539"
.c create line 140 18488 300 18488 -fill #eef -dash {6 4}
.c create line 300 18456 300 18476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1535 to 1539 (Used 1 nobox 1)
# ProcLine[2] stays at 1539 (Used 1 nobox 1)
.c create rectangle 282 18478 318 18498 -fill white -width 0
.c create text 300 18488 -text "go?S"
.c create text 70 18512 -fill #eef -text "1541"
.c create line 140 18512 300 18512 -fill #eef -dash {6 4}
.c create line 300 18504 300 18500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1539 to 1541 (Used 1 nobox 1)
# ProcLine[2] stays at 1541 (Used 1 nobox 1)
.c create rectangle 258 18502 342 18522 -fill white -width 0
.c create text 300 18512 -text "go to S "
.c create text 70 18536 -fill #eef -text "1543"
.c create line 140 18536 300 18536 -fill #eef -dash {6 4}
.c create line 140 18480 140 18524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1537 to 1543 (Used 1 nobox 1)
# ProcLine[1] stays at 1543 (Used 1 nobox 1)
.c create rectangle 122 18526 158 18546 -fill white -width 0
.c create text 140 18536 -text "go!S"
.c create line 140 18546 220 18546 -fill darkred -tags mesg -width 2
.c create line 220 18546 300 18546 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18560 -fill #eef -text "1545"
.c create line 140 18560 300 18560 -fill #eef -dash {6 4}
.c create line 300 18528 300 18548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1541 to 1545 (Used 1 nobox 1)
# ProcLine[2] stays at 1545 (Used 1 nobox 1)
.c create rectangle 282 18550 318 18570 -fill white -width 0
.c create text 300 18560 -text "go?S"
.c create text 70 18584 -fill #eef -text "1547"
.c create line 140 18584 300 18584 -fill #eef -dash {6 4}
.c create line 300 18576 300 18572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1545 to 1547 (Used 1 nobox 1)
# ProcLine[2] stays at 1547 (Used 1 nobox 1)
.c create rectangle 258 18574 342 18594 -fill white -width 0
.c create text 300 18584 -text "go to S "
.c create text 70 18608 -fill #eef -text "1549"
.c create line 140 18608 300 18608 -fill #eef -dash {6 4}
.c create line 140 18552 140 18596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1543 to 1549 (Used 1 nobox 1)
# ProcLine[1] stays at 1549 (Used 1 nobox 1)
.c create rectangle 122 18598 158 18618 -fill white -width 0
.c create text 140 18608 -text "go!S"
.c create line 140 18618 220 18618 -fill darkred -tags mesg -width 2
.c create line 220 18618 300 18618 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18632 -fill #eef -text "1551"
.c create line 140 18632 300 18632 -fill #eef -dash {6 4}
.c create line 300 18600 300 18620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1547 to 1551 (Used 1 nobox 1)
# ProcLine[2] stays at 1551 (Used 1 nobox 1)
.c create rectangle 282 18622 318 18642 -fill white -width 0
.c create text 300 18632 -text "go?S"
.c create text 70 18656 -fill #eef -text "1553"
.c create line 140 18656 300 18656 -fill #eef -dash {6 4}
.c create line 300 18648 300 18644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1551 to 1553 (Used 1 nobox 1)
# ProcLine[2] stays at 1553 (Used 1 nobox 1)
.c create rectangle 258 18646 342 18666 -fill white -width 0
.c create text 300 18656 -text "go to S "
.c create text 70 18680 -fill #eef -text "1555"
.c create line 140 18680 300 18680 -fill #eef -dash {6 4}
.c create line 140 18624 140 18668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1549 to 1555 (Used 1 nobox 1)
# ProcLine[1] stays at 1555 (Used 1 nobox 1)
.c create rectangle 122 18670 158 18690 -fill white -width 0
.c create text 140 18680 -text "go!N"
.c create line 140 18690 220 18690 -fill darkred -tags mesg -width 2
.c create line 220 18690 300 18690 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18704 -fill #eef -text "1557"
.c create line 140 18704 300 18704 -fill #eef -dash {6 4}
.c create line 300 18672 300 18692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1553 to 1557 (Used 1 nobox 1)
# ProcLine[2] stays at 1557 (Used 1 nobox 1)
.c create rectangle 282 18694 318 18714 -fill white -width 0
.c create text 300 18704 -text "go?N"
.c create text 70 18728 -fill #eef -text "1559"
.c create line 140 18728 300 18728 -fill #eef -dash {6 4}
.c create line 300 18720 300 18716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1557 to 1559 (Used 1 nobox 1)
# ProcLine[2] stays at 1559 (Used 1 nobox 1)
.c create rectangle 258 18718 342 18738 -fill white -width 0
.c create text 300 18728 -text "go to N "
.c create text 70 18752 -fill #eef -text "1561"
.c create line 140 18752 300 18752 -fill #eef -dash {6 4}
.c create line 140 18696 140 18740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1555 to 1561 (Used 1 nobox 1)
# ProcLine[1] stays at 1561 (Used 1 nobox 1)
.c create rectangle 122 18742 158 18762 -fill white -width 0
.c create text 140 18752 -text "go!N"
.c create line 140 18762 220 18762 -fill darkred -tags mesg -width 2
.c create line 220 18762 300 18762 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18776 -fill #eef -text "1563"
.c create line 140 18776 300 18776 -fill #eef -dash {6 4}
.c create line 300 18744 300 18764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1559 to 1563 (Used 1 nobox 1)
# ProcLine[2] stays at 1563 (Used 1 nobox 1)
.c create rectangle 282 18766 318 18786 -fill white -width 0
.c create text 300 18776 -text "go?N"
.c create text 70 18800 -fill #eef -text "1565"
.c create line 140 18800 300 18800 -fill #eef -dash {6 4}
.c create line 300 18792 300 18788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1563 to 1565 (Used 1 nobox 1)
# ProcLine[2] stays at 1565 (Used 1 nobox 1)
.c create rectangle 258 18790 342 18810 -fill white -width 0
.c create text 300 18800 -text "go to N "
.c create text 70 18824 -fill #eef -text "1567"
.c create line 140 18824 300 18824 -fill #eef -dash {6 4}
.c create line 140 18768 140 18812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1561 to 1567 (Used 1 nobox 1)
# ProcLine[1] stays at 1567 (Used 1 nobox 1)
.c create rectangle 122 18814 158 18834 -fill white -width 0
.c create text 140 18824 -text "go!N"
.c create line 140 18834 220 18834 -fill darkred -tags mesg -width 2
.c create line 220 18834 300 18834 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18848 -fill #eef -text "1569"
.c create line 140 18848 300 18848 -fill #eef -dash {6 4}
.c create line 300 18816 300 18836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1565 to 1569 (Used 1 nobox 1)
# ProcLine[2] stays at 1569 (Used 1 nobox 1)
.c create rectangle 282 18838 318 18858 -fill white -width 0
.c create text 300 18848 -text "go?N"
.c create text 70 18872 -fill #eef -text "1571"
.c create line 140 18872 300 18872 -fill #eef -dash {6 4}
.c create line 300 18864 300 18860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1569 to 1571 (Used 1 nobox 1)
# ProcLine[2] stays at 1571 (Used 1 nobox 1)
.c create rectangle 258 18862 342 18882 -fill white -width 0
.c create text 300 18872 -text "go to N "
.c create text 70 18896 -fill #eef -text "1573"
.c create line 140 18896 300 18896 -fill #eef -dash {6 4}
.c create line 140 18840 140 18884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1567 to 1573 (Used 1 nobox 1)
# ProcLine[1] stays at 1573 (Used 1 nobox 1)
.c create rectangle 122 18886 158 18906 -fill white -width 0
.c create text 140 18896 -text "go!S"
.c create line 140 18906 220 18906 -fill darkred -tags mesg -width 2
.c create line 220 18906 300 18906 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18920 -fill #eef -text "1575"
.c create line 140 18920 300 18920 -fill #eef -dash {6 4}
.c create line 300 18888 300 18908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1571 to 1575 (Used 1 nobox 1)
# ProcLine[2] stays at 1575 (Used 1 nobox 1)
.c create rectangle 282 18910 318 18930 -fill white -width 0
.c create text 300 18920 -text "go?S"
.c create text 70 18944 -fill #eef -text "1577"
.c create line 140 18944 300 18944 -fill #eef -dash {6 4}
.c create line 300 18936 300 18932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1575 to 1577 (Used 1 nobox 1)
# ProcLine[2] stays at 1577 (Used 1 nobox 1)
.c create rectangle 258 18934 342 18954 -fill white -width 0
.c create text 300 18944 -text "go to S "
.c create text 70 18968 -fill #eef -text "1579"
.c create line 140 18968 300 18968 -fill #eef -dash {6 4}
.c create line 140 18912 140 18956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1573 to 1579 (Used 1 nobox 1)
# ProcLine[1] stays at 1579 (Used 1 nobox 1)
.c create rectangle 122 18958 158 18978 -fill white -width 0
.c create text 140 18968 -text "go!N"
.c create line 140 18978 220 18978 -fill darkred -tags mesg -width 2
.c create line 220 18978 300 18978 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 18992 -fill #eef -text "1581"
.c create line 140 18992 300 18992 -fill #eef -dash {6 4}
.c create line 300 18960 300 18980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1577 to 1581 (Used 1 nobox 1)
# ProcLine[2] stays at 1581 (Used 1 nobox 1)
.c create rectangle 282 18982 318 19002 -fill white -width 0
.c create text 300 18992 -text "go?N"
.c create text 70 19016 -fill #eef -text "1583"
.c create line 140 19016 300 19016 -fill #eef -dash {6 4}
.c create line 300 19008 300 19004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1581 to 1583 (Used 1 nobox 1)
# ProcLine[2] stays at 1583 (Used 1 nobox 1)
.c create rectangle 258 19006 342 19026 -fill white -width 0
.c create text 300 19016 -text "go to N "
.c create text 70 19040 -fill #eef -text "1585"
.c create line 140 19040 300 19040 -fill #eef -dash {6 4}
.c create line 140 18984 140 19028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1579 to 1585 (Used 1 nobox 1)
# ProcLine[1] stays at 1585 (Used 1 nobox 1)
.c create rectangle 122 19030 158 19050 -fill white -width 0
.c create text 140 19040 -text "go!S"
.c create line 140 19050 220 19050 -fill darkred -tags mesg -width 2
.c create line 220 19050 300 19050 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19064 -fill #eef -text "1587"
.c create line 140 19064 300 19064 -fill #eef -dash {6 4}
.c create line 300 19032 300 19052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1583 to 1587 (Used 1 nobox 1)
# ProcLine[2] stays at 1587 (Used 1 nobox 1)
.c create rectangle 282 19054 318 19074 -fill white -width 0
.c create text 300 19064 -text "go?S"
.c create text 70 19088 -fill #eef -text "1589"
.c create line 140 19088 300 19088 -fill #eef -dash {6 4}
.c create line 300 19080 300 19076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1587 to 1589 (Used 1 nobox 1)
# ProcLine[2] stays at 1589 (Used 1 nobox 1)
.c create rectangle 258 19078 342 19098 -fill white -width 0
.c create text 300 19088 -text "go to S "
.c create text 70 19112 -fill #eef -text "1591"
.c create line 140 19112 300 19112 -fill #eef -dash {6 4}
.c create line 140 19056 140 19100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1585 to 1591 (Used 1 nobox 1)
# ProcLine[1] stays at 1591 (Used 1 nobox 1)
.c create rectangle 122 19102 158 19122 -fill white -width 0
.c create text 140 19112 -text "go!S"
.c create line 140 19122 220 19122 -fill darkred -tags mesg -width 2
.c create line 220 19122 300 19122 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19136 -fill #eef -text "1593"
.c create line 140 19136 300 19136 -fill #eef -dash {6 4}
.c create line 300 19104 300 19124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1589 to 1593 (Used 1 nobox 1)
# ProcLine[2] stays at 1593 (Used 1 nobox 1)
.c create rectangle 282 19126 318 19146 -fill white -width 0
.c create text 300 19136 -text "go?S"
.c create text 70 19160 -fill #eef -text "1595"
.c create line 140 19160 300 19160 -fill #eef -dash {6 4}
.c create line 300 19152 300 19148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1593 to 1595 (Used 1 nobox 1)
# ProcLine[2] stays at 1595 (Used 1 nobox 1)
.c create rectangle 258 19150 342 19170 -fill white -width 0
.c create text 300 19160 -text "go to S "
.c create text 70 19184 -fill #eef -text "1597"
.c create line 140 19184 300 19184 -fill #eef -dash {6 4}
.c create line 140 19128 140 19172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1591 to 1597 (Used 1 nobox 1)
# ProcLine[1] stays at 1597 (Used 1 nobox 1)
.c create rectangle 122 19174 158 19194 -fill white -width 0
.c create text 140 19184 -text "go!N"
.c create line 140 19194 220 19194 -fill darkred -tags mesg -width 2
.c create line 220 19194 300 19194 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19208 -fill #eef -text "1599"
.c create line 140 19208 300 19208 -fill #eef -dash {6 4}
.c create line 300 19176 300 19196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1595 to 1599 (Used 1 nobox 1)
# ProcLine[2] stays at 1599 (Used 1 nobox 1)
.c create rectangle 282 19198 318 19218 -fill white -width 0
.c create text 300 19208 -text "go?N"
.c create text 70 19232 -fill #eef -text "1601"
.c create line 140 19232 300 19232 -fill #eef -dash {6 4}
.c create line 300 19224 300 19220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1599 to 1601 (Used 1 nobox 1)
# ProcLine[2] stays at 1601 (Used 1 nobox 1)
.c create rectangle 258 19222 342 19242 -fill white -width 0
.c create text 300 19232 -text "go to N "
.c create text 70 19256 -fill #eef -text "1603"
.c create line 140 19256 300 19256 -fill #eef -dash {6 4}
.c create line 140 19200 140 19244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1597 to 1603 (Used 1 nobox 1)
# ProcLine[1] stays at 1603 (Used 1 nobox 1)
.c create rectangle 122 19246 158 19266 -fill white -width 0
.c create text 140 19256 -text "go!S"
.c create line 140 19266 220 19266 -fill darkred -tags mesg -width 2
.c create line 220 19266 300 19266 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19280 -fill #eef -text "1605"
.c create line 140 19280 300 19280 -fill #eef -dash {6 4}
.c create line 300 19248 300 19268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1601 to 1605 (Used 1 nobox 1)
# ProcLine[2] stays at 1605 (Used 1 nobox 1)
.c create rectangle 282 19270 318 19290 -fill white -width 0
.c create text 300 19280 -text "go?S"
.c create text 70 19304 -fill #eef -text "1607"
.c create line 140 19304 300 19304 -fill #eef -dash {6 4}
.c create line 300 19296 300 19292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1605 to 1607 (Used 1 nobox 1)
# ProcLine[2] stays at 1607 (Used 1 nobox 1)
.c create rectangle 258 19294 342 19314 -fill white -width 0
.c create text 300 19304 -text "go to S "
.c create text 70 19328 -fill #eef -text "1609"
.c create line 140 19328 300 19328 -fill #eef -dash {6 4}
.c create line 140 19272 140 19316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1603 to 1609 (Used 1 nobox 1)
# ProcLine[1] stays at 1609 (Used 1 nobox 1)
.c create rectangle 122 19318 158 19338 -fill white -width 0
.c create text 140 19328 -text "go!S"
.c create line 140 19338 220 19338 -fill darkred -tags mesg -width 2
.c create line 220 19338 300 19338 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19352 -fill #eef -text "1611"
.c create line 140 19352 300 19352 -fill #eef -dash {6 4}
.c create line 300 19320 300 19340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1607 to 1611 (Used 1 nobox 1)
# ProcLine[2] stays at 1611 (Used 1 nobox 1)
.c create rectangle 282 19342 318 19362 -fill white -width 0
.c create text 300 19352 -text "go?S"
.c create text 70 19376 -fill #eef -text "1613"
.c create line 140 19376 300 19376 -fill #eef -dash {6 4}
.c create line 300 19368 300 19364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1611 to 1613 (Used 1 nobox 1)
# ProcLine[2] stays at 1613 (Used 1 nobox 1)
.c create rectangle 258 19366 342 19386 -fill white -width 0
.c create text 300 19376 -text "go to S "
.c create text 70 19400 -fill #eef -text "1615"
.c create line 140 19400 300 19400 -fill #eef -dash {6 4}
.c create line 140 19344 140 19388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1609 to 1615 (Used 1 nobox 1)
# ProcLine[1] stays at 1615 (Used 1 nobox 1)
.c create rectangle 122 19390 158 19410 -fill white -width 0
.c create text 140 19400 -text "go!N"
.c create line 140 19410 220 19410 -fill darkred -tags mesg -width 2
.c create line 220 19410 300 19410 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19424 -fill #eef -text "1617"
.c create line 140 19424 300 19424 -fill #eef -dash {6 4}
.c create line 300 19392 300 19412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1613 to 1617 (Used 1 nobox 1)
# ProcLine[2] stays at 1617 (Used 1 nobox 1)
.c create rectangle 282 19414 318 19434 -fill white -width 0
.c create text 300 19424 -text "go?N"
.c create text 70 19448 -fill #eef -text "1619"
.c create line 140 19448 300 19448 -fill #eef -dash {6 4}
.c create line 300 19440 300 19436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1617 to 1619 (Used 1 nobox 1)
# ProcLine[2] stays at 1619 (Used 1 nobox 1)
.c create rectangle 258 19438 342 19458 -fill white -width 0
.c create text 300 19448 -text "go to N "
.c create text 70 19472 -fill #eef -text "1621"
.c create line 140 19472 300 19472 -fill #eef -dash {6 4}
.c create line 140 19416 140 19460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1615 to 1621 (Used 1 nobox 1)
# ProcLine[1] stays at 1621 (Used 1 nobox 1)
.c create rectangle 122 19462 158 19482 -fill white -width 0
.c create text 140 19472 -text "go!S"
.c create line 140 19482 220 19482 -fill darkred -tags mesg -width 2
.c create line 220 19482 300 19482 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19496 -fill #eef -text "1623"
.c create line 140 19496 300 19496 -fill #eef -dash {6 4}
.c create line 300 19464 300 19484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1619 to 1623 (Used 1 nobox 1)
# ProcLine[2] stays at 1623 (Used 1 nobox 1)
.c create rectangle 282 19486 318 19506 -fill white -width 0
.c create text 300 19496 -text "go?S"
.c create text 70 19520 -fill #eef -text "1625"
.c create line 140 19520 300 19520 -fill #eef -dash {6 4}
.c create line 300 19512 300 19508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1623 to 1625 (Used 1 nobox 1)
# ProcLine[2] stays at 1625 (Used 1 nobox 1)
.c create rectangle 258 19510 342 19530 -fill white -width 0
.c create text 300 19520 -text "go to S "
.c create text 70 19544 -fill #eef -text "1627"
.c create line 140 19544 300 19544 -fill #eef -dash {6 4}
.c create line 140 19488 140 19532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1621 to 1627 (Used 1 nobox 1)
# ProcLine[1] stays at 1627 (Used 1 nobox 1)
.c create rectangle 122 19534 158 19554 -fill white -width 0
.c create text 140 19544 -text "go!N"
.c create line 140 19554 220 19554 -fill darkred -tags mesg -width 2
.c create line 220 19554 300 19554 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19568 -fill #eef -text "1629"
.c create line 140 19568 300 19568 -fill #eef -dash {6 4}
.c create line 300 19536 300 19556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1625 to 1629 (Used 1 nobox 1)
# ProcLine[2] stays at 1629 (Used 1 nobox 1)
.c create rectangle 282 19558 318 19578 -fill white -width 0
.c create text 300 19568 -text "go?N"
.c create text 70 19592 -fill #eef -text "1631"
.c create line 140 19592 300 19592 -fill #eef -dash {6 4}
.c create line 300 19584 300 19580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1629 to 1631 (Used 1 nobox 1)
# ProcLine[2] stays at 1631 (Used 1 nobox 1)
.c create rectangle 258 19582 342 19602 -fill white -width 0
.c create text 300 19592 -text "go to N "
.c create text 70 19616 -fill #eef -text "1633"
.c create line 140 19616 300 19616 -fill #eef -dash {6 4}
.c create line 140 19560 140 19604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1627 to 1633 (Used 1 nobox 1)
# ProcLine[1] stays at 1633 (Used 1 nobox 1)
.c create rectangle 122 19606 158 19626 -fill white -width 0
.c create text 140 19616 -text "go!W"
.c create line 140 19626 220 19626 -fill darkred -tags mesg -width 2
.c create line 220 19626 300 19626 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19640 -fill #eef -text "1635"
.c create line 140 19640 300 19640 -fill #eef -dash {6 4}
.c create line 300 19608 300 19628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1631 to 1635 (Used 1 nobox 1)
# ProcLine[2] stays at 1635 (Used 1 nobox 1)
.c create rectangle 282 19630 318 19650 -fill white -width 0
.c create text 300 19640 -text "go?W"
.c create text 70 19664 -fill #eef -text "1637"
.c create line 140 19664 300 19664 -fill #eef -dash {6 4}
.c create line 300 19656 300 19652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1635 to 1637 (Used 1 nobox 1)
# ProcLine[2] stays at 1637 (Used 1 nobox 1)
.c create rectangle 258 19654 342 19674 -fill white -width 0
.c create text 300 19664 -text "go to W "
.c create text 70 19688 -fill #eef -text "1639"
.c create line 140 19688 300 19688 -fill #eef -dash {6 4}
.c create line 140 19632 140 19676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1633 to 1639 (Used 1 nobox 1)
# ProcLine[1] stays at 1639 (Used 1 nobox 1)
.c create rectangle 122 19678 158 19698 -fill white -width 0
.c create text 140 19688 -text "go!W"
.c create line 140 19698 220 19698 -fill darkred -tags mesg -width 2
.c create line 220 19698 300 19698 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19712 -fill #eef -text "1641"
.c create line 140 19712 300 19712 -fill #eef -dash {6 4}
.c create line 300 19680 300 19700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1637 to 1641 (Used 1 nobox 1)
# ProcLine[2] stays at 1641 (Used 1 nobox 1)
.c create rectangle 282 19702 318 19722 -fill white -width 0
.c create text 300 19712 -text "go?W"
.c create text 70 19736 -fill #eef -text "1643"
.c create line 140 19736 300 19736 -fill #eef -dash {6 4}
.c create line 300 19728 300 19724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1641 to 1643 (Used 1 nobox 1)
# ProcLine[2] stays at 1643 (Used 1 nobox 1)
.c create rectangle 258 19726 342 19746 -fill white -width 0
.c create text 300 19736 -text "go to W "
.c create text 70 19760 -fill #eef -text "1645"
.c create line 140 19760 300 19760 -fill #eef -dash {6 4}
.c create line 140 19704 140 19748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1639 to 1645 (Used 1 nobox 1)
# ProcLine[1] stays at 1645 (Used 1 nobox 1)
.c create rectangle 122 19750 158 19770 -fill white -width 0
.c create text 140 19760 -text "go!W"
.c create line 140 19770 220 19770 -fill darkred -tags mesg -width 2
.c create line 220 19770 300 19770 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19784 -fill #eef -text "1647"
.c create line 140 19784 300 19784 -fill #eef -dash {6 4}
.c create line 300 19752 300 19772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1643 to 1647 (Used 1 nobox 1)
# ProcLine[2] stays at 1647 (Used 1 nobox 1)
.c create rectangle 282 19774 318 19794 -fill white -width 0
.c create text 300 19784 -text "go?W"
.c create text 70 19808 -fill #eef -text "1649"
.c create line 140 19808 300 19808 -fill #eef -dash {6 4}
.c create line 300 19800 300 19796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1647 to 1649 (Used 1 nobox 1)
# ProcLine[2] stays at 1649 (Used 1 nobox 1)
.c create rectangle 258 19798 342 19818 -fill white -width 0
.c create text 300 19808 -text "go to W "
.c create text 70 19832 -fill #eef -text "1651"
.c create line 140 19832 300 19832 -fill #eef -dash {6 4}
.c create line 140 19776 140 19820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1645 to 1651 (Used 1 nobox 1)
# ProcLine[1] stays at 1651 (Used 1 nobox 1)
.c create rectangle 122 19822 158 19842 -fill white -width 0
.c create text 140 19832 -text "go!N"
.c create line 140 19842 220 19842 -fill darkred -tags mesg -width 2
.c create line 220 19842 300 19842 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19856 -fill #eef -text "1653"
.c create line 140 19856 300 19856 -fill #eef -dash {6 4}
.c create line 300 19824 300 19844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1649 to 1653 (Used 1 nobox 1)
# ProcLine[2] stays at 1653 (Used 1 nobox 1)
.c create rectangle 282 19846 318 19866 -fill white -width 0
.c create text 300 19856 -text "go?N"
.c create text 70 19880 -fill #eef -text "1655"
.c create line 140 19880 300 19880 -fill #eef -dash {6 4}
.c create line 300 19872 300 19868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1653 to 1655 (Used 1 nobox 1)
# ProcLine[2] stays at 1655 (Used 1 nobox 1)
.c create rectangle 258 19870 342 19890 -fill white -width 0
.c create text 300 19880 -text "go to N "
.c create text 70 19904 -fill #eef -text "1657"
.c create line 140 19904 300 19904 -fill #eef -dash {6 4}
.c create line 140 19848 140 19892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1651 to 1657 (Used 1 nobox 1)
# ProcLine[1] stays at 1657 (Used 1 nobox 1)
.c create rectangle 122 19894 158 19914 -fill white -width 0
.c create text 140 19904 -text "go!W"
.c create line 140 19914 220 19914 -fill darkred -tags mesg -width 2
.c create line 220 19914 300 19914 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 19928 -fill #eef -text "1659"
.c create line 140 19928 300 19928 -fill #eef -dash {6 4}
.c create line 300 19896 300 19916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1655 to 1659 (Used 1 nobox 1)
# ProcLine[2] stays at 1659 (Used 1 nobox 1)
.c create rectangle 282 19918 318 19938 -fill white -width 0
.c create text 300 19928 -text "go?W"
.c create text 70 19952 -fill #eef -text "1661"
.c create line 140 19952 300 19952 -fill #eef -dash {6 4}
.c create line 300 19944 300 19940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1659 to 1661 (Used 1 nobox 1)
# ProcLine[2] stays at 1661 (Used 1 nobox 1)
.c create rectangle 258 19942 342 19962 -fill white -width 0
.c create text 300 19952 -text "go to W "
.c lower grid
.c raise mesg
