.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800375C8, 0x40

glabel func_800375C8
    /* 27DC8 800375C8 10000224 */  addiu      $v0, $zero, 0x10
    /* 27DCC 800375CC FF000524 */  addiu      $a1, $zero, 0xFF
    /* 27DD0 800375D0 4C0082A0 */  sb         $v0, 0x4C($a0)
    /* 27DD4 800375D4 04000224 */  addiu      $v0, $zero, 0x4
    /* 27DD8 800375D8 01000324 */  addiu      $v1, $zero, 0x1
    /* 27DDC 800375DC 470082A0 */  sb         $v0, 0x47($a0)
    /* 27DE0 800375E0 30000224 */  addiu      $v0, $zero, 0x30
    /* 27DE4 800375E4 400082A0 */  sb         $v0, 0x40($a0)
    /* 27DE8 800375E8 40000224 */  addiu      $v0, $zero, 0x40
    /* 27DEC 800375EC 4A0085A0 */  sb         $a1, 0x4A($a0)
    /* 27DF0 800375F0 3F0083A0 */  sb         $v1, 0x3F($a0)
    /* 27DF4 800375F4 410083A0 */  sb         $v1, 0x41($a0)
    /* 27DF8 800375F8 430085A0 */  sb         $a1, 0x43($a0)
    /* 27DFC 800375FC 4E0082A0 */  sb         $v0, 0x4E($a0)
    /* 27E00 80037600 0800E003 */  jr         $ra
    /* 27E04 80037604 520085A0 */   sb        $a1, 0x52($a0)
endlabel func_800375C8
