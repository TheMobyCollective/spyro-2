.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80038238, 0x58

glabel func_80038238
    /* 28A38 80038238 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 28A3C 8003823C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 28A40 80038240 21808000 */  addu       $s0, $a0, $zero
    /* 28A44 80038244 1400B1AF */  sw         $s1, 0x14($sp)
    /* 28A48 80038248 2188A000 */  addu       $s1, $a1, $zero
    /* 28A4C 8003824C 0C000426 */  addiu      $a0, $s0, 0xC
    /* 28A50 80038250 1800BFAF */  sw         $ra, 0x18($sp)
    /* 28A54 80038254 1400028E */  lw         $v0, 0x14($s0)
    /* 28A58 80038258 00100524 */  addiu      $a1, $zero, 0x1000
    /* 28A5C 8003825C 21105100 */  addu       $v0, $v0, $s1
    /* 28A60 80038260 A1FB000C */  jal        func_8003EE84
    /* 28A64 80038264 140002AE */   sw        $v0, 0x14($s0)
    /* 28A68 80038268 1400038E */  lw         $v1, 0x14($s0)
    /* 28A6C 8003826C 00000000 */  nop
    /* 28A70 80038270 23187100 */  subu       $v1, $v1, $s1
    /* 28A74 80038274 140003AE */  sw         $v1, 0x14($s0)
    /* 28A78 80038278 1800BF8F */  lw         $ra, 0x18($sp)
    /* 28A7C 8003827C 1400B18F */  lw         $s1, 0x14($sp)
    /* 28A80 80038280 1000B08F */  lw         $s0, 0x10($sp)
    /* 28A84 80038284 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 28A88 80038288 0800E003 */  jr         $ra
    /* 28A8C 8003828C 00000000 */   nop
endlabel func_80038238
