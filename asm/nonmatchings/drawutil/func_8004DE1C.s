.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DE1C, 0xCC

glabel func_8004DE1C
    /* 3E61C 8004DE1C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E620 8004DE20 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E624 8004DE24 21908000 */  addu       $s2, $a0, $zero
    /* 3E628 8004DE28 21200000 */  addu       $a0, $zero, $zero
    /* 3E62C 8004DE2C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3E630 8004DE30 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E634 8004DE34 F955010C */  jal        func_800557E4
    /* 3E638 8004DE38 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3E63C 8004DE3C 0200113C */  lui        $s1, (0x2C000 >> 16)
    /* 3E640 8004DE40 00C03136 */  ori        $s1, $s1, (0x2C000 & 0xFFFF)
    /* 3E644 8004DE44 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3E648 8004DE48 00020224 */  addiu      $v0, $zero, 0x200
    /* 3E64C 8004DE4C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 3E650 8004DE50 80000224 */  addiu      $v0, $zero, 0x80
    /* 3E654 8004DE54 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3E658 8004DE58 00010224 */  addiu      $v0, $zero, 0x100
    /* 3E65C 8004DE5C 0780103C */  lui        $s0, %hi(D_8006B29C)
    /* 3E660 8004DE60 9CB21026 */  addiu      $s0, $s0, %lo(D_8006B29C)
    /* 3E664 8004DE64 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3E668 8004DE68 0000058E */  lw         $a1, 0x0($s0)
    /* 3E66C 8004DE6C 60000224 */  addiu      $v0, $zero, 0x60
    /* 3E670 8004DE70 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 3E674 8004DE74 7E56010C */  jal        func_800559F8
    /* 3E678 8004DE78 2128B100 */   addu      $a1, $a1, $s1
    /* 3E67C 8004DE7C F955010C */  jal        func_800557E4
    /* 3E680 8004DE80 21200000 */   addu      $a0, $zero, $zero
    /* 3E684 8004DE84 40381200 */  sll        $a3, $s2, 1
    /* 3E688 8004DE88 2138F200 */  addu       $a3, $a3, $s2
    /* 3E68C 8004DE8C 803B0700 */  sll        $a3, $a3, 14
    /* 3E690 8004DE90 00C00634 */  ori        $a2, $zero, 0xC000
    /* 3E694 8004DE94 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 3E698 8004DE98 D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 3E69C 8004DE9C 0000058E */  lw         $a1, 0x0($s0)
    /* 3E6A0 8004DEA0 0680033C */  lui        $v1, %hi(D_80067118)
    /* 3E6A4 8004DEA4 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 3E6A8 8004DEA8 2128B100 */  addu       $a1, $a1, $s1
    /* 3E6AC 8004DEAC 40100300 */  sll        $v0, $v1, 1
    /* 3E6B0 8004DEB0 21104300 */  addu       $v0, $v0, $v1
    /* 3E6B4 8004DEB4 0680033C */  lui        $v1, %hi(D_800676F8)
    /* 3E6B8 8004DEB8 F876638C */  lw         $v1, %lo(D_800676F8)($v1)
    /* 3E6BC 8004DEBC C0140200 */  sll        $v0, $v0, 19
    /* 3E6C0 8004DEC0 21186200 */  addu       $v1, $v1, $v0
    /* 3E6C4 8004DEC4 464E000C */  jal        func_80013918
    /* 3E6C8 8004DEC8 21386700 */   addu      $a3, $v1, $a3
    /* 3E6CC 8004DECC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3E6D0 8004DED0 2000B28F */  lw         $s2, 0x20($sp)
    /* 3E6D4 8004DED4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E6D8 8004DED8 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E6DC 8004DEDC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E6E0 8004DEE0 0800E003 */  jr         $ra
    /* 3E6E4 8004DEE4 00000000 */   nop
endlabel func_8004DE1C
