.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D9EC, 0x80

glabel func_8004D9EC
    /* 3E1EC 8004D9EC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E1F0 8004D9F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3E1F4 8004D9F4 21908000 */  addu       $s2, $a0, $zero
    /* 3E1F8 8004D9F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3E1FC 8004D9FC 2180A000 */  addu       $s0, $a1, $zero
    /* 3E200 8004DA00 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3E204 8004DA04 2188C000 */  addu       $s1, $a2, $zero
    /* 3E208 8004DA08 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3E20C 8004DA0C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3E210 8004DA10 F729010C */  jal        func_8004A7DC
    /* 3E214 8004DA14 2198E000 */   addu      $s3, $a3, $zero
    /* 3E218 8004DA18 43100200 */  sra        $v0, $v0, 1
    /* 3E21C 8004DA1C 23200202 */  subu       $a0, $s0, $v0
    /* 3E220 8004DA20 F8FF8424 */  addiu      $a0, $a0, -0x8
    /* 3E224 8004DA24 21100202 */  addu       $v0, $s0, $v0
    /* 3E228 8004DA28 08004524 */  addiu      $a1, $v0, 0x8
    /* 3E22C 8004DA2C FEFF2626 */  addiu      $a2, $s1, -0x2
    /* 3E230 8004DA30 4235010C */  jal        func_8004D508
    /* 3E234 8004DA34 0B002726 */   addiu     $a3, $s1, 0xB
    /* 3E238 8004DA38 21204002 */  addu       $a0, $s2, $zero
    /* 3E23C 8004DA3C 21280002 */  addu       $a1, $s0, $zero
    /* 3E240 8004DA40 21302002 */  addu       $a2, $s1, $zero
    /* 3E244 8004DA44 6136010C */  jal        func_8004D984
    /* 3E248 8004DA48 21386002 */   addu      $a3, $s3, $zero
    /* 3E24C 8004DA4C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3E250 8004DA50 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3E254 8004DA54 1800B28F */  lw         $s2, 0x18($sp)
    /* 3E258 8004DA58 1400B18F */  lw         $s1, 0x14($sp)
    /* 3E25C 8004DA5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3E260 8004DA60 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E264 8004DA64 0800E003 */  jr         $ra
    /* 3E268 8004DA68 00000000 */   nop
endlabel func_8004D9EC
