.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E568, 0xE4

glabel func_8002E568
    /* 1ED68 8002E568 0780073C */  lui        $a3, %hi(D_8006A00C)
    /* 1ED6C 8002E56C 0CA0E724 */  addiu      $a3, $a3, %lo(D_8006A00C)
    /* 1ED70 8002E570 0000E490 */  lbu        $a0, 0x0($a3)
    /* 1ED74 8002E574 00000000 */  nop
    /* 1ED78 8002E578 02110400 */  srl        $v0, $a0, 4
    /* 1ED7C 8002E57C 0F008330 */  andi       $v1, $a0, 0xF
    /* 1ED80 8002E580 05006210 */  beq        $v1, $v0, .L8002E598
    /* 1ED84 8002E584 F0008230 */   andi      $v0, $a0, 0xF0
    /* 1ED88 8002E588 01006324 */  addiu      $v1, $v1, 0x1
    /* 1ED8C 8002E58C 21104300 */  addu       $v0, $v0, $v1
    /* 1ED90 8002E590 91B90008 */  j          .L8002E644
    /* 1ED94 8002E594 0000E2A0 */   sb        $v0, 0x0($a3)
  .L8002E598:
    /* 1ED98 8002E598 0780053C */  lui        $a1, %hi(D_8006A005)
    /* 1ED9C 8002E59C 05A0A590 */  lbu        $a1, %lo(D_8006A005)($a1)
    /* 1EDA0 8002E5A0 0680033C */  lui        $v1, %hi(D_80066F24)
    /* 1EDA4 8002E5A4 246F638C */  lw         $v1, %lo(D_80066F24)($v1)
    /* 1EDA8 8002E5A8 0780043C */  lui        $a0, %hi(D_8006A007)
    /* 1EDAC 8002E5AC 07A08490 */  lbu        $a0, %lo(D_8006A007)($a0)
    /* 1EDB0 8002E5B0 80300500 */  sll        $a2, $a1, 2
    /* 1EDB4 8002E5B4 2118C300 */  addu       $v1, $a2, $v1
    /* 1EDB8 8002E5B8 80100400 */  sll        $v0, $a0, 2
    /* 1EDBC 8002E5BC 21104400 */  addu       $v0, $v0, $a0
    /* 1EDC0 8002E5C0 0000638C */  lw         $v1, 0x0($v1)
    /* 1EDC4 8002E5C4 80100200 */  sll        $v0, $v0, 2
    /* 1EDC8 8002E5C8 21186200 */  addu       $v1, $v1, $v0
    /* 1EDCC 8002E5CC 1400628C */  lw         $v0, 0x14($v1)
    /* 1EDD0 8002E5D0 01008324 */  addiu      $v1, $a0, 0x1
    /* 1EDD4 8002E5D4 0780013C */  lui        $at, %hi(D_8006A004)
    /* 1EDD8 8002E5D8 04A025A0 */  sb         $a1, %lo(D_8006A004)($at)
    /* 1EDDC 8002E5DC 0780013C */  lui        $at, %hi(D_8006A006)
    /* 1EDE0 8002E5E0 06A024A0 */  sb         $a0, %lo(D_8006A006)($at)
    /* 1EDE4 8002E5E4 0780013C */  lui        $at, %hi(D_8006A007)
    /* 1EDE8 8002E5E8 07A023A0 */  sb         $v1, %lo(D_8006A007)($at)
    /* 1EDEC 8002E5EC 83130200 */  sra        $v0, $v0, 14
    /* 1EDF0 8002E5F0 F0004230 */  andi       $v0, $v0, 0xF0
    /* 1EDF4 8002E5F4 0000E2A0 */  sb         $v0, 0x0($a3)
    /* 1EDF8 8002E5F8 0680013C */  lui        $at, %hi(D_80060336)
    /* 1EDFC 8002E5FC 21082600 */  addu       $at, $at, $a2
    /* 1EE00 8002E600 36032290 */  lbu        $v0, %lo(D_80060336)($at)
    /* 1EE04 8002E604 FF006330 */  andi       $v1, $v1, 0xFF
    /* 1EE08 8002E608 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1EE0C 8002E60C 2A186200 */  slt        $v1, $v1, $v0
    /* 1EE10 8002E610 0C006014 */  bnez       $v1, .L8002E644
    /* 1EE14 8002E614 71000224 */   addiu     $v0, $zero, 0x71
    /* 1EE18 8002E618 0780033C */  lui        $v1, %hi(D_8006A040)
    /* 1EE1C 8002E61C 40A0638C */  lw         $v1, %lo(D_8006A040)($v1)
    /* 1EE20 8002E620 0780013C */  lui        $at, %hi(D_8006A007)
    /* 1EE24 8002E624 07A020A0 */  sb         $zero, %lo(D_8006A007)($at)
    /* 1EE28 8002E628 0000E2A0 */  sb         $v0, 0x0($a3)
    /* 1EE2C 8002E62C 0780013C */  lui        $at, %hi(D_8006A1E0)
    /* 1EE30 8002E630 E0A120AC */  sw         $zero, %lo(D_8006A1E0)($at)
    /* 1EE34 8002E634 0780013C */  lui        $at, %hi(D_8006A005)
    /* 1EE38 8002E638 05A023A0 */  sb         $v1, %lo(D_8006A005)($at)
    /* 1EE3C 8002E63C 0780013C */  lui        $at, %hi(D_8006A1DC)
    /* 1EE40 8002E640 DCA123AC */  sw         $v1, %lo(D_8006A1DC)($at)
  .L8002E644:
    /* 1EE44 8002E644 0800E003 */  jr         $ra
    /* 1EE48 8002E648 00000000 */   nop
endlabel func_8002E568
