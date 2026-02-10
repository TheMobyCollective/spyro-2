.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_32_8006FDA0, 0x58

glabel func_level_32_8006FDA0
    /* 2361B3C 8006FDA0 0680023C */  lui        $v0, %hi(D_80066F30)
    /* 2361B40 8006FDA4 306F428C */  lw         $v0, %lo(D_80066F30)($v0)
    /* 2361B44 8006FDA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2361B48 8006FDAC 06004010 */  beqz       $v0, .Llevel_32_8006FDC8
    /* 2361B4C 8006FDB0 1000BFAF */   sw        $ra, 0x10($sp)
    /* 2361B50 8006FDB4 03000224 */  addiu      $v0, $zero, 0x3
    /* 2361B54 8006FDB8 0680013C */  lui        $at, %hi(D_80067675)
    /* 2361B58 8006FDBC 757622A0 */  sb         $v0, %lo(D_80067675)($at)
    /* 2361B5C 8006FDC0 74BF0108 */  j          .Llevel_32_8006FDD0
    /* 2361B60 8006FDC4 00000000 */   nop
  .Llevel_32_8006FDC8:
    /* 2361B64 8006FDC8 0680013C */  lui        $at, %hi(D_80067675)
    /* 2361B68 8006FDCC 757620A0 */  sb         $zero, %lo(D_80067675)($at)
  .Llevel_32_8006FDD0:
    /* 2361B6C 8006FDD0 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 2361B70 8006FDD4 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 2361B74 8006FDD8 0680043C */  lui        $a0, %hi(D_80067674)
    /* 2361B78 8006FDDC 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 2361B7C 8006FDE0 6746010C */  jal        func_8005199C
    /* 2361B80 8006FDE4 00000000 */   nop
    /* 2361B84 8006FDE8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2361B88 8006FDEC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2361B8C 8006FDF0 0800E003 */  jr         $ra
    /* 2361B90 8006FDF4 00000000 */   nop
endlabel func_level_32_8006FDA0
