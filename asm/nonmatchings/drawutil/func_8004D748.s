.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D748, 0xC8

glabel func_8004D748
    /* 3DF48 8004D748 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3DF4C 8004D74C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3DF50 8004D750 2188A000 */  addu       $s1, $a1, $zero
    /* 3DF54 8004D754 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3DF58 8004D758 2190C000 */  addu       $s2, $a2, $zero
    /* 3DF5C 8004D75C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3DF60 8004D760 2198E000 */  addu       $s3, $a3, $zero
    /* 3DF64 8004D764 40390400 */  sll        $a3, $a0, 5
    /* 3DF68 8004D768 01000524 */  addiu      $a1, $zero, 0x1
    /* 3DF6C 8004D76C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3DF70 8004D770 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3DF74 8004D774 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3DF78 8004D778 21300000 */  addu       $a2, $zero, $zero
    /* 3DF7C 8004D77C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3DF80 8004D780 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DF84 8004D784 0768010C */  jal        func_8005A01C
    /* 3DF88 8004D788 21200002 */   addu      $a0, $s0, $zero
    /* 3DF8C 8004D78C E46C000C */  jal        func_8001B390
    /* 3DF90 8004D790 21200002 */   addu      $a0, $s0, $zero
    /* 3DF94 8004D794 0C000426 */  addiu      $a0, $s0, 0xC
    /* 3DF98 8004D798 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 3DF9C 8004D79C 0C0002AE */  sw         $v0, 0xC($s0)
    /* 3DFA0 8004D7A0 2A000224 */  addiu      $v0, $zero, 0x2A
    /* 3DFA4 8004D7A4 130002A2 */  sb         $v0, 0x13($s0)
    /* 3DFA8 8004D7A8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3DFAC 8004D7AC 00020324 */  addiu      $v1, $zero, 0x200
    /* 3DFB0 8004D7B0 160002A6 */  sh         $v0, 0x16($s0)
    /* 3DFB4 8004D7B4 1A0002A6 */  sh         $v0, 0x1A($s0)
    /* 3DFB8 8004D7B8 E4000224 */  addiu      $v0, $zero, 0xE4
    /* 3DFBC 8004D7BC 140000A6 */  sh         $zero, 0x14($s0)
    /* 3DFC0 8004D7C0 180003A6 */  sh         $v1, 0x18($s0)
    /* 3DFC4 8004D7C4 1C0000A6 */  sh         $zero, 0x1C($s0)
    /* 3DFC8 8004D7C8 1E0002A6 */  sh         $v0, 0x1E($s0)
    /* 3DFCC 8004D7CC 200003A6 */  sh         $v1, 0x20($s0)
    /* 3DFD0 8004D7D0 220002A6 */  sh         $v0, 0x22($s0)
    /* 3DFD4 8004D7D4 100011A2 */  sb         $s1, 0x10($s0)
    /* 3DFD8 8004D7D8 110012A2 */  sb         $s2, 0x11($s0)
    /* 3DFDC 8004D7DC E46C000C */  jal        func_8001B390
    /* 3DFE0 8004D7E0 120013A2 */   sb        $s3, 0x12($s0)
    /* 3DFE4 8004D7E4 24001026 */  addiu      $s0, $s0, 0x24
    /* 3DFE8 8004D7E8 0680013C */  lui        $at, %hi(D_80067030)
    /* 3DFEC 8004D7EC 307030AC */  sw         $s0, %lo(D_80067030)($at)
    /* 3DFF0 8004D7F0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3DFF4 8004D7F4 2400B38F */  lw         $s3, 0x24($sp)
    /* 3DFF8 8004D7F8 2000B28F */  lw         $s2, 0x20($sp)
    /* 3DFFC 8004D7FC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E000 8004D800 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E004 8004D804 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3E008 8004D808 0800E003 */  jr         $ra
    /* 3E00C 8004D80C 00000000 */   nop
endlabel func_8004D748
