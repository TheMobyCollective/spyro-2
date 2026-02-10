.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800518EC, 0xB0

glabel func_800518EC
    /* 420EC 800518EC 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 420F0 800518F0 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 420F4 800518F4 2269010C */  jal        func_8005A488
    /* 420F8 800518F8 7800B0AF */   sw        $s0, 0x78($sp)
    /* 420FC 800518FC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 42100 80051900 03001024 */  addiu      $s0, $zero, 0x3
    /* 42104 80051904 CC3C0224 */  addiu      $v0, $zero, 0x3CCC
    /* 42108 80051908 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4210C 8005190C 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 42110 80051910 4B64010C */  jal        func_8005912C
    /* 42114 80051914 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 42118 80051918 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 4211C 8005191C FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 42120 80051920 3800A427 */  addiu      $a0, $sp, 0x38
    /* 42124 80051924 13FF0234 */  ori        $v0, $zero, 0xFF13
    /* 42128 80051928 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 4212C 8005192C FF2F0224 */  addiu      $v0, $zero, 0x2FFF
    /* 42130 80051930 4000A2A7 */  sh         $v0, 0x40($sp)
    /* 42134 80051934 4200A2A7 */  sh         $v0, 0x42($sp)
    /* 42138 80051938 00040224 */  addiu      $v0, $zero, 0x400
    /* 4213C 8005193C 4C00A2A7 */  sh         $v0, 0x4C($sp)
    /* 42140 80051940 01000224 */  addiu      $v0, $zero, 0x1
    /* 42144 80051944 5C00A2AF */  sw         $v0, 0x5C($sp)
    /* 42148 80051948 6000A2AF */  sw         $v0, 0x60($sp)
    /* 4214C 8005194C 0F000224 */  addiu      $v0, $zero, 0xF
    /* 42150 80051950 3800A3AF */  sw         $v1, 0x38($sp)
    /* 42154 80051954 6400B0AF */  sw         $s0, 0x64($sp)
    /* 42158 80051958 6800A0A7 */  sh         $zero, 0x68($sp)
    /* 4215C 8005195C 6A00A0A7 */  sh         $zero, 0x6A($sp)
    /* 42160 80051960 6C00A0A7 */  sh         $zero, 0x6C($sp)
    /* 42164 80051964 6E00A0A7 */  sh         $zero, 0x6E($sp)
    /* 42168 80051968 2A69010C */  jal        func_8005A4A8
    /* 4216C 8005196C 7000A2A7 */   sh        $v0, 0x70($sp)
    /* 42170 80051970 21200000 */  addu       $a0, $zero, $zero
    /* 42174 80051974 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* 42178 80051978 8F68010C */  jal        func_8005A23C
    /* 4217C 8005197C FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* 42180 80051980 8368010C */  jal        func_8005A20C
    /* 42184 80051984 21200000 */   addu      $a0, $zero, $zero
    /* 42188 80051988 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 4218C 8005198C 7800B08F */  lw         $s0, 0x78($sp)
    /* 42190 80051990 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 42194 80051994 0800E003 */  jr         $ra
    /* 42198 80051998 00000000 */   nop
endlabel func_800518EC
