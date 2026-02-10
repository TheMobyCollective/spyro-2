.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002AFDC, 0x9C

glabel func_8002AFDC
    /* 1B7DC 8002AFDC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1B7E0 8002AFE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B7E4 8002AFE4 2180A000 */  addu       $s0, $a1, $zero
    /* 1B7E8 8002AFE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1B7EC 8002AFEC 2188C000 */  addu       $s1, $a2, $zero
    /* 1B7F0 8002AFF0 21300002 */  addu       $a2, $s0, $zero
    /* 1B7F4 8002AFF4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1B7F8 8002AFF8 696E000C */  jal        func_8001B9A4
    /* 1B7FC 8002AFFC 1800B2AF */   sw        $s2, 0x18($sp)
    /* 1B800 8002B000 21200002 */  addu       $a0, $s0, $zero
    /* 1B804 8002B004 21280002 */  addu       $a1, $s0, $zero
    /* 1B808 8002B008 0780123C */  lui        $s2, %hi(D_80069FF0)
    /* 1B80C 8002B00C F09F5226 */  addiu      $s2, $s2, %lo(D_80069FF0)
    /* 1B810 8002B010 736F000C */  jal        func_8001BDCC
    /* 1B814 8002B014 21304002 */   addu      $a2, $s2, $zero
    /* 1B818 8002B018 21200000 */  addu       $a0, $zero, $zero
    /* 1B81C 8002B01C 21282002 */  addu       $a1, $s1, $zero
    /* 1B820 8002B020 696E000C */  jal        func_8001B9A4
    /* 1B824 8002B024 21302002 */   addu      $a2, $s1, $zero
    /* 1B828 8002B028 21202002 */  addu       $a0, $s1, $zero
    /* 1B82C 8002B02C 21282002 */  addu       $a1, $s1, $zero
    /* 1B830 8002B030 736F000C */  jal        func_8001BDCC
    /* 1B834 8002B034 21304002 */   addu      $a2, $s2, $zero
    /* 1B838 8002B038 21200002 */  addu       $a0, $s0, $zero
    /* 1B83C 8002B03C A5F3000C */  jal        func_8003CE94
    /* 1B840 8002B040 21282002 */   addu      $a1, $s1, $zero
    /* 1B844 8002B044 05004010 */  beqz       $v0, .L8002B05C
    /* 1B848 8002B048 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1B84C 8002B04C 0780043C */  lui        $a0, %hi(D_8006AB94)
    /* 1B850 8002B050 94AB848C */  lw         $a0, %lo(D_8006AB94)($a0)
    /* 1B854 8002B054 1EAC000C */  jal        func_8002B078
    /* 1B858 8002B058 00000000 */   nop
  .L8002B05C:
    /* 1B85C 8002B05C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1B860 8002B060 1800B28F */  lw         $s2, 0x18($sp)
    /* 1B864 8002B064 1400B18F */  lw         $s1, 0x14($sp)
    /* 1B868 8002B068 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B86C 8002B06C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1B870 8002B070 0800E003 */  jr         $ra
    /* 1B874 8002B074 00000000 */   nop
endlabel func_8002AFDC
