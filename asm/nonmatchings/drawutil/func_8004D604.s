.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004D604, 0x144

glabel func_8004D604
    /* 3DE04 8004D604 0680023C */  lui        $v0, %hi(D_80067100)
    /* 3DE08 8004D608 0071428C */  lw         $v0, %lo(D_80067100)($v0)
    /* 3DE0C 8004D60C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3DE10 8004D610 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3DE14 8004D614 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DE18 8004D618 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DE1C 8004D61C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3DE20 8004D620 07004010 */  beqz       $v0, .L8004D640
    /* 3DE24 8004D624 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3DE28 8004D628 0680033C */  lui        $v1, %hi(D_8006701C)
    /* 3DE2C 8004D62C 1C70638C */  lw         $v1, %lo(D_8006701C)($v1)
    /* 3DE30 8004D630 00000000 */  nop
    /* 3DE34 8004D634 0C006228 */  slti       $v0, $v1, 0xC
    /* 3DE38 8004D638 0B004014 */  bnez       $v0, .L8004D668
    /* 3DE3C 8004D63C 01006224 */   addiu     $v0, $v1, 0x1
  .L8004D640:
    /* 3DE40 8004D640 0680023C */  lui        $v0, %hi(D_80067100)
    /* 3DE44 8004D644 0071428C */  lw         $v0, %lo(D_80067100)($v0)
    /* 3DE48 8004D648 00000000 */  nop
    /* 3DE4C 8004D64C 08004014 */  bnez       $v0, .L8004D670
    /* 3DE50 8004D650 00000000 */   nop
    /* 3DE54 8004D654 0680023C */  lui        $v0, %hi(D_8006701C)
    /* 3DE58 8004D658 1C70428C */  lw         $v0, %lo(D_8006701C)($v0)
    /* 3DE5C 8004D65C 00000000 */  nop
    /* 3DE60 8004D660 31004010 */  beqz       $v0, .L8004D728
    /* 3DE64 8004D664 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L8004D668:
    /* 3DE68 8004D668 0680013C */  lui        $at, %hi(D_8006701C)
    /* 3DE6C 8004D66C 1C7022AC */  sw         $v0, %lo(D_8006701C)($at)
  .L8004D670:
    /* 3DE70 8004D670 0680023C */  lui        $v0, %hi(D_8006701C)
    /* 3DE74 8004D674 1C70428C */  lw         $v0, %lo(D_8006701C)($v0)
    /* 3DE78 8004D678 00000000 */  nop
    /* 3DE7C 8004D67C 2A004010 */  beqz       $v0, .L8004D728
    /* 3DE80 8004D680 21880000 */   addu      $s1, $zero, $zero
    /* 3DE84 8004D684 00021324 */  addiu      $s3, $zero, 0x200
    /* 3DE88 8004D688 E4001224 */  addiu      $s2, $zero, 0xE4
  .L8004D68C:
    /* 3DE8C 8004D68C 0680103C */  lui        $s0, %hi(D_80067030)
    /* 3DE90 8004D690 3070108E */  lw         $s0, %lo(D_80067030)($s0)
    /* 3DE94 8004D694 0005023C */  lui        $v0, (0x5000000 >> 16)
    /* 3DE98 8004D698 000002AE */  sw         $v0, 0x0($s0)
    /* 3DE9C 8004D69C 28000224 */  addiu      $v0, $zero, 0x28
    /* 3DEA0 8004D6A0 070002A2 */  sb         $v0, 0x7($s0)
    /* 3DEA4 8004D6A4 080000A6 */  sh         $zero, 0x8($s0)
    /* 3DEA8 8004D6A8 0C0013A6 */  sh         $s3, 0xC($s0)
    /* 3DEAC 8004D6AC 100000A6 */  sh         $zero, 0x10($s0)
    /* 3DEB0 8004D6B0 08002016 */  bnez       $s1, .L8004D6D4
    /* 3DEB4 8004D6B4 140013A6 */   sh        $s3, 0x14($s0)
    /* 3DEB8 8004D6B8 0680033C */  lui        $v1, %hi(D_8006701C)
    /* 3DEBC 8004D6BC 1C70638C */  lw         $v1, %lo(D_8006701C)($v1)
    /* 3DEC0 8004D6C0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3DEC4 8004D6C4 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 3DEC8 8004D6C8 0C006324 */  addiu      $v1, $v1, 0xC
    /* 3DECC 8004D6CC BA350108 */  j          .L8004D6E8
    /* 3DED0 8004D6D0 120003A6 */   sh        $v1, 0x12($s0)
  .L8004D6D4:
    /* 3DED4 8004D6D4 0680023C */  lui        $v0, %hi(D_8006701C)
    /* 3DED8 8004D6D8 1C70428C */  lw         $v0, %lo(D_8006701C)($v0)
    /* 3DEDC 8004D6DC 0A0012A6 */  sh         $s2, 0xA($s0)
    /* 3DEE0 8004D6E0 23104202 */  subu       $v0, $s2, $v0
    /* 3DEE4 8004D6E4 120002A6 */  sh         $v0, 0x12($s0)
  .L8004D6E8:
    /* 3DEE8 8004D6E8 01003126 */  addiu      $s1, $s1, 0x1
    /* 3DEEC 8004D6EC 0A000296 */  lhu        $v0, 0xA($s0)
    /* 3DEF0 8004D6F0 12000396 */  lhu        $v1, 0x12($s0)
    /* 3DEF4 8004D6F4 21200002 */  addu       $a0, $s0, $zero
    /* 3DEF8 8004D6F8 040000A2 */  sb         $zero, 0x4($s0)
    /* 3DEFC 8004D6FC 050000A2 */  sb         $zero, 0x5($s0)
    /* 3DF00 8004D700 060000A2 */  sb         $zero, 0x6($s0)
    /* 3DF04 8004D704 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 3DF08 8004D708 E46C000C */  jal        func_8001B390
    /* 3DF0C 8004D70C 160003A6 */   sh        $v1, 0x16($s0)
    /* 3DF10 8004D710 18000226 */  addiu      $v0, $s0, 0x18
    /* 3DF14 8004D714 0680013C */  lui        $at, %hi(D_80067030)
    /* 3DF18 8004D718 307022AC */  sw         $v0, %lo(D_80067030)($at)
    /* 3DF1C 8004D71C 0200222A */  slti       $v0, $s1, 0x2
    /* 3DF20 8004D720 DAFF4014 */  bnez       $v0, .L8004D68C
    /* 3DF24 8004D724 00000000 */   nop
  .L8004D728:
    /* 3DF28 8004D728 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3DF2C 8004D72C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DF30 8004D730 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DF34 8004D734 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DF38 8004D738 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DF3C 8004D73C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3DF40 8004D740 0800E003 */  jr         $ra
    /* 3DF44 8004D744 00000000 */   nop
endlabel func_8004D604
