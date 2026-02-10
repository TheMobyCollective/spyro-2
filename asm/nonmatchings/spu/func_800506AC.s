.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800506AC, 0x74

glabel func_800506AC
    /* 40EAC 800506AC 0680023C */  lui        $v0, %hi(D_800670C0)
    /* 40EB0 800506B0 C070428C */  lw         $v0, %lo(D_800670C0)($v0)
    /* 40EB4 800506B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40EB8 800506B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 40EBC 800506BC 21104500 */  addu       $v0, $v0, $a1
    /* 40EC0 800506C0 00004390 */  lbu        $v1, 0x0($v0)
    /* 40EC4 800506C4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 40EC8 800506C8 07006210 */  beq        $v1, $v0, .L800506E8
    /* 40ECC 800506CC 00000000 */   nop
    /* 40ED0 800506D0 07008010 */  beqz       $a0, .L800506F0
    /* 40ED4 800506D4 00000000 */   nop
    /* 40ED8 800506D8 4B008290 */  lbu        $v0, 0x4B($a0)
    /* 40EDC 800506DC 00000000 */  nop
    /* 40EE0 800506E0 03004014 */  bnez       $v0, .L800506F0
    /* 40EE4 800506E4 00000000 */   nop
  .L800506E8:
    /* 40EE8 800506E8 C4410108 */  j          .L80050710
    /* 40EEC 800506EC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800506F0:
    /* 40EF0 800506F0 0680023C */  lui        $v0, %hi(D_800670C0)
    /* 40EF4 800506F4 C070428C */  lw         $v0, %lo(D_800670C0)($v0)
    /* 40EF8 800506F8 00000000 */  nop
    /* 40EFC 800506FC 21104500 */  addu       $v0, $v0, $a1
    /* 40F00 80050700 21288000 */  addu       $a1, $a0, $zero
    /* 40F04 80050704 00004490 */  lbu        $a0, 0x0($v0)
    /* 40F08 80050708 C841010C */  jal        func_80050720
    /* 40F0C 8005070C 00000000 */   nop
  .L80050710:
    /* 40F10 80050710 1000BF8F */  lw         $ra, 0x10($sp)
    /* 40F14 80050714 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40F18 80050718 0800E003 */  jr         $ra
    /* 40F1C 8005071C 00000000 */   nop
endlabel func_800506AC
