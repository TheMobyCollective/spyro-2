.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80070398, 0x100

glabel func_titlescreen_and_loading_80070398
    /* 26134 80070398 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 26138 8007039C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2613C 800703A0 21A8A000 */  addu       $s5, $a1, $zero
    /* 26140 800703A4 1000B0AF */  sw         $s0, 0x10($sp)
  alabel D_titlescreen_and_loading_800703A8
    /* 26144 800703A8 0780103C */  lui        $s0, %hi(D_8006B0E4)
    /* 26148 800703AC E4B01026 */  addiu      $s0, $s0, %lo(D_8006B0E4)
  alabel D_titlescreen_and_loading_800703B0
    /* 2614C 800703B0 2800BFAF */  sw         $ra, 0x28($sp)
    /* 26150 800703B4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 26154 800703B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 26158 800703BC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2615C 800703C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 26160 800703C4 0000048E */  lw         $a0, 0x0($s0)
    /* 26164 800703C8 0780023C */  lui        $v0, %hi(D_8006B0B4)
    /* 26168 800703CC B4B0428C */  lw         $v0, %lo(D_8006B0B4)($v0)
    /* 2616C 800703D0 0780033C */  lui        $v1, %hi(D_8006B290)
    /* 26170 800703D4 90B2638C */  lw         $v1, %lo(D_8006B290)($v1)
    /* 26174 800703D8 23208200 */  subu       $a0, $a0, $v0
    /* 26178 800703DC ACBF010C */  jal        func_titlescreen_and_loading_8006FEB0
    /* 2617C 800703E0 21206400 */   addu      $a0, $v1, $a0
    /* 26180 800703E4 0780023C */  lui        $v0, %hi(D_8006B0EC)
  alabel D_titlescreen_and_loading_800703E8
    /* 26184 800703E8 ECB0428C */  lw         $v0, %lo(D_8006B0EC)($v0)
    /* 26188 800703EC 00000000 */  nop
    /* 2618C 800703F0 15004018 */  blez       $v0, .Ltitlescreen_and_loading_80070448
    /* 26190 800703F4 01001324 */   addiu     $s3, $zero, 0x1
    /* 26194 800703F8 21A00002 */  addu       $s4, $s0, $zero
    /* 26198 800703FC 08009226 */  addiu      $s2, $s4, 0x8
    /* 2619C 80070400 02019126 */  addiu      $s1, $s4, 0x102
    /* 261A0 80070404 04009026 */  addiu      $s0, $s4, 0x4
  .Ltitlescreen_and_loading_80070408:
    /* 261A4 80070408 04005226 */  addiu      $s2, $s2, 0x4
    /* 261A8 8007040C 00002586 */  lh         $a1, 0x0($s1)
    /* 261AC 80070410 02003126 */  addiu      $s1, $s1, 0x2
    /* 261B0 80070414 0000048E */  lw         $a0, 0x0($s0)
    /* 261B4 80070418 04001026 */  addiu      $s0, $s0, 0x4
    /* 261B8 8007041C 2130A002 */  addu       $a2, $s5, $zero
    /* 261BC 80070420 D0FF828E */  lw         $v0, -0x30($s4)
    /* 261C0 80070424 0780033C */  lui        $v1, %hi(D_8006B290)
    /* 261C4 80070428 90B2638C */  lw         $v1, %lo(D_8006B290)($v1)
    /* 261C8 8007042C 23208200 */  subu       $a0, $a0, $v0
    /* 261CC 80070430 06C0010C */  jal        func_titlescreen_and_loading_80070018
    /* 261D0 80070434 21206400 */   addu      $a0, $v1, $a0
    /* 261D4 80070438 0000428E */  lw         $v0, 0x0($s2)
    /* 261D8 8007043C 00000000 */  nop
    /* 261DC 80070440 F1FF401C */  bgtz       $v0, .Ltitlescreen_and_loading_80070408
    /* 261E0 80070444 01007326 */   addiu     $s3, $s3, 0x1
  .Ltitlescreen_and_loading_80070448:
    /* 261E4 80070448 80181300 */  sll        $v1, $s3, 2
    /* 261E8 8007044C 0780023C */  lui        $v0, %hi(D_8006B290)
    /* 261EC 80070450 90B2428C */  lw         $v0, %lo(D_8006B290)($v0)
    /* 261F0 80070454 0780013C */  lui        $at, %hi(D_8006B0E4)
  alabel D_titlescreen_and_loading_80070458
    /* 261F4 80070458 21082300 */  addu       $at, $at, $v1
    /* 261F8 8007045C E4B0238C */  lw         $v1, %lo(D_8006B0E4)($at)
  alabel D_titlescreen_and_loading_80070460
    /* 261FC 80070460 0780043C */  lui        $a0, %hi(D_8006B0B4)
    /* 26200 80070464 B4B0848C */  lw         $a0, %lo(D_8006B0B4)($a0)
  alabel D_titlescreen_and_loading_80070468
    /* 26204 80070468 21104300 */  addu       $v0, $v0, $v1
    /* 26208 8007046C 23104400 */  subu       $v0, $v0, $a0
    /* 2620C 80070470 2800BF8F */  lw         $ra, 0x28($sp)
    /* 26210 80070474 2400B58F */  lw         $s5, 0x24($sp)
    /* 26214 80070478 2000B48F */  lw         $s4, 0x20($sp)
    /* 26218 8007047C 1C00B38F */  lw         $s3, 0x1C($sp)
  alabel D_titlescreen_and_loading_80070480
    /* 2621C 80070480 1800B28F */  lw         $s2, 0x18($sp)
    /* 26220 80070484 1400B18F */  lw         $s1, 0x14($sp)
    /* 26224 80070488 1000B08F */  lw         $s0, 0x10($sp)
    /* 26228 8007048C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2622C 80070490 0800E003 */  jr         $ra
    /* 26230 80070494 00000000 */   nop
endlabel func_titlescreen_and_loading_80070398
