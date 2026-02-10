.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002D7F8, 0x1CC

glabel func_8002D7F8
    /* 1DFF8 8002D7F8 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 1DFFC 8002D7FC 4400B1AF */  sw         $s1, 0x44($sp)
    /* 1E000 8002D800 3000B127 */  addiu      $s1, $sp, 0x30
    /* 1E004 8002D804 21202002 */  addu       $a0, $s1, $zero
    /* 1E008 8002D808 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 1E00C 8002D80C 0780133C */  lui        $s3, %hi(D_8006A260)
    /* 1E010 8002D810 60A27326 */  addiu      $s3, $s3, %lo(D_8006A260)
    /* 1E014 8002D814 5000BFAF */  sw         $ra, 0x50($sp)
    /* 1E018 8002D818 4800B2AF */  sw         $s2, 0x48($sp)
    /* 1E01C 8002D81C 4000B0AF */  sw         $s0, 0x40($sp)
    /* 1E020 8002D820 0000628E */  lw         $v0, 0x0($s3)
    /* 1E024 8002D824 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1E028 8002D828 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1E02C 8002D82C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1E030 8002D830 23100200 */  negu       $v0, $v0
    /* 1E034 8002D834 6C6F000C */  jal        func_8001BDB0
    /* 1E038 8002D838 1800A2AF */   sw        $v0, 0x18($sp)
    /* 1E03C 8002D83C 2000B027 */  addiu      $s0, $sp, 0x20
    /* 1E040 8002D840 21200002 */  addu       $a0, $s0, $zero
    /* 1E044 8002D844 3800A28F */  lw         $v0, 0x38($sp)
    /* 1E048 8002D848 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1E04C 8002D84C 80FF4224 */  addiu      $v0, $v0, -0x80
    /* 1E050 8002D850 6C6F000C */  jal        func_8001BDB0
    /* 1E054 8002D854 3800A2AF */   sw        $v0, 0x38($sp)
    /* 1E058 8002D858 C0FD6426 */  addiu      $a0, $s3, -0x240
    /* 1E05C 8002D85C 21282002 */  addu       $a1, $s1, $zero
    /* 1E060 8002D860 2800A28F */  lw         $v0, 0x28($sp)
    /* 1E064 8002D864 21302002 */  addu       $a2, $s1, $zero
    /* 1E068 8002D868 80004224 */  addiu      $v0, $v0, 0x80
    /* 1E06C 8002D86C 696E000C */  jal        func_8001B9A4
    /* 1E070 8002D870 2800A2AF */   sw        $v0, 0x28($sp)
    /* 1E074 8002D874 21202002 */  addu       $a0, $s1, $zero
    /* 1E078 8002D878 90FD7226 */  addiu      $s2, $s3, -0x270
    /* 1E07C 8002D87C 21284002 */  addu       $a1, $s2, $zero
    /* 1E080 8002D880 736F000C */  jal        func_8001BDCC
    /* 1E084 8002D884 21302002 */   addu      $a2, $s1, $zero
    /* 1E088 8002D888 21200000 */  addu       $a0, $zero, $zero
    /* 1E08C 8002D88C 21280002 */  addu       $a1, $s0, $zero
    /* 1E090 8002D890 696E000C */  jal        func_8001B9A4
    /* 1E094 8002D894 21300002 */   addu      $a2, $s0, $zero
    /* 1E098 8002D898 21200002 */  addu       $a0, $s0, $zero
    /* 1E09C 8002D89C 21284002 */  addu       $a1, $s2, $zero
    /* 1E0A0 8002D8A0 736F000C */  jal        func_8001BDCC
    /* 1E0A4 8002D8A4 21300002 */   addu      $a2, $s0, $zero
    /* 1E0A8 8002D8A8 21200000 */  addu       $a0, $zero, $zero
    /* 1E0AC 8002D8AC 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1E0B0 8002D8B0 696E000C */  jal        func_8001B9A4
    /* 1E0B4 8002D8B4 2130A000 */   addu      $a2, $a1, $zero
    /* 1E0B8 8002D8B8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1E0BC 8002D8BC 21284002 */  addu       $a1, $s2, $zero
    /* 1E0C0 8002D8C0 736F000C */  jal        func_8001BDCC
    /* 1E0C4 8002D8C4 21308000 */   addu      $a2, $a0, $zero
    /* 1E0C8 8002D8C8 21200002 */  addu       $a0, $s0, $zero
    /* 1E0CC 8002D8CC A5F3000C */  jal        func_8003CE94
    /* 1E0D0 8002D8D0 21282002 */   addu      $a1, $s1, $zero
    /* 1E0D4 8002D8D4 2D004010 */  beqz       $v0, .L8002D98C
    /* 1E0D8 8002D8D8 00000000 */   nop
    /* 1E0DC 8002D8DC 0780053C */  lui        $a1, %hi(D_8006AB90)
    /* 1E0E0 8002D8E0 90ABA524 */  addiu      $a1, $a1, %lo(D_8006AB90)
    /* 1E0E4 8002D8E4 0000A28C */  lw         $v0, 0x0($a1)
    /* 1E0E8 8002D8E8 00000000 */  nop
    /* 1E0EC 8002D8EC 27004018 */  blez       $v0, .L8002D98C
    /* 1E0F0 8002D8F0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1E0F4 8002D8F4 E0FFA524 */  addiu      $a1, $a1, -0x20
    /* 1E0F8 8002D8F8 806F000C */  jal        func_8001BE00
    /* 1E0FC 8002D8FC 21308000 */   addu      $a2, $a0, $zero
    /* 1E100 8002D900 1000A28F */  lw         $v0, 0x10($sp)
    /* 1E104 8002D904 00000000 */  nop
    /* 1E108 8002D908 02004104 */  bgez       $v0, .L8002D914
    /* 1E10C 8002D90C 00000000 */   nop
    /* 1E110 8002D910 23100200 */  negu       $v0, $v0
  .L8002D914:
    /* 1E114 8002D914 08004228 */  slti       $v0, $v0, 0x8
    /* 1E118 8002D918 02004010 */  beqz       $v0, .L8002D924
    /* 1E11C 8002D91C 00000000 */   nop
    /* 1E120 8002D920 1000A0AF */  sw         $zero, 0x10($sp)
  .L8002D924:
    /* 1E124 8002D924 1400A28F */  lw         $v0, 0x14($sp)
    /* 1E128 8002D928 00000000 */  nop
    /* 1E12C 8002D92C 02004104 */  bgez       $v0, .L8002D938
    /* 1E130 8002D930 00000000 */   nop
    /* 1E134 8002D934 23100200 */  negu       $v0, $v0
  .L8002D938:
    /* 1E138 8002D938 08004228 */  slti       $v0, $v0, 0x8
    /* 1E13C 8002D93C 02004010 */  beqz       $v0, .L8002D948
    /* 1E140 8002D940 00000000 */   nop
    /* 1E144 8002D944 1400A0AF */  sw         $zero, 0x14($sp)
  .L8002D948:
    /* 1E148 8002D948 1800A28F */  lw         $v0, 0x18($sp)
    /* 1E14C 8002D94C 00000000 */  nop
    /* 1E150 8002D950 02004104 */  bgez       $v0, .L8002D95C
    /* 1E154 8002D954 00000000 */   nop
    /* 1E158 8002D958 23100200 */  negu       $v0, $v0
  .L8002D95C:
    /* 1E15C 8002D95C 08004228 */  slti       $v0, $v0, 0x8
    /* 1E160 8002D960 02004010 */  beqz       $v0, .L8002D96C
    /* 1E164 8002D964 21204002 */   addu      $a0, $s2, $zero
    /* 1E168 8002D968 1800A0AF */  sw         $zero, 0x18($sp)
  .L8002D96C:
    /* 1E16C 8002D96C 21288000 */  addu       $a1, $a0, $zero
    /* 1E170 8002D970 736F000C */  jal        func_8001BDCC
    /* 1E174 8002D974 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1E178 8002D978 0780023C */  lui        $v0, %hi(D_8006AB94)
    /* 1E17C 8002D97C 94AB428C */  lw         $v0, %lo(D_8006AB94)($v0)
    /* 1E180 8002D980 50FE60AE */  sw         $zero, -0x1B0($s3)
    /* 1E184 8002D984 69B60008 */  j          .L8002D9A4
    /* 1E188 8002D988 A4FE62AE */   sw        $v0, -0x15C($s3)
  .L8002D98C:
    /* 1E18C 8002D98C 0780033C */  lui        $v1, %hi(D_8006A0B0)
    /* 1E190 8002D990 B0A06324 */  addiu      $v1, $v1, %lo(D_8006A0B0)
    /* 1E194 8002D994 0000628C */  lw         $v0, 0x0($v1)
    /* 1E198 8002D998 00000000 */  nop
    /* 1E19C 8002D99C 01004224 */  addiu      $v0, $v0, 0x1
    /* 1E1A0 8002D9A0 000062AC */  sw         $v0, 0x0($v1)
  .L8002D9A4:
    /* 1E1A4 8002D9A4 5000BF8F */  lw         $ra, 0x50($sp)
    /* 1E1A8 8002D9A8 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 1E1AC 8002D9AC 4800B28F */  lw         $s2, 0x48($sp)
    /* 1E1B0 8002D9B0 4400B18F */  lw         $s1, 0x44($sp)
    /* 1E1B4 8002D9B4 4000B08F */  lw         $s0, 0x40($sp)
    /* 1E1B8 8002D9B8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 1E1BC 8002D9BC 0800E003 */  jr         $ra
    /* 1E1C0 8002D9C0 00000000 */   nop
endlabel func_8002D7F8
