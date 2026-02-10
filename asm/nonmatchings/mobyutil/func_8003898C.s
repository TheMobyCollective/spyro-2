.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003898C, 0x80

glabel func_8003898C
    /* 2918C 8003898C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29190 80038990 1400B1AF */  sw         $s1, 0x14($sp)
    /* 29194 80038994 21888000 */  addu       $s1, $a0, $zero
    /* 29198 80038998 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2919C 8003899C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 291A0 800389A0 4B67010C */  jal        func_80059D2C
    /* 291A4 800389A4 2180A000 */   addu      $s0, $a1, $zero
    /* 291A8 800389A8 23801102 */  subu       $s0, $s0, $s1
    /* 291AC 800389AC 01001026 */  addiu      $s0, $s0, 0x1
    /* 291B0 800389B0 1A005000 */  div        $zero, $v0, $s0
    /* 291B4 800389B4 02000016 */  bnez       $s0, .L800389C0
    /* 291B8 800389B8 00000000 */   nop
    /* 291BC 800389BC 0D000700 */  break      7
  .L800389C0:
    /* 291C0 800389C0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 291C4 800389C4 04000116 */  bne        $s0, $at, .L800389D8
    /* 291C8 800389C8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 291CC 800389CC 02004114 */  bne        $v0, $at, .L800389D8
    /* 291D0 800389D0 00000000 */   nop
    /* 291D4 800389D4 0D000600 */  break      6
  .L800389D8:
    /* 291D8 800389D8 10180000 */  mfhi       $v1
    /* 291DC 800389DC 01004230 */  andi       $v0, $v0, 0x1
    /* 291E0 800389E0 03004014 */  bnez       $v0, .L800389F0
    /* 291E4 800389E4 21187100 */   addu      $v1, $v1, $s1
    /* 291E8 800389E8 7DE20008 */  j          .L800389F4
    /* 291EC 800389EC 23100300 */   negu      $v0, $v1
  .L800389F0:
    /* 291F0 800389F0 21106000 */  addu       $v0, $v1, $zero
  .L800389F4:
    /* 291F4 800389F4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 291F8 800389F8 1400B18F */  lw         $s1, 0x14($sp)
    /* 291FC 800389FC 1000B08F */  lw         $s0, 0x10($sp)
    /* 29200 80038A00 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 29204 80038A04 0800E003 */  jr         $ra
    /* 29208 80038A08 00000000 */   nop
endlabel func_8003898C
