.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_32_8006FDF8, 0x9C

glabel func_level_32_8006FDF8
    /* 2361B94 8006FDF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2361B98 8006FDFC 0680063C */  lui        $a2, %hi(D_80067674)
    /* 2361B9C 8006FE00 7476C624 */  addiu      $a2, $a2, %lo(D_80067674)
    /* 2361BA0 8006FE04 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2361BA4 8006FE08 0000C290 */  lbu        $v0, 0x0($a2)
    /* 2361BA8 8006FE0C 00000000 */  nop
    /* 2361BAC 8006FE10 1A004010 */  beqz       $v0, .Llevel_32_8006FE7C
    /* 2361BB0 8006FE14 4992033C */   lui       $v1, (0x92492493 >> 16)
    /* 2361BB4 8006FE18 0680023C */  lui        $v0, %hi(D_80067008)
    /* 2361BB8 8006FE1C 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 2361BBC 8006FE20 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 2361BC0 8006FE24 43200200 */  sra        $a0, $v0, 1
    /* 2361BC4 8006FE28 18008300 */  mult       $a0, $v1
    /* 2361BC8 8006FE2C EC000724 */  addiu      $a3, $zero, 0xEC
    /* 2361BCC 8006FE30 C3170200 */  sra        $v0, $v0, 31
    /* 2361BD0 8006FE34 10400000 */  mfhi       $t0
    /* 2361BD4 8006FE38 21180401 */  addu       $v1, $t0, $a0
    /* 2361BD8 8006FE3C C3180300 */  sra        $v1, $v1, 3
    /* 2361BDC 8006FE40 23186200 */  subu       $v1, $v1, $v0
    /* 2361BE0 8006FE44 C0100300 */  sll        $v0, $v1, 3
    /* 2361BE4 8006FE48 23104300 */  subu       $v0, $v0, $v1
    /* 2361BE8 8006FE4C 40100200 */  sll        $v0, $v0, 1
    /* 2361BEC 8006FE50 23208200 */  subu       $a0, $a0, $v0
    /* 2361BF0 8006FE54 0680023C */  lui        $v0, %hi(D_800635F8)
    /* 2361BF4 8006FE58 F8354224 */  addiu      $v0, $v0, %lo(D_800635F8)
    /* 2361BF8 8006FE5C 0680013C */  lui        $at, %hi(D_800634A8)
    /* 2361BFC 8006FE60 21082400 */  addu       $at, $at, $a0
    /* 2361C00 8006FE64 A8342590 */  lbu        $a1, %lo(D_800634A8)($at)
    /* 2361C04 8006FE68 2120C000 */  addu       $a0, $a2, $zero
    /* 2361C08 8006FE6C 98010624 */  addiu      $a2, $zero, 0x198
    /* 2361C0C 8006FE70 80280500 */  sll        $a1, $a1, 2
    /* 2361C10 8006FE74 4749010C */  jal        func_8005251C
    /* 2361C14 8006FE78 2128A200 */   addu      $a1, $a1, $v0
  .Llevel_32_8006FE7C:
    /* 2361C18 8006FE7C 154D010C */  jal        func_80053454
    /* 2361C1C 8006FE80 00000000 */   nop
    /* 2361C20 8006FE84 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2361C24 8006FE88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2361C28 8006FE8C 0800E003 */  jr         $ra
    /* 2361C2C 8006FE90 00000000 */   nop
endlabel func_level_32_8006FDF8
    /* 2361C30 8006FE94 00000000 */  nop
