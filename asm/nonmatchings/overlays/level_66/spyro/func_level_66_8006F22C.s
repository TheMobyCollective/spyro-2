.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_66_8006F22C, 0x64

glabel func_level_66_8006F22C
    /* 44B9FC8 8006F22C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44B9FCC 8006F230 0780033C */  lui        $v1, %hi(D_8006A004)
    /* 44B9FD0 8006F234 04A06390 */  lbu        $v1, %lo(D_8006A004)($v1)
    /* 44B9FD4 8006F238 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 44B9FD8 8006F23C 10006214 */  bne        $v1, $v0, .Llevel_66_8006F280
    /* 44B9FDC 8006F240 1000BFAF */   sw        $ra, 0x10($sp)
    /* 44B9FE0 8006F244 0780033C */  lui        $v1, %hi(D_8006A006)
    /* 44B9FE4 8006F248 06A06390 */  lbu        $v1, %lo(D_8006A006)($v1)
    /* 44B9FE8 8006F24C 0D000224 */  addiu      $v0, $zero, 0xD
    /* 44B9FEC 8006F250 0B006214 */  bne        $v1, $v0, .Llevel_66_8006F280
    /* 44B9FF0 8006F254 21280000 */   addu      $a1, $zero, $zero
    /* 44B9FF4 8006F258 0680023C */  lui        $v0, %hi(D_80067020)
    /* 44B9FF8 8006F25C 2070428C */  lw         $v0, %lo(D_80067020)($v0)
    /* 44B9FFC 8006F260 00000000 */  nop
    /* 44BA000 8006F264 0D004490 */  lbu        $a0, 0xD($v0)
    /* 44BA004 8006F268 C841010C */  jal        func_80050720
    /* 44BA008 8006F26C 21300000 */   addu      $a2, $zero, $zero
    /* 44BA00C 8006F270 0780023C */  lui        $v0, %hi(D_8006A006)
    /* 44BA010 8006F274 06A04290 */  lbu        $v0, %lo(D_8006A006)($v0)
    /* 44BA014 8006F278 0780013C */  lui        $at, %hi(D_8006A268)
    /* 44BA018 8006F27C 68A222AC */  sw         $v0, %lo(D_8006A268)($at)
  .Llevel_66_8006F280:
    /* 44BA01C 8006F280 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44BA020 8006F284 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44BA024 8006F288 0800E003 */  jr         $ra
    /* 44BA028 8006F28C 00000000 */   nop
endlabel func_level_66_8006F22C
