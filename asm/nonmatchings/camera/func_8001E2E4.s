.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E2E4, 0x170

glabel func_8001E2E4
    /* EAE4 8001E2E4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* EAE8 8001E2E8 2800B2AF */  sw         $s2, 0x28($sp)
    /* EAEC 8001E2EC 21908000 */  addu       $s2, $a0, $zero
    /* EAF0 8001E2F0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* EAF4 8001E2F4 2400B1AF */  sw         $s1, 0x24($sp)
    /* EAF8 8001E2F8 897E000C */  jal        func_8001FA24
    /* EAFC 8001E2FC 2000B0AF */   sw        $s0, 0x20($sp)
    /* EB00 8001E300 0680103C */  lui        $s0, %hi(D_80067EE4)
    /* EB04 8001E304 E47E1026 */  addiu      $s0, $s0, %lo(D_80067EE4)
    /* EB08 8001E308 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* EB0C 8001E30C F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* EB10 8001E310 6C6F000C */  jal        func_8001BDB0
    /* EB14 8001E314 21200002 */   addu      $a0, $s0, $zero
    /* EB18 8001E318 30001126 */  addiu      $s1, $s0, 0x30
    /* EB1C 8001E31C 21202002 */  addu       $a0, $s1, $zero
    /* EB20 8001E320 0780063C */  lui        $a2, %hi(D_8006A05C)
    /* EB24 8001E324 5CA0C68C */  lw         $a2, %lo(D_8006A05C)($a2)
    /* EB28 8001E328 0680013C */  lui        $at, %hi(D_80067EF0)
    /* EB2C 8001E32C F07E26AC */  sw         $a2, %lo(D_80067EF0)($at)
    /* EB30 8001E330 337B000C */  jal        func_8001ECCC
    /* EB34 8001E334 21284002 */   addu      $a1, $s2, $zero
    /* EB38 8001E338 44001226 */  addiu      $s2, $s0, 0x44
    /* EB3C 8001E33C 21204002 */  addu       $a0, $s2, $zero
    /* EB40 8001E340 21282002 */  addu       $a1, $s1, $zero
    /* EB44 8001E344 337B000C */  jal        func_8001ECCC
    /* EB48 8001E348 21300000 */   addu      $a2, $zero, $zero
    /* EB4C 8001E34C 1C000426 */  addiu      $a0, $s0, 0x1C
    /* EB50 8001E350 21282002 */  addu       $a1, $s1, $zero
    /* EB54 8001E354 337B000C */  jal        func_8001ECCC
    /* EB58 8001E358 21300000 */   addu      $a2, $zero, $zero
    /* EB5C 8001E35C 027C000C */  jal        func_8001F008
    /* EB60 8001E360 6C000426 */   addiu     $a0, $s0, 0x6C
    /* EB64 8001E364 10001126 */  addiu      $s1, $s0, 0x10
    /* EB68 8001E368 21202002 */  addu       $a0, $s1, $zero
    /* EB6C 8001E36C 21284002 */  addu       $a1, $s2, $zero
    /* EB70 8001E370 487B000C */  jal        func_8001ED20
    /* EB74 8001E374 21300002 */   addu      $a2, $s0, $zero
    /* EB78 8001E378 C8FF1226 */  addiu      $s2, $s0, -0x38
    /* EB7C 8001E37C 21204002 */  addu       $a0, $s2, $zero
    /* EB80 8001E380 6C6F000C */  jal        func_8001BDB0
    /* EB84 8001E384 21282002 */   addu      $a1, $s1, $zero
    /* EB88 8001E388 9C78000C */  jal        func_8001E270
    /* EB8C 8001E38C 00000000 */   nop
    /* EB90 8001E390 08010426 */  addiu      $a0, $s0, 0x108
    /* EB94 8001E394 21280000 */  addu       $a1, $zero, $zero
    /* EB98 8001E398 0680013C */  lui        $at, %hi(D_80067FB8)
    /* EB9C 8001E39C B87F20AC */  sw         $zero, %lo(D_80067FB8)($at)
    /* EBA0 8001E3A0 0680013C */  lui        $at, %hi(D_80067FBC)
    /* EBA4 8001E3A4 BC7F20AC */  sw         $zero, %lo(D_80067FBC)($at)
    /* EBA8 8001E3A8 F26C000C */  jal        func_8001B3C8
    /* EBAC 8001E3AC 6C000624 */   addiu     $a2, $zero, 0x6C
    /* EBB0 8001E3B0 74010426 */  addiu      $a0, $s0, 0x174
    /* EBB4 8001E3B4 21280000 */  addu       $a1, $zero, $zero
    /* EBB8 8001E3B8 F26C000C */  jal        func_8001B3C8
    /* EBBC 8001E3BC 0C000624 */   addiu     $a2, $zero, 0xC
    /* EBC0 8001E3C0 B685000C */  jal        func_800216D8
    /* EBC4 8001E3C4 01000424 */   addiu     $a0, $zero, 0x1
    /* EBC8 8001E3C8 0780023C */  lui        $v0, %hi(D_8006A048)
    /* EBCC 8001E3CC 48A0428C */  lw         $v0, %lo(D_8006A048)($v0)
    /* EBD0 8001E3D0 00000000 */  nop
    /* EBD4 8001E3D4 F5FF4224 */  addiu      $v0, $v0, -0xB
    /* EBD8 8001E3D8 0200422C */  sltiu      $v0, $v0, 0x2
    /* EBDC 8001E3DC 10004010 */  beqz       $v0, .L8001E420
    /* EBE0 8001E3E0 1000A427 */   addiu     $a0, $sp, 0x10
    /* EBE4 8001E3E4 6C6F000C */  jal        func_8001BDB0
    /* EBE8 8001E3E8 21284002 */   addu      $a1, $s2, $zero
    /* EBEC 8001E3EC 21204002 */  addu       $a0, $s2, $zero
    /* EBF0 8001E3F0 1000A527 */  addiu      $a1, $sp, 0x10
    /* EBF4 8001E3F4 1800A28F */  lw         $v0, 0x18($sp)
    /* EBF8 8001E3F8 0780103C */  lui        $s0, %hi(D_8006ABA4)
    /* EBFC 8001E3FC A4AB1026 */  addiu      $s0, $s0, %lo(D_8006ABA4)
    /* EC00 8001E400 000000AE */  sw         $zero, 0x0($s0)
    /* EC04 8001E404 00F04224 */  addiu      $v0, $v0, -0x1000
    /* EC08 8001E408 A5F3000C */  jal        func_8003CE94
    /* EC0C 8001E40C 1800A2AF */   sw        $v0, 0x18($sp)
    /* EC10 8001E410 0000028E */  lw         $v0, 0x0($s0)
    /* EC14 8001E414 00000000 */  nop
    /* EC18 8001E418 03004010 */  beqz       $v0, .L8001E428
    /* EC1C 8001E41C 00000000 */   nop
  .L8001E420:
    /* EC20 8001E420 0680013C */  lui        $at, %hi(D_80067EC4)
    /* EC24 8001E424 C47E20AC */  sw         $zero, %lo(D_80067EC4)($at)
  .L8001E428:
    /* EC28 8001E428 0680013C */  lui        $at, %hi(D_80067FCA)
    /* EC2C 8001E42C CA7F20A0 */  sb         $zero, %lo(D_80067FCA)($at)
    /* EC30 8001E430 0680013C */  lui        $at, %hi(D_80067FC0)
    /* EC34 8001E434 C07F20AC */  sw         $zero, %lo(D_80067FC0)($at)
    /* EC38 8001E438 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* EC3C 8001E43C 2800B28F */  lw         $s2, 0x28($sp)
    /* EC40 8001E440 2400B18F */  lw         $s1, 0x24($sp)
    /* EC44 8001E444 2000B08F */  lw         $s0, 0x20($sp)
    /* EC48 8001E448 3000BD27 */  addiu      $sp, $sp, 0x30
    /* EC4C 8001E44C 0800E003 */  jr         $ra
    /* EC50 8001E450 00000000 */   nop
endlabel func_8001E2E4
