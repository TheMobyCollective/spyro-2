.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80012AC0, 0x5C

glabel func_80012AC0
    /* 32C0 80012AC0 7F7F023C */  lui        $v0, (0x7F7F7F7F >> 16)
    /* 32C4 80012AC4 7F7F4234 */  ori        $v0, $v0, (0x7F7F7F7F & 0xFFFF)
    /* 32C8 80012AC8 21180000 */  addu       $v1, $zero, $zero
    /* 32CC 80012ACC 7F7F053C */  lui        $a1, (0x7F7F7F7F >> 16)
    /* 32D0 80012AD0 7F7FA534 */  ori        $a1, $a1, (0x7F7F7F7F & 0xFFFF)
    /* 32D4 80012AD4 3C0082AC */  sw         $v0, 0x3C($a0)
    /* 32D8 80012AD8 01000224 */  addiu      $v0, $zero, 0x1
    /* 32DC 80012ADC 300080AC */  sw         $zero, 0x30($a0)
    /* 32E0 80012AE0 340080AC */  sw         $zero, 0x34($a0)
    /* 32E4 80012AE4 380080AC */  sw         $zero, 0x38($a0)
    /* 32E8 80012AE8 2C0082A0 */  sb         $v0, 0x2C($a0)
    /* 32EC 80012AEC 2D0082A0 */  sb         $v0, 0x2D($a0)
    /* 32F0 80012AF0 2E0080A0 */  sb         $zero, 0x2E($a0)
  .L80012AF4:
    /* 32F4 80012AF4 400080AC */  sw         $zero, 0x40($a0)
    /* 32F8 80012AF8 440080AC */  sw         $zero, 0x44($a0)
    /* 32FC 80012AFC 480080AC */  sw         $zero, 0x48($a0)
    /* 3300 80012B00 4C0085AC */  sw         $a1, 0x4C($a0)
    /* 3304 80012B04 01006324 */  addiu      $v1, $v1, 0x1
    /* 3308 80012B08 04006228 */  slti       $v0, $v1, 0x4
    /* 330C 80012B0C F9FF4014 */  bnez       $v0, .L80012AF4
    /* 3310 80012B10 10008424 */   addiu     $a0, $a0, 0x10
    /* 3314 80012B14 0800E003 */  jr         $ra
    /* 3318 80012B18 00000000 */   nop
endlabel func_80012AC0
