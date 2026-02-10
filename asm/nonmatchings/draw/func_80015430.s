.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80015430, 0x64

glabel func_80015430
    /* 5C30 80015430 0780033C */  lui        $v1, %hi(D_800698F0)
    /* 5C34 80015434 F098638C */  lw         $v1, %lo(D_800698F0)($v1)
    /* 5C38 80015438 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5C3C 8001543C 04006228 */  slti       $v0, $v1, 0x4
    /* 5C40 80015440 07004010 */  beqz       $v0, .L80015460
    /* 5C44 80015444 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5C48 80015448 0C00601C */  bgtz       $v1, .L8001547C
    /* 5C4C 8001544C 00000000 */   nop
    /* 5C50 80015450 06006010 */  beqz       $v1, .L8001546C
    /* 5C54 80015454 00000000 */   nop
    /* 5C58 80015458 21550008 */  j          .L80015484
    /* 5C5C 8001545C 00000000 */   nop
  .L80015460:
    /* 5C60 80015460 04000224 */  addiu      $v0, $zero, 0x4
    /* 5C64 80015464 07006214 */  bne        $v1, $v0, .L80015484
    /* 5C68 80015468 00000000 */   nop
  .L8001546C:
    /* 5C6C 8001546C 6855000C */  jal        func_800155A0
    /* 5C70 80015470 0D000424 */   addiu     $a0, $zero, 0xD
    /* 5C74 80015474 21550008 */  j          .L80015484
    /* 5C78 80015478 00000000 */   nop
  .L8001547C:
    /* 5C7C 8001547C BBC3010C */  jal        func_titlescreen_and_loading_80070EEC
    /* 5C80 80015480 00000000 */   nop
  .L80015484:
    /* 5C84 80015484 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5C88 80015488 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5C8C 8001548C 0800E003 */  jr         $ra
    /* 5C90 80015490 00000000 */   nop
endlabel func_80015430
