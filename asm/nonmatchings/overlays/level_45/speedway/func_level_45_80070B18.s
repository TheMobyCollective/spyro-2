.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_45_80070B18, 0x204

glabel func_level_45_80070B18
    /* 33FB0B4 80070B18 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33FB0B8 80070B1C 21708000 */  addu       $t6, $a0, $zero
    /* 33FB0BC 80070B20 21500000 */  addu       $t2, $zero, $zero
    /* 33FB0C0 80070B24 21300000 */  addu       $a2, $zero, $zero
    /* 33FB0C4 80070B28 08000D24 */  addiu      $t5, $zero, 0x8
    /* 33FB0C8 80070B2C 06800C3C */  lui        $t4, %hi(D_80061950)
    /* 33FB0CC 80070B30 50198C25 */  addiu      $t4, $t4, %lo(D_80061950)
    /* 33FB0D0 80070B34 07800B3C */  lui        $t3, %hi(D_80069898)
    /* 33FB0D4 80070B38 98986B25 */  addiu      $t3, $t3, %lo(D_80069898)
    /* 33FB0D8 80070B3C 21406001 */  addu       $t0, $t3, $zero
    /* 33FB0DC 80070B40 0680023C */  lui        $v0, %hi(D_80066F54)
    /* 33FB0E0 80070B44 546F428C */  lw         $v0, %lo(D_80066F54)($v0)
    /* 33FB0E4 80070B48 0780033C */  lui        $v1, %hi(D_8006AC04)
    /* 33FB0E8 80070B4C 04AC6324 */  addiu      $v1, $v1, %lo(D_8006AC04)
    /* 33FB0EC 80070B50 1000BFAF */  sw         $ra, 0x10($sp)
    /* 33FB0F0 80070B54 80100200 */  sll        $v0, $v0, 2
    /* 33FB0F4 80070B58 21484300 */  addu       $t1, $v0, $v1
  .Llevel_45_80070B5C:
    /* 33FB0F8 80070B5C 0000028D */  lw         $v0, 0x0($t0)
    /* 33FB0FC 80070B60 00000000 */  nop
    /* 33FB100 80070B64 2B004D14 */  bne        $v0, $t5, .Llevel_45_80070C14
    /* 33FB104 80070B68 80380600 */   sll       $a3, $a2, 2
    /* 33FB108 80070B6C FCFF638D */  lw         $v1, -0x4($t3)
    /* 33FB10C 80070B70 00000000 */  nop
    /* 33FB110 80070B74 40100300 */  sll        $v0, $v1, 1
    /* 33FB114 80070B78 21104300 */  addu       $v0, $v0, $v1
    /* 33FB118 80070B7C 80100200 */  sll        $v0, $v0, 2
    /* 33FB11C 80070B80 23104300 */  subu       $v0, $v0, $v1
    /* 33FB120 80070B84 C0280200 */  sll        $a1, $v0, 3
    /* 33FB124 80070B88 2110AC00 */  addu       $v0, $a1, $t4
    /* 33FB128 80070B8C 2110E200 */  addu       $v0, $a3, $v0
    /* 33FB12C 80070B90 0000428C */  lw         $v0, 0x0($v0)
    /* 33FB130 80070B94 00000000 */  nop
    /* 33FB134 80070B98 1E004014 */  bnez       $v0, .Llevel_45_80070C14
    /* 33FB138 80070B9C 01004A25 */   addiu     $t2, $t2, 0x1
    /* 33FB13C 80070BA0 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 33FB140 80070BA4 CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 33FB144 80070BA8 0680013C */  lui        $at, %hi(D_8006196C)
    /* 33FB148 80070BAC 21082500 */  addu       $at, $at, $a1
    /* 33FB14C 80070BB0 6C19248C */  lw         $a0, %lo(D_8006196C)($at)
    /* 33FB150 80070BB4 0000238D */  lw         $v1, 0x0($t1)
    /* 33FB154 80070BB8 0680013C */  lui        $at, %hi(D_8006196C)
    /* 33FB158 80070BBC 21082500 */  addu       $at, $at, $a1
    /* 33FB15C 80070BC0 6C19258C */  lw         $a1, %lo(D_8006196C)($at)
    /* 33FB160 80070BC4 21104400 */  addu       $v0, $v0, $a0
    /* 33FB164 80070BC8 0680013C */  lui        $at, %hi(D_800670CC)
    /* 33FB168 80070BCC CC7022AC */  sw         $v0, %lo(D_800670CC)($at)
    /* 33FB16C 80070BD0 0680023C */  lui        $v0, %hi(D_800670B0)
    /* 33FB170 80070BD4 B070428C */  lw         $v0, %lo(D_800670B0)($v0)
    /* 33FB174 80070BD8 21186500 */  addu       $v1, $v1, $a1
    /* 33FB178 80070BDC 000023AD */  sw         $v1, 0x0($t1)
    /* 33FB17C 80070BE0 FCFF638D */  lw         $v1, -0x4($t3)
    /* 33FB180 80070BE4 0C004224 */  addiu      $v0, $v0, 0xC
    /* 33FB184 80070BE8 0680013C */  lui        $at, %hi(D_800670B0)
    /* 33FB188 80070BEC B07022AC */  sw         $v0, %lo(D_800670B0)($at)
    /* 33FB18C 80070BF0 40100300 */  sll        $v0, $v1, 1
    /* 33FB190 80070BF4 21104300 */  addu       $v0, $v0, $v1
    /* 33FB194 80070BF8 80100200 */  sll        $v0, $v0, 2
    /* 33FB198 80070BFC 23104300 */  subu       $v0, $v0, $v1
    /* 33FB19C 80070C00 C0100200 */  sll        $v0, $v0, 3
    /* 33FB1A0 80070C04 21104C00 */  addu       $v0, $v0, $t4
    /* 33FB1A4 80070C08 2110E200 */  addu       $v0, $a3, $v0
    /* 33FB1A8 80070C0C 01000324 */  addiu      $v1, $zero, 0x1
    /* 33FB1AC 80070C10 000043AC */  sw         $v1, 0x0($v0)
  .Llevel_45_80070C14:
    /* 33FB1B0 80070C14 0100C624 */  addiu      $a2, $a2, 0x1
    /* 33FB1B4 80070C18 0400C228 */  slti       $v0, $a2, 0x4
    /* 33FB1B8 80070C1C CFFF4014 */  bnez       $v0, .Llevel_45_80070B5C
    /* 33FB1BC 80070C20 04000825 */   addiu     $t0, $t0, 0x4
    /* 33FB1C0 80070C24 0780073C */  lui        $a3, %hi(D_80069894)
    /* 33FB1C4 80070C28 9498E724 */  addiu      $a3, $a3, %lo(D_80069894)
    /* 33FB1C8 80070C2C 0000E28C */  lw         $v0, 0x0($a3)
    /* 33FB1CC 80070C30 00000000 */  nop
    /* 33FB1D0 80070C34 40180200 */  sll        $v1, $v0, 1
    /* 33FB1D4 80070C38 21186200 */  addu       $v1, $v1, $v0
    /* 33FB1D8 80070C3C 80180300 */  sll        $v1, $v1, 2
    /* 33FB1DC 80070C40 23186200 */  subu       $v1, $v1, $v0
    /* 33FB1E0 80070C44 C0300300 */  sll        $a2, $v1, 3
    /* 33FB1E4 80070C48 0680013C */  lui        $at, %hi(D_80061960)
    /* 33FB1E8 80070C4C 21082600 */  addu       $at, $at, $a2
    /* 33FB1EC 80070C50 6019228C */  lw         $v0, %lo(D_80061960)($at)
    /* 33FB1F0 80070C54 00000000 */  nop
    /* 33FB1F4 80070C58 26004014 */  bnez       $v0, .Llevel_45_80070CF4
    /* 33FB1F8 80070C5C 04000224 */   addiu     $v0, $zero, 0x4
    /* 33FB1FC 80070C60 24004215 */  bne        $t2, $v0, .Llevel_45_80070CF4
    /* 33FB200 80070C64 00000000 */   nop
    /* 33FB204 80070C68 0780023C */  lui        $v0, %hi(D_8006AC04)
    /* 33FB208 80070C6C 04AC4224 */  addiu      $v0, $v0, %lo(D_8006AC04)
    /* 33FB20C 80070C70 0680043C */  lui        $a0, %hi(D_80066F54)
    /* 33FB210 80070C74 546F848C */  lw         $a0, %lo(D_80066F54)($a0)
    /* 33FB214 80070C78 0680013C */  lui        $at, %hi(D_8006196C)
    /* 33FB218 80070C7C 21082600 */  addu       $at, $at, $a2
    /* 33FB21C 80070C80 6C19258C */  lw         $a1, %lo(D_8006196C)($at)
    /* 33FB220 80070C84 0680013C */  lui        $at, %hi(D_8006196C)
    /* 33FB224 80070C88 21082600 */  addu       $at, $at, $a2
    /* 33FB228 80070C8C 6C19268C */  lw         $a2, %lo(D_8006196C)($at)
    /* 33FB22C 80070C90 80200400 */  sll        $a0, $a0, 2
    /* 33FB230 80070C94 21208200 */  addu       $a0, $a0, $v0
    /* 33FB234 80070C98 0680023C */  lui        $v0, %hi(D_800670CC)
    /* 33FB238 80070C9C CC70428C */  lw         $v0, %lo(D_800670CC)($v0)
    /* 33FB23C 80070CA0 0000838C */  lw         $v1, 0x0($a0)
    /* 33FB240 80070CA4 21104500 */  addu       $v0, $v0, $a1
    /* 33FB244 80070CA8 0680013C */  lui        $at, %hi(D_800670CC)
    /* 33FB248 80070CAC CC7022AC */  sw         $v0, %lo(D_800670CC)($at)
    /* 33FB24C 80070CB0 0680023C */  lui        $v0, %hi(D_800670B0)
    /* 33FB250 80070CB4 B070428C */  lw         $v0, %lo(D_800670B0)($v0)
    /* 33FB254 80070CB8 21186600 */  addu       $v1, $v1, $a2
    /* 33FB258 80070CBC 000083AC */  sw         $v1, 0x0($a0)
    /* 33FB25C 80070CC0 0000E38C */  lw         $v1, 0x0($a3)
    /* 33FB260 80070CC4 0C004224 */  addiu      $v0, $v0, 0xC
    /* 33FB264 80070CC8 0680013C */  lui        $at, %hi(D_800670B0)
    /* 33FB268 80070CCC B07022AC */  sw         $v0, %lo(D_800670B0)($at)
    /* 33FB26C 80070CD0 40100300 */  sll        $v0, $v1, 1
    /* 33FB270 80070CD4 21104300 */  addu       $v0, $v0, $v1
    /* 33FB274 80070CD8 80100200 */  sll        $v0, $v0, 2
    /* 33FB278 80070CDC 23104300 */  subu       $v0, $v0, $v1
    /* 33FB27C 80070CE0 C0100200 */  sll        $v0, $v0, 3
    /* 33FB280 80070CE4 01000324 */  addiu      $v1, $zero, 0x1
    /* 33FB284 80070CE8 0680013C */  lui        $at, %hi(D_80061960)
    /* 33FB288 80070CEC 21082200 */  addu       $at, $at, $v0
    /* 33FB28C 80070CF0 601923AC */  sw         $v1, %lo(D_80061960)($at)
  .Llevel_45_80070CF4:
    /* 33FB290 80070CF4 0780013C */  lui        $at, %hi(D_800681C8)
    /* 33FB294 80070CF8 C88120AC */  sw         $zero, %lo(D_800681C8)($at)
    /* 33FB298 80070CFC 0300C011 */  beqz       $t6, .Llevel_45_80070D0C
    /* 33FB29C 80070D00 00000000 */   nop
    /* 33FB2A0 80070D04 9DCB000C */  jal        func_80032E74
    /* 33FB2A4 80070D08 00000000 */   nop
  .Llevel_45_80070D0C:
    /* 33FB2A8 80070D0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 33FB2AC 80070D10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 33FB2B0 80070D14 0800E003 */  jr         $ra
    /* 33FB2B4 80070D18 00000000 */   nop
endlabel func_level_45_80070B18
