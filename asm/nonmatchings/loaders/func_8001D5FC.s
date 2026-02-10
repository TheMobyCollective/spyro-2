.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D5FC, 0x5C

glabel func_8001D5FC
    /* DDFC 8001D5FC 0680013C */  lui        $at, %hi(D_80067020)
    /* DE00 8001D600 207024AC */  sw         $a0, %lo(D_80067020)($at)
    /* DE04 8001D604 00018424 */  addiu      $a0, $a0, 0x100
    /* DE08 8001D608 0000838C */  lw         $v1, 0x0($a0)
    /* DE0C 8001D60C 04008424 */  addiu      $a0, $a0, 0x4
    /* DE10 8001D610 0680013C */  lui        $at, %hi(D_80067068)
    /* DE14 8001D614 687024AC */  sw         $a0, %lo(D_80067068)($at)
    /* DE18 8001D618 0D00A010 */  beqz       $a1, .L8001D650
    /* DE1C 8001D61C 00000000 */   nop
    /* DE20 8001D620 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* DE24 8001D624 0A006004 */  bltz       $v1, .L8001D650
    /* DE28 8001D628 80100300 */   sll       $v0, $v1, 2
    /* DE2C 8001D62C 21104300 */  addu       $v0, $v0, $v1
    /* DE30 8001D630 80100200 */  sll        $v0, $v0, 2
    /* DE34 8001D634 21204400 */  addu       $a0, $v0, $a0
  .L8001D638:
    /* DE38 8001D638 0000828C */  lw         $v0, 0x0($a0)
    /* DE3C 8001D63C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* DE40 8001D640 10104224 */  addiu      $v0, $v0, 0x1010
    /* DE44 8001D644 000082AC */  sw         $v0, 0x0($a0)
    /* DE48 8001D648 FBFF6104 */  bgez       $v1, .L8001D638
    /* DE4C 8001D64C ECFF8424 */   addiu     $a0, $a0, -0x14
  .L8001D650:
    /* DE50 8001D650 0800E003 */  jr         $ra
    /* DE54 8001D654 00000000 */   nop
endlabel func_8001D5FC
