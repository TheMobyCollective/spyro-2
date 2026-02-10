.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_11_8006FF48, 0x130

glabel func_level_11_8006FF48
    /* F2B4E4 8006FF48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F2B4E8 8006FF4C 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* F2B4EC 8006FF50 D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* F2B4F0 8006FF54 03000224 */  addiu      $v0, $zero, 0x3
    /* F2B4F4 8006FF58 06006210 */  beq        $v1, $v0, .Llevel_11_8006FF74
    /* F2B4F8 8006FF5C 1000BFAF */   sw        $ra, 0x10($sp)
    /* F2B4FC 8006FF60 17000224 */  addiu      $v0, $zero, 0x17
    /* F2B500 8006FF64 2C006210 */  beq        $v1, $v0, .Llevel_11_80070018
    /* F2B504 8006FF68 00000000 */   nop
    /* F2B508 8006FF6C 1AC00108 */  j          .Llevel_11_80070068
    /* F2B50C 8006FF70 00000000 */   nop
  .Llevel_11_8006FF74:
    /* F2B510 8006FF74 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* F2B514 8006FF78 EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* F2B518 8006FF7C 00000000 */  nop
    /* F2B51C 8006FF80 37008014 */  bnez       $a0, .Llevel_11_80070060
    /* F2B520 8006FF84 00000000 */   nop
    /* F2B524 8006FF88 0780023C */  lui        $v0, %hi(D_800683A0)
    /* F2B528 8006FF8C A083428C */  lw         $v0, %lo(D_800683A0)($v0)
    /* F2B52C 8006FF90 00000000 */  nop
    /* F2B530 8006FF94 10004230 */  andi       $v0, $v0, 0x10
    /* F2B534 8006FF98 06004010 */  beqz       $v0, .Llevel_11_8006FFB4
    /* F2B538 8006FF9C 00000000 */   nop
    /* F2B53C 8006FFA0 0780023C */  lui        $v0, %hi(D_8006A1B1)
    /* F2B540 8006FFA4 B1A14290 */  lbu        $v0, %lo(D_8006A1B1)($v0)
    /* F2B544 8006FFA8 00000000 */  nop
    /* F2B548 8006FFAC 2C004014 */  bnez       $v0, .Llevel_11_80070060
    /* F2B54C 8006FFB0 07000424 */   addiu     $a0, $zero, 0x7
  .Llevel_11_8006FFB4:
    /* F2B550 8006FFB4 0780023C */  lui        $v0, %hi(D_800683A4)
    /* F2B554 8006FFB8 A483428C */  lw         $v0, %lo(D_800683A4)($v0)
    /* F2B558 8006FFBC 00000000 */  nop
    /* F2B55C 8006FFC0 0F004230 */  andi       $v0, $v0, 0xF
    /* F2B560 8006FFC4 0E004010 */  beqz       $v0, .Llevel_11_80070000
    /* F2B564 8006FFC8 00000000 */   nop
    /* F2B568 8006FFCC 0780033C */  lui        $v1, %hi(D_800683A0)
    /* F2B56C 8006FFD0 A083638C */  lw         $v1, %lo(D_800683A0)($v1)
    /* F2B570 8006FFD4 00000000 */  nop
    /* F2B574 8006FFD8 0A006230 */  andi       $v0, $v1, 0xA
    /* F2B578 8006FFDC 08004010 */  beqz       $v0, .Llevel_11_80070000
    /* F2B57C 8006FFE0 05006230 */   andi      $v0, $v1, 0x5
    /* F2B580 8006FFE4 06004010 */  beqz       $v0, .Llevel_11_80070000
    /* F2B584 8006FFE8 00000000 */   nop
    /* F2B588 8006FFEC 0780023C */  lui        $v0, %hi(D_8006A230)
    /* F2B58C 8006FFF0 30A2428C */  lw         $v0, %lo(D_8006A230)($v0)
    /* F2B590 8006FFF4 00000000 */  nop
    /* F2B594 8006FFF8 19004010 */  beqz       $v0, .Llevel_11_80070060
    /* F2B598 8006FFFC 08000424 */   addiu     $a0, $zero, 0x8
  .Llevel_11_80070000:
    /* F2B59C 80070000 0780023C */  lui        $v0, %hi(D_8006A040)
    /* F2B5A0 80070004 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* F2B5A4 80070008 0680033C */  lui        $v1, %hi(D_80067ED0)
    /* F2B5A8 8007000C D07E638C */  lw         $v1, %lo(D_80067ED0)($v1)
    /* F2B5AC 80070010 0FC00108 */  j          .Llevel_11_8007003C
    /* F2B5B0 80070014 80100200 */   sll       $v0, $v0, 2
  .Llevel_11_80070018:
    /* F2B5B4 80070018 0680043C */  lui        $a0, %hi(D_80067FEC)
    /* F2B5B8 8007001C EC7F848C */  lw         $a0, %lo(D_80067FEC)($a0)
    /* F2B5BC 80070020 00000000 */  nop
    /* F2B5C0 80070024 0E008014 */  bnez       $a0, .Llevel_11_80070060
    /* F2B5C4 80070028 00000000 */   nop
    /* F2B5C8 8007002C 0780023C */  lui        $v0, %hi(D_8006A040)
    /* F2B5CC 80070030 40A0428C */  lw         $v0, %lo(D_8006A040)($v0)
    /* F2B5D0 80070034 00000000 */  nop
    /* F2B5D4 80070038 80100200 */  sll        $v0, $v0, 2
  .Llevel_11_8007003C:
    /* F2B5D8 8007003C 0680013C */  lui        $at, %hi(D_80061468)
    /* F2B5DC 80070040 21082200 */  addu       $at, $at, $v0
    /* F2B5E0 80070044 6814248C */  lw         $a0, %lo(D_80061468)($at)
    /* F2B5E4 80070048 00000000 */  nop
    /* F2B5E8 8007004C 06008310 */  beq        $a0, $v1, .Llevel_11_80070068
    /* F2B5EC 80070050 00000000 */   nop
    /* F2B5F0 80070054 02008014 */  bnez       $a0, .Llevel_11_80070060
    /* F2B5F4 80070058 00000000 */   nop
    /* F2B5F8 8007005C 06000424 */  addiu      $a0, $zero, 0x6
  .Llevel_11_80070060:
    /* F2B5FC 80070060 B685000C */  jal        func_800216D8
    /* F2B600 80070064 00000000 */   nop
  .Llevel_11_80070068:
    /* F2B604 80070068 1000BF8F */  lw         $ra, 0x10($sp)
    /* F2B608 8007006C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* F2B60C 80070070 0800E003 */  jr         $ra
    /* F2B610 80070074 00000000 */   nop
endlabel func_level_11_8006FF48
