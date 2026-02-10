.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DAD0, 0x108

glabel func_8004DAD0
    /* 3E2D0 8004DAD0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 3E2D4 8004DAD4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3E2D8 8004DAD8 21888000 */  addu       $s1, $a0, $zero
    /* 3E2DC 8004DADC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3E2E0 8004DAE0 2180A000 */  addu       $s0, $a1, $zero
    /* 3E2E4 8004DAE4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3E2E8 8004DAE8 2190C000 */  addu       $s2, $a2, $zero
    /* 3E2EC 8004DAEC 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3E2F0 8004DAF0 2198E000 */  addu       $s3, $a3, $zero
    /* 3E2F4 8004DAF4 1800A427 */  addiu      $a0, $sp, 0x18
    /* 3E2F8 8004DAF8 0680053C */  lui        $a1, %hi(D_80066EC4)
    /* 3E2FC 8004DAFC C46EA524 */  addiu      $a1, $a1, %lo(D_80066EC4)
    /* 3E300 8004DB00 3000BFAF */  sw         $ra, 0x30($sp)
    /* 3E304 8004DB04 2B65010C */  jal        func_800594AC
    /* 3E308 8004DB08 21302002 */   addu      $a2, $s1, $zero
    /* 3E30C 8004DB0C 08000106 */  bgez       $s0, .L8004DB30
    /* 3E310 8004DB10 00000000 */   nop
    /* 3E314 8004DB14 2F68010C */  jal        func_8005A0BC
    /* 3E318 8004DB18 1800A427 */   addiu     $a0, $sp, 0x18
    /* 3E31C 8004DB1C 23201000 */  negu       $a0, $s0
    /* 3E320 8004DB20 40180200 */  sll        $v1, $v0, 1
    /* 3E324 8004DB24 21186200 */  addu       $v1, $v1, $v0
    /* 3E328 8004DB28 80180300 */  sll        $v1, $v1, 2
    /* 3E32C 8004DB2C 23808300 */  subu       $s0, $a0, $v1
  .L8004DB30:
    /* 3E330 8004DB30 0780023C */  lui        $v0, %hi(D_80069924)
    /* 3E334 8004DB34 2499428C */  lw         $v0, %lo(D_80069924)($v0)
    /* 3E338 8004DB38 00000000 */  nop
    /* 3E33C 8004DB3C 08004010 */  beqz       $v0, .L8004DB60
    /* 3E340 8004DB40 1800A427 */   addiu     $a0, $sp, 0x18
    /* 3E344 8004DB44 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E348 8004DB48 21280002 */  addu       $a1, $s0, $zero
    /* 3E34C 8004DB4C 21304002 */  addu       $a2, $s2, $zero
    /* 3E350 8004DB50 6729010C */  jal        func_8004A59C
    /* 3E354 8004DB54 21386002 */   addu      $a3, $s3, $zero
    /* 3E358 8004DB58 EE360108 */  j          .L8004DBB8
    /* 3E35C 8004DB5C 00000000 */   nop
  .L8004DB60:
    /* 3E360 8004DB60 21280002 */  addu       $a1, $s0, $zero
    /* 3E364 8004DB64 21304002 */  addu       $a2, $s2, $zero
    /* 3E368 8004DB68 21386002 */  addu       $a3, $s3, $zero
    /* 3E36C 8004DB6C DD28010C */  jal        func_8004A374
    /* 3E370 8004DB70 1000A0AF */   sw        $zero, 0x10($sp)
    /* 3E374 8004DB74 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3E378 8004DB78 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3E37C 8004DB7C 02000224 */  addiu      $v0, $zero, 0x2
    /* 3E380 8004DB80 0D006210 */  beq        $v1, $v0, .L8004DBB8
    /* 3E384 8004DB84 E803222A */   slti      $v0, $s1, 0x3E8
    /* 3E388 8004DB88 0B004014 */  bnez       $v0, .L8004DBB8
    /* 3E38C 8004DB8C 1027222A */   slti      $v0, $s1, 0x2710
    /* 3E390 8004DB90 02004014 */  bnez       $v0, .L8004DB9C
    /* 3E394 8004DB94 0A001026 */   addiu     $s0, $s0, 0xA
    /* 3E398 8004DB98 0C001026 */  addiu      $s0, $s0, 0xC
  .L8004DB9C:
    /* 3E39C 8004DB9C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E3A0 8004DBA0 0680043C */  lui        $a0, %hi(D_80066EC8)
    /* 3E3A4 8004DBA4 C86E8424 */  addiu      $a0, $a0, %lo(D_80066EC8)
    /* 3E3A8 8004DBA8 21280002 */  addu       $a1, $s0, $zero
    /* 3E3AC 8004DBAC 01004626 */  addiu      $a2, $s2, 0x1
    /* 3E3B0 8004DBB0 DD28010C */  jal        func_8004A374
    /* 3E3B4 8004DBB4 21386002 */   addu      $a3, $s3, $zero
  .L8004DBB8:
    /* 3E3B8 8004DBB8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 3E3BC 8004DBBC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3E3C0 8004DBC0 2800B28F */  lw         $s2, 0x28($sp)
    /* 3E3C4 8004DBC4 2400B18F */  lw         $s1, 0x24($sp)
    /* 3E3C8 8004DBC8 2000B08F */  lw         $s0, 0x20($sp)
    /* 3E3CC 8004DBCC 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 3E3D0 8004DBD0 0800E003 */  jr         $ra
    /* 3E3D4 8004DBD4 00000000 */   nop
endlabel func_8004DAD0
