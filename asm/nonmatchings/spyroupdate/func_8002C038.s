.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C038, 0xBC

glabel func_8002C038
    /* 1C838 8002C038 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C83C 8002C03C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C840 8002C040 0780103C */  lui        $s0, %hi(D_8006A084)
    /* 1C844 8002C044 84A01026 */  addiu      $s0, $s0, %lo(D_8006A084)
    /* 1C848 8002C048 21200002 */  addu       $a0, $s0, $zero
    /* 1C84C 8002C04C F4FF0526 */  addiu      $a1, $s0, -0xC
    /* 1C850 8002C050 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1C854 8002C054 6C6F000C */  jal        func_8001BDB0
    /* 1C858 8002C058 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1C85C 8002C05C 0780023C */  lui        $v0, %hi(D_8006A0F6)
    /* 1C860 8002C060 F6A04290 */  lbu        $v0, %lo(D_8006A0F6)($v0)
    /* 1C864 8002C064 00000000 */  nop
    /* 1C868 8002C068 1C004010 */  beqz       $v0, .L8002C0DC
    /* 1C86C 8002C06C 4C001126 */   addiu     $s1, $s0, 0x4C
    /* 1C870 8002C070 21202002 */  addu       $a0, $s1, $zero
    /* 1C874 8002C074 0780013C */  lui        $at, %hi(D_8006A0D8)
    /* 1C878 8002C078 D8A020AC */  sw         $zero, %lo(D_8006A0D8)($at)
    /* 1C87C 8002C07C CF6E000C */  jal        func_8001BB3C
    /* 1C880 8002C080 00100524 */   addiu     $a1, $zero, 0x1000
    /* 1C884 8002C084 0000028E */  lw         $v0, 0x0($s0)
    /* 1C888 8002C088 4C00038E */  lw         $v1, 0x4C($s0)
    /* 1C88C 8002C08C 23100200 */  negu       $v0, $v0
    /* 1C890 8002C090 18004300 */  mult       $v0, $v1
    /* 1C894 8002C094 0780033C */  lui        $v1, %hi(D_8006A088)
    /* 1C898 8002C098 88A0638C */  lw         $v1, %lo(D_8006A088)($v1)
    /* 1C89C 8002C09C 12200000 */  mflo       $a0
    /* 1C8A0 8002C0A0 0780023C */  lui        $v0, %hi(D_8006A0D4)
    /* 1C8A4 8002C0A4 D4A0428C */  lw         $v0, %lo(D_8006A0D4)($v0)
    /* 1C8A8 8002C0A8 00000000 */  nop
    /* 1C8AC 8002C0AC 18006200 */  mult       $v1, $v0
    /* 1C8B0 8002C0B0 12100000 */  mflo       $v0
    /* 1C8B4 8002C0B4 23108200 */  subu       $v0, $a0, $v0
    /* 1C8B8 8002C0B8 03330200 */  sra        $a2, $v0, 12
    /* 1C8BC 8002C0BC 0700C018 */  blez       $a2, .L8002C0DC
    /* 1C8C0 8002C0C0 21202002 */   addu      $a0, $s1, $zero
    /* 1C8C4 8002C0C4 316F000C */  jal        func_8001BCC4
    /* 1C8C8 8002C0C8 00100524 */   addiu     $a1, $zero, 0x1000
    /* 1C8CC 8002C0CC 21200002 */  addu       $a0, $s0, $zero
    /* 1C8D0 8002C0D0 21288000 */  addu       $a1, $a0, $zero
    /* 1C8D4 8002C0D4 736F000C */  jal        func_8001BDCC
    /* 1C8D8 8002C0D8 21302002 */   addu      $a2, $s1, $zero
  .L8002C0DC:
    /* 1C8DC 8002C0DC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1C8E0 8002C0E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C8E4 8002C0E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C8E8 8002C0E8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C8EC 8002C0EC 0800E003 */  jr         $ra
    /* 1C8F0 8002C0F0 00000000 */   nop
endlabel func_8002C038
