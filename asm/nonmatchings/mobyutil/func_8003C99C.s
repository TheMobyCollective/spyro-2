.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C99C, 0x64

glabel func_8003C99C
    /* 2D19C 8003C99C 0000A38C */  lw         $v1, 0x0($a1)
    /* 2D1A0 8003C9A0 0000828C */  lw         $v0, 0x0($a0)
    /* 2D1A4 8003C9A4 00000000 */  nop
    /* 2D1A8 8003C9A8 18006200 */  mult       $v1, $v0
    /* 2D1AC 8003C9AC 0400A38C */  lw         $v1, 0x4($a1)
    /* 2D1B0 8003C9B0 12380000 */  mflo       $a3
    /* 2D1B4 8003C9B4 0400828C */  lw         $v0, 0x4($a0)
    /* 2D1B8 8003C9B8 00000000 */  nop
    /* 2D1BC 8003C9BC 18006200 */  mult       $v1, $v0
    /* 2D1C0 8003C9C0 0800A38C */  lw         $v1, 0x8($a1)
    /* 2D1C4 8003C9C4 12300000 */  mflo       $a2
    /* 2D1C8 8003C9C8 0800828C */  lw         $v0, 0x8($a0)
    /* 2D1CC 8003C9CC 00000000 */  nop
    /* 2D1D0 8003C9D0 18006200 */  mult       $v1, $v0
    /* 2D1D4 8003C9D4 2110E600 */  addu       $v0, $a3, $a2
    /* 2D1D8 8003C9D8 12180000 */  mflo       $v1
    /* 2D1DC 8003C9DC 21104300 */  addu       $v0, $v0, $v1
    /* 2D1E0 8003C9E0 0C00A38C */  lw         $v1, 0xC($a1)
    /* 2D1E4 8003C9E4 83120200 */  sra        $v0, $v0, 10
    /* 2D1E8 8003C9E8 21104300 */  addu       $v0, $v0, $v1
    /* 2D1EC 8003C9EC 02004104 */  bgez       $v0, .L8003C9F8
    /* 2D1F0 8003C9F0 00000000 */   nop
    /* 2D1F4 8003C9F4 23100200 */  negu       $v0, $v0
  .L8003C9F8:
    /* 2D1F8 8003C9F8 0800E003 */  jr         $ra
    /* 2D1FC 8003C9FC 00000000 */   nop
endlabel func_8003C99C
