.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_34_8006E6FC, 0x178

glabel func_level_34_8006E6FC
    /* 27AB498 8006E6FC 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 27AB49C 8006E700 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 27AB4A0 8006E704 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 27AB4A4 8006E708 1800BFAF */  sw         $ra, 0x18($sp)
    /* 27AB4A8 8006E70C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27AB4AC 8006E710 35006228 */  slti       $v0, $v1, 0x35
    /* 27AB4B0 8006E714 08004010 */  beqz       $v0, .Llevel_34_8006E738
    /* 27AB4B4 8006E718 1000B0AF */   sw        $s0, 0x10($sp)
    /* 27AB4B8 8006E71C 33006228 */  slti       $v0, $v1, 0x33
    /* 27AB4BC 8006E720 22004010 */  beqz       $v0, .Llevel_34_8006E7AC
    /* 27AB4C0 8006E724 32000224 */   addiu     $v0, $zero, 0x32
    /* 27AB4C4 8006E728 08006210 */  beq        $v1, $v0, .Llevel_34_8006E74C
    /* 27AB4C8 8006E72C 03000224 */   addiu     $v0, $zero, 0x3
    /* 27AB4CC 8006E730 17BA0108 */  j          .Llevel_34_8006E85C
    /* 27AB4D0 8006E734 00000000 */   nop
  .Llevel_34_8006E738:
    /* 27AB4D4 8006E738 3B000224 */  addiu      $v0, $zero, 0x3B
    /* 27AB4D8 8006E73C 38006210 */  beq        $v1, $v0, .Llevel_34_8006E820
    /* 27AB4DC 8006E740 15000224 */   addiu     $v0, $zero, 0x15
    /* 27AB4E0 8006E744 17BA0108 */  j          .Llevel_34_8006E85C
    /* 27AB4E4 8006E748 00000000 */   nop
  .Llevel_34_8006E74C:
    /* 27AB4E8 8006E74C 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 27AB4EC 8006E750 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 27AB4F0 8006E754 00000000 */  nop
    /* 27AB4F4 8006E758 03006210 */  beq        $v1, $v0, .Llevel_34_8006E768
    /* 27AB4F8 8006E75C 0A000224 */   addiu     $v0, $zero, 0xA
    /* 27AB4FC 8006E760 3E006214 */  bne        $v1, $v0, .Llevel_34_8006E85C
    /* 27AB500 8006E764 00000000 */   nop
  .Llevel_34_8006E768:
    /* 27AB504 8006E768 0680023C */  lui        $v0, %hi(D_80067020)
    /* 27AB508 8006E76C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 27AB50C 8006E770 21280000 */  addu       $a1, $zero, $zero
    /* 27AB510 8006E774 11004490 */  lbu        $a0, 0x11($v0)
    /* 27AB514 8006E778 C841010C */  jal        func_80050720
    /* 27AB518 8006E77C 21300000 */   addu      $a2, $zero, $zero
    /* 27AB51C 8006E780 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 27AB520 8006E784 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 27AB524 8006E788 21204000 */  addu       $a0, $v0, $zero
    /* 27AB528 8006E78C 0780013C */  lui        $at, %hi(D_8006A268)
    /* 27AB52C 8006E790 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* 27AB530 8006E794 31008004 */  bltz       $a0, .Llevel_34_8006E85C
    /* 27AB534 8006E798 0A000224 */   addiu     $v0, $zero, 0xA
    /* 27AB538 8006E79C 1C006210 */  beq        $v1, $v0, .Llevel_34_8006E810
    /* 27AB53C 8006E7A0 00000000 */   nop
    /* 27AB540 8006E7A4 17BA0108 */  j          .Llevel_34_8006E85C
    /* 27AB544 8006E7A8 00000000 */   nop
  .Llevel_34_8006E7AC:
    /* 27AB548 8006E7AC 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 27AB54C 8006E7B0 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 27AB550 8006E7B4 01001124 */  addiu      $s1, $zero, 0x1
    /* 27AB554 8006E7B8 03007110 */  beq        $v1, $s1, .Llevel_34_8006E7C8
    /* 27AB558 8006E7BC 03000224 */   addiu     $v0, $zero, 0x3
    /* 27AB55C 8006E7C0 26006214 */  bne        $v1, $v0, .Llevel_34_8006E85C
    /* 27AB560 8006E7C4 00000000 */   nop
  .Llevel_34_8006E7C8:
    /* 27AB564 8006E7C8 0680023C */  lui        $v0, %hi(D_80067020)
    /* 27AB568 8006E7CC 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 27AB56C 8006E7D0 21280000 */  addu       $a1, $zero, $zero
    /* 27AB570 8006E7D4 11004490 */  lbu        $a0, 0x11($v0)
    /* 27AB574 8006E7D8 C841010C */  jal        func_80050720
    /* 27AB578 8006E7DC 21300000 */   addu      $a2, $zero, $zero
    /* 27AB57C 8006E7E0 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 27AB580 8006E7E4 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 27AB584 8006E7E8 21804000 */  addu       $s0, $v0, $zero
    /* 27AB588 8006E7EC 0780013C */  lui        $at, %hi(D_8006A268)
    /* 27AB58C 8006E7F0 68A223AC */  sw         $v1, %lo(D_8006A268)($at)
    /* 27AB590 8006E7F4 19000006 */  bltz       $s0, .Llevel_34_8006E85C
    /* 27AB594 8006E7F8 00000000 */   nop
    /* 27AB598 8006E7FC 17007114 */  bne        $v1, $s1, .Llevel_34_8006E85C
    /* 27AB59C 8006E800 21200002 */   addu      $a0, $s0, $zero
    /* 27AB5A0 8006E804 3D43010C */  jal        func_80050CF4
    /* 27AB5A4 8006E808 000C0524 */   addiu     $a1, $zero, 0xC00
    /* 27AB5A8 8006E80C 21200002 */  addu       $a0, $s0, $zero
  .Llevel_34_8006E810:
    /* 27AB5AC 8006E810 1943010C */  jal        func_80050C64
    /* 27AB5B0 8006E814 00120524 */   addiu     $a1, $zero, 0x1200
    /* 27AB5B4 8006E818 17BA0108 */  j          .Llevel_34_8006E85C
    /* 27AB5B8 8006E81C 00000000 */   nop
  .Llevel_34_8006E820:
    /* 27AB5BC 8006E820 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 27AB5C0 8006E824 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 27AB5C4 8006E828 00000000 */  nop
    /* 27AB5C8 8006E82C 0B006214 */  bne        $v1, $v0, .Llevel_34_8006E85C
    /* 27AB5CC 8006E830 21280000 */   addu      $a1, $zero, $zero
    /* 27AB5D0 8006E834 0680023C */  lui        $v0, %hi(D_80067020)
    /* 27AB5D4 8006E838 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 27AB5D8 8006E83C 00000000 */  nop
    /* 27AB5DC 8006E840 0D004490 */  lbu        $a0, 0xD($v0)
    /* 27AB5E0 8006E844 C841010C */  jal        func_80050720
    /* 27AB5E4 8006E848 21300000 */   addu      $a2, $zero, $zero
    /* 27AB5E8 8006E84C 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 27AB5EC 8006E850 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 27AB5F0 8006E854 0780013C */  lui        $at, %hi(D_8006A268)
    /* 27AB5F4 8006E858 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_34_8006E85C:
    /* 27AB5F8 8006E85C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 27AB5FC 8006E860 1400B18F */  lw         $s1, 0x14($sp)
    /* 27AB600 8006E864 1000B08F */  lw         $s0, 0x10($sp)
    /* 27AB604 8006E868 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 27AB608 8006E86C 0800E003 */  jr         $ra
    /* 27AB60C 8006E870 00000000 */   nop
endlabel func_level_34_8006E6FC
