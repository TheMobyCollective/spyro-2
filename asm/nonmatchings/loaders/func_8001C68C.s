.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C68C, 0xA8

glabel func_8001C68C
    /* CE8C 8001C68C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE90 8001C690 21188000 */  addu       $v1, $a0, $zero
    /* CE94 8001C694 0780043C */  lui        $a0, %hi(D_80068078)
    /* CE98 8001C698 78808424 */  addiu      $a0, $a0, %lo(D_80068078)
    /* CE9C 8001C69C 21280000 */  addu       $a1, $zero, $zero
    /* CEA0 8001C6A0 40010624 */  addiu      $a2, $zero, 0x140
    /* CEA4 8001C6A4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* CEA8 8001C6A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* CEAC 8001C6AC 0680013C */  lui        $at, %hi(D_80066F18)
    /* CEB0 8001C6B0 186F23AC */  sw         $v1, %lo(D_80066F18)($at)
    /* CEB4 8001C6B4 0680013C */  lui        $at, %hi(D_80066FD8)
    /* CEB8 8001C6B8 D86F23AC */  sw         $v1, %lo(D_80066FD8)($at)
    /* CEBC 8001C6BC 010062A0 */  sb         $v0, 0x1($v1)
    /* CEC0 8001C6C0 0680033C */  lui        $v1, %hi(D_80066F18)
    /* CEC4 8001C6C4 186F638C */  lw         $v1, %lo(D_80066F18)($v1)
    /* CEC8 8001C6C8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* CECC 8001C6CC F26C000C */  jal        func_8001B3C8
    /* CED0 8001C6D0 002062AC */   sw        $v0, 0x2000($v1)
    /* CED4 8001C6D4 0680043C */  lui        $a0, %hi(D_80067D00)
    /* CED8 8001C6D8 007D8424 */  addiu      $a0, $a0, %lo(D_80067D00)
    /* CEDC 8001C6DC 21280000 */  addu       $a1, $zero, $zero
    /* CEE0 8001C6E0 F26C000C */  jal        func_8001B3C8
    /* CEE4 8001C6E4 00010624 */   addiu     $a2, $zero, 0x100
    /* CEE8 8001C6E8 0780043C */  lui        $a0, %hi(D_8006B400)
    /* CEEC 8001C6EC 00B48424 */  addiu      $a0, $a0, %lo(D_8006B400)
    /* CEF0 8001C6F0 21280000 */  addu       $a1, $zero, $zero
    /* CEF4 8001C6F4 F26C000C */  jal        func_8001B3C8
    /* CEF8 8001C6F8 80010624 */   addiu     $a2, $zero, 0x180
    /* CEFC 8001C6FC 0780043C */  lui        $a0, %hi(D_8006A2B4)
    /* CF00 8001C700 B4A28424 */  addiu      $a0, $a0, %lo(D_8006A2B4)
    /* CF04 8001C704 21280000 */  addu       $a1, $zero, $zero
    /* CF08 8001C708 F26C000C */  jal        func_8001B3C8
    /* CF0C 8001C70C 00060624 */   addiu     $a2, $zero, 0x600
    /* CF10 8001C710 0780043C */  lui        $a0, %hi(D_80069F30)
    /* CF14 8001C714 309F8424 */  addiu      $a0, $a0, %lo(D_80069F30)
    /* CF18 8001C718 21280000 */  addu       $a1, $zero, $zero
    /* CF1C 8001C71C F26C000C */  jal        func_8001B3C8
    /* CF20 8001C720 A0000624 */   addiu     $a2, $zero, 0xA0
    /* CF24 8001C724 1000BF8F */  lw         $ra, 0x10($sp)
    /* CF28 8001C728 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CF2C 8001C72C 0800E003 */  jr         $ra
    /* CF30 8001C730 00000000 */   nop
endlabel func_8001C68C
