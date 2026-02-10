.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DF84, 0x1C8

glabel func_8004DF84
    /* 3E784 8004DF84 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3E788 8004DF88 21108000 */  addu       $v0, $a0, $zero
    /* 3E78C 8004DF8C 21200000 */  addu       $a0, $zero, $zero
    /* 3E790 8004DF90 3800B6AF */  sw         $s6, 0x38($sp)
    /* 3E794 8004DF94 21B00000 */  addu       $s6, $zero, $zero
    /* 3E798 8004DF98 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3E79C 8004DF9C 21B80000 */  addu       $s7, $zero, $zero
    /* 3E7A0 8004DFA0 40180200 */  sll        $v1, $v0, 1
    /* 3E7A4 8004DFA4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3E7A8 8004DFA8 0680103C */  lui        $s0, %hi(D_800633BA)
    /* 3E7AC 8004DFAC BA331026 */  addiu      $s0, $s0, %lo(D_800633BA)
    /* 3E7B0 8004DFB0 21807000 */  addu       $s0, $v1, $s0
    /* 3E7B4 8004DFB4 4400BFAF */  sw         $ra, 0x44($sp)
    /* 3E7B8 8004DFB8 4000BEAF */  sw         $fp, 0x40($sp)
    /* 3E7BC 8004DFBC 3400B5AF */  sw         $s5, 0x34($sp)
    /* 3E7C0 8004DFC0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3E7C4 8004DFC4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3E7C8 8004DFC8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3E7CC 8004DFCC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3E7D0 8004DFD0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3E7D4 8004DFD4 00000586 */  lh         $a1, 0x0($s0)
    /* 3E7D8 8004DFD8 0680013C */  lui        $at, %hi(D_800633E0)
    /* 3E7DC 8004DFDC 21082200 */  addu       $at, $at, $v0
    /* 3E7E0 8004DFE0 E0333490 */  lbu        $s4, %lo(D_800633E0)($at)
    /* 3E7E4 8004DFE4 0680013C */  lui        $at, %hi(D_800633DF)
    /* 3E7E8 8004DFE8 21082200 */  addu       $at, $at, $v0
    /* 3E7EC 8004DFEC DF332690 */  lbu        $a2, %lo(D_800633DF)($at)
    /* 3E7F0 8004DFF0 0680013C */  lui        $at, %hi(D_800633BC)
    /* 3E7F4 8004DFF4 21082300 */  addu       $at, $at, $v1
    /* 3E7F8 8004DFF8 BC333584 */  lh         $s5, %lo(D_800633BC)($at)
    /* 3E7FC 8004DFFC 4A37010C */  jal        func_8004DD28
    /* 3E800 8004E000 21388002 */   addu      $a3, $s4, $zero
    /* 3E804 8004E004 2120A002 */  addu       $a0, $s5, $zero
    /* 3E808 8004E008 21308002 */  addu       $a2, $s4, $zero
    /* 3E80C 8004E00C 00000586 */  lh         $a1, 0x0($s0)
    /* 3E810 8004E010 4A37010C */  jal        func_8004DD28
    /* 3E814 8004E014 E4000724 */   addiu     $a3, $zero, 0xE4
    /* 3E818 8004E018 E4000224 */  addiu      $v0, $zero, 0xE4
    /* 3E81C 8004E01C 23F05400 */  subu       $fp, $v0, $s4
    /* 3E820 8004E020 2198C003 */  addu       $s3, $fp, $zero
  .L8004E024:
    /* 3E824 8004E024 1800A88F */  lw         $t0, 0x18($sp)
    /* 3E828 8004E028 21800000 */  addu       $s0, $zero, $zero
    /* 3E82C 8004E02C 83100800 */  sra        $v0, $t0, 2
    /* 3E830 8004E030 21908202 */  addu       $s2, $s4, $v0
  .L8004E034:
    /* 3E834 8004E034 802C033C */  lui        $v1, (0x2C808080 >> 16)
    /* 3E838 8004E038 80806334 */  ori        $v1, $v1, (0x2C808080 & 0xFFFF)
    /* 3E83C 8004E03C 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* 3E840 8004E040 83281700 */  sra        $a1, $s7, 2
    /* 3E844 8004E044 0C00A524 */  addiu      $a1, $a1, 0xC
    /* 3E848 8004E048 0680043C */  lui        $a0, %hi(D_80067030)
    /* 3E84C 8004E04C 3070848C */  lw         $a0, %lo(D_80067030)($a0)
    /* 3E850 8004E050 1800B002 */  mult       $s5, $s0
    /* 3E854 8004E054 000082AC */  sw         $v0, 0x0($a0)
    /* 3E858 8004E058 83101300 */  sra        $v0, $s3, 2
    /* 3E85C 8004E05C 21108202 */  addu       $v0, $s4, $v0
    /* 3E860 8004E060 1A0082A4 */  sh         $v0, 0x1A($a0)
    /* 3E864 8004E064 220082A4 */  sh         $v0, 0x22($a0)
    /* 3E868 8004E068 40101000 */  sll        $v0, $s0, 1
    /* 3E86C 8004E06C 00014224 */  addiu      $v0, $v0, 0x100
    /* 3E870 8004E070 040083AC */  sw         $v1, 0x4($a0)
    /* 3E874 8004E074 0D0085A0 */  sb         $a1, 0xD($a0)
    /* 3E878 8004E078 0D008390 */  lbu        $v1, 0xD($a0)
    /* 3E87C 8004E07C 01001026 */  addiu      $s0, $s0, 0x1
    /* 3E880 8004E080 160082A4 */  sh         $v0, 0x16($a0)
    /* 3E884 8004E084 80000224 */  addiu      $v0, $zero, 0x80
    /* 3E888 8004E088 140082A0 */  sb         $v0, 0x14($a0)
    /* 3E88C 8004E08C 240082A0 */  sb         $v0, 0x24($a0)
    /* 3E890 8004E090 12300000 */  mflo       $a2
    /* 3E894 8004E094 36006324 */  addiu      $v1, $v1, 0x36
    /* 3E898 8004E098 1D0083A0 */  sb         $v1, 0x1D($a0)
    /* 3E89C 8004E09C 1800B002 */  mult       $s5, $s0
    /* 3E8A0 8004E0A0 250083A0 */  sb         $v1, 0x25($a0)
    /* 3E8A4 8004E0A4 83100600 */  sra        $v0, $a2, 2
    /* 3E8A8 8004E0A8 080082A4 */  sh         $v0, 0x8($a0)
    /* 3E8AC 8004E0AC 08008394 */  lhu        $v1, 0x8($a0)
    /* 3E8B0 8004E0B0 0A0092A4 */  sh         $s2, 0xA($a0)
    /* 3E8B4 8004E0B4 120092A4 */  sh         $s2, 0x12($a0)
    /* 3E8B8 8004E0B8 0C0080A0 */  sb         $zero, 0xC($a0)
    /* 3E8BC 8004E0BC 1C0080A0 */  sb         $zero, 0x1C($a0)
    /* 3E8C0 8004E0C0 150085A0 */  sb         $a1, 0x15($a0)
    /* 3E8C4 8004E0C4 180083A4 */  sh         $v1, 0x18($a0)
    /* 3E8C8 8004E0C8 12480000 */  mflo       $t1
    /* 3E8CC 8004E0CC 83100900 */  sra        $v0, $t1, 2
    /* 3E8D0 8004E0D0 100082A4 */  sh         $v0, 0x10($a0)
    /* 3E8D4 8004E0D4 10008594 */  lhu        $a1, 0x10($a0)
    /* 3E8D8 8004E0D8 28008224 */  addiu      $v0, $a0, 0x28
    /* 3E8DC 8004E0DC 0680013C */  lui        $at, %hi(D_80067030)
    /* 3E8E0 8004E0E0 307022AC */  sw         $v0, %lo(D_80067030)($at)
    /* 3E8E4 8004E0E4 E46C000C */  jal        func_8001B390
    /* 3E8E8 8004E0E8 200085A4 */   sh        $a1, 0x20($a0)
    /* 3E8EC 8004E0EC 0400022A */  slti       $v0, $s0, 0x4
    /* 3E8F0 8004E0F0 D0FF4014 */  bnez       $v0, .L8004E034
    /* 3E8F4 8004E0F4 0100D126 */   addiu     $s1, $s6, 0x1
    /* 3E8F8 8004E0F8 D800F726 */  addiu      $s7, $s7, 0xD8
    /* 3E8FC 8004E0FC 21987E02 */  addu       $s3, $s3, $fp
    /* 3E900 8004E100 21B02002 */  addu       $s6, $s1, $zero
    /* 3E904 8004E104 1800A88F */  lw         $t0, 0x18($sp)
    /* 3E908 8004E108 0400C22A */  slti       $v0, $s6, 0x4
    /* 3E90C 8004E10C 21401E01 */  addu       $t0, $t0, $fp
    /* 3E910 8004E110 C4FF4014 */  bnez       $v0, .L8004E024
    /* 3E914 8004E114 1800A8AF */   sw        $t0, 0x18($sp)
    /* 3E918 8004E118 4400BF8F */  lw         $ra, 0x44($sp)
    /* 3E91C 8004E11C 4000BE8F */  lw         $fp, 0x40($sp)
    /* 3E920 8004E120 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 3E924 8004E124 3800B68F */  lw         $s6, 0x38($sp)
    /* 3E928 8004E128 3400B58F */  lw         $s5, 0x34($sp)
    /* 3E92C 8004E12C 3000B48F */  lw         $s4, 0x30($sp)
    /* 3E930 8004E130 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3E934 8004E134 2800B28F */  lw         $s2, 0x28($sp)
    /* 3E938 8004E138 2400B18F */  lw         $s1, 0x24($sp)
    /* 3E93C 8004E13C 2000B08F */  lw         $s0, 0x20($sp)
    /* 3E940 8004E140 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3E944 8004E144 0800E003 */  jr         $ra
    /* 3E948 8004E148 00000000 */   nop
endlabel func_8004DF84
