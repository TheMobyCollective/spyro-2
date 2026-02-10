.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006F700, 0xD4

glabel func_level_34_8006F700
    /* 27AC49C 8006F700 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 27AC4A0 8006F704 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* 27AC4A4 8006F708 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* 27AC4A8 8006F70C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 27AC4AC 8006F710 06006210 */  beq        $v1, $v0, .Llevel_34_8006F72C
    /* 27AC4B0 8006F714 1000BFAF */   sw        $ra, 0x10($sp)
    /* 27AC4B4 8006F718 17000224 */  addiu      $v0, $zero, 0x17
    /* 27AC4B8 8006F71C 15006210 */  beq        $v1, $v0, .Llevel_34_8006F774
    /* 27AC4BC 8006F720 00000000 */   nop
    /* 27AC4C0 8006F724 F1BD0108 */  j          .Llevel_34_8006F7C4
    /* 27AC4C4 8006F728 00000000 */   nop
  .Llevel_34_8006F72C:
    /* 27AC4C8 8006F72C 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 27AC4CC 8006F730 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 27AC4D0 8006F734 00000000 */  nop
    /* 27AC4D4 8006F738 0A008014 */  bnez       $a0, .Llevel_34_8006F764
    /* 27AC4D8 8006F73C 00000000 */   nop
    /* 27AC4DC 8006F740 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 27AC4E0 8006F744 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 27AC4E4 8006F748 00000000 */  nop
    /* 27AC4E8 8006F74C 80100200 */  sll        $v0, $v0, 2
    /* 27AC4EC 8006F750 0680013C */  lui        $at, %hi(D_80061468)
    /* 27AC4F0 8006F754 21082200 */  addu       $at, $at, $v0
    /* 27AC4F4 8006F758 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 27AC4F8 8006F75C EFBD0108 */  j          .Llevel_34_8006F7BC
    /* 27AC4FC 8006F760 00000000 */   nop
  .Llevel_34_8006F764:
    /* 27AC500 8006F764 17008310 */  beq        $a0, $v1, .Llevel_34_8006F7C4
    /* 27AC504 8006F768 00000000 */   nop
    /* 27AC508 8006F76C EFBD0108 */  j          .Llevel_34_8006F7BC
    /* 27AC50C 8006F770 00000000 */   nop
  .Llevel_34_8006F774:
    /* 27AC510 8006F774 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* 27AC514 8006F778 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* 27AC518 8006F77C 00000000 */  nop
    /* 27AC51C 8006F780 0E008014 */  bnez       $a0, .Llevel_34_8006F7BC
    /* 27AC520 8006F784 00000000 */   nop
    /* 27AC524 8006F788 0780023C */  lui        $v0, %hi(D_8006A040)
    /* 27AC528 8006F78C 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* 27AC52C 8006F790 00000000 */  nop
    /* 27AC530 8006F794 80100200 */  sll        $v0, $v0, 2
    /* 27AC534 8006F798 0680013C */  lui        $at, %hi(D_80061468)
    /* 27AC538 8006F79C 21082200 */  addu       $at, $at, $v0
    /* 27AC53C 8006F7A0 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* 27AC540 8006F7A4 00000000 */  nop
    /* 27AC544 8006F7A8 06008310 */  beq        $a0, $v1, .Llevel_34_8006F7C4
    /* 27AC548 8006F7AC 00000000 */   nop
    /* 27AC54C 8006F7B0 02008014 */  bnez       $a0, .Llevel_34_8006F7BC
    /* 27AC550 8006F7B4 00000000 */   nop
    /* 27AC554 8006F7B8 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_34_8006F7BC:
    /* 27AC558 8006F7BC B685000C */  jal        func_800216D8
    /* 27AC55C 8006F7C0 00000000 */   nop
  .Llevel_34_8006F7C4:
    /* 27AC560 8006F7C4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 27AC564 8006F7C8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 27AC568 8006F7CC 0800E003 */  jr         $ra
    /* 27AC56C 8006F7D0 00000000 */   nop
endlabel func_level_34_8006F700
    /* 27AC570 8006F7D4 00000000 */  nop
