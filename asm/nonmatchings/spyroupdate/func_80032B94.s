.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80032B94, 0xA0

glabel func_80032B94
    /* 23394 80032B94 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 23398 80032B98 0780033C */  lui        $v1, %hi(D_8006A128)
    /* 2339C 80032B9C 28A1638C */  lw         $v1, %lo(D_8006A128)($v1)
    /* 233A0 80032BA0 0400023C */  lui        $v0, (0x40000 >> 16)
    /* 233A4 80032BA4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 233A8 80032BA8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 233AC 80032BAC 24106200 */  and        $v0, $v1, $v0
    /* 233B0 80032BB0 03004010 */  beqz       $v0, .L80032BC0
    /* 233B4 80032BB4 2800B0AF */   sw        $s0, 0x28($sp)
    /* 233B8 80032BB8 F4CA0008 */  j          .L80032BD0
    /* 233BC 80032BBC 6000113C */   lui       $s1, (0x600000 >> 16)
  .L80032BC0:
    /* 233C0 80032BC0 0200023C */  lui        $v0, (0x20000 >> 16)
    /* 233C4 80032BC4 24106200 */  and        $v0, $v1, $v0
    /* 233C8 80032BC8 14004010 */  beqz       $v0, .L80032C1C
    /* 233CC 80032BCC 2000113C */   lui       $s1, (0x200000 >> 16)
  .L80032BD0:
    /* 233D0 80032BD0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 233D4 80032BD4 0780103C */  lui        $s0, %hi(D_8006A078)
    /* 233D8 80032BD8 78A01026 */  addiu      $s0, $s0, %lo(D_8006A078)
    /* 233DC 80032BDC 6C6F000C */  jal        func_8001BDB0
    /* 233E0 80032BE0 21280002 */   addu      $a1, $s0, $zero
    /* 233E4 80032BE4 1800A427 */  addiu      $a0, $sp, 0x18
    /* 233E8 80032BE8 526F000C */  jal        func_8001BD48
    /* 233EC 80032BEC 03000524 */   addiu     $a1, $zero, 0x3
    /* 233F0 80032BF0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 233F4 80032BF4 21288000 */  addu       $a1, $a0, $zero
    /* 233F8 80032BF8 78FF1026 */  addiu      $s0, $s0, -0x88
    /* 233FC 80032BFC 736F000C */  jal        func_8001BDCC
    /* 23400 80032C00 21300002 */   addu      $a2, $s0, $zero
    /* 23404 80032C04 1000A0AF */  sw         $zero, 0x10($sp)
    /* 23408 80032C08 21200002 */  addu       $a0, $s0, $zero
    /* 2340C 80032C0C 1800A527 */  addiu      $a1, $sp, 0x18
    /* 23410 80032C10 21300000 */  addu       $a2, $zero, $zero
    /* 23414 80032C14 8EF3000C */  jal        func_8003CE38
    /* 23418 80032C18 21382002 */   addu      $a3, $s1, $zero
  .L80032C1C:
    /* 2341C 80032C1C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 23420 80032C20 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 23424 80032C24 2800B08F */  lw         $s0, 0x28($sp)
    /* 23428 80032C28 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2342C 80032C2C 0800E003 */  jr         $ra
    /* 23430 80032C30 00000000 */   nop
endlabel func_80032B94
