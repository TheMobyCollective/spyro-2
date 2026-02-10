.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_800733B0, 0x160

glabel func_titlescreen_and_loading_800733B0
    /* 2914C 800733B0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 29150 800733B4 80000424 */  addiu      $a0, $zero, 0x80
    /* 29154 800733B8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 29158 800733BC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2915C 800733C0 B6CC010C */  jal        func_titlescreen_and_loading_800732D8
    /* 29160 800733C4 1800B0AF */   sw        $s0, 0x18($sp)
    /* 29164 800733C8 21280000 */  addu       $a1, $zero, $zero
    /* 29168 800733CC 0680043C */  lui        $a0, %hi(D_80067034)
    /* 2916C 800733D0 3470848C */  lw         $a0, %lo(D_80067034)($a0)
    /* 29170 800733D4 000C0624 */  addiu      $a2, $zero, 0xC00
    /* 29174 800733D8 F96C000C */  jal        func_8001B3E4
    /* 29178 800733DC 00D08424 */   addiu     $a0, $a0, -0x3000
    /* 2917C 800733E0 6F07010C */  jal        func_80041DBC
    /* 29180 800733E4 00000000 */   nop
    /* 29184 800733E8 0780103C */  lui        $s0, %hi(D_800698EC)
    /* 29188 800733EC EC981026 */  addiu      $s0, $s0, %lo(D_800698EC)
    /* 2918C 800733F0 0000028E */  lw         $v0, 0x0($s0)
    /* 29190 800733F4 00000000 */  nop
    /* 29194 800733F8 C0004228 */  slti       $v0, $v0, 0xC0
    /* 29198 800733FC 36004014 */  bnez       $v0, .Ltitlescreen_and_loading_800734D8
    /* 2919C 80073400 00000000 */   nop
    /* 291A0 80073404 0680023C */  lui        $v0, %hi(D_80066EEC)
    /* 291A4 80073408 EC6E428C */  lw         $v0, %lo(D_80066EEC)($v0)
    /* 291A8 8007340C 00000000 */  nop
    /* 291AC 80073410 07004228 */  slti       $v0, $v0, 0x7
    /* 291B0 80073414 30004014 */  bnez       $v0, .Ltitlescreen_and_loading_800734D8
    /* 291B4 80073418 01000524 */   addiu     $a1, $zero, 0x1
    /* 291B8 8007341C 21300000 */  addu       $a2, $zero, $zero
    /* 291BC 80073420 0680113C */  lui        $s1, %hi(D_80067030)
    /* 291C0 80073424 3070318E */  lw         $s1, %lo(D_80067030)($s1)
    /* 291C4 80073428 18010724 */  addiu      $a3, $zero, 0x118
    /* 291C8 8007342C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 291CC 80073430 0768010C */  jal        func_8005A01C
    /* 291D0 80073434 21202002 */   addu      $a0, $s1, $zero
    /* 291D4 80073438 E46C000C */  jal        func_8001B390
    /* 291D8 8007343C 21202002 */   addu      $a0, $s1, $zero
    /* 291DC 80073440 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 291E0 80073444 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* 291E4 80073448 0C0022AE */  sw         $v0, 0xC($s1)
    /* 291E8 8007344C 0000048E */  lw         $a0, 0x0($s0)
    /* 291EC 80073450 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 291F0 80073454 18008300 */  mult       $a0, $v1
    /* 291F4 80073458 C3170400 */  sra        $v0, $a0, 31
    /* 291F8 8007345C 10400000 */  mfhi       $t0
    /* 291FC 80073460 83180800 */  sra        $v1, $t0, 2
    /* 29200 80073464 23186200 */  subu       $v1, $v1, $v0
    /* 29204 80073468 40100300 */  sll        $v0, $v1, 1
    /* 29208 8007346C 21104300 */  addu       $v0, $v0, $v1
    /* 2920C 80073470 C0100200 */  sll        $v0, $v0, 3
    /* 29210 80073474 23208200 */  subu       $a0, $a0, $v0
    /* 29214 80073478 0C008428 */  slti       $a0, $a0, 0xC
    /* 29218 8007347C 04008010 */  beqz       $a0, .Ltitlescreen_and_loading_80073490
    /* 2921C 80073480 0C003026 */   addiu     $s0, $s1, 0xC
    /* 29220 80073484 4064023C */  lui        $v0, (0x644064E6 >> 16)
    /* 29224 80073488 26CD0108 */  j          .Ltitlescreen_and_loading_80073498
    /* 29228 8007348C E6644234 */   ori       $v0, $v0, (0x644064E6 & 0xFFFF)
  .Ltitlescreen_and_loading_80073490:
    /* 2922C 80073490 C064023C */  lui        $v0, (0x64C0D0D0 >> 16)
    /* 29230 80073494 D0D04234 */  ori        $v0, $v0, (0x64C0D0D0 & 0xFFFF)
  .Ltitlescreen_and_loading_80073498:
    /* 29234 80073498 100022AE */  sw         $v0, 0x10($s1)
    /* 29238 8007349C 21200002 */  addu       $a0, $s0, $zero
    /* 2923C 800734A0 00010224 */  addiu      $v0, $zero, 0x100
    /* 29240 800734A4 100002A6 */  sh         $v0, 0x10($s0)
    /* 29244 800734A8 10000224 */  addiu      $v0, $zero, 0x10
    /* 29248 800734AC 120002A6 */  sh         $v0, 0x12($s0)
    /* 2924C 800734B0 80000224 */  addiu      $v0, $zero, 0x80
    /* 29250 800734B4 080002A6 */  sh         $v0, 0x8($s0)
    /* 29254 800734B8 CC000224 */  addiu      $v0, $zero, 0xCC
    /* 29258 800734BC 0C0000A2 */  sb         $zero, 0xC($s0)
    /* 2925C 800734C0 0D0000A2 */  sb         $zero, 0xD($s0)
    /* 29260 800734C4 E46C000C */  jal        func_8001B390
    /* 29264 800734C8 0A0002A6 */   sh        $v0, 0xA($s0)
    /* 29268 800734CC 14000226 */  addiu      $v0, $s0, 0x14
    /* 2926C 800734D0 0680013C */  lui        $at, %hi(D_80067030)
    /* 29270 800734D4 307022AC */  sw         $v0, %lo(D_80067030)($at)
  .Ltitlescreen_and_loading_800734D8:
    /* 29274 800734D8 0680053C */  lui        $a1, %hi(D_80066F68)
    /* 29278 800734DC 686FA58C */  lw         $a1, %lo(D_80066F68)($a1)
    /* 2927C 800734E0 00000000 */  nop
    /* 29280 800734E4 0400A010 */  beqz       $a1, .Ltitlescreen_and_loading_800734F8
    /* 29284 800734E8 02000424 */   addiu     $a0, $zero, 0x2
    /* 29288 800734EC 2130A000 */  addu       $a2, $a1, $zero
    /* 2928C 800734F0 D235010C */  jal        func_8004D748
    /* 29290 800734F4 2138A000 */   addu      $a3, $a1, $zero
  .Ltitlescreen_and_loading_800734F8:
    /* 29294 800734F8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 29298 800734FC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2929C 80073500 1800B08F */  lw         $s0, 0x18($sp)
    /* 292A0 80073504 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 292A4 80073508 0800E003 */  jr         $ra
    /* 292A8 8007350C 00000000 */   nop
endlabel func_titlescreen_and_loading_800733B0
