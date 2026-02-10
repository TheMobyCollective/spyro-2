.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
nonmatching func_8001C454, 0xBC

glabel func_8001C454
    /* CC54 8001C454 2030C500 */  add        $a2, $a2, $a1 /* handwritten instruction */
    /* CC58 8001C458 40410700 */  sll        $t0, $a3, 5
    /* CC5C 8001C45C 804A0700 */  sll        $t1, $a3, 10
    /* CC60 8001C460 00008184 */  lh         $at, 0x0($a0)
    /* CC64 8001C464 02008420 */  addi       $a0, $a0, 0x2 /* handwritten instruction */
  .L8001C468:
    /* CC68 8001C468 FF002230 */  andi       $v0, $at, 0xFF
    /* CC6C 8001C46C 05004010 */  beqz       $v0, .L8001C484
    /* CC70 8001C470 40100200 */   sll       $v0, $v0, 1
    /* CC74 8001C474 20104500 */  add        $v0, $v0, $a1 /* handwritten instruction */
  .L8001C478:
    /* CC78 8001C478 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* CC7C 8001C47C FEFFA214 */  bne        $a1, $v0, .L8001C478
    /* CC80 8001C480 FEFFA0A4 */   sh        $zero, -0x2($a1)
  .L8001C484:
    /* CC84 8001C484 00FF2230 */  andi       $v0, $at, 0xFF00
    /* CC88 8001C488 08004010 */  beqz       $v0, .L8001C4AC
    /* CC8C 8001C48C C2110200 */   srl       $v0, $v0, 7
    /* CC90 8001C490 0B00E01C */  bgtz       $a3, .L8001C4C0
    /* CC94 8001C494 20104500 */   add       $v0, $v0, $a1 /* handwritten instruction */
  .L8001C498:
    /* CC98 8001C498 00008384 */  lh         $v1, 0x0($a0)
    /* CC9C 8001C49C 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* CCA0 8001C4A0 FEFFA3A4 */  sh         $v1, -0x2($a1)
    /* CCA4 8001C4A4 FCFFA214 */  bne        $a1, $v0, .L8001C498
    /* CCA8 8001C4A8 02008420 */   addi      $a0, $a0, 0x2 /* handwritten instruction */
  .L8001C4AC:
    /* CCAC 8001C4AC 00008184 */  lh         $at, 0x0($a0)
    /* CCB0 8001C4B0 EDFFA614 */  bne        $a1, $a2, .L8001C468
    /* CCB4 8001C4B4 02008420 */   addi      $a0, $a0, 0x2 /* handwritten instruction */
    /* CCB8 8001C4B8 0800E003 */  jr         $ra
    /* CCBC 8001C4BC 00000000 */   nop
  .L8001C4C0:
    /* CCC0 8001C4C0 00008384 */  lh         $v1, 0x0($a0)
    /* CCC4 8001C4C4 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
    /* CCC8 8001C4C8 1F006A30 */  andi       $t2, $v1, 0x1F
    /* CCCC 8001C4CC 22504701 */  sub        $t2, $t2, $a3 /* handwritten instruction */
    /* CCD0 8001C4D0 02004105 */  bgez       $t2, .L8001C4DC
    /* CCD4 8001C4D4 E0036B30 */   andi      $t3, $v1, 0x3E0
    /* CCD8 8001C4D8 00000A20 */  addi       $t2, $zero, 0x0 /* handwritten instruction */
  .L8001C4DC:
    /* CCDC 8001C4DC 22586801 */  sub        $t3, $t3, $t0 /* handwritten instruction */
    /* CCE0 8001C4E0 02006105 */  bgez       $t3, .L8001C4EC
    /* CCE4 8001C4E4 007C6C30 */   andi      $t4, $v1, 0x7C00
    /* CCE8 8001C4E8 00000B20 */  addi       $t3, $zero, 0x0 /* handwritten instruction */
  .L8001C4EC:
    /* CCEC 8001C4EC 22608901 */  sub        $t4, $t4, $t1 /* handwritten instruction */
    /* CCF0 8001C4F0 02008005 */  bltz       $t4, .L8001C4FC
    /* CCF4 8001C4F4 20184B01 */   add       $v1, $t2, $t3 /* handwritten instruction */
    /* CCF8 8001C4F8 20186C00 */  add        $v1, $v1, $t4 /* handwritten instruction */
  .L8001C4FC:
    /* CCFC 8001C4FC FEFFA3A4 */  sh         $v1, -0x2($a1)
    /* CD00 8001C500 EFFFA214 */  bne        $a1, $v0, .L8001C4C0
    /* CD04 8001C504 02008420 */   addi      $a0, $a0, 0x2 /* handwritten instruction */
    /* CD08 8001C508 2B710008 */  j          .L8001C4AC
    /* CD0C 8001C50C 00000000 */   nop
endlabel func_8001C454
