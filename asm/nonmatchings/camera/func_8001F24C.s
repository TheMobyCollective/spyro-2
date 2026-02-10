.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F24C, 0x98

glabel func_8001F24C
    /* FA4C 8001F24C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* FA50 8001F250 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* FA54 8001F254 21988000 */  addu       $s3, $a0, $zero
    /* FA58 8001F258 1400B1AF */  sw         $s1, 0x14($sp)
    /* FA5C 8001F25C 1000B0AF */  sw         $s0, 0x10($sp)
    /* FA60 8001F260 0680103C */  lui        $s0, %hi(D_80067ED0)
    /* FA64 8001F264 D07E1026 */  addiu      $s0, $s0, %lo(D_80067ED0)
    /* FA68 8001F268 2000BFAF */  sw         $ra, 0x20($sp)
    /* FA6C 8001F26C 1800B2AF */  sw         $s2, 0x18($sp)
    /* FA70 8001F270 0000028E */  lw         $v0, 0x0($s0)
    /* FA74 8001F274 09001224 */  addiu      $s2, $zero, 0x9
    /* FA78 8001F278 05005210 */  beq        $v0, $s2, .L8001F290
    /* FA7C 8001F27C 2188A000 */   addu      $s1, $a1, $zero
    /* FA80 8001F280 44010426 */  addiu      $a0, $s0, 0x144
    /* FA84 8001F284 30000526 */  addiu      $a1, $s0, 0x30
    /* FA88 8001F288 337B000C */  jal        func_8001ECCC
    /* FA8C 8001F28C 21300000 */   addu      $a2, $zero, $zero
  .L8001F290:
    /* FA90 8001F290 38010426 */  addiu      $a0, $s0, 0x138
    /* FA94 8001F294 0680013C */  lui        $at, %hi(D_80067FEC)
    /* FA98 8001F298 EC7F32AC */  sw         $s2, %lo(D_80067FEC)($at)
    /* FA9C 8001F29C 6C6F000C */  jal        func_8001BDB0
    /* FAA0 8001F2A0 21282002 */   addu      $a1, $s1, $zero
    /* FAA4 8001F2A4 24010426 */  addiu      $a0, $s0, 0x124
    /* FAA8 8001F2A8 21286002 */  addu       $a1, $s3, $zero
    /* FAAC 8001F2AC 867B000C */  jal        func_8001EE18
    /* FAB0 8001F2B0 21302002 */   addu      $a2, $s1, $zero
    /* FAB4 8001F2B4 0780013C */  lui        $at, %hi(D_80068000)
    /* FAB8 8001F2B8 008020AC */  sw         $zero, %lo(D_80068000)($at)
    /* FABC 8001F2BC 0780013C */  lui        $at, %hi(D_80068004)
    /* FAC0 8001F2C0 048020AC */  sw         $zero, %lo(D_80068004)($at)
    /* FAC4 8001F2C4 2000BF8F */  lw         $ra, 0x20($sp)
    /* FAC8 8001F2C8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* FACC 8001F2CC 1800B28F */  lw         $s2, 0x18($sp)
    /* FAD0 8001F2D0 1400B18F */  lw         $s1, 0x14($sp)
    /* FAD4 8001F2D4 1000B08F */  lw         $s0, 0x10($sp)
    /* FAD8 8001F2D8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* FADC 8001F2DC 0800E003 */  jr         $ra
    /* FAE0 8001F2E0 00000000 */   nop
endlabel func_8001F24C
