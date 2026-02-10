.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D810, 0x174

glabel func_8004D810
    /* 3E010 8004D810 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3E014 8004D814 21200000 */  addu       $a0, $zero, $zero
    /* 3E018 8004D818 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3E01C 8004D81C F955010C */  jal        func_800557E4
    /* 3E020 8004D820 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3E024 8004D824 B763010C */  jal        func_80058EDC
    /* 3E028 8004D828 21200000 */   addu      $a0, $zero, $zero
    /* 3E02C 8004D82C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3E030 8004D830 0680033C */  lui        $v1, %hi(D_80066FC0)
    /* 3E034 8004D834 C06F638C */  lw         $v1, %lo(D_80066FC0)($v1)
    /* 3E038 8004D838 0780043C */  lui        $a0, %hi(D_80069928)
    /* 3E03C 8004D83C 28998424 */  addiu      $a0, $a0, %lo(D_80069928)
    /* 3E040 8004D840 02006410 */  beq        $v1, $a0, .L8004D84C
    /* 3E044 8004D844 1000A0A7 */   sh        $zero, 0x10($sp)
    /* 3E048 8004D848 F0000224 */  addiu      $v0, $zero, 0xF0
  .L8004D84C:
    /* 3E04C 8004D84C 0C000624 */  addiu      $a2, $zero, 0xC
    /* 3E050 8004D850 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3E054 8004D854 00020224 */  addiu      $v0, $zero, 0x200
    /* 3E058 8004D858 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3E05C 8004D85C D8000224 */  addiu      $v0, $zero, 0xD8
    /* 3E060 8004D860 02006414 */  bne        $v1, $a0, .L8004D86C
    /* 3E064 8004D864 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 3E068 8004D868 F0000624 */  addiu      $a2, $zero, 0xF0
  .L8004D86C:
    /* 3E06C 8004D86C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3E070 8004D870 AE56010C */  jal        func_80055AB8
    /* 3E074 8004D874 21280000 */   addu      $a1, $zero, $zero
    /* 3E078 8004D878 F955010C */  jal        func_800557E4
    /* 3E07C 8004D87C 21200000 */   addu      $a0, $zero, $zero
    /* 3E080 8004D880 21800000 */  addu       $s0, $zero, $zero
    /* 3E084 8004D884 0780013C */  lui        $at, %hi(D_80069940)
    /* 3E088 8004D888 409920A0 */  sb         $zero, %lo(D_80069940)($at)
    /* 3E08C 8004D88C 0780013C */  lui        $at, %hi(D_800699B4)
    /* 3E090 8004D890 B49920A0 */  sb         $zero, %lo(D_800699B4)($at)
  .L8004D894:
    /* 3E094 8004D894 0680023C */  lui        $v0, %hi(D_80066FC0)
    /* 3E098 8004D898 C06F428C */  lw         $v0, %lo(D_80066FC0)($v0)
    /* 3E09C 8004D89C 0780033C */  lui        $v1, %hi(D_80069928)
    /* 3E0A0 8004D8A0 28996324 */  addiu      $v1, $v1, %lo(D_80069928)
    /* 3E0A4 8004D8A4 02004314 */  bne        $v0, $v1, .L8004D8B0
    /* 3E0A8 8004D8A8 00000000 */   nop
    /* 3E0AC 8004D8AC 74006324 */  addiu      $v1, $v1, 0x74
  .L8004D8B0:
    /* 3E0B0 8004D8B0 0680023C */  lui        $v0, %hi(D_80066FFC)
    /* 3E0B4 8004D8B4 FC6F428C */  lw         $v0, %lo(D_80066FFC)($v0)
    /* 3E0B8 8004D8B8 0680013C */  lui        $at, %hi(D_80066FC0)
    /* 3E0BC 8004D8BC C06F23AC */  sw         $v1, %lo(D_80066FC0)($at)
    /* 3E0C0 8004D8C0 7000638C */  lw         $v1, 0x70($v1)
    /* 3E0C4 8004D8C4 00104224 */  addiu      $v0, $v0, 0x1000
    /* 3E0C8 8004D8C8 0680013C */  lui        $at, %hi(D_80067168)
    /* 3E0CC 8004D8CC 687122AC */  sw         $v0, %lo(D_80067168)($at)
    /* 3E0D0 8004D8D0 0680013C */  lui        $at, %hi(D_80067030)
    /* 3E0D4 8004D8D4 307023AC */  sw         $v1, %lo(D_80067030)($at)
    /* 3E0D8 8004D8D8 06000016 */  bnez       $s0, .L8004D8F4
    /* 3E0DC 8004D8DC 20000524 */   addiu     $a1, $zero, 0x20
    /* 3E0E0 8004D8E0 02000424 */  addiu      $a0, $zero, 0x2
    /* 3E0E4 8004D8E4 10000524 */  addiu      $a1, $zero, 0x10
    /* 3E0E8 8004D8E8 10000624 */  addiu      $a2, $zero, 0x10
    /* 3E0EC 8004D8EC 40360108 */  j          .L8004D900
    /* 3E0F0 8004D8F0 10000724 */   addiu     $a3, $zero, 0x10
  .L8004D8F4:
    /* 3E0F4 8004D8F4 02000424 */  addiu      $a0, $zero, 0x2
    /* 3E0F8 8004D8F8 20000624 */  addiu      $a2, $zero, 0x20
    /* 3E0FC 8004D8FC 20000724 */  addiu      $a3, $zero, 0x20
  .L8004D900:
    /* 3E100 8004D900 D235010C */  jal        func_8004D748
    /* 3E104 8004D904 01001026 */   addiu     $s0, $s0, 0x1
    /* 3E108 8004D908 F955010C */  jal        func_800557E4
    /* 3E10C 8004D90C 21200000 */   addu      $a0, $zero, $zero
    /* 3E110 8004D910 B763010C */  jal        func_80058EDC
    /* 3E114 8004D914 21200000 */   addu      $a0, $zero, $zero
    /* 3E118 8004D918 0680043C */  lui        $a0, %hi(D_80066FC0)
    /* 3E11C 8004D91C C06F848C */  lw         $a0, %lo(D_80066FC0)($a0)
    /* 3E120 8004D920 2857010C */  jal        func_80055CA0
    /* 3E124 8004D924 5C008424 */   addiu     $a0, $a0, 0x5C
    /* 3E128 8004D928 0680043C */  lui        $a0, %hi(D_80066FC0)
    /* 3E12C 8004D92C C06F848C */  lw         $a0, %lo(D_80066FC0)($a0)
    /* 3E130 8004D930 F856010C */  jal        func_80055BE0
    /* 3E134 8004D934 00000000 */   nop
    /* 3E138 8004D938 AA6C000C */  jal        func_8001B2A8
    /* 3E13C 8004D93C 80050424 */   addiu     $a0, $zero, 0x580
    /* 3E140 8004D940 DC56010C */  jal        func_80055B70
    /* 3E144 8004D944 21204000 */   addu      $a0, $v0, $zero
    /* 3E148 8004D948 1000022A */  slti       $v0, $s0, 0x10
    /* 3E14C 8004D94C D1FF4014 */  bnez       $v0, .L8004D894
    /* 3E150 8004D950 00000000 */   nop
    /* 3E154 8004D954 2131010C */  jal        func_8004C484
    /* 3E158 8004D958 00000000 */   nop
    /* 3E15C 8004D95C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3E160 8004D960 0780013C */  lui        $at, %hi(D_80069940)
    /* 3E164 8004D964 409922A0 */  sb         $v0, %lo(D_80069940)($at)
    /* 3E168 8004D968 0780013C */  lui        $at, %hi(D_800699B4)
    /* 3E16C 8004D96C B49922A0 */  sb         $v0, %lo(D_800699B4)($at)
    /* 3E170 8004D970 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3E174 8004D974 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E178 8004D978 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3E17C 8004D97C 0800E003 */  jr         $ra
    /* 3E180 8004D980 00000000 */   nop
endlabel func_8004D810
