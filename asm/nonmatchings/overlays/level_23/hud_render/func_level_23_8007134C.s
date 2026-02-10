.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_23_8007134C, 0xB8

glabel func_level_23_8007134C
    /* 19AF0E8 8007134C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 19AF0EC 80071350 0680063C */  lui        $a2, %hi(D_80067674)
    /* 19AF0F0 80071354 7476C624 */  addiu      $a2, $a2, %lo(D_80067674)
    /* 19AF0F4 80071358 1800BFAF */  sw         $ra, 0x18($sp)
    /* 19AF0F8 8007135C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 19AF0FC 80071360 00000000 */  nop
    /* 19AF100 80071364 21004010 */  beqz       $v0, .Llevel_23_800713EC
    /* 19AF104 80071368 00000000 */   nop
    /* 19AF108 8007136C 0680023C */  lui        $v0, %hi(D_80066FEC)
    /* 19AF10C 80071370 EC6F428C */  lw         $v0, %lo(D_80066FEC)($v0)
    /* 19AF110 80071374 00000000 */  nop
    /* 19AF114 80071378 1C004010 */  beqz       $v0, .Llevel_23_800713EC
    /* 19AF118 8007137C 4992033C */   lui       $v1, (0x92492493 >> 16)
    /* 19AF11C 80071380 0680023C */  lui        $v0, %hi(D_80067008)
    /* 19AF120 80071384 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 19AF124 80071388 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 19AF128 8007138C 43200200 */  sra        $a0, $v0, 1
    /* 19AF12C 80071390 18008300 */  mult       $a0, $v1
    /* 19AF130 80071394 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 19AF134 80071398 C3170200 */  sra        $v0, $v0, 31
    /* 19AF138 8007139C 10400000 */  mfhi       $t0
    /* 19AF13C 800713A0 21180401 */  addu       $v1, $t0, $a0
    /* 19AF140 800713A4 C3180300 */  sra        $v1, $v1, 3
    /* 19AF144 800713A8 23186200 */  subu       $v1, $v1, $v0
    /* 19AF148 800713AC C0100300 */  sll        $v0, $v1, 3
    /* 19AF14C 800713B0 23104300 */  subu       $v0, $v0, $v1
    /* 19AF150 800713B4 40100200 */  sll        $v0, $v0, 1
    /* 19AF154 800713B8 23208200 */  subu       $a0, $a0, $v0
    /* 19AF158 800713BC 0680013C */  lui        $at, %hi(D_800634A8)
    /* 19AF15C 800713C0 21082400 */  addu       $at, $at, $a0
    /* 19AF160 800713C4 A8342590 */  lbu        $a1, %lo(D_800634A8)($at)
    /* 19AF164 800713C8 07000224 */  addiu      $v0, $zero, 0x7
    /* 19AF168 800713CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 19AF16C 800713D0 0680023C */  lui        $v0, %hi(D_800635F8)
    /* 19AF170 800713D4 F8354224 */  addiu      $v0, $v0, %lo(D_800635F8)
    /* 19AF174 800713D8 2120C000 */  addu       $a0, $a2, $zero
    /* 19AF178 800713DC 68010624 */  addiu      $a2, $zero, 0x168
    /* 19AF17C 800713E0 80280500 */  sll        $a1, $a1, 2
    /* 19AF180 800713E4 A449010C */  jal        func_80052690
    /* 19AF184 800713E8 2128A200 */   addu      $a1, $a1, $v0
  .Llevel_23_800713EC:
    /* 19AF188 800713EC 154D010C */  jal        func_80053454
    /* 19AF18C 800713F0 00000000 */   nop
    /* 19AF190 800713F4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 19AF194 800713F8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 19AF198 800713FC 0800E003 */  jr         $ra
    /* 19AF19C 80071400 00000000 */   nop
endlabel func_level_23_8007134C
    /* 19AF1A0 80071404 00000000 */  nop
