.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80052430, 0x68

glabel func_80052430
    /* 42C30 80052430 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 42C34 80052434 1000B0AF */  sw         $s0, 0x10($sp)
    /* 42C38 80052438 2180A000 */  addu       $s0, $a1, $zero
    /* 42C3C 8005243C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 42C40 80052440 1800BFAF */  sw         $ra, 0x18($sp)
    /* 42C44 80052444 CA48010C */  jal        func_80052328
    /* 42C48 80052448 2188C000 */   addu      $s1, $a2, $zero
    /* 42C4C 8005244C 0680043C */  lui        $a0, %hi(D_80063544)
    /* 42C50 80052450 44358424 */  addiu      $a0, $a0, %lo(D_80063544)
    /* 42C54 80052454 F8000524 */  addiu      $a1, $zero, 0xF8
    /* 42C58 80052458 21300002 */  addu       $a2, $s0, $zero
    /* 42C5C 8005245C 3348010C */  jal        func_800520CC
    /* 42C60 80052460 02000724 */   addiu     $a3, $zero, 0x2
    /* 42C64 80052464 C064033C */  lui        $v1, (0x64C0C0C0 >> 16)
    /* 42C68 80052468 C0C06334 */  ori        $v1, $v1, (0x64C0C0C0 & 0xFFFF)
    /* 42C6C 8005246C F0000424 */  addiu      $a0, $zero, 0xF0
    /* 42C70 80052470 21280002 */  addu       $a1, $s0, $zero
    /* 42C74 80052474 21302002 */  addu       $a2, $s1, $zero
    /* 42C78 80052478 CA48010C */  jal        func_80052328
    /* 42C7C 8005247C 040043AC */   sw        $v1, 0x4($v0)
    /* 42C80 80052480 1800BF8F */  lw         $ra, 0x18($sp)
    /* 42C84 80052484 1400B18F */  lw         $s1, 0x14($sp)
    /* 42C88 80052488 1000B08F */  lw         $s0, 0x10($sp)
    /* 42C8C 8005248C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 42C90 80052490 0800E003 */  jr         $ra
    /* 42C94 80052494 00000000 */   nop
endlabel func_80052430
