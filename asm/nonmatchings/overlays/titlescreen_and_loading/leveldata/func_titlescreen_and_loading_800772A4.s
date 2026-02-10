.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800772A4, 0xD0

glabel func_titlescreen_and_loading_800772A4
    /* 2D040 800772A4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2D044 800772A8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2D048 800772AC 21A08000 */  addu       $s4, $a0, $zero
    /* 2D04C 800772B0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2D050 800772B4 2188A000 */  addu       $s1, $a1, $zero
    /* 2D054 800772B8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2D058 800772BC 2190C000 */  addu       $s2, $a2, $zero
    /* 2D05C 800772C0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2D060 800772C4 04001024 */  addiu      $s0, $zero, 0x4
    /* 2D064 800772C8 C3121200 */  sra        $v0, $s2, 11
    /* 2D068 800772CC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2D06C 800772D0 2398E200 */  subu       $s3, $a3, $v0
    /* 2D070 800772D4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2D074 800772D8 21208002 */  addu       $a0, $s4, $zero
  .Ltitlescreen_and_loading_800772DC:
    /* 2D078 800772DC 21282002 */  addu       $a1, $s1, $zero
    /* 2D07C 800772E0 0F000724 */  addiu      $a3, $zero, 0xF
    /* 2D080 800772E4 2338F000 */  subu       $a3, $a3, $s0
    /* 2D084 800772E8 21304002 */  addu       $a2, $s2, $zero
    /* 2D088 800772EC 1571000C */  jal        func_8001C454
    /* 2D08C 800772F0 40380700 */   sll       $a3, $a3, 1
    /* 2D090 800772F4 B763010C */  jal        func_80058EDC
    /* 2D094 800772F8 21200000 */   addu      $a0, $zero, $zero
    /* 2D098 800772FC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2D09C 80077300 21282002 */  addu       $a1, $s1, $zero
    /* 2D0A0 80077304 00020224 */  addiu      $v0, $zero, 0x200
    /* 2D0A4 80077308 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 2D0A8 8007730C 83121200 */  sra        $v0, $s2, 10
    /* 2D0AC 80077310 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 2D0B0 80077314 1200B3A7 */  sh         $s3, 0x12($sp)
    /* 2D0B4 80077318 7E56010C */  jal        func_800559F8
    /* 2D0B8 8007731C 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 2D0BC 80077320 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2D0C0 80077324 21282002 */  addu       $a1, $s1, $zero
    /* 2D0C4 80077328 1200A297 */  lhu        $v0, 0x12($sp)
    /* 2D0C8 8007732C 01001026 */  addiu      $s0, $s0, 0x1
    /* 2D0CC 80077330 E4004224 */  addiu      $v0, $v0, 0xE4
    /* 2D0D0 80077334 7E56010C */  jal        func_800559F8
    /* 2D0D4 80077338 1200A2A7 */   sh        $v0, 0x12($sp)
    /* 2D0D8 8007733C F955010C */  jal        func_800557E4
    /* 2D0DC 80077340 21200000 */   addu      $a0, $zero, $zero
    /* 2D0E0 80077344 1000022A */  slti       $v0, $s0, 0x10
    /* 2D0E4 80077348 E4FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_800772DC
    /* 2D0E8 8007734C 21208002 */   addu      $a0, $s4, $zero
    /* 2D0EC 80077350 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2D0F0 80077354 2800B48F */  lw         $s4, 0x28($sp)
    /* 2D0F4 80077358 2400B38F */  lw         $s3, 0x24($sp)
    /* 2D0F8 8007735C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2D0FC 80077360 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2D100 80077364 1800B08F */  lw         $s0, 0x18($sp)
    /* 2D104 80077368 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2D108 8007736C 0800E003 */  jr         $ra
    /* 2D10C 80077370 00000000 */   nop
endlabel func_titlescreen_and_loading_800772A4
