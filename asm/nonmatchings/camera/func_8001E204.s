.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E204, 0x6C

glabel func_8001E204
    /* EA04 8001E204 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EA08 8001E208 1000B0AF */  sw         $s0, 0x10($sp)
    /* EA0C 8001E20C 0680103C */  lui        $s0, %hi(D_80067EF4)
    /* EA10 8001E210 F47E1026 */  addiu      $s0, $s0, %lo(D_80067EF4)
    /* EA14 8001E214 21200002 */  addu       $a0, $s0, $zero
    /* EA18 8001E218 34000526 */  addiu      $a1, $s0, 0x34
    /* EA1C 8001E21C 1400B1AF */  sw         $s1, 0x14($sp)
    /* EA20 8001E220 F0FF1126 */  addiu      $s1, $s0, -0x10
    /* EA24 8001E224 1800BFAF */  sw         $ra, 0x18($sp)
    /* EA28 8001E228 487B000C */  jal        func_8001ED20
    /* EA2C 8001E22C 21302002 */   addu      $a2, $s1, $zero
    /* EA30 8001E230 1579000C */  jal        func_8001E454
    /* EA34 8001E234 00000000 */   nop
    /* EA38 8001E238 0C000426 */  addiu      $a0, $s0, 0xC
    /* EA3C 8001E23C B8FF0526 */  addiu      $a1, $s0, -0x48
    /* EA40 8001E240 867B000C */  jal        func_8001EE18
    /* EA44 8001E244 21302002 */   addu      $a2, $s1, $zero
    /* EA48 8001E248 0680013C */  lui        $at, %hi(D_80067FC7)
    /* EA4C 8001E24C C77F22A0 */  sb         $v0, %lo(D_80067FC7)($at)
    /* EA50 8001E250 027A000C */  jal        func_8001E808
    /* EA54 8001E254 00000000 */   nop
    /* EA58 8001E258 1800BF8F */  lw         $ra, 0x18($sp)
    /* EA5C 8001E25C 1400B18F */  lw         $s1, 0x14($sp)
    /* EA60 8001E260 1000B08F */  lw         $s0, 0x10($sp)
    /* EA64 8001E264 2000BD27 */  addiu      $sp, $sp, 0x20
    /* EA68 8001E268 0800E003 */  jr         $ra
    /* EA6C 8001E26C 00000000 */   nop
endlabel func_8001E204
