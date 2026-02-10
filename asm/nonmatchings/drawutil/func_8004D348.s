.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D348, 0xB4

glabel func_8004D348
    /* 3DB48 8004D348 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3DB4C 8004D34C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DB50 8004D350 21988000 */  addu       $s3, $a0, $zero
    /* 3DB54 8004D354 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3DB58 8004D358 2180A000 */  addu       $s0, $a1, $zero
    /* 3DB5C 8004D35C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DB60 8004D360 2190C000 */  addu       $s2, $a2, $zero
    /* 3DB64 8004D364 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3DB68 8004D368 2188E000 */  addu       $s1, $a3, $zero
    /* 3DB6C 8004D36C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3DB70 8004D370 4134010C */  jal        func_8004D104
    /* 3DB74 8004D374 18000424 */   addiu     $a0, $zero, 0x18
    /* 3DB78 8004D378 21206002 */  addu       $a0, $s3, $zero
    /* 3DB7C 8004D37C 21280002 */  addu       $a1, $s0, $zero
    /* 3DB80 8004D380 21304002 */  addu       $a2, $s2, $zero
    /* 3DB84 8004D384 B634010C */  jal        func_8004D2D8
    /* 3DB88 8004D388 21382002 */   addu      $a3, $s1, $zero
    /* 3DB8C 8004D38C 21206002 */  addu       $a0, $s3, $zero
    /* 3DB90 8004D390 21284002 */  addu       $a1, $s2, $zero
    /* 3DB94 8004D394 21300002 */  addu       $a2, $s0, $zero
    /* 3DB98 8004D398 6F34010C */  jal        func_8004D1BC
    /* 3DB9C 8004D39C 21384002 */   addu      $a3, $s2, $zero
    /* 3DBA0 8004D3A0 21200002 */  addu       $a0, $s0, $zero
    /* 3DBA4 8004D3A4 21284002 */  addu       $a1, $s2, $zero
    /* 3DBA8 8004D3A8 21300002 */  addu       $a2, $s0, $zero
    /* 3DBAC 8004D3AC 6F34010C */  jal        func_8004D1BC
    /* 3DBB0 8004D3B0 21382002 */   addu      $a3, $s1, $zero
    /* 3DBB4 8004D3B4 21200002 */  addu       $a0, $s0, $zero
    /* 3DBB8 8004D3B8 21282002 */  addu       $a1, $s1, $zero
    /* 3DBBC 8004D3BC 21306002 */  addu       $a2, $s3, $zero
    /* 3DBC0 8004D3C0 6F34010C */  jal        func_8004D1BC
    /* 3DBC4 8004D3C4 21382002 */   addu      $a3, $s1, $zero
    /* 3DBC8 8004D3C8 21206002 */  addu       $a0, $s3, $zero
    /* 3DBCC 8004D3CC 21282002 */  addu       $a1, $s1, $zero
    /* 3DBD0 8004D3D0 21308000 */  addu       $a2, $a0, $zero
    /* 3DBD4 8004D3D4 6F34010C */  jal        func_8004D1BC
    /* 3DBD8 8004D3D8 21384002 */   addu      $a3, $s2, $zero
    /* 3DBDC 8004D3DC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3DBE0 8004D3E0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DBE4 8004D3E4 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DBE8 8004D3E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DBEC 8004D3EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DBF0 8004D3F0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3DBF4 8004D3F4 0800E003 */  jr         $ra
    /* 3DBF8 8004D3F8 00000000 */   nop
endlabel func_8004D348
