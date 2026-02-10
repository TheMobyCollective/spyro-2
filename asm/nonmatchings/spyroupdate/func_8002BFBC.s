.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BFBC, 0x7C

glabel func_8002BFBC
    /* 1C7BC 8002BFBC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1C7C0 8002BFC0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1C7C4 8002BFC4 0780103C */  lui        $s0, %hi(D_8006A084)
    /* 1C7C8 8002BFC8 84A01026 */  addiu      $s0, $s0, %lo(D_8006A084)
    /* 1C7CC 8002BFCC 21200002 */  addu       $a0, $s0, $zero
    /* 1C7D0 8002BFD0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1C7D4 8002BFD4 886E000C */  jal        func_8001BA20
    /* 1C7D8 8002BFD8 21280000 */   addu      $a1, $zero, $zero
    /* 1C7DC 8002BFDC 81014228 */  slti       $v0, $v0, 0x181
    /* 1C7E0 8002BFE0 10004014 */  bnez       $v0, .L8002C024
    /* 1C7E4 8002BFE4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1C7E8 8002BFE8 0C000526 */  addiu      $a1, $s0, 0xC
    /* 1C7EC 8002BFEC 806F000C */  jal        func_8001BE00
    /* 1C7F0 8002BFF0 21300002 */   addu      $a2, $s0, $zero
    /* 1C7F4 8002BFF4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1C7F8 8002BFF8 886E000C */  jal        func_8001BA20
    /* 1C7FC 8002BFFC 21280000 */   addu      $a1, $zero, $zero
    /* 1C800 8002C000 C1004228 */  slti       $v0, $v0, 0xC1
    /* 1C804 8002C004 07004014 */  bnez       $v0, .L8002C024
    /* 1C808 8002C008 4C000426 */   addiu     $a0, $s0, 0x4C
    /* 1C80C 8002C00C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1C810 8002C010 6C6F000C */  jal        func_8001BDB0
    /* 1C814 8002C014 1800A0AF */   sw        $zero, 0x18($sp)
    /* 1C818 8002C018 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C81C 8002C01C 0780013C */  lui        $at, %hi(D_8006A0F6)
    /* 1C820 8002C020 F6A022A0 */  sb         $v0, %lo(D_8006A0F6)($at)
  .L8002C024:
    /* 1C824 8002C024 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1C828 8002C028 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C82C 8002C02C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1C830 8002C030 0800E003 */  jr         $ra
    /* 1C834 8002C034 00000000 */   nop
endlabel func_8002BFBC
