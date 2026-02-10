.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_guidebook_8006E254, 0x110

glabel func_guidebook_8006E254
    /* 4857F0 8006E254 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4857F4 8006E258 E0000424 */  addiu      $a0, $zero, 0xE0
    /* 4857F8 8006E25C 01000524 */  addiu      $a1, $zero, 0x1
    /* 4857FC 8006E260 0D000624 */  addiu      $a2, $zero, 0xD
    /* 485800 8006E264 21380000 */  addu       $a3, $zero, $zero
    /* 485804 8006E268 3400B3AF */  sw         $s3, 0x34($sp)
    /* 485808 8006E26C 00011324 */  addiu      $s3, $zero, 0x100
    /* 48580C 8006E270 3000B2AF */  sw         $s2, 0x30($sp)
    /* 485810 8006E274 00101224 */  addiu      $s2, $zero, 0x1000
    /* 485814 8006E278 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 485818 8006E27C 80001124 */  addiu      $s1, $zero, 0x80
    /* 48581C 8006E280 2800B0AF */  sw         $s0, 0x28($sp)
    /* 485820 8006E284 01001024 */  addiu      $s0, $zero, 0x1
    /* 485824 8006E288 3800BFAF */  sw         $ra, 0x38($sp)
    /* 485828 8006E28C 1000B3AF */  sw         $s3, 0x10($sp)
    /* 48582C 8006E290 1400A0AF */  sw         $zero, 0x14($sp)
    /* 485830 8006E294 1800B2AF */  sw         $s2, 0x18($sp)
    /* 485834 8006E298 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 485838 8006E29C 51B9010C */  jal        func_guidebook_8006E544
    /* 48583C 8006E2A0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 485840 8006E2A4 10000424 */  addiu      $a0, $zero, 0x10
    /* 485844 8006E2A8 21280000 */  addu       $a1, $zero, $zero
    /* 485848 8006E2AC 0E000624 */  addiu      $a2, $zero, 0xE
    /* 48584C 8006E2B0 21380000 */  addu       $a3, $zero, $zero
    /* 485850 8006E2B4 1000B3AF */  sw         $s3, 0x10($sp)
    /* 485854 8006E2B8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 485858 8006E2BC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 48585C 8006E2C0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 485860 8006E2C4 51B9010C */  jal        func_guidebook_8006E544
    /* 485864 8006E2C8 2000B0AF */   sw        $s0, 0x20($sp)
    /* 485868 8006E2CC 10000424 */  addiu      $a0, $zero, 0x10
    /* 48586C 8006E2D0 D1000524 */  addiu      $a1, $zero, 0xD1
    /* 485870 8006E2D4 0F000624 */  addiu      $a2, $zero, 0xF
    /* 485874 8006E2D8 21380000 */  addu       $a3, $zero, $zero
    /* 485878 8006E2DC 1000B3AF */  sw         $s3, 0x10($sp)
    /* 48587C 8006E2E0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 485880 8006E2E4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 485884 8006E2E8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 485888 8006E2EC 51B9010C */  jal        func_guidebook_8006E544
    /* 48588C 8006E2F0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 485890 8006E2F4 21200000 */  addu       $a0, $zero, $zero
    /* 485894 8006E2F8 21280000 */  addu       $a1, $zero, $zero
    /* 485898 8006E2FC 11000624 */  addiu      $a2, $zero, 0x11
    /* 48589C 8006E300 21380000 */  addu       $a3, $zero, $zero
    /* 4858A0 8006E304 1000B3AF */  sw         $s3, 0x10($sp)
    /* 4858A4 8006E308 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4858A8 8006E30C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4858AC 8006E310 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4858B0 8006E314 51B9010C */  jal        func_guidebook_8006E544
    /* 4858B4 8006E318 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4858B8 8006E31C 21200000 */  addu       $a0, $zero, $zero
    /* 4858BC 8006E320 D0000524 */  addiu      $a1, $zero, 0xD0
    /* 4858C0 8006E324 13000624 */  addiu      $a2, $zero, 0x13
    /* 4858C4 8006E328 21380000 */  addu       $a3, $zero, $zero
    /* 4858C8 8006E32C 1000B3AF */  sw         $s3, 0x10($sp)
    /* 4858CC 8006E330 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4858D0 8006E334 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4858D4 8006E338 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4858D8 8006E33C 51B9010C */  jal        func_guidebook_8006E544
    /* 4858DC 8006E340 2000A0AF */   sw        $zero, 0x20($sp)
    /* 4858E0 8006E344 3800BF8F */  lw         $ra, 0x38($sp)
    /* 4858E4 8006E348 3400B38F */  lw         $s3, 0x34($sp)
    /* 4858E8 8006E34C 3000B28F */  lw         $s2, 0x30($sp)
    /* 4858EC 8006E350 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 4858F0 8006E354 2800B08F */  lw         $s0, 0x28($sp)
    /* 4858F4 8006E358 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 4858F8 8006E35C 0800E003 */  jr         $ra
    /* 4858FC 8006E360 00000000 */   nop
endlabel func_guidebook_8006E254
