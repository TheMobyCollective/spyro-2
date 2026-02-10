.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8006FFB0, 0x5C

glabel func_level_61_8006FFB0
    /* 3EBAD4C 8006FFB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3EBAD50 8006FFB4 0680033C */  lui        $v1, %hi(D_80066F30)
    /* 3EBAD54 8006FFB8 306F638C */  lw         $v1, %lo(D_80066F30)($v1)
    /* 3EBAD58 8006FFBC 01000224 */  addiu      $v0, $zero, 0x1
    /* 3EBAD5C 8006FFC0 06006214 */  bne        $v1, $v0, .Llevel_61_8006FFDC
    /* 3EBAD60 8006FFC4 1000BFAF */   sw        $ra, 0x10($sp)
    /* 3EBAD64 8006FFC8 03000224 */  addiu      $v0, $zero, 0x3
    /* 3EBAD68 8006FFCC 0680013C */  lui        $at, %hi(D_80067675)
    /* 3EBAD6C 8006FFD0 757622A0 */  sb         $v0, %lo(D_80067675)($at)
    /* 3EBAD70 8006FFD4 F9BF0108 */  j          .Llevel_61_8006FFE4
    /* 3EBAD74 8006FFD8 00000000 */   nop
  .Llevel_61_8006FFDC:
    /* 3EBAD78 8006FFDC 0680013C */  lui        $at, %hi(D_80067675)
    /* 3EBAD7C 8006FFE0 757620A0 */  sb         $zero, %lo(D_80067675)($at)
  .Llevel_61_8006FFE4:
    /* 3EBAD80 8006FFE4 0680053C */  lui        $a1, %hi(D_80066FEC)
    /* 3EBAD84 8006FFE8 EC6FA58C */  lw         $a1, %lo(D_80066FEC)($a1)
    /* 3EBAD88 8006FFEC 0680043C */  lui        $a0, %hi(D_80067674)
    /* 3EBAD8C 8006FFF0 74768424 */  addiu      $a0, $a0, %lo(D_80067674)
    /* 3EBAD90 8006FFF4 6746010C */  jal        func_8005199C
    /* 3EBAD94 8006FFF8 00000000 */   nop
    /* 3EBAD98 8006FFFC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3EBAD9C 80070000 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3EBADA0 80070004 0800E003 */  jr         $ra
    /* 3EBADA4 80070008 00000000 */   nop
endlabel func_level_61_8006FFB0
