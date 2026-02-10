.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EFA8, 0x60

glabel func_8001EFA8
    /* F7A8 8001EFA8 0680023C */  lui        $v0, %hi(D_80067ECA)
    /* F7AC 8001EFAC CA7E4284 */  lh         $v0, %lo(D_80067ECA)($v0)
    /* F7B0 8001EFB0 0400A38C */  lw         $v1, 0x4($a1)
    /* F7B4 8001EFB4 00000000 */  nop
    /* F7B8 8001EFB8 23104300 */  subu       $v0, $v0, $v1
    /* F7BC 8001EFBC FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* F7C0 8001EFC0 01086228 */  slti       $v0, $v1, 0x801
    /* F7C4 8001EFC4 03004014 */  bnez       $v0, .L8001EFD4
    /* F7C8 8001EFC8 0C0083AC */   sw        $v1, 0xC($a0)
    /* F7CC 8001EFCC 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F7D0 8001EFD0 0C0082AC */  sw         $v0, 0xC($a0)
  .L8001EFD4:
    /* F7D4 8001EFD4 0000A28C */  lw         $v0, 0x0($a1)
    /* F7D8 8001EFD8 0680033C */  lui        $v1, %hi(D_80067ECC)
    /* F7DC 8001EFDC CC7E6384 */  lh         $v1, %lo(D_80067ECC)($v1)
    /* F7E0 8001EFE0 00084224 */  addiu      $v0, $v0, 0x800
    /* F7E4 8001EFE4 23186200 */  subu       $v1, $v1, $v0
    /* F7E8 8001EFE8 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* F7EC 8001EFEC 01086228 */  slti       $v0, $v1, 0x801
    /* F7F0 8001EFF0 03004014 */  bnez       $v0, .L8001F000
    /* F7F4 8001EFF4 100083AC */   sw        $v1, 0x10($a0)
    /* F7F8 8001EFF8 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F7FC 8001EFFC 100082AC */  sw         $v0, 0x10($a0)
  .L8001F000:
    /* F800 8001F000 0800E003 */  jr         $ra
    /* F804 8001F004 00000000 */   nop
endlabel func_8001EFA8
