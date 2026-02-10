.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_level_22_80070798, 0x30

glabel func_level_22_80070798
    /* 178E534 80070798 0780023C */  lui        $v0, %hi(D_80069FF8)
    /* 178E538 8007079C F89F428C */  lw         $v0, %lo(D_80069FF8)($v0)
    /* 178E53C 800707A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 178E540 800707A4 E4704228 */  slti       $v0, $v0, 0x70E4
    /* 178E544 800707A8 03004010 */  beqz       $v0, .Llevel_22_800707B8
    /* 178E548 800707AC 1000BFAF */   sw        $ra, 0x10($sp)
    /* 178E54C 800707B0 154D010C */  jal        func_80053454
    /* 178E550 800707B4 00000000 */   nop
  .Llevel_22_800707B8:
    /* 178E554 800707B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 178E558 800707BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 178E55C 800707C0 0800E003 */  jr         $ra
    /* 178E560 800707C4 00000000 */   nop
endlabel func_level_22_80070798
