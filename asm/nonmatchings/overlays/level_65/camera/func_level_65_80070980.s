.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_65_80070980, 0x50

glabel func_level_65_80070980
    /* 42C3F1C 80070980 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 42C3F20 80070984 0680043C */  lui        $a0, %hi(D_80067ED0)
    /* 42C3F24 80070988 D07E8424 */  addiu      $a0, $a0, %lo(D_80067ED0)
    /* 42C3F28 8007098C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42C3F2C 80070990 0000838C */  lw         $v1, 0x0($a0)
    /* 42C3F30 80070994 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 42C3F34 80070998 05006214 */  bne        $v1, $v0, .Llevel_65_800709B0
    /* 42C3F38 8007099C 00000000 */   nop
    /* 42C3F3C 800709A0 027C000C */  jal        func_8001F008
    /* 42C3F40 800709A4 6C008424 */   addiu     $a0, $a0, 0x6C
    /* 42C3F44 800709A8 6EC20108 */  j          .Llevel_65_800709B8
    /* 42C3F48 800709AC 00000000 */   nop
  .Llevel_65_800709B0:
    /* 42C3F4C 800709B0 D676000C */  jal        func_8001DB58
    /* 42C3F50 800709B4 00000000 */   nop
  .Llevel_65_800709B8:
    /* 42C3F54 800709B8 1B77000C */  jal        func_8001DC6C
    /* 42C3F58 800709BC 00000000 */   nop
    /* 42C3F5C 800709C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42C3F60 800709C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42C3F64 800709C8 0800E003 */  jr         $ra
    /* 42C3F68 800709CC 00000000 */   nop
endlabel func_level_65_80070980
