.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C0C8, 0xE4

glabel func_8004C0C8
    /* 3C8C8 8004C0C8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3C8CC 8004C0CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3C8D0 8004C0D0 21908000 */  addu       $s2, $a0, $zero
    /* 3C8D4 8004C0D4 24004426 */  addiu      $a0, $s2, 0x24
    /* 3C8D8 8004C0D8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3C8DC 8004C0DC 01001324 */  addiu      $s3, $zero, 0x1
    /* 3C8E0 8004C0E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3C8E4 8004C0E4 2180C000 */  addu       $s0, $a2, $zero
    /* 3C8E8 8004C0E8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3C8EC 8004C0EC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3C8F0 8004C0F0 6C6F000C */  jal        func_8001BDB0
    /* 3C8F4 8004C0F4 000053AE */   sw        $s3, 0x0($s2)
    /* 3C8F8 8004C0F8 34004426 */  addiu      $a0, $s2, 0x34
    /* 3C8FC 8004C0FC 0680113C */  lui        $s1, %hi(D_800671C0)
    /* 3C900 8004C100 C0713126 */  addiu      $s1, $s1, %lo(D_800671C0)
    /* 3C904 8004C104 21282002 */  addu       $a1, $s1, $zero
    /* 3C908 8004C108 0C000624 */  addiu      $a2, $zero, 0xC
    /* 3C90C 8004C10C 00811000 */  sll        $s0, $s0, 4
    /* 3C910 8004C110 2C00428E */  lw         $v0, 0x2C($s2)
    /* 3C914 8004C114 FF0F1032 */  andi       $s0, $s0, 0xFFF
    /* 3C918 8004C118 300050AE */  sw         $s0, 0x30($s2)
    /* 3C91C 8004C11C 64014224 */  addiu      $v0, $v0, 0x164
    /* 3C920 8004C120 036D000C */  jal        func_8001B40C
    /* 3C924 8004C124 2C0042AE */   sw        $v0, 0x2C($s2)
    /* 3C928 8004C128 40004426 */  addiu      $a0, $s2, 0x40
    /* 3C92C 8004C12C 0C002526 */  addiu      $a1, $s1, 0xC
    /* 3C930 8004C130 036D000C */  jal        func_8001B40C
    /* 3C934 8004C134 00020624 */   addiu     $a2, $zero, 0x200
    /* 3C938 8004C138 04004426 */  addiu      $a0, $s2, 0x4
    /* 3C93C 8004C13C D0FF2526 */  addiu      $a1, $s1, -0x30
    /* 3C940 8004C140 0680023C */  lui        $v0, %hi(D_800673CC)
    /* 3C944 8004C144 CC73428C */  lw         $v0, %lo(D_800673CC)($v0)
    /* 3C948 8004C148 20000624 */  addiu      $a2, $zero, 0x20
    /* 3C94C 8004C14C 036D000C */  jal        func_8001B40C
    /* 3C950 8004C150 400242AE */   sw        $v0, 0x240($s2)
    /* 3C954 8004C154 0780033C */  lui        $v1, %hi(D_8006A048)
    /* 3C958 8004C158 48A0638C */  lw         $v1, %lo(D_8006A048)($v1)
    /* 3C95C 8004C15C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3C960 8004C160 03006214 */  bne        $v1, $v0, .L8004C170
    /* 3C964 8004C164 0A006228 */   slti      $v0, $v1, 0xA
    /* 3C968 8004C168 63300108 */  j          .L8004C18C
    /* 3C96C 8004C16C 440253AE */   sw        $s3, 0x244($s2)
  .L8004C170:
    /* 3C970 8004C170 05004014 */  bnez       $v0, .L8004C188
    /* 3C974 8004C174 0D006228 */   slti      $v0, $v1, 0xD
    /* 3C978 8004C178 03004010 */  beqz       $v0, .L8004C188
    /* 3C97C 8004C17C 02000224 */   addiu     $v0, $zero, 0x2
    /* 3C980 8004C180 63300108 */  j          .L8004C18C
    /* 3C984 8004C184 440242AE */   sw        $v0, 0x244($s2)
  .L8004C188:
    /* 3C988 8004C188 440240AE */  sw         $zero, 0x244($s2)
  .L8004C18C:
    /* 3C98C 8004C18C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3C990 8004C190 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3C994 8004C194 1800B28F */  lw         $s2, 0x18($sp)
    /* 3C998 8004C198 1400B18F */  lw         $s1, 0x14($sp)
    /* 3C99C 8004C19C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C9A0 8004C1A0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3C9A4 8004C1A4 0800E003 */  jr         $ra
    /* 3C9A8 8004C1A8 00000000 */   nop
endlabel func_8004C0C8
