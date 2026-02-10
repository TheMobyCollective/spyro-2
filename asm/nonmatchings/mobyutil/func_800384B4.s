.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800384B4, 0x88

glabel func_800384B4
    /* 28CB4 800384B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 28CB8 800384B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 28CBC 800384BC 21908000 */  addu       $s2, $a0, $zero
    /* 28CC0 800384C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 28CC4 800384C4 2180A000 */  addu       $s0, $a1, $zero
    /* 28CC8 800384C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 28CCC 800384CC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 28CD0 800384D0 76E1000C */  jal        func_800385D8
    /* 28CD4 800384D4 2188C000 */   addu      $s1, $a2, $zero
    /* 28CD8 800384D8 21184000 */  addu       $v1, $v0, $zero
    /* 28CDC 800384DC 02006104 */  bgez       $v1, .L800384E8
    /* 28CE0 800384E0 21106000 */   addu      $v0, $v1, $zero
    /* 28CE4 800384E4 23100200 */  negu       $v0, $v0
  .L800384E8:
    /* 28CE8 800384E8 2A102202 */  slt        $v0, $s1, $v0
    /* 28CEC 800384EC 0B004010 */  beqz       $v0, .L8003851C
    /* 28CF0 800384F0 00000000 */   nop
    /* 28CF4 800384F4 05006104 */  bgez       $v1, .L8003850C
    /* 28CF8 800384F8 21200002 */   addu      $a0, $s0, $zero
    /* 28CFC 800384FC 7EE1000C */  jal        func_800385F8
    /* 28D00 80038500 21282002 */   addu      $a1, $s1, $zero
    /* 28D04 80038504 48E10008 */  j          .L80038520
    /* 28D08 80038508 00000000 */   nop
  .L8003850C:
    /* 28D0C 8003850C 7EE1000C */  jal        func_800385F8
    /* 28D10 80038510 23281100 */   negu      $a1, $s1
    /* 28D14 80038514 48E10008 */  j          .L80038520
    /* 28D18 80038518 00000000 */   nop
  .L8003851C:
    /* 28D1C 8003851C 21104002 */  addu       $v0, $s2, $zero
  .L80038520:
    /* 28D20 80038520 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 28D24 80038524 1800B28F */  lw         $s2, 0x18($sp)
    /* 28D28 80038528 1400B18F */  lw         $s1, 0x14($sp)
    /* 28D2C 8003852C 1000B08F */  lw         $s0, 0x10($sp)
    /* 28D30 80038530 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 28D34 80038534 0800E003 */  jr         $ra
    /* 28D38 80038538 00000000 */   nop
endlabel func_800384B4
