.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80037BB0, 0xD0

glabel func_80037BB0
    /* 283B0 80037BB0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 283B4 80037BB4 4800B0AF */  sw         $s0, 0x48($sp)
    /* 283B8 80037BB8 21808000 */  addu       $s0, $a0, $zero
    /* 283BC 80037BBC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 283C0 80037BC0 0780053C */  lui        $a1, %hi(D_80069FF0)
    /* 283C4 80037BC4 F09FA524 */  addiu      $a1, $a1, %lo(D_80069FF0)
    /* 283C8 80037BC8 21300002 */  addu       $a2, $s0, $zero
    /* 283CC 80037BCC 5800BFAF */  sw         $ra, 0x58($sp)
    /* 283D0 80037BD0 5400B3AF */  sw         $s3, 0x54($sp)
    /* 283D4 80037BD4 5000B2AF */  sw         $s2, 0x50($sp)
    /* 283D8 80037BD8 806F000C */  jal        func_8001BE00
    /* 283DC 80037BDC 4C00B1AF */   sw        $s1, 0x4C($sp)
    /* 283E0 80037BE0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 283E4 80037BE4 886E000C */  jal        func_8001BA20
    /* 283E8 80037BE8 01000524 */   addiu     $a1, $zero, 0x1
    /* 283EC 80037BEC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 283F0 80037BF0 21284000 */  addu       $a1, $v0, $zero
    /* 283F4 80037BF4 00040624 */  addiu      $a2, $zero, 0x400
    /* 283F8 80037BF8 316F000C */  jal        func_8001BCC4
    /* 283FC 80037BFC 839A0500 */   sra       $s3, $a1, 10
    /* 28400 80037C00 2000B127 */  addiu      $s1, $sp, 0x20
    /* 28404 80037C04 21202002 */  addu       $a0, $s1, $zero
    /* 28408 80037C08 6C6F000C */  jal        func_8001BDB0
    /* 2840C 80037C0C 21280002 */   addu      $a1, $s0, $zero
    /* 28410 80037C10 1200601A */  blez       $s3, .L80037C5C
    /* 28414 80037C14 21800000 */   addu      $s0, $zero, $zero
    /* 28418 80037C18 3000B227 */  addiu      $s2, $sp, 0x30
    /* 2841C 80037C1C 21204002 */  addu       $a0, $s2, $zero
  .L80037C20:
    /* 28420 80037C20 21282002 */  addu       $a1, $s1, $zero
    /* 28424 80037C24 736F000C */  jal        func_8001BDCC
    /* 28428 80037C28 1000A627 */   addiu     $a2, $sp, 0x10
    /* 2842C 80037C2C 21202002 */  addu       $a0, $s1, $zero
    /* 28430 80037C30 A5F3000C */  jal        func_8003CE94
    /* 28434 80037C34 21284002 */   addu      $a1, $s2, $zero
    /* 28438 80037C38 09004014 */  bnez       $v0, .L80037C60
    /* 2843C 80037C3C 21100000 */   addu      $v0, $zero, $zero
    /* 28440 80037C40 21202002 */  addu       $a0, $s1, $zero
    /* 28444 80037C44 6C6F000C */  jal        func_8001BDB0
    /* 28448 80037C48 21284002 */   addu      $a1, $s2, $zero
    /* 2844C 80037C4C 01001026 */  addiu      $s0, $s0, 0x1
    /* 28450 80037C50 2A101302 */  slt        $v0, $s0, $s3
    /* 28454 80037C54 F2FF4014 */  bnez       $v0, .L80037C20
    /* 28458 80037C58 21204002 */   addu      $a0, $s2, $zero
  .L80037C5C:
    /* 2845C 80037C5C 01000224 */  addiu      $v0, $zero, 0x1
  .L80037C60:
    /* 28460 80037C60 5800BF8F */  lw         $ra, 0x58($sp)
    /* 28464 80037C64 5400B38F */  lw         $s3, 0x54($sp)
    /* 28468 80037C68 5000B28F */  lw         $s2, 0x50($sp)
    /* 2846C 80037C6C 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 28470 80037C70 4800B08F */  lw         $s0, 0x48($sp)
    /* 28474 80037C74 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 28478 80037C78 0800E003 */  jr         $ra
    /* 2847C 80037C7C 00000000 */   nop
endlabel func_80037BB0
