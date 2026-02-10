.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80015494, 0x64

glabel func_80015494
    /* 5C94 80015494 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 5C98 80015498 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 5C9C 8001549C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5CA0 800154A0 03006228 */  slti       $v0, $v1, 0x3
    /* 5CA4 800154A4 07004010 */  beqz       $v0, .L800154C4
    /* 5CA8 800154A8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5CAC 800154AC 0C00601C */  bgtz       $v1, .L800154E0
    /* 5CB0 800154B0 00000000 */   nop
    /* 5CB4 800154B4 06006010 */  beqz       $v1, .L800154D0
    /* 5CB8 800154B8 00000000 */   nop
    /* 5CBC 800154BC 3A550008 */  j          .L800154E8
    /* 5CC0 800154C0 00000000 */   nop
  .L800154C4:
    /* 5CC4 800154C4 04000224 */  addiu      $v0, $zero, 0x4
    /* 5CC8 800154C8 07006214 */  bne        $v1, $v0, .L800154E8
    /* 5CCC 800154CC 00000000 */   nop
  .L800154D0:
    /* 5CD0 800154D0 6855000C */  jal        func_800155A0
    /* 5CD4 800154D4 0D000424 */   addiu     $a0, $zero, 0xD
    /* 5CD8 800154D8 3A550008 */  j          .L800154E8
    /* 5CDC 800154DC 00000000 */   nop
  .L800154E0:
    /* 5CE0 800154E0 E4CA010C */  jal        func_titlescreen_and_loading_80072B90
    /* 5CE4 800154E4 00000000 */   nop
  .L800154E8:
    /* 5CE8 800154E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5CEC 800154EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5CF0 800154F0 0800E003 */  jr         $ra
    /* 5CF4 800154F4 00000000 */   nop
endlabel func_80015494
