.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_44_8006EBB8, 0x70

glabel func_level_44_8006EBB8
    /* 31D6154 8006EBB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 31D6158 8006EBBC 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 31D615C 8006EBC0 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 31D6160 8006EBC4 20000224 */  addiu      $v0, $zero, 0x20
    /* 31D6164 8006EBC8 13006210 */  beq        $v1, $v0, .Llevel_44_8006EC18
    /* 31D6168 8006EBCC 1000BFAF */   sw        $ra, 0x10($sp)
    /* 31D616C 8006EBD0 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 31D6170 8006EBD4 10006214 */  bne        $v1, $v0, .Llevel_44_8006EC18
    /* 31D6174 8006EBD8 0D000224 */   addiu     $v0, $zero, 0xD
    /* 31D6178 8006EBDC 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 31D617C 8006EBE0 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 31D6180 8006EBE4 00000000 */  nop
    /* 31D6184 8006EBE8 0B006214 */  bne        $v1, $v0, .Llevel_44_8006EC18
    /* 31D6188 8006EBEC 21280000 */   addu      $a1, $zero, $zero
    /* 31D618C 8006EBF0 0680023C */  lui        $v0, %hi(D_80067020)
    /* 31D6190 8006EBF4 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 31D6194 8006EBF8 00000000 */  nop
    /* 31D6198 8006EBFC 0D004490 */  lbu        $a0, 0xD($v0)
    /* 31D619C 8006EC00 C841010C */  jal        func_80050720
    /* 31D61A0 8006EC04 21300000 */   addu      $a2, $zero, $zero
    /* 31D61A4 8006EC08 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 31D61A8 8006EC0C 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 31D61AC 8006EC10 0780013C */  lui        $at, %hi(D_8006A268)
    /* 31D61B0 8006EC14 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_44_8006EC18:
    /* 31D61B4 8006EC18 1000BF8F */  lw         $ra, 0x10($sp)
    /* 31D61B8 8006EC1C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 31D61BC 8006EC20 0800E003 */  jr         $ra
    /* 31D61C0 8006EC24 00000000 */   nop
endlabel func_level_44_8006EBB8
