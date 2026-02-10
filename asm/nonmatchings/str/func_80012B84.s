.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80012B84, 0x98

glabel func_80012B84
    /* 3384 80012B84 0780033C */  lui        $v1, %hi(D_800682F4)
    /* 3388 80012B88 F4826324 */  addiu      $v1, $v1, %lo(D_800682F4)
    /* 338C 80012B8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3390 80012B90 000060AC */  sw         $zero, 0x0($v1)
    /* 3394 80012B94 0780013C */  lui        $at, %hi(D_80068304)
    /* 3398 80012B98 048322AC */  sw         $v0, %lo(D_80068304)($at)
    /* 339C 80012B9C FF3F0224 */  addiu      $v0, $zero, 0x3FFF
    /* 33A0 80012BA0 0780013C */  lui        $at, %hi(D_800682F8)
    /* 33A4 80012BA4 F88220AC */  sw         $zero, %lo(D_800682F8)($at)
    /* 33A8 80012BA8 0780013C */  lui        $at, %hi(D_800682FC)
    /* 33AC 80012BAC FC8220AC */  sw         $zero, %lo(D_800682FC)($at)
    /* 33B0 80012BB0 0780013C */  lui        $at, %hi(D_80068300)
    /* 33B4 80012BB4 008320AC */  sw         $zero, %lo(D_80068300)($at)
    /* 33B8 80012BB8 200062AC */  sw         $v0, 0x20($v1)
    /* 33BC 80012BBC FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 33C0 80012BC0 240062AC */  sw         $v0, 0x24($v1)
    /* 33C4 80012BC4 20006224 */  addiu      $v0, $v1, 0x20
    /* 33C8 80012BC8 24006324 */  addiu      $v1, $v1, 0x24
    /* 33CC 80012BCC 0780013C */  lui        $at, %hi(D_8006831C)
    /* 33D0 80012BD0 1C8320AC */  sw         $zero, %lo(D_8006831C)($at)
    /* 33D4 80012BD4 0780013C */  lui        $at, %hi(D_80068320)
    /* 33D8 80012BD8 208320AC */  sw         $zero, %lo(D_80068320)($at)
    /* 33DC 80012BDC 0780013C */  lui        $at, %hi(D_80068334)
    /* 33E0 80012BE0 348320AC */  sw         $zero, %lo(D_80068334)($at)
    /* 33E4 80012BE4 0780013C */  lui        $at, %hi(D_80068348)
    /* 33E8 80012BE8 488320AC */  sw         $zero, %lo(D_80068348)($at)
    /* 33EC 80012BEC 0780013C */  lui        $at, %hi(D_8006835C)
    /* 33F0 80012BF0 5C8320AC */  sw         $zero, %lo(D_8006835C)($at)
    /* 33F4 80012BF4 0780013C */  lui        $at, %hi(D_80068330)
    /* 33F8 80012BF8 308322AC */  sw         $v0, %lo(D_80068330)($at)
    /* 33FC 80012BFC 0780013C */  lui        $at, %hi(D_80068344)
    /* 3400 80012C00 448322AC */  sw         $v0, %lo(D_80068344)($at)
    /* 3404 80012C04 0780013C */  lui        $at, %hi(D_80068358)
    /* 3408 80012C08 588323AC */  sw         $v1, %lo(D_80068358)($at)
    /* 340C 80012C0C 0780013C */  lui        $at, %hi(D_8006836C)
    /* 3410 80012C10 6C8323AC */  sw         $v1, %lo(D_8006836C)($at)
    /* 3414 80012C14 0800E003 */  jr         $ra
    /* 3418 80012C18 00000000 */   nop
endlabel func_80012B84
