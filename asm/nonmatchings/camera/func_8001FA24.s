.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001FA24, 0x34

glabel func_8001FA24
    /* 10224 8001FA24 0780023C */  lui        $v0, %hi(D_800698BA)
    /* 10228 8001FA28 BA984290 */  lbu        $v0, %lo(D_800698BA)($v0)
    /* 1022C 8001FA2C 00000000 */  nop
    /* 10230 8001FA30 05004010 */  beqz       $v0, .L8001FA48
    /* 10234 8001FA34 07000224 */   addiu     $v0, $zero, 0x7
    /* 10238 8001FA38 0680013C */  lui        $at, %hi(D_80067EDC)
    /* 1023C 8001FA3C DC7E20AC */  sw         $zero, %lo(D_80067EDC)($at)
    /* 10240 8001FA40 947E0008 */  j          .L8001FA50
    /* 10244 8001FA44 00000000 */   nop
  .L8001FA48:
    /* 10248 8001FA48 0680013C */  lui        $at, %hi(D_80067EDC)
    /* 1024C 8001FA4C DC7E22AC */  sw         $v0, %lo(D_80067EDC)($at)
  .L8001FA50:
    /* 10250 8001FA50 0800E003 */  jr         $ra
    /* 10254 8001FA54 00000000 */   nop
endlabel func_8001FA24
