.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_26_8006F7A8, 0x364

glabel func_level_26_8006F7A8
    /* 1DB2544 8006F7A8 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 1DB2548 8006F7AC 4800B2AF */  sw         $s2, 0x48($sp)
    /* 1DB254C 8006F7B0 0680123C */  lui        $s2, %hi(D_80067FBC)
    /* 1DB2550 8006F7B4 BC7F5226 */  addiu      $s2, $s2, %lo(D_80067FBC)
    /* 1DB2554 8006F7B8 5000BFAF */  sw         $ra, 0x50($sp)
    /* 1DB2558 8006F7BC 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 1DB255C 8006F7C0 4400B1AF */  sw         $s1, 0x44($sp)
    /* 1DB2560 8006F7C4 4000B0AF */  sw         $s0, 0x40($sp)
    /* 1DB2564 8006F7C8 0000428E */  lw         $v0, 0x0($s2)
    /* 1DB2568 8006F7CC 00000000 */  nop
    /* 1DB256C 8006F7D0 02004224 */  addiu      $v0, $v0, 0x2
    /* 1DB2570 8006F7D4 83980200 */  sra        $s3, $v0, 2
    /* 1DB2574 8006F7D8 0500622A */  slti       $v0, $s3, 0x5
    /* 1DB2578 8006F7DC 02004014 */  bnez       $v0, .Llevel_26_8006F7E8
    /* 1DB257C 8006F7E0 00000000 */   nop
    /* 1DB2580 8006F7E4 04001324 */  addiu      $s3, $zero, 0x4
  .Llevel_26_8006F7E8:
    /* 1DB2584 8006F7E8 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 1DB2588 8006F7EC D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1DB258C 8006F7F0 0D000224 */  addiu      $v0, $zero, 0xD
    /* 1DB2590 8006F7F4 05006210 */  beq        $v1, $v0, .Llevel_26_8006F80C
    /* 1DB2594 8006F7F8 14000224 */   addiu     $v0, $zero, 0x14
    /* 1DB2598 8006F7FC 68006210 */  beq        $v1, $v0, .Llevel_26_8006F9A0
    /* 1DB259C 8006F800 21280000 */   addu      $a1, $zero, $zero
    /* 1DB25A0 8006F804 BBBE0108 */  j          .Llevel_26_8006FAEC
    /* 1DB25A4 8006F808 00000000 */   nop
  .Llevel_26_8006F80C:
    /* 1DB25A8 8006F80C 28FF4426 */  addiu      $a0, $s2, -0xD8
    /* 1DB25AC 8006F810 0780103C */  lui        $s0, %hi(D_80069FF0)
    /* 1DB25B0 8006F814 F09F1026 */  addiu      $s0, $s0, %lo(D_80069FF0)
    /* 1DB25B4 8006F818 6C6F000C */  jal        func_8001BDB0
    /* 1DB25B8 8006F81C 21280002 */   addu      $a1, $s0, $zero
    /* 1DB25BC 8006F820 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DB25C0 8006F824 0680053C */  lui        $a1, %hi(D_80067FF0)
    /* 1DB25C4 8006F828 F07FA58C */  lw         $a1, %lo(D_80067FF0)($a1)
    /* 1DB25C8 8006F82C 21300002 */  addu       $a2, $s0, $zero
    /* 1DB25CC 8006F830 806F000C */  jal        func_8001BE00
    /* 1DB25D0 8006F834 0C00A524 */   addiu     $a1, $a1, 0xC
    /* 1DB25D4 8006F838 1000A48F */  lw         $a0, 0x10($sp)
    /* 1DB25D8 8006F83C 1400A58F */  lw         $a1, 0x14($sp)
    /* 1DB25DC 8006F840 2E6D000C */  jal        func_8001B4B8
    /* 1DB25E0 8006F844 01000624 */   addiu     $a2, $zero, 0x1
    /* 1DB25E4 8006F848 0680033C */  lui        $v1, %hi(D_80067FB8)
    /* 1DB25E8 8006F84C B87F638C */  lw         $v1, %lo(D_80067FB8)($v1)
    /* 1DB25EC 8006F850 0680013C */  lui        $at, %hi(D_80067EF0)
    /* 1DB25F0 8006F854 F07E22AC */  sw         $v0, %lo(D_80067EF0)($at)
    /* 1DB25F4 8006F858 37006014 */  bnez       $v1, .Llevel_26_8006F938
    /* 1DB25F8 8006F85C 00000000 */   nop
    /* 1DB25FC 8006F860 58FF4426 */  addiu      $a0, $s2, -0xA8
    /* 1DB2600 8006F864 0680053C */  lui        $a1, %hi(D_80061628)
    /* 1DB2604 8006F868 2816A524 */  addiu      $a1, $a1, %lo(D_80061628)
    /* 1DB2608 8006F86C 337B000C */  jal        func_8001ECCC
    /* 1DB260C 8006F870 21304000 */   addu      $a2, $v0, $zero
    /* 1DB2610 8006F874 087C000C */  jal        func_8001F020
    /* 1DB2614 8006F878 00040424 */   addiu     $a0, $zero, 0x400
    /* 1DB2618 8006F87C 0680033C */  lui        $v1, %hi(D_80066F90)
    /* 1DB261C 8006F880 906F638C */  lw         $v1, %lo(D_80066F90)($v1)
    /* 1DB2620 8006F884 42000224 */  addiu      $v0, $zero, 0x42
    /* 1DB2624 8006F888 2B006214 */  bne        $v1, $v0, .Llevel_26_8006F938
    /* 1DB2628 8006F88C 00000000 */   nop
    /* 1DB262C 8006F890 0680023C */  lui        $v0, %hi(D_80066F14)
    /* 1DB2630 8006F894 146F428C */  lw         $v0, %lo(D_80066F14)($v0)
    /* 1DB2634 8006F898 00000000 */  nop
    /* 1DB2638 8006F89C 5800428C */  lw         $v0, 0x58($v0)
    /* 1DB263C 8006F8A0 00000000 */  nop
    /* 1DB2640 8006F8A4 06004390 */  lbu        $v1, 0x6($v0)
    /* 1DB2644 8006F8A8 03000224 */  addiu      $v0, $zero, 0x3
    /* 1DB2648 8006F8AC 22006214 */  bne        $v1, $v0, .Llevel_26_8006F938
    /* 1DB264C 8006F8B0 00000000 */   nop
    /* 1DB2650 8006F8B4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1DB2654 8006F8B8 886E000C */  jal        func_8001BA20
    /* 1DB2658 8006F8BC 21280000 */   addu      $a1, $zero, $zero
    /* 1DB265C 8006F8C0 21284000 */  addu       $a1, $v0, $zero
    /* 1DB2660 8006F8C4 0048A228 */  slti       $v0, $a1, 0x4800
    /* 1DB2664 8006F8C8 1B004010 */  beqz       $v0, .Llevel_26_8006F938
    /* 1DB2668 8006F8CC 00F8A524 */   addiu     $a1, $a1, -0x800
    /* 1DB266C 8006F8D0 0200A104 */  bgez       $a1, .Llevel_26_8006F8DC
    /* 1DB2670 8006F8D4 00400224 */   addiu     $v0, $zero, 0x4000
    /* 1DB2674 8006F8D8 21280000 */  addu       $a1, $zero, $zero
  .Llevel_26_8006F8DC:
    /* 1DB2678 8006F8DC 23284500 */  subu       $a1, $v0, $a1
    /* 1DB267C 8006F8E0 0680033C */  lui        $v1, %hi(D_8006162C)
    /* 1DB2680 8006F8E4 2C16638C */  lw         $v1, %lo(D_8006162C)($v1)
    /* 1DB2684 8006F8E8 30000224 */  addiu      $v0, $zero, 0x30
    /* 1DB2688 8006F8EC 23104300 */  subu       $v0, $v0, $v1
    /* 1DB268C 8006F8F0 18004500 */  mult       $v0, $a1
    /* 1DB2690 8006F8F4 0680043C */  lui        $a0, %hi(D_80061634)
    /* 1DB2694 8006F8F8 3416848C */  lw         $a0, %lo(D_80061634)($a0)
    /* 1DB2698 8006F8FC 12400000 */  mflo       $t0
    /* 1DB269C 8006F900 60FF0224 */  addiu      $v0, $zero, -0xA0
    /* 1DB26A0 8006F904 23104400 */  subu       $v0, $v0, $a0
    /* 1DB26A4 8006F908 18004500 */  mult       $v0, $a1
    /* 1DB26A8 8006F90C 83130800 */  sra        $v0, $t0, 14
    /* 1DB26AC 8006F910 21186200 */  addu       $v1, $v1, $v0
    /* 1DB26B0 8006F914 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 1DB26B4 8006F918 0680013C */  lui        $at, %hi(D_80067F18)
    /* 1DB26B8 8006F91C 187F23AC */  sw         $v1, %lo(D_80067F18)($at)
    /* 1DB26BC 8006F920 12280000 */  mflo       $a1
    /* 1DB26C0 8006F924 83130500 */  sra        $v0, $a1, 14
    /* 1DB26C4 8006F928 21208200 */  addu       $a0, $a0, $v0
    /* 1DB26C8 8006F92C FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 1DB26CC 8006F930 0680013C */  lui        $at, %hi(D_80067F20)
    /* 1DB26D0 8006F934 207F24AC */  sw         $a0, %lo(D_80067F20)($at)
  .Llevel_26_8006F938:
    /* 1DB26D4 8006F938 0680113C */  lui        $s1, %hi(D_80067F64)
    /* 1DB26D8 8006F93C 647F3126 */  addiu      $s1, $s1, %lo(D_80067F64)
    /* 1DB26DC 8006F940 21202002 */  addu       $a0, $s1, $zero
    /* 1DB26E0 8006F944 80801300 */  sll        $s0, $s3, 2
    /* 1DB26E4 8006F948 21801302 */  addu       $s0, $s0, $s3
    /* 1DB26E8 8006F94C 80801000 */  sll        $s0, $s0, 2
    /* 1DB26EC 8006F950 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 1DB26F0 8006F954 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 1DB26F4 8006F958 21280502 */  addu       $a1, $s0, $a1
    /* 1DB26F8 8006F95C 337B000C */  jal        func_8001ECCC
    /* 1DB26FC 8006F960 21300000 */   addu      $a2, $zero, $zero
    /* 1DB2700 8006F964 14002426 */  addiu      $a0, $s1, 0x14
    /* 1DB2704 8006F968 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 1DB2708 8006F96C B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 1DB270C 8006F970 21280502 */  addu       $a1, $s0, $a1
    /* 1DB2710 8006F974 337B000C */  jal        func_8001ECCC
    /* 1DB2714 8006F978 21300000 */   addu      $a2, $zero, $zero
    /* 1DB2718 8006F97C 28002426 */  addiu      $a0, $s1, 0x28
    /* 1DB271C 8006F980 0680053C */  lui        $a1, %hi(D_80061858)
    /* 1DB2720 8006F984 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
    /* 1DB2724 8006F988 337B000C */  jal        func_8001ECCC
    /* 1DB2728 8006F98C 21300000 */   addu      $a2, $zero, $zero
    /* 1DB272C 8006F990 0680053C */  lui        $a1, %hi(D_80061844)
    /* 1DB2730 8006F994 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 1DB2734 8006F998 B9BE0108 */  j          .Llevel_26_8006FAE4
    /* 1DB2738 8006F99C 3C002426 */   addiu     $a0, $s1, 0x3C
  .Llevel_26_8006F9A0:
    /* 1DB273C 8006F9A0 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1DB2740 8006F9A4 0680043C */  lui        $a0, %hi(D_80067FF0)
    /* 1DB2744 8006F9A8 F07F848C */  lw         $a0, %lo(D_80067FF0)($a0)
    /* 1DB2748 8006F9AC CC05010C */  jal        func_80041730
    /* 1DB274C 8006F9B0 21300002 */   addu      $a2, $s0, $zero
    /* 1DB2750 8006F9B4 01000524 */  addiu      $a1, $zero, 0x1
    /* 1DB2754 8006F9B8 3000B127 */  addiu      $s1, $sp, 0x30
    /* 1DB2758 8006F9BC 0680043C */  lui        $a0, %hi(D_80067FF0)
    /* 1DB275C 8006F9C0 F07F848C */  lw         $a0, %lo(D_80067FF0)($a0)
    /* 1DB2760 8006F9C4 CC05010C */  jal        func_80041730
    /* 1DB2764 8006F9C8 21302002 */   addu      $a2, $s1, $zero
    /* 1DB2768 8006F9CC 21200002 */  addu       $a0, $s0, $zero
    /* 1DB276C 8006F9D0 21280002 */  addu       $a1, $s0, $zero
    /* 1DB2770 8006F9D4 736F000C */  jal        func_8001BDCC
    /* 1DB2774 8006F9D8 21302002 */   addu      $a2, $s1, $zero
    /* 1DB2778 8006F9DC 21200002 */  addu       $a0, $s0, $zero
    /* 1DB277C 8006F9E0 526F000C */  jal        func_8001BD48
    /* 1DB2780 8006F9E4 01000524 */   addiu     $a1, $zero, 0x1
    /* 1DB2784 8006F9E8 21200002 */  addu       $a0, $s0, $zero
    /* 1DB2788 8006F9EC 21280002 */  addu       $a1, $s0, $zero
    /* 1DB278C 8006F9F0 806F000C */  jal        func_8001BE00
    /* 1DB2790 8006F9F4 F0FE4626 */   addiu     $a2, $s2, -0x110
    /* 1DB2794 8006F9F8 21200002 */  addu       $a0, $s0, $zero
    /* 1DB2798 8006F9FC 886E000C */  jal        func_8001BA20
    /* 1DB279C 8006FA00 21280000 */   addu      $a1, $zero, $zero
    /* 1DB27A0 8006FA04 21204000 */  addu       $a0, $v0, $zero
    /* 1DB27A4 8006FA08 2800A58F */  lw         $a1, 0x28($sp)
    /* 1DB27A8 8006FA0C 2E6D000C */  jal        func_8001B4B8
    /* 1DB27AC 8006FA10 01000624 */   addiu     $a2, $zero, 0x1
    /* 1DB27B0 8006FA14 0680033C */  lui        $v1, %hi(D_80067F18)
    /* 1DB27B4 8006FA18 187F638C */  lw         $v1, %lo(D_80067F18)($v1)
    /* 1DB27B8 8006FA1C 23100200 */  negu       $v0, $v0
    /* 1DB27BC 8006FA20 23104300 */  subu       $v0, $v0, $v1
    /* 1DB27C0 8006FA24 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1DB27C4 8006FA28 01086228 */  slti       $v0, $v1, 0x801
    /* 1DB27C8 8006FA2C 0680013C */  lui        $at, %hi(D_80067F20)
    /* 1DB27CC 8006FA30 207F23AC */  sw         $v1, %lo(D_80067F20)($at)
    /* 1DB27D0 8006FA34 03004014 */  bnez       $v0, .Llevel_26_8006FA44
    /* 1DB27D4 8006FA38 00F06224 */   addiu     $v0, $v1, -0x1000
    /* 1DB27D8 8006FA3C 0680013C */  lui        $at, %hi(D_80067F20)
    /* 1DB27DC 8006FA40 207F22AC */  sw         $v0, %lo(D_80067F20)($at)
  .Llevel_26_8006FA44:
    /* 1DB27E0 8006FA44 2000A48F */  lw         $a0, 0x20($sp)
    /* 1DB27E4 8006FA48 2400A58F */  lw         $a1, 0x24($sp)
    /* 1DB27E8 8006FA4C 2E6D000C */  jal        func_8001B4B8
    /* 1DB27EC 8006FA50 01000624 */   addiu     $a2, $zero, 0x1
    /* 1DB27F0 8006FA54 0680033C */  lui        $v1, %hi(D_80067F14)
    /* 1DB27F4 8006FA58 147F638C */  lw         $v1, %lo(D_80067F14)($v1)
    /* 1DB27F8 8006FA5C 00000000 */  nop
    /* 1DB27FC 8006FA60 23104300 */  subu       $v0, $v0, $v1
    /* 1DB2800 8006FA64 00084224 */  addiu      $v0, $v0, 0x800
    /* 1DB2804 8006FA68 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 1DB2808 8006FA6C 01086228 */  slti       $v0, $v1, 0x801
    /* 1DB280C 8006FA70 0680013C */  lui        $at, %hi(D_80067F24)
    /* 1DB2810 8006FA74 247F23AC */  sw         $v1, %lo(D_80067F24)($at)
    /* 1DB2814 8006FA78 04004014 */  bnez       $v0, .Llevel_26_8006FA8C
    /* 1DB2818 8006FA7C A8FF4426 */   addiu     $a0, $s2, -0x58
    /* 1DB281C 8006FA80 00F06224 */  addiu      $v0, $v1, -0x1000
    /* 1DB2820 8006FA84 0680013C */  lui        $at, %hi(D_80067F24)
    /* 1DB2824 8006FA88 247F22AC */  sw         $v0, %lo(D_80067F24)($at)
  .Llevel_26_8006FA8C:
    /* 1DB2828 8006FA8C 80801300 */  sll        $s0, $s3, 2
    /* 1DB282C 8006FA90 21801302 */  addu       $s0, $s0, $s3
    /* 1DB2830 8006FA94 80801000 */  sll        $s0, $s0, 2
    /* 1DB2834 8006FA98 0680053C */  lui        $a1, %hi(D_8006172C)
    /* 1DB2838 8006FA9C 2C17A524 */  addiu      $a1, $a1, %lo(D_8006172C)
    /* 1DB283C 8006FAA0 21280502 */  addu       $a1, $s0, $a1
    /* 1DB2840 8006FAA4 337B000C */  jal        func_8001ECCC
    /* 1DB2844 8006FAA8 21300000 */   addu      $a2, $zero, $zero
    /* 1DB2848 8006FAAC BCFF4426 */  addiu      $a0, $s2, -0x44
    /* 1DB284C 8006FAB0 0680053C */  lui        $a1, %hi(D_800617B8)
    /* 1DB2850 8006FAB4 B817A524 */  addiu      $a1, $a1, %lo(D_800617B8)
    /* 1DB2854 8006FAB8 21280502 */  addu       $a1, $s0, $a1
    /* 1DB2858 8006FABC 337B000C */  jal        func_8001ECCC
    /* 1DB285C 8006FAC0 21300000 */   addu      $a2, $zero, $zero
    /* 1DB2860 8006FAC4 E4FF4426 */  addiu      $a0, $s2, -0x1C
    /* 1DB2864 8006FAC8 0680053C */  lui        $a1, %hi(D_80061844)
    /* 1DB2868 8006FACC 4418A524 */  addiu      $a1, $a1, %lo(D_80061844)
    /* 1DB286C 8006FAD0 337B000C */  jal        func_8001ECCC
    /* 1DB2870 8006FAD4 21300000 */   addu      $a2, $zero, $zero
    /* 1DB2874 8006FAD8 D0FF4426 */  addiu      $a0, $s2, -0x30
    /* 1DB2878 8006FADC 0680053C */  lui        $a1, %hi(D_80061858)
    /* 1DB287C 8006FAE0 5818A524 */  addiu      $a1, $a1, %lo(D_80061858)
  .Llevel_26_8006FAE4:
    /* 1DB2880 8006FAE4 337B000C */  jal        func_8001ECCC
    /* 1DB2884 8006FAE8 21300000 */   addu      $a2, $zero, $zero
  .Llevel_26_8006FAEC:
    /* 1DB2888 8006FAEC 5000BF8F */  lw         $ra, 0x50($sp)
    /* 1DB288C 8006FAF0 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 1DB2890 8006FAF4 4800B28F */  lw         $s2, 0x48($sp)
    /* 1DB2894 8006FAF8 4400B18F */  lw         $s1, 0x44($sp)
    /* 1DB2898 8006FAFC 4000B08F */  lw         $s0, 0x40($sp)
    /* 1DB289C 8006FB00 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 1DB28A0 8006FB04 0800E003 */  jr         $ra
    /* 1DB28A4 8006FB08 00000000 */   nop
endlabel func_level_26_8006F7A8
