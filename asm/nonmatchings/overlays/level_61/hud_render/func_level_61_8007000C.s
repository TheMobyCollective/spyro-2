.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_61_8007000C, 0xA4

glabel func_level_61_8007000C
    /* 3EBADA8 8007000C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3EBADAC 80070010 0680063C */  lui        $a2, %hi(D_80067674)
    /* 3EBADB0 80070014 7476C624 */  addiu      $a2, $a2, %lo(D_80067674)
    /* 3EBADB4 80070018 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3EBADB8 8007001C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 3EBADBC 80070020 00000000 */  nop
    /* 3EBADC0 80070024 1C004010 */  beqz       $v0, .Llevel_61_80070098
    /* 3EBADC4 80070028 4992033C */   lui       $v1, (0x92492493 >> 16)
    /* 3EBADC8 8007002C 0680023C */  lui        $v0, %hi(D_80067008)
    /* 3EBADCC 80070030 0870428C */  lw         $v0, %lo(D_80067008)($v0)
    /* 3EBADD0 80070034 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 3EBADD4 80070038 43200200 */  sra        $a0, $v0, 1
    /* 3EBADD8 8007003C 18008300 */  mult       $a0, $v1
    /* 3EBADDC 80070040 EC000724 */  addiu      $a3, $zero, 0xEC
    /* 3EBADE0 80070044 C3170200 */  sra        $v0, $v0, 31
    /* 3EBADE4 80070048 10400000 */  mfhi       $t0
    /* 3EBADE8 8007004C 21180401 */  addu       $v1, $t0, $a0
    /* 3EBADEC 80070050 C3180300 */  sra        $v1, $v1, 3
    /* 3EBADF0 80070054 23186200 */  subu       $v1, $v1, $v0
    /* 3EBADF4 80070058 C0100300 */  sll        $v0, $v1, 3
    /* 3EBADF8 8007005C 23104300 */  subu       $v0, $v0, $v1
    /* 3EBADFC 80070060 40100200 */  sll        $v0, $v0, 1
    /* 3EBAE00 80070064 23208200 */  subu       $a0, $a0, $v0
    /* 3EBAE04 80070068 0680013C */  lui        $at, %hi(D_800634A8)
    /* 3EBAE08 8007006C 21082400 */  addu       $at, $at, $a0
    /* 3EBAE0C 80070070 A8342590 */  lbu        $a1, %lo(D_800634A8)($at)
    /* 3EBAE10 80070074 04000224 */  addiu      $v0, $zero, 0x4
    /* 3EBAE14 80070078 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3EBAE18 8007007C 0680023C */  lui        $v0, %hi(D_800635F8)
    /* 3EBAE1C 80070080 F8354224 */  addiu      $v0, $v0, %lo(D_800635F8)
    /* 3EBAE20 80070084 2120C000 */  addu       $a0, $a2, $zero
    /* 3EBAE24 80070088 68010624 */  addiu      $a2, $zero, 0x168
    /* 3EBAE28 8007008C 80280500 */  sll        $a1, $a1, 2
    /* 3EBAE2C 80070090 A449010C */  jal        func_80052690
    /* 3EBAE30 80070094 2128A200 */   addu      $a1, $a1, $v0
  .Llevel_61_80070098:
    /* 3EBAE34 80070098 154D010C */  jal        func_80053454
    /* 3EBAE38 8007009C 00000000 */   nop
    /* 3EBAE3C 800700A0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3EBAE40 800700A4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3EBAE44 800700A8 0800E003 */  jr         $ra
    /* 3EBAE48 800700AC 00000000 */   nop
endlabel func_level_61_8007000C
