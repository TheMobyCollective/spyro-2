.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004DD94, 0x88

glabel func_8004DD94
    /* 3E594 8004DD94 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3E598 8004DD98 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3E59C 8004DD9C F955010C */  jal        func_800557E4
    /* 3E5A0 8004DDA0 21200000 */   addu      $a0, $zero, $zero
    /* 3E5A4 8004DDA4 0700043C */  lui        $a0, (0x7A000 >> 16)
    /* 3E5A8 8004DDA8 EF67010C */  jal        func_80059FBC
    /* 3E5AC 8004DDAC 00A08434 */   ori       $a0, $a0, (0x7A000 & 0xFFFF)
    /* 3E5B0 8004DDB0 0780043C */  lui        $a0, %hi(D_8006B29C)
    /* 3E5B4 8004DDB4 9CB2848C */  lw         $a0, %lo(D_8006B29C)($a0)
    /* 3E5B8 8004DDB8 3F68010C */  jal        func_8005A0FC
    /* 3E5BC 8004DDBC 00600524 */   addiu     $a1, $zero, 0x6000
  .L8004DDC0:
    /* 3E5C0 8004DDC0 5768010C */  jal        func_8005A15C
    /* 3E5C4 8004DDC4 21200000 */   addu      $a0, $zero, $zero
    /* 3E5C8 8004DDC8 FDFF4010 */  beqz       $v0, .L8004DDC0
    /* 3E5CC 8004DDCC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3E5D0 8004DDD0 0780053C */  lui        $a1, %hi(D_8006B29C)
    /* 3E5D4 8004DDD4 9CB2A58C */  lw         $a1, %lo(D_8006B29C)($a1)
    /* 3E5D8 8004DDD8 00020224 */  addiu      $v0, $zero, 0x200
    /* 3E5DC 8004DDDC 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 3E5E0 8004DDE0 80000224 */  addiu      $v0, $zero, 0x80
    /* 3E5E4 8004DDE4 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3E5E8 8004DDE8 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 3E5EC 8004DDEC 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3E5F0 8004DDF0 40000224 */  addiu      $v0, $zero, 0x40
    /* 3E5F4 8004DDF4 7E56010C */  jal        func_800559F8
    /* 3E5F8 8004DDF8 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 3E5FC 8004DDFC F955010C */  jal        func_800557E4
    /* 3E600 8004DE00 21200000 */   addu      $a0, $zero, $zero
    /* 3E604 8004DE04 0780013C */  lui        $at, %hi(D_80069918)
    /* 3E608 8004DE08 189920AC */  sw         $zero, %lo(D_80069918)($at)
    /* 3E60C 8004DE0C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3E610 8004DE10 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3E614 8004DE14 0800E003 */  jr         $ra
    /* 3E618 8004DE18 00000000 */   nop
endlabel func_8004DD94
