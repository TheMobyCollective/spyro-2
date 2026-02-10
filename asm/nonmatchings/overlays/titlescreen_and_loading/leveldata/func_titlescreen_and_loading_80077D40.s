.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80077D40, 0xB8

glabel func_titlescreen_and_loading_80077D40
    /* 2DADC 80077D40 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2DAE0 80077D44 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2DAE4 80077D48 21800000 */  addu       $s0, $zero, $zero
    /* 2DAE8 80077D4C 0680023C */  lui        $v0, %hi(D_80067E0C)
    /* 2DAEC 80077D50 0C7E428C */  lw         $v0, %lo(D_80067E0C)($v0)
    /* 2DAF0 80077D54 3F000424 */  addiu      $a0, $zero, 0x3F
    /* 2DAF4 80077D58 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2DAF8 80077D5C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2DAFC 80077D60 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2DB00 80077D64 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2DB04 80077D68 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2DB08 80077D6C 40100200 */  sll        $v0, $v0, 1
    /* 2DB0C 80077D70 0680013C */  lui        $at, %hi(D_80063BD9)
    /* 2DB10 80077D74 21082200 */  addu       $at, $at, $v0
    /* 2DB14 80077D78 D93B3290 */  lbu        $s2, %lo(D_80063BD9)($at)
    /* 2DB18 80077D7C 0680013C */  lui        $at, %hi(D_80063BD8)
    /* 2DB1C 80077D80 21082200 */  addu       $at, $at, $v0
    /* 2DB20 80077D84 D83B3390 */  lbu        $s3, %lo(D_80063BD8)($at)
    /* 2DB24 80077D88 C0181200 */  sll        $v1, $s2, 3
    /* 2DB28 80077D8C 23187200 */  subu       $v1, $v1, $s2
    /* 2DB2C 80077D90 10004012 */  beqz       $s2, .Ltitlescreen_and_loading_80077DD4
    /* 2DB30 80077D94 23888300 */   subu      $s1, $a0, $v1
    /* 2DB34 80077D98 0680143C */  lui        $s4, %hi(D_80063B74)
    /* 2DB38 80077D9C 743B9426 */  addiu      $s4, $s4, %lo(D_80063B74)
    /* 2DB3C 80077DA0 21107002 */  addu       $v0, $s3, $s0
  .Ltitlescreen_and_loading_80077DA4:
    /* 2DB40 80077DA4 01001026 */  addiu      $s0, $s0, 0x1
    /* 2DB44 80077DA8 21302002 */  addu       $a2, $s1, $zero
    /* 2DB48 80077DAC 0E003126 */  addiu      $s1, $s1, 0xE
    /* 2DB4C 80077DB0 80100200 */  sll        $v0, $v0, 2
    /* 2DB50 80077DB4 21105400 */  addu       $v0, $v0, $s4
    /* 2DB54 80077DB8 0000448C */  lw         $a0, 0x0($v0)
    /* 2DB58 80077DBC 80000524 */  addiu      $a1, $zero, 0x80
    /* 2DB5C 80077DC0 6136010C */  jal        func_8004D984
    /* 2DB60 80077DC4 02000724 */   addiu     $a3, $zero, 0x2
    /* 2DB64 80077DC8 2A101202 */  slt        $v0, $s0, $s2
    /* 2DB68 80077DCC F5FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80077DA4
    /* 2DB6C 80077DD0 21107002 */   addu      $v0, $s3, $s0
  .Ltitlescreen_and_loading_80077DD4:
    /* 2DB70 80077DD4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2DB74 80077DD8 2800B48F */  lw         $s4, 0x28($sp)
    /* 2DB78 80077DDC 2400B38F */  lw         $s3, 0x24($sp)
    /* 2DB7C 80077DE0 2000B28F */  lw         $s2, 0x20($sp)
    /* 2DB80 80077DE4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2DB84 80077DE8 1800B08F */  lw         $s0, 0x18($sp)
    /* 2DB88 80077DEC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2DB8C 80077DF0 0800E003 */  jr         $ra
    /* 2DB90 80077DF4 00000000 */   nop
endlabel func_titlescreen_and_loading_80077D40
