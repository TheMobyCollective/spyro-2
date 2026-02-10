.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001F0BC, 0x128

glabel func_8001F0BC
    /* F8BC 8001F0BC 0680023C */  lui        $v0, %hi(D_80067FD4)
    /* F8C0 8001F0C0 D47F428C */  lw         $v0, %lo(D_80067FD4)($v0)
    /* F8C4 8001F0C4 00000000 */  nop
    /* F8C8 8001F0C8 05004010 */  beqz       $v0, .L8001F0E0
    /* F8CC 8001F0CC 01000224 */   addiu     $v0, $zero, 0x1
    /* F8D0 8001F0D0 0680013C */  lui        $at, %hi(D_80067FD8)
    /* F8D4 8001F0D4 D87F22AC */  sw         $v0, %lo(D_80067FD8)($at)
    /* F8D8 8001F0D8 777C0008 */  j          .L8001F1DC
    /* F8DC 8001F0DC 00000000 */   nop
  .L8001F0E0:
    /* F8E0 8001F0E0 0680033C */  lui        $v1, %hi(D_80067FD8)
    /* F8E4 8001F0E4 D87F638C */  lw         $v1, %lo(D_80067FD8)($v1)
    /* F8E8 8001F0E8 00000000 */  nop
    /* F8EC 8001F0EC 17006214 */  bne        $v1, $v0, .L8001F14C
    /* F8F0 8001F0F0 02000224 */   addiu     $v0, $zero, 0x2
    /* F8F4 8001F0F4 0680043C */  lui        $a0, %hi(D_80067F00)
    /* F8F8 8001F0F8 007F848C */  lw         $a0, %lo(D_80067F00)($a0)
    /* F8FC 8001F0FC 0680023C */  lui        $v0, %hi(D_80067F14)
    /* F900 8001F100 147F428C */  lw         $v0, %lo(D_80067F14)($v0)
    /* F904 8001F104 00000000 */  nop
    /* F908 8001F108 23108200 */  subu       $v0, $a0, $v0
    /* F90C 8001F10C FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* F910 8001F110 01086228 */  slti       $v0, $v1, 0x801
    /* F914 8001F114 0680013C */  lui        $at, %hi(D_80067FDC)
    /* F918 8001F118 DC7F23AC */  sw         $v1, %lo(D_80067FDC)($at)
    /* F91C 8001F11C 05004014 */  bnez       $v0, .L8001F134
    /* F920 8001F120 02000224 */   addiu     $v0, $zero, 0x2
    /* F924 8001F124 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F928 8001F128 0680013C */  lui        $at, %hi(D_80067FDC)
    /* F92C 8001F12C DC7F22AC */  sw         $v0, %lo(D_80067FDC)($at)
    /* F930 8001F130 02000224 */  addiu      $v0, $zero, 0x2
  .L8001F134:
    /* F934 8001F134 0680013C */  lui        $at, %hi(D_80067F14)
    /* F938 8001F138 147F24AC */  sw         $a0, %lo(D_80067F14)($at)
    /* F93C 8001F13C 0680013C */  lui        $at, %hi(D_80067FD8)
    /* F940 8001F140 D87F22AC */  sw         $v0, %lo(D_80067FD8)($at)
    /* F944 8001F144 777C0008 */  j          .L8001F1DC
    /* F948 8001F148 00000000 */   nop
  .L8001F14C:
    /* F94C 8001F14C 23006214 */  bne        $v1, $v0, .L8001F1DC
    /* F950 8001F150 00000000 */   nop
    /* F954 8001F154 0680023C */  lui        $v0, %hi(D_80067FDC)
    /* F958 8001F158 DC7F428C */  lw         $v0, %lo(D_80067FDC)($v0)
    /* F95C 8001F15C 00000000 */  nop
    /* F960 8001F160 08004018 */  blez       $v0, .L8001F184
    /* F964 8001F164 00000000 */   nop
    /* F968 8001F168 E8FF4224 */  addiu      $v0, $v0, -0x18
    /* F96C 8001F16C 0680013C */  lui        $at, %hi(D_80067FDC)
    /* F970 8001F170 DC7F22AC */  sw         $v0, %lo(D_80067FDC)($at)
    /* F974 8001F174 08004018 */  blez       $v0, .L8001F198
    /* F978 8001F178 00000000 */   nop
    /* F97C 8001F17C 6A7C0008 */  j          .L8001F1A8
    /* F980 8001F180 00000000 */   nop
  .L8001F184:
    /* F984 8001F184 18004224 */  addiu      $v0, $v0, 0x18
    /* F988 8001F188 0680013C */  lui        $at, %hi(D_80067FDC)
    /* F98C 8001F18C DC7F22AC */  sw         $v0, %lo(D_80067FDC)($at)
    /* F990 8001F190 05004004 */  bltz       $v0, .L8001F1A8
    /* F994 8001F194 00000000 */   nop
  .L8001F198:
    /* F998 8001F198 0680013C */  lui        $at, %hi(D_80067FDC)
    /* F99C 8001F19C DC7F20AC */  sw         $zero, %lo(D_80067FDC)($at)
    /* F9A0 8001F1A0 0680013C */  lui        $at, %hi(D_80067FD8)
    /* F9A4 8001F1A4 D87F20AC */  sw         $zero, %lo(D_80067FD8)($at)
  .L8001F1A8:
    /* F9A8 8001F1A8 0680043C */  lui        $a0, %hi(D_80067F14)
    /* F9AC 8001F1AC 147F8424 */  addiu      $a0, $a0, %lo(D_80067F14)
    /* F9B0 8001F1B0 0000828C */  lw         $v0, 0x0($a0)
    /* F9B4 8001F1B4 0680033C */  lui        $v1, %hi(D_80067FDC)
    /* F9B8 8001F1B8 DC7F638C */  lw         $v1, %lo(D_80067FDC)($v1)
    /* F9BC 8001F1BC 00000000 */  nop
    /* F9C0 8001F1C0 21104300 */  addu       $v0, $v0, $v1
    /* F9C4 8001F1C4 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* F9C8 8001F1C8 01086228 */  slti       $v0, $v1, 0x801
    /* F9CC 8001F1CC 03004014 */  bnez       $v0, .L8001F1DC
    /* F9D0 8001F1D0 000083AC */   sw        $v1, 0x0($a0)
    /* F9D4 8001F1D4 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F9D8 8001F1D8 000082AC */  sw         $v0, 0x0($a0)
  .L8001F1DC:
    /* F9DC 8001F1DC 0800E003 */  jr         $ra
    /* F9E0 8001F1E0 00000000 */   nop
endlabel func_8001F0BC
