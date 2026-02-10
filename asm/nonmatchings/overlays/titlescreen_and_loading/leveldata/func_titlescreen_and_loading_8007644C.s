.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_8007644C, 0x1C8

glabel func_titlescreen_and_loading_8007644C
    /* 2C1E8 8007644C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C1EC 80076450 0780043C */  lui        $a0, %hi(D_80069FD0)
    /* 2C1F0 80076454 D09F8424 */  addiu      $a0, $a0, %lo(D_80069FD0)
    /* 2C1F4 80076458 21280000 */  addu       $a1, $zero, $zero
    /* 2C1F8 8007645C 0B000224 */  addiu      $v0, $zero, 0xB
    /* 2C1FC 80076460 0680013C */  lui        $at, %hi(D_80066F90)
    /* 2C200 80076464 906F22AC */  sw         $v0, %lo(D_80066F90)($at)
    /* 2C204 80076468 04000224 */  addiu      $v0, $zero, 0x4
    /* 2C208 8007646C 0680013C */  lui        $at, %hi(D_8006712C)
    /* 2C20C 80076470 2C7122AC */  sw         $v0, %lo(D_8006712C)($at)
    /* 2C210 80076474 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C214 80076478 01000324 */  addiu      $v1, $zero, 0x1
    /* 2C218 8007647C 0780013C */  lui        $at, %hi(D_80068374)
    /* 2C21C 80076480 748322A0 */  sb         $v0, %lo(D_80068374)($at)
    /* 2C220 80076484 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2C224 80076488 0680013C */  lui        $at, %hi(D_80066D48)
    /* 2C228 8007648C 486D22AC */  sw         $v0, %lo(D_80066D48)($at)
    /* 2C22C 80076490 0680013C */  lui        $at, %hi(D_80066D4C)
    /* 2C230 80076494 4C6D22AC */  sw         $v0, %lo(D_80066D4C)($at)
    /* 2C234 80076498 FF3F0224 */  addiu      $v0, $zero, 0x3FFF
    /* 2C238 8007649C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2C23C 800764A0 0680013C */  lui        $at, %hi(D_800676A0)
    /* 2C240 800764A4 A07620AC */  sw         $zero, %lo(D_800676A0)($at)
    /* 2C244 800764A8 0780013C */  lui        $at, %hi(D_800698BA)
    /* 2C248 800764AC BA9820A0 */  sb         $zero, %lo(D_800698BA)($at)
    /* 2C24C 800764B0 0680013C */  lui        $at, %hi(D_80067144)
    /* 2C250 800764B4 447123AC */  sw         $v1, %lo(D_80067144)($at)
    /* 2C254 800764B8 0780013C */  lui        $at, %hi(D_80068314)
    /* 2C258 800764BC 148322AC */  sw         $v0, %lo(D_80068314)($at)
    /* 2C25C 800764C0 0680013C */  lui        $at, %hi(D_80066D50)
    /* 2C260 800764C4 506D23AC */  sw         $v1, %lo(D_80066D50)($at)
    /* 2C264 800764C8 0680013C */  lui        $at, %hi(D_8006702C)
    /* 2C268 800764CC 2C7020AC */  sw         $zero, %lo(D_8006702C)($at)
    /* 2C26C 800764D0 F26C000C */  jal        func_8001B3C8
    /* 2C270 800764D4 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C274 800764D8 0780043C */  lui        $a0, %hi(D_8006B264)
    /* 2C278 800764DC 64B28424 */  addiu      $a0, $a0, %lo(D_8006B264)
    /* 2C27C 800764E0 21280000 */  addu       $a1, $zero, $zero
    /* 2C280 800764E4 0680013C */  lui        $at, %hi(D_80067108)
    /* 2C284 800764E8 087120AC */  sw         $zero, %lo(D_80067108)($at)
    /* 2C288 800764EC F26C000C */  jal        func_8001B3C8
    /* 2C28C 800764F0 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C290 800764F4 0780043C */  lui        $a0, %hi(D_8006AC04)
    /* 2C294 800764F8 04AC8424 */  addiu      $a0, $a0, %lo(D_8006AC04)
    /* 2C298 800764FC 21280000 */  addu       $a1, $zero, $zero
    /* 2C29C 80076500 0680013C */  lui        $at, %hi(D_800670CC)
    /* 2C2A0 80076504 CC7020AC */  sw         $zero, %lo(D_800670CC)($at)
    /* 2C2A4 80076508 F26C000C */  jal        func_8001B3C8
    /* 2C2A8 8007650C 80000624 */   addiu     $a2, $zero, 0x80
    /* 2C2AC 80076510 0780043C */  lui        $a0, %hi(D_8006AC84)
    /* 2C2B0 80076514 84AC8424 */  addiu      $a0, $a0, %lo(D_8006AC84)
    /* 2C2B4 80076518 21280000 */  addu       $a1, $zero, $zero
    /* 2C2B8 8007651C F26C000C */  jal        func_8001B3C8
    /* 2C2BC 80076520 00040624 */   addiu     $a2, $zero, 0x400
    /* 2C2C0 80076524 0780043C */  lui        $a0, %hi(D_8006B084)
    /* 2C2C4 80076528 84B08424 */  addiu      $a0, $a0, %lo(D_8006B084)
    /* 2C2C8 8007652C 21280000 */  addu       $a1, $zero, $zero
    /* 2C2CC 80076530 F26C000C */  jal        func_8001B3C8
    /* 2C2D0 80076534 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C2D4 80076538 0780043C */  lui        $a0, %hi(D_8006A980)
    /* 2C2D8 8007653C 80A98424 */  addiu      $a0, $a0, %lo(D_8006A980)
    /* 2C2DC 80076540 21280000 */  addu       $a1, $zero, $zero
    /* 2C2E0 80076544 F26C000C */  jal        func_8001B3C8
    /* 2C2E4 80076548 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C2E8 8007654C 0680043C */  lui        $a0, %hi(D_80066E78)
    /* 2C2EC 80076550 786E8424 */  addiu      $a0, $a0, %lo(D_80066E78)
    /* 2C2F0 80076554 21280000 */  addu       $a1, $zero, $zero
    /* 2C2F4 80076558 F26C000C */  jal        func_8001B3C8
    /* 2C2F8 8007655C 08000624 */   addiu     $a2, $zero, 0x8
    /* 2C2FC 80076560 0680043C */  lui        $a0, %hi(D_80064784)
    /* 2C300 80076564 84478424 */  addiu      $a0, $a0, %lo(D_80064784)
    /* 2C304 80076568 21280000 */  addu       $a1, $zero, $zero
    /* 2C308 8007656C F26C000C */  jal        func_8001B3C8
    /* 2C30C 80076570 20000624 */   addiu     $a2, $zero, 0x20
    /* 2C310 80076574 98000224 */  addiu      $v0, $zero, 0x98
  .Ltitlescreen_and_loading_80076578:
    /* 2C314 80076578 0680013C */  lui        $at, %hi(D_80064672)
    /* 2C318 8007657C 21082200 */  addu       $at, $at, $v0
    /* 2C31C 80076580 724620A4 */  sh         $zero, %lo(D_80064672)($at)
    /* 2C320 80076584 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 2C324 80076588 FBFF4104 */  bgez       $v0, .Ltitlescreen_and_loading_80076578
    /* 2C328 8007658C 13000324 */   addiu     $v1, $zero, 0x13
    /* 2C32C 80076590 0680023C */  lui        $v0, %hi(D_8006471F)
    /* 2C330 80076594 1F474224 */  addiu      $v0, $v0, %lo(D_8006471F)
  .Ltitlescreen_and_loading_80076598:
    /* 2C334 80076598 000040A0 */  sb         $zero, 0x0($v0)
    /* 2C338 8007659C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2C33C 800765A0 FDFF6104 */  bgez       $v1, .Ltitlescreen_and_loading_80076598
    /* 2C340 800765A4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2C344 800765A8 0680013C */  lui        $at, %hi(D_80066F60)
    /* 2C348 800765AC 606F20AC */  sw         $zero, %lo(D_80066F60)($at)
    /* 2C34C 800765B0 21200000 */  addu       $a0, $zero, $zero
    /* 2C350 800765B4 0680053C */  lui        $a1, %hi(D_80061950)
    /* 2C354 800765B8 5019A524 */  addiu      $a1, $a1, %lo(D_80061950)
  .Ltitlescreen_and_loading_800765BC:
    /* 2C358 800765BC 04000324 */  addiu      $v1, $zero, 0x4
    /* 2C35C 800765C0 1000A224 */  addiu      $v0, $a1, 0x10
  .Ltitlescreen_and_loading_800765C4:
    /* 2C360 800765C4 000040AC */  sw         $zero, 0x0($v0)
    /* 2C364 800765C8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2C368 800765CC FDFF6104 */  bgez       $v1, .Ltitlescreen_and_loading_800765C4
    /* 2C36C 800765D0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 2C370 800765D4 A08C0234 */  ori        $v0, $zero, 0x8CA0
    /* 2C374 800765D8 0680013C */  lui        $at, %hi(D_80061964)
    /* 2C378 800765DC 21082400 */  addu       $at, $at, $a0
    /* 2C37C 800765E0 641922AC */  sw         $v0, %lo(D_80061964)($at)
    /* 2C380 800765E4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 2C384 800765E8 0680013C */  lui        $at, %hi(D_80061970)
    /* 2C388 800765EC 21082400 */  addu       $at, $at, $a0
    /* 2C38C 800765F0 701922AC */  sw         $v0, %lo(D_80061970)($at)
    /* 2C390 800765F4 58008424 */  addiu      $a0, $a0, 0x58
    /* 2C394 800765F8 60018228 */  slti       $v0, $a0, 0x160
    /* 2C398 800765FC EFFF4014 */  bnez       $v0, .Ltitlescreen_and_loading_800765BC
    /* 2C39C 80076600 5800A524 */   addiu     $a1, $a1, 0x58
    /* 2C3A0 80076604 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2C3A4 80076608 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2C3A8 8007660C 0800E003 */  jr         $ra
    /* 2C3AC 80076610 00000000 */   nop
endlabel func_titlescreen_and_loading_8007644C
