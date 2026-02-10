.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800766A0, 0xDC

glabel func_titlescreen_and_loading_800766A0
    /* 2C43C 800766A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2C440 800766A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C444 800766A8 21888000 */  addu       $s1, $a0, $zero
    /* 2C448 800766AC 21280000 */  addu       $a1, $zero, $zero
    /* 2C44C 800766B0 00060624 */  addiu      $a2, $zero, 0x600
    /* 2C450 800766B4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2C454 800766B8 F26C000C */  jal        func_8001B3C8
    /* 2C458 800766BC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2C45C 800766C0 0B000224 */  addiu      $v0, $zero, 0xB
    /* 2C460 800766C4 000022A2 */  sb         $v0, 0x0($s1)
    /* 2C464 800766C8 04000224 */  addiu      $v0, $zero, 0x4
    /* 2C468 800766CC 010022A2 */  sb         $v0, 0x1($s1)
    /* 2C46C 800766D0 0680023C */  lui        $v0, %hi(D_800676A0)
    /* 2C470 800766D4 A076428C */  lw         $v0, %lo(D_800676A0)($v0)
    /* 2C474 800766D8 00000000 */  nop
    /* 2C478 800766DC 020022A2 */  sb         $v0, 0x2($s1)
    /* 2C47C 800766E0 0780023C */  lui        $v0, %hi(D_800698BA)
    /* 2C480 800766E4 BA984290 */  lbu        $v0, %lo(D_800698BA)($v0)
    /* 2C484 800766E8 00000000 */  nop
    /* 2C488 800766EC 030022A2 */  sb         $v0, 0x3($s1)
    /* 2C48C 800766F0 0780023C */  lui        $v0, %hi(D_80068374)
    /* 2C490 800766F4 74834290 */  lbu        $v0, %lo(D_80068374)($v0)
    /* 2C494 800766F8 00000000 */  nop
    /* 2C498 800766FC 040022A2 */  sb         $v0, 0x4($s1)
    /* 2C49C 80076700 0680023C */  lui        $v0, %hi(D_80067144)
    /* 2C4A0 80076704 4471428C */  lw         $v0, %lo(D_80067144)($v0)
    /* 2C4A4 80076708 00000000 */  nop
    /* 2C4A8 8007670C 050022A2 */  sb         $v0, 0x5($s1)
    /* 2C4AC 80076710 0680023C */  lui        $v0, %hi(D_80066D48)
    /* 2C4B0 80076714 486D428C */  lw         $v0, %lo(D_80066D48)($v0)
    /* 2C4B4 80076718 00000000 */  nop
    /* 2C4B8 8007671C 060022A2 */  sb         $v0, 0x6($s1)
    /* 2C4BC 80076720 0680023C */  lui        $v0, %hi(D_80066D4C)
    /* 2C4C0 80076724 4C6D428C */  lw         $v0, %lo(D_80066D4C)($v0)
    /* 2C4C4 80076728 00000000 */  nop
    /* 2C4C8 8007672C 070022A2 */  sb         $v0, 0x7($s1)
    /* 2C4CC 80076730 0680023C */  lui        $v0, %hi(D_80066D50)
    /* 2C4D0 80076734 506D428C */  lw         $v0, %lo(D_80066D50)($v0)
    /* 2C4D4 80076738 B670000C */  jal        func_8001C2D8
    /* 2C4D8 8007673C 080022A2 */   sb        $v0, 0x8($s1)
    /* 2C4DC 80076740 4B67010C */  jal        func_80059D2C
    /* 2C4E0 80076744 21804000 */   addu      $s0, $v0, $zero
    /* 2C4E4 80076748 21202002 */  addu       $a0, $s1, $zero
    /* 2C4E8 8007674C 00140200 */  sll        $v0, $v0, 16
    /* 2C4EC 80076750 21800202 */  addu       $s0, $s0, $v0
    /* 2C4F0 80076754 85D9010C */  jal        func_titlescreen_and_loading_80076614
    /* 2C4F4 80076758 0C0030AE */   sw        $s0, 0xC($s1)
    /* 2C4F8 8007675C A80522AE */  sw         $v0, 0x5A8($s1)
    /* 2C4FC 80076760 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2C500 80076764 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2C504 80076768 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C508 8007676C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C50C 80076770 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2C510 80076774 0800E003 */  jr         $ra
    /* 2C514 80076778 00000000 */   nop
endlabel func_titlescreen_and_loading_800766A0
