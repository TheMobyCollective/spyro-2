.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001ECCC, 0x54

glabel func_8001ECCC
    /* F4CC 8001ECCC 0000A28C */  lw         $v0, 0x0($a1)
    /* F4D0 8001ECD0 00000000 */  nop
    /* F4D4 8001ECD4 21104600 */  addu       $v0, $v0, $a2
    /* F4D8 8001ECD8 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* F4DC 8001ECDC 01086228 */  slti       $v0, $v1, 0x801
    /* F4E0 8001ECE0 03004014 */  bnez       $v0, .L8001ECF0
    /* F4E4 8001ECE4 000083AC */   sw        $v1, 0x0($a0)
    /* F4E8 8001ECE8 00F06224 */  addiu      $v0, $v1, -0x1000
    /* F4EC 8001ECEC 000082AC */  sw         $v0, 0x0($a0)
  .L8001ECF0:
    /* F4F0 8001ECF0 0400A28C */  lw         $v0, 0x4($a1)
    /* F4F4 8001ECF4 00000000 */  nop
    /* F4F8 8001ECF8 040082AC */  sw         $v0, 0x4($a0)
    /* F4FC 8001ECFC 0800A28C */  lw         $v0, 0x8($a1)
    /* F500 8001ED00 00000000 */  nop
    /* F504 8001ED04 080082AC */  sw         $v0, 0x8($a0)
    /* F508 8001ED08 0C00A28C */  lw         $v0, 0xC($a1)
    /* F50C 8001ED0C 00000000 */  nop
    /* F510 8001ED10 0C0082AC */  sw         $v0, 0xC($a0)
    /* F514 8001ED14 1000A28C */  lw         $v0, 0x10($a1)
    /* F518 8001ED18 0800E003 */  jr         $ra
    /* F51C 8001ED1C 100082AC */   sw        $v0, 0x10($a0)
endlabel func_8001ECCC
