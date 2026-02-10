.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800732D8, 0xD8

glabel func_titlescreen_and_loading_800732D8
    /* 29074 800732D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 29078 800732DC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2907C 800732E0 21988000 */  addu       $s3, $a0, $zero
    /* 29080 800732E4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 29084 800732E8 21880000 */  addu       $s1, $zero, $zero
    /* 29088 800732EC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2908C 800732F0 08011224 */  addiu      $s2, $zero, 0x108
    /* 29090 800732F4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 29094 800732F8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 29098 800732FC 01000524 */  addiu      $a1, $zero, 0x1
  .Ltitlescreen_and_loading_80073300:
    /* 2909C 80073300 21384002 */  addu       $a3, $s2, $zero
    /* 290A0 80073304 02005226 */  addiu      $s2, $s2, 0x2
    /* 290A4 80073308 0680103C */  lui        $s0, %hi(D_80067030)
    /* 290A8 8007330C 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 290AC 80073310 21300000 */  addu       $a2, $zero, $zero
    /* 290B0 80073314 1000A0AF */  sw         $zero, 0x10($sp)
    /* 290B4 80073318 0768010C */  jal        func_8005A01C
    /* 290B8 8007331C 21200002 */   addu      $a0, $s0, $zero
    /* 290BC 80073320 21200002 */  addu       $a0, $s0, $zero
    /* 290C0 80073324 D56C000C */  jal        func_8001B354
    /* 290C4 80073328 21286002 */   addu      $a1, $s3, $zero
    /* 290C8 8007332C 8064033C */  lui        $v1, (0x64808080 >> 16)
    /* 290CC 80073330 80806334 */  ori        $v1, $v1, (0x64808080 & 0xFFFF)
    /* 290D0 80073334 0C000426 */  addiu      $a0, $s0, 0xC
    /* 290D4 80073338 21286002 */  addu       $a1, $s3, $zero
    /* 290D8 8007333C 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 290DC 80073340 0C0002AE */  sw         $v0, 0xC($s0)
    /* 290E0 80073344 C0111100 */  sll        $v0, $s1, 7
    /* 290E4 80073348 140002A6 */  sh         $v0, 0x14($s0)
    /* 290E8 8007334C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 290EC 80073350 160002A6 */  sh         $v0, 0x16($s0)
    /* 290F0 80073354 80000224 */  addiu      $v0, $zero, 0x80
    /* 290F4 80073358 1C0002A6 */  sh         $v0, 0x1C($s0)
    /* 290F8 8007335C D8000224 */  addiu      $v0, $zero, 0xD8
    /* 290FC 80073360 100003AE */  sw         $v1, 0x10($s0)
    /* 29100 80073364 180000A2 */  sb         $zero, 0x18($s0)
    /* 29104 80073368 190000A2 */  sb         $zero, 0x19($s0)
    /* 29108 8007336C D56C000C */  jal        func_8001B354
    /* 2910C 80073370 1E0002A6 */   sh        $v0, 0x1E($s0)
    /* 29110 80073374 01003126 */  addiu      $s1, $s1, 0x1
    /* 29114 80073378 20001026 */  addiu      $s0, $s0, 0x20
    /* 29118 8007337C 0400222A */  slti       $v0, $s1, 0x4
    /* 2911C 80073380 0680013C */  lui        $at, %hi(D_80067030)
    /* 29120 80073384 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 29124 80073388 DDFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80073300
    /* 29128 8007338C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2912C 80073390 2800BF8F */  lw         $ra, 0x28($sp)
    /* 29130 80073394 2400B38F */  lw         $s3, 0x24($sp)
    /* 29134 80073398 2000B28F */  lw         $s2, 0x20($sp)
    /* 29138 8007339C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2913C 800733A0 1800B08F */  lw         $s0, 0x18($sp)
    /* 29140 800733A4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 29144 800733A8 0800E003 */  jr         $ra
    /* 29148 800733AC 00000000 */   nop
endlabel func_titlescreen_and_loading_800732D8
