.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_21_8006F5A8, 0x78

glabel func_level_21_8006F5A8
    /* 1567344 8006F5A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1567348 8006F5AC 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 156734C 8006F5B0 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 1567350 8006F5B4 17000224 */  addiu      $v0, $zero, 0x17
    /* 1567354 8006F5B8 15006214 */  bne        $v1, $v0, .Llevel_21_8006F610
    /* 1567358 8006F5BC 1000BFAF */   sw        $ra, 0x10($sp)
    /* 156735C 8006F5C0 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 1567360 8006F5C4 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 1567364 8006F5C8 00000000 */  nop
    /* 1567368 8006F5CC 0E008014 */  bnez       $a0, .Llevel_21_8006F608
    /* 156736C 8006F5D0 00000000 */   nop
    /* 1567370 8006F5D4 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 1567374 8006F5D8 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 1567378 8006F5DC 00000000 */  nop
    /* 156737C 8006F5E0 80100200 */  sll        $v0, $v0, 2
    /* 1567380 8006F5E4 0680013C */  lui        $at, %hi(D_80061468)
    /* 1567384 8006F5E8 21082200 */  addu       $at, $at, $v0
    /* 1567388 8006F5EC 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 156738C 8006F5F0 00000000 */  nop
    /* 1567390 8006F5F4 06008310 */  beq        $a0, $v1, .Llevel_21_8006F610
    /* 1567394 8006F5F8 00000000 */   nop
    /* 1567398 8006F5FC 02008014 */  bnez       $a0, .Llevel_21_8006F608
    /* 156739C 8006F600 00000000 */   nop
    /* 15673A0 8006F604 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_21_8006F608:
    /* 15673A4 8006F608 B685000C */  jal        func_800216D8
    /* 15673A8 8006F60C 00000000 */   nop
  .Llevel_21_8006F610:
    /* 15673AC 8006F610 1000BF8F */  lw         $ra, 0x10($sp)
    /* 15673B0 8006F614 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 15673B4 8006F618 0800E003 */  jr         $ra
    /* 15673B8 8006F61C 00000000 */   nop
endlabel func_level_21_8006F5A8
