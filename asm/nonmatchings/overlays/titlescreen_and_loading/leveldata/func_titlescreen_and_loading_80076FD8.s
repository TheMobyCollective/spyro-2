.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80076FD8, 0x90

glabel func_titlescreen_and_loading_80076FD8
    /* 2CD74 80076FD8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CD78 80076FDC 01000424 */  addiu      $a0, $zero, 0x1
    /* 2CD7C 80076FE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CD80 80076FE4 0680103C */  lui        $s0, %hi(D_80067E68)
    /* 2CD84 80076FE8 687E1026 */  addiu      $s0, $s0, %lo(D_80067E68)
    /* 2CD88 80076FEC 21280002 */  addu       $a1, $s0, $zero
    /* 2CD8C 80076FF0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2CD90 80076FF4 0FF7010C */  jal        func_titlescreen_and_loading_8007DC3C
    /* 2CD94 80076FF8 04000626 */   addiu     $a2, $s0, 0x4
    /* 2CD98 80076FFC 21284000 */  addu       $a1, $v0, $zero
    /* 2CD9C 80077000 1400A010 */  beqz       $a1, .Ltitlescreen_and_loading_80077054
    /* 2CDA0 80077004 01000224 */   addiu     $v0, $zero, 0x1
    /* 2CDA4 80077008 0E00A214 */  bne        $a1, $v0, .Ltitlescreen_and_loading_80077044
    /* 2CDA8 8007700C 00000000 */   nop
    /* 2CDAC 80077010 D0FF0426 */  addiu      $a0, $s0, -0x30
    /* 2CDB0 80077014 0680023C */  lui        $v0, %hi(D_80067E34)
    /* 2CDB4 80077018 347E428C */  lw         $v0, %lo(D_80067E34)($v0)
    /* 2CDB8 8007701C 0400038E */  lw         $v1, 0x4($s0)
    /* 2CDBC 80077020 80100200 */  sll        $v0, $v0, 2
    /* 2CDC0 80077024 21104400 */  addu       $v0, $v0, $a0
    /* 2CDC4 80077028 000043AC */  sw         $v1, 0x0($v0)
    /* 2CDC8 8007702C 0680023C */  lui        $v0, %hi(D_80067E34)
    /* 2CDCC 80077030 347E428C */  lw         $v0, %lo(D_80067E34)($v0)
    /* 2CDD0 80077034 00000000 */  nop
    /* 2CDD4 80077038 2310A200 */  subu       $v0, $a1, $v0
    /* 2CDD8 8007703C 0680013C */  lui        $at, %hi(D_80067E34)
    /* 2CDDC 80077040 347E22AC */  sw         $v0, %lo(D_80067E34)($at)
  .Ltitlescreen_and_loading_80077044:
    /* 2CDE0 80077044 0680043C */  lui        $a0, %hi(D_80067E34)
    /* 2CDE4 80077048 347E848C */  lw         $a0, %lo(D_80067E34)($a0)
    /* 2CDE8 8007704C 46F3010C */  jal        func_titlescreen_and_loading_8007CD18
    /* 2CDEC 80077050 00210400 */   sll       $a0, $a0, 4
  .Ltitlescreen_and_loading_80077054:
    /* 2CDF0 80077054 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2CDF4 80077058 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CDF8 8007705C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CDFC 80077060 0800E003 */  jr         $ra
    /* 2CE00 80077064 00000000 */   nop
endlabel func_titlescreen_and_loading_80076FD8
