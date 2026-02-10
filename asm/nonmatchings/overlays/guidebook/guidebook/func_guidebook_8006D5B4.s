.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_guidebook_8006D5B4, 0x134

glabel func_guidebook_8006D5B4
    /* 484B50 8006D5B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 484B54 8006D5B8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 484B58 8006D5BC 21808000 */  addu       $s0, $a0, $zero
    /* 484B5C 8006D5C0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 484B60 8006D5C4 2190A000 */  addu       $s2, $a1, $zero
    /* 484B64 8006D5C8 21200000 */  addu       $a0, $zero, $zero
    /* 484B68 8006D5CC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 484B6C 8006D5D0 F955010C */  jal        func_800557E4
    /* 484B70 8006D5D4 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 484B74 8006D5D8 0780113C */  lui        $s1, %hi(D_8006B29C)
    /* 484B78 8006D5DC 9CB23126 */  addiu      $s1, $s1, %lo(D_8006B29C)
    /* 484B7C 8006D5E0 40381000 */  sll        $a3, $s0, 1
    /* 484B80 8006D5E4 2138F000 */  addu       $a3, $a3, $s0
    /* 484B84 8006D5E8 C0380700 */  sll        $a3, $a3, 3
    /* 484B88 8006D5EC 2338F000 */  subu       $a3, $a3, $s0
    /* 484B8C 8006D5F0 C03A0700 */  sll        $a3, $a3, 11
    /* 484B90 8006D5F4 00B80634 */  ori        $a2, $zero, 0xB800
    /* 484B94 8006D5F8 0780043C */  lui        $a0, %hi(D_800682D8)
    /* 484B98 8006D5FC D882848C */  lw         $a0, %lo(D_800682D8)($a0)
    /* 484B9C 8006D600 0680033C */  lui        $v1, %hi(D_80067118)
    /* 484BA0 8006D604 1871638C */  lw         $v1, %lo(D_80067118)($v1)
    /* 484BA4 8006D608 0000258E */  lw         $a1, 0x0($s1)
    /* 484BA8 8006D60C 40100300 */  sll        $v0, $v1, 1
    /* 484BAC 8006D610 21104300 */  addu       $v0, $v0, $v1
    /* 484BB0 8006D614 80100200 */  sll        $v0, $v0, 2
    /* 484BB4 8006D618 21104300 */  addu       $v0, $v0, $v1
    /* 484BB8 8006D61C 00110200 */  sll        $v0, $v0, 4
    /* 484BBC 8006D620 23104300 */  subu       $v0, $v0, $v1
    /* 484BC0 8006D624 0680033C */  lui        $v1, %hi(D_80067740)
    /* 484BC4 8006D628 4077638C */  lw         $v1, %lo(D_80067740)($v1)
    /* 484BC8 8006D62C 40130200 */  sll        $v0, $v0, 13
    /* 484BCC 8006D630 21104300 */  addu       $v0, $v0, $v1
    /* 484BD0 8006D634 044E000C */  jal        func_80013810
    /* 484BD4 8006D638 21384700 */   addu      $a3, $v0, $a3
    /* 484BD8 8006D63C F955010C */  jal        func_800557E4
    /* 484BDC 8006D640 21200000 */   addu      $a0, $zero, $zero
    /* 484BE0 8006D644 1000A427 */  addiu      $a0, $sp, 0x10
    /* 484BE4 8006D648 00030224 */  addiu      $v0, $zero, 0x300
    /* 484BE8 8006D64C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 484BEC 8006D650 00014226 */  addiu      $v0, $s2, 0x100
    /* 484BF0 8006D654 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 484BF4 8006D658 00010224 */  addiu      $v0, $zero, 0x100
    /* 484BF8 8006D65C 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 484BFC 8006D660 0000258E */  lw         $a1, 0x0($s1)
    /* 484C00 8006D664 01000224 */  addiu      $v0, $zero, 0x1
    /* 484C04 8006D668 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 484C08 8006D66C 7E56010C */  jal        func_800559F8
    /* 484C0C 8006D670 1C00A524 */   addiu     $a1, $a1, 0x1C
    /* 484C10 8006D674 F955010C */  jal        func_800557E4
    /* 484C14 8006D678 21200000 */   addu      $a0, $zero, $zero
    /* 484C18 8006D67C 0400422A */  slti       $v0, $s2, 0x4
    /* 484C1C 8006D680 05004010 */  beqz       $v0, .Lguidebook_8006D698
    /* 484C20 8006D684 C0111200 */   sll       $v0, $s2, 7
    /* 484C24 8006D688 00024224 */  addiu      $v0, $v0, 0x200
    /* 484C28 8006D68C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 484C2C 8006D690 AAB50108 */  j          .Lguidebook_8006D6A8
    /* 484C30 8006D694 1200A0A7 */   sh        $zero, 0x12($sp)
  .Lguidebook_8006D698:
    /* 484C34 8006D698 00014224 */  addiu      $v0, $v0, 0x100
    /* 484C38 8006D69C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 484C3C 8006D6A0 08010224 */  addiu      $v0, $zero, 0x108
    /* 484C40 8006D6A4 1200A2A7 */  sh         $v0, 0x12($sp)
  .Lguidebook_8006D6A8:
    /* 484C44 8006D6A8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 484C48 8006D6AC 0780053C */  lui        $a1, %hi(D_8006B29C)
    /* 484C4C 8006D6B0 9CB2A58C */  lw         $a1, %lo(D_8006B29C)($a1)
    /* 484C50 8006D6B4 70000224 */  addiu      $v0, $zero, 0x70
    /* 484C54 8006D6B8 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 484C58 8006D6BC C8000224 */  addiu      $v0, $zero, 0xC8
    /* 484C5C 8006D6C0 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 484C60 8006D6C4 7E56010C */  jal        func_800559F8
    /* 484C64 8006D6C8 1C02A524 */   addiu     $a1, $a1, 0x21C
    /* 484C68 8006D6CC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 484C6C 8006D6D0 2000B28F */  lw         $s2, 0x20($sp)
    /* 484C70 8006D6D4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 484C74 8006D6D8 1800B08F */  lw         $s0, 0x18($sp)
    /* 484C78 8006D6DC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 484C7C 8006D6E0 0800E003 */  jr         $ra
    /* 484C80 8006D6E4 00000000 */   nop
endlabel func_guidebook_8006D5B4
