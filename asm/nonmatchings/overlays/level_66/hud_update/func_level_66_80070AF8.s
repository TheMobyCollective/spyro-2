.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_66_80070AF8, 0x38

glabel func_level_66_80070AF8
    /* 44BB894 80070AF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44BB898 80070AFC 0680043C */  lui        $a0, %hi(D_80067675)
    /* 44BB89C 80070B00 75768424 */  addiu      $a0, $a0, %lo(D_80067675)
    /* 44BB8A0 80070B04 03000224 */  addiu      $v0, $zero, 0x3
    /* 44BB8A4 80070B08 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44BB8A8 80070B0C 000082A0 */  sb         $v0, 0x0($a0)
    /* 44BB8AC 80070B10 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 44BB8B0 80070B14 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 44BB8B4 80070B18 6746010C */  jal        func_8005199C
    /* 44BB8B8 80070B1C FFFF8424 */   addiu     $a0, $a0, -0x1
    /* 44BB8BC 80070B20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44BB8C0 80070B24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44BB8C4 80070B28 0800E003 */  jr         $ra
    /* 44BB8C8 80070B2C 00000000 */   nop
endlabel func_level_66_80070AF8
