.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_titlescreen_and_loading_80070018, 0x380

glabel func_titlescreen_and_loading_80070018
    /* 25DB4 80070018 21608000 */  addu       $t4, $a0, $zero
    /* 25DB8 8007001C 21488001 */  addu       $t1, $t4, $zero
    /* 25DBC 80070020 2B102601 */  sltu       $v0, $t1, $a2
    /* 25DC0 80070024 D9004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007038C
    /* 25DC4 80070028 F0FFBD27 */   addiu     $sp, $sp, -0x10
    /* 25DC8 8007002C 0000228D */  lw         $v0, 0x0($t1)
    /* 25DCC 80070030 00000000 */  nop
    /* 25DD0 80070034 54004104 */  bgez       $v0, .Ltitlescreen_and_loading_80070188
    /* 25DD4 80070038 21500000 */   addu      $t2, $zero, $zero
    /* 25DD8 8007003C 21402001 */  addu       $t0, $t1, $zero
    /* 25DDC 80070040 08000724 */  addiu      $a3, $zero, 0x8
    /* 25DE0 80070044 21182001 */  addu       $v1, $t1, $zero
  .Ltitlescreen_and_loading_80070048:
    /* 25DE4 80070048 0800648C */  lw         $a0, 0x8($v1)
  alabel D_titlescreen_and_loading_8007004C
    /* 25DE8 8007004C 00000000 */  nop
  alabel D_titlescreen_and_loading_80070050
    /* 25DEC 80070050 05008010 */  beqz       $a0, .Ltitlescreen_and_loading_80070068
    /* 25DF0 80070054 21100701 */   addu      $v0, $t0, $a3
    /* 25DF4 80070058 2B104600 */  sltu       $v0, $v0, $a2
    /* 25DF8 8007005C 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070068
    /* 25DFC 80070060 21108401 */   addu      $v0, $t4, $a0
    /* 25E00 80070064 080062AC */  sw         $v0, 0x8($v1)
  .Ltitlescreen_and_loading_80070068:
    /* 25E04 80070068 0400E724 */  addiu      $a3, $a3, 0x4
    /* 25E08 8007006C 01004A25 */  addiu      $t2, $t2, 0x1
    /* 25E0C 80070070 02004229 */  slti       $v0, $t2, 0x2
    /* 25E10 80070074 F4FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80070048
  alabel D_titlescreen_and_loading_80070078
    /* 25E14 80070078 04006324 */   addiu     $v1, $v1, 0x4
    /* 25E18 8007007C 10000225 */  addiu      $v0, $t0, 0x10
    /* 25E1C 80070080 2B104600 */  sltu       $v0, $v0, $a2
    /* 25E20 80070084 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007009C
    /* 25E24 80070088 00000000 */   nop
    /* 25E28 8007008C 1000028D */  lw         $v0, 0x10($t0)
    /* 25E2C 80070090 00000000 */  nop
    /* 25E30 80070094 21108201 */  addu       $v0, $t4, $v0
    /* 25E34 80070098 100002AD */  sw         $v0, 0x10($t0)
  .Ltitlescreen_and_loading_8007009C:
    /* 25E38 8007009C 0000028D */  lw         $v0, 0x0($t0)
  alabel D_titlescreen_and_loading_800700A0
    /* 25E3C 800700A0 21500000 */  addu       $t2, $zero, $zero
    /* 25E40 800700A4 23100200 */  negu       $v0, $v0
    /* 25E44 800700A8 33004018 */  blez       $v0, .Ltitlescreen_and_loading_80070178
    /* 25E48 800700AC 000002AD */   sw        $v0, 0x0($t0)
  alabel D_titlescreen_and_loading_800700B0
    /* 25E4C 800700B0 21380001 */  addu       $a3, $t0, $zero
    /* 25E50 800700B4 14000B24 */  addiu      $t3, $zero, 0x14
  .Ltitlescreen_and_loading_800700B8:
    /* 25E54 800700B8 21100B01 */  addu       $v0, $t0, $t3
    /* 25E58 800700BC 2B104600 */  sltu       $v0, $v0, $a2
    /* 25E5C 800700C0 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_800700D8
    /* 25E60 800700C4 00000000 */   nop
    /* 25E64 800700C8 1400E28C */  lw         $v0, 0x14($a3)
    /* 25E68 800700CC 00000000 */  nop
    /* 25E6C 800700D0 21108201 */  addu       $v0, $t4, $v0
    /* 25E70 800700D4 1400E2AC */  sw         $v0, 0x14($a3)
  .Ltitlescreen_and_loading_800700D8:
    /* 25E74 800700D8 1400E48C */  lw         $a0, 0x14($a3)
  alabel D_titlescreen_and_loading_800700DC
    /* 25E78 800700DC 00000000 */  nop
    /* 25E7C 800700E0 08008224 */  addiu      $v0, $a0, 0x8
    /* 25E80 800700E4 2B104600 */  sltu       $v0, $v0, $a2
    /* 25E84 800700E8 0F004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070128
    /* 25E88 800700EC 0C008224 */   addiu     $v0, $a0, 0xC
    /* 25E8C 800700F0 1000028D */  lw         $v0, 0x10($t0)
    /* 25E90 800700F4 08008394 */  lhu        $v1, 0x8($a0)
    /* 25E94 800700F8 23104400 */  subu       $v0, $v0, $a0
    /* 25E98 800700FC 21186200 */  addu       $v1, $v1, $v0
    /* 25E9C 80070100 080083A4 */  sh         $v1, 0x8($a0)
  alabel D_titlescreen_and_loading_80070104
    /* 25EA0 80070104 1400E48C */  lw         $a0, 0x14($a3)
    /* 25EA4 80070108 1000028D */  lw         $v0, 0x10($t0)
    /* 25EA8 8007010C 0A008394 */  lhu        $v1, 0xA($a0)
    /* 25EAC 80070110 23104400 */  subu       $v0, $v0, $a0
    /* 25EB0 80070114 21186200 */  addu       $v1, $v1, $v0
  alabel D_titlescreen_and_loading_80070118
    /* 25EB4 80070118 0A0083A4 */  sh         $v1, 0xA($a0)
    /* 25EB8 8007011C 1400E48C */  lw         $a0, 0x14($a3)
    /* 25EBC 80070120 00000000 */  nop
    /* 25EC0 80070124 0C008224 */  addiu      $v0, $a0, 0xC
  .Ltitlescreen_and_loading_80070128:
    /* 25EC4 80070128 2B104600 */  sltu       $v0, $v0, $a2
    /* 25EC8 8007012C 0C004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070160
    /* 25ECC 80070130 00000000 */   nop
    /* 25ED0 80070134 1000028D */  lw         $v0, 0x10($t0)
    /* 25ED4 80070138 0C008394 */  lhu        $v1, 0xC($a0)
    /* 25ED8 8007013C 23104400 */  subu       $v0, $v0, $a0
    /* 25EDC 80070140 21186200 */  addu       $v1, $v1, $v0
    /* 25EE0 80070144 0C0083A4 */  sh         $v1, 0xC($a0)
  alabel D_titlescreen_and_loading_80070148
    /* 25EE4 80070148 1400E48C */  lw         $a0, 0x14($a3)
    /* 25EE8 8007014C 1000028D */  lw         $v0, 0x10($t0)
    /* 25EEC 80070150 0E008394 */  lhu        $v1, 0xE($a0)
    /* 25EF0 80070154 23104400 */  subu       $v0, $v0, $a0
    /* 25EF4 80070158 21186200 */  addu       $v1, $v1, $v0
    /* 25EF8 8007015C 0E0083A4 */  sh         $v1, 0xE($a0)
  .Ltitlescreen_and_loading_80070160:
    /* 25EFC 80070160 0400E724 */  addiu      $a3, $a3, 0x4
    /* 25F00 80070164 0000028D */  lw         $v0, 0x0($t0)
    /* 25F04 80070168 01004A25 */  addiu      $t2, $t2, 0x1
    /* 25F08 8007016C 2A104201 */  slt        $v0, $t2, $v0
    /* 25F0C 80070170 D1FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_800700B8
    /* 25F10 80070174 04006B25 */   addiu     $t3, $t3, 0x4
  .Ltitlescreen_and_loading_80070178:
    /* 25F14 80070178 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
    /* 25F18 8007017C FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
    /* 25F1C 80070180 DFC00108 */  j          .Ltitlescreen_and_loading_8007037C
    /* 25F20 80070184 24482201 */   and       $t1, $t1, $v0
  .Ltitlescreen_and_loading_80070188:
    /* 25F24 80070188 14000724 */  addiu      $a3, $zero, 0x14
    /* 25F28 8007018C 21182001 */  addu       $v1, $t1, $zero
  .Ltitlescreen_and_loading_80070190:
    /* 25F2C 80070190 1400648C */  lw         $a0, 0x14($v1)
    /* 25F30 80070194 00000000 */  nop
    /* 25F34 80070198 05008010 */  beqz       $a0, .Ltitlescreen_and_loading_800701B0
    /* 25F38 8007019C 21102701 */   addu      $v0, $t1, $a3
    /* 25F3C 800701A0 2B104600 */  sltu       $v0, $v0, $a2
    /* 25F40 800701A4 02004010 */  beqz       $v0, .Ltitlescreen_and_loading_800701B0
    /* 25F44 800701A8 21108401 */   addu      $v0, $t4, $a0
    /* 25F48 800701AC 140062AC */  sw         $v0, 0x14($v1)
  .Ltitlescreen_and_loading_800701B0:
    /* 25F4C 800701B0 0400E724 */  addiu      $a3, $a3, 0x4
    /* 25F50 800701B4 01004A25 */  addiu      $t2, $t2, 0x1
    /* 25F54 800701B8 08004229 */  slti       $v0, $t2, 0x8
    /* 25F58 800701BC F4FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_80070190
    /* 25F5C 800701C0 04006324 */   addiu     $v1, $v1, 0x4
    /* 25F60 800701C4 34002225 */  addiu      $v0, $t1, 0x34
    /* 25F64 800701C8 2B104600 */  sltu       $v0, $v0, $a2
    /* 25F68 800701CC 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_800701E8
    /* 25F6C 800701D0 38002225 */   addiu     $v0, $t1, 0x38
    /* 25F70 800701D4 3400228D */  lw         $v0, 0x34($t1)
    /* 25F74 800701D8 00000000 */  nop
    /* 25F78 800701DC 21108201 */  addu       $v0, $t4, $v0
    /* 25F7C 800701E0 340022AD */  sw         $v0, 0x34($t1)
    /* 25F80 800701E4 38002225 */  addiu      $v0, $t1, 0x38
  .Ltitlescreen_and_loading_800701E8:
    /* 25F84 800701E8 2B104600 */  sltu       $v0, $v0, $a2
    /* 25F88 800701EC 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070204
    /* 25F8C 800701F0 00000000 */   nop
    /* 25F90 800701F4 3800228D */  lw         $v0, 0x38($t1)
    /* 25F94 800701F8 00000000 */  nop
    /* 25F98 800701FC 21108201 */  addu       $v0, $t4, $v0
    /* 25F9C 80070200 380022AD */  sw         $v0, 0x38($t1)
  .Ltitlescreen_and_loading_80070204:
    /* 25FA0 80070204 0000228D */  lw         $v0, 0x0($t1)
    /* 25FA4 80070208 00000000 */  nop
    /* 25FA8 8007020C 5B004018 */  blez       $v0, .Ltitlescreen_and_loading_8007037C
    /* 25FAC 80070210 21500000 */   addu      $t2, $zero, $zero
    /* 25FB0 80070214 21382001 */  addu       $a3, $t1, $zero
    /* 25FB4 80070218 3C000824 */  addiu      $t0, $zero, 0x3C
  .Ltitlescreen_and_loading_8007021C:
    /* 25FB8 8007021C 21102801 */  addu       $v0, $t1, $t0
    /* 25FBC 80070220 2B104600 */  sltu       $v0, $v0, $a2
  alabel D_titlescreen_and_loading_80070224
    /* 25FC0 80070224 05004010 */  beqz       $v0, .Ltitlescreen_and_loading_8007023C
    /* 25FC4 80070228 00000000 */   nop
  alabel D_titlescreen_and_loading_8007022C
    /* 25FC8 8007022C 3C00E28C */  lw         $v0, 0x3C($a3)
  alabel D_titlescreen_and_loading_80070230
    /* 25FCC 80070230 00000000 */  nop
    /* 25FD0 80070234 21108201 */  addu       $v0, $t4, $v0
    /* 25FD4 80070238 3C00E2AC */  sw         $v0, 0x3C($a3)
  .Ltitlescreen_and_loading_8007023C:
    /* 25FD8 8007023C 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 25FDC 80070240 00000000 */  nop
    /* 25FE0 80070244 0C008224 */  addiu      $v0, $a0, 0xC
  alabel D_titlescreen_and_loading_80070248
    /* 25FE4 80070248 2B104600 */  sltu       $v0, $v0, $a2
  alabel D_titlescreen_and_loading_8007024C
    /* 25FE8 8007024C 09004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070274
    /* 25FEC 80070250 10008224 */   addiu     $v0, $a0, 0x10
  alabel D_titlescreen_and_loading_80070254
    /* 25FF0 80070254 3800228D */  lw         $v0, 0x38($t1)
  alabel D_titlescreen_and_loading_80070258
    /* 25FF4 80070258 0C00838C */  lw         $v1, 0xC($a0)
    /* 25FF8 8007025C 00000000 */  nop
    /* 25FFC 80070260 21104300 */  addu       $v0, $v0, $v1
    /* 26000 80070264 0C0082AC */  sw         $v0, 0xC($a0)
    /* 26004 80070268 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 26008 8007026C 00000000 */  nop
    /* 2600C 80070270 10008224 */  addiu      $v0, $a0, 0x10
  .Ltitlescreen_and_loading_80070274:
    /* 26010 80070274 2B104600 */  sltu       $v0, $v0, $a2
    /* 26014 80070278 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070294
    /* 26018 8007027C 00000000 */   nop
    /* 2601C 80070280 3800228D */  lw         $v0, 0x38($t1)
    /* 26020 80070284 1000838C */  lw         $v1, 0x10($a0)
    /* 26024 80070288 00000000 */  nop
    /* 26028 8007028C 21104300 */  addu       $v0, $v0, $v1
    /* 2602C 80070290 100082AC */  sw         $v0, 0x10($a0)
  .Ltitlescreen_and_loading_80070294:
    /* 26030 80070294 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 26034 80070298 00000000 */  nop
    /* 26038 8007029C 14008224 */  addiu      $v0, $a0, 0x14
    /* 2603C 800702A0 2B104600 */  sltu       $v0, $v0, $a2
    /* 26040 800702A4 09004010 */  beqz       $v0, .Ltitlescreen_and_loading_800702CC
  alabel D_titlescreen_and_loading_800702A8
    /* 26044 800702A8 18008224 */   addiu     $v0, $a0, 0x18
    /* 26048 800702AC 3800228D */  lw         $v0, 0x38($t1)
    /* 2604C 800702B0 1400838C */  lw         $v1, 0x14($a0)
    /* 26050 800702B4 00000000 */  nop
    /* 26054 800702B8 21104300 */  addu       $v0, $v0, $v1
    /* 26058 800702BC 140082AC */  sw         $v0, 0x14($a0)
    /* 2605C 800702C0 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 26060 800702C4 00000000 */  nop
    /* 26064 800702C8 18008224 */  addiu      $v0, $a0, 0x18
  .Ltitlescreen_and_loading_800702CC:
    /* 26068 800702CC 2B104600 */  sltu       $v0, $v0, $a2
    /* 2606C 800702D0 09004010 */  beqz       $v0, .Ltitlescreen_and_loading_800702F8
    /* 26070 800702D4 00000000 */   nop
  alabel D_titlescreen_and_loading_800702D8
    /* 26074 800702D8 1800838C */  lw         $v1, 0x18($a0)
    /* 26078 800702DC 00000000 */  nop
    /* 2607C 800702E0 05006010 */  beqz       $v1, .Ltitlescreen_and_loading_800702F8
    /* 26080 800702E4 00000000 */   nop
    /* 26084 800702E8 3800228D */  lw         $v0, 0x38($t1)
    /* 26088 800702EC 00000000 */  nop
    /* 2608C 800702F0 21104300 */  addu       $v0, $v0, $v1
    /* 26090 800702F4 180082AC */  sw         $v0, 0x18($a0)
  .Ltitlescreen_and_loading_800702F8:
    /* 26094 800702F8 3C00E38C */  lw         $v1, 0x3C($a3)
    /* 26098 800702FC 00000000 */  nop
    /* 2609C 80070300 1C006224 */  addiu      $v0, $v1, 0x1C
    /* 260A0 80070304 2B104600 */  sltu       $v0, $v0, $a2
  alabel D_titlescreen_and_loading_80070308
    /* 260A4 80070308 0B004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070338
  alabel D_titlescreen_and_loading_8007030C
    /* 260A8 8007030C 00000000 */   nop
    /* 260AC 80070310 1C00648C */  lw         $a0, 0x1C($v1)
    /* 260B0 80070314 00000000 */  nop
    /* 260B4 80070318 04008010 */  beqz       $a0, .Ltitlescreen_and_loading_8007032C
    /* 260B8 8007031C 00000000 */   nop
    /* 260BC 80070320 3800228D */  lw         $v0, 0x38($t1)
  alabel D_titlescreen_and_loading_80070324
    /* 260C0 80070324 CCC00108 */  j          .Ltitlescreen_and_loading_80070330
    /* 260C4 80070328 21104400 */   addu      $v0, $v0, $a0
  .Ltitlescreen_and_loading_8007032C:
    /* 260C8 8007032C 1400628C */  lw         $v0, 0x14($v1)
  .Ltitlescreen_and_loading_80070330:
    /* 260CC 80070330 00000000 */  nop
    /* 260D0 80070334 1C0062AC */  sw         $v0, 0x1C($v1)
  .Ltitlescreen_and_loading_80070338:
    /* 260D4 80070338 3C00E48C */  lw         $a0, 0x3C($a3)
    /* 260D8 8007033C 00000000 */  nop
    /* 260DC 80070340 20008224 */  addiu      $v0, $a0, 0x20
    /* 260E0 80070344 2B104600 */  sltu       $v0, $v0, $a2
    /* 260E4 80070348 06004010 */  beqz       $v0, .Ltitlescreen_and_loading_80070364
    /* 260E8 8007034C 00000000 */   nop
    /* 260EC 80070350 3800228D */  lw         $v0, 0x38($t1)
    /* 260F0 80070354 2000838C */  lw         $v1, 0x20($a0)
    /* 260F4 80070358 00000000 */  nop
    /* 260F8 8007035C 21104300 */  addu       $v0, $v0, $v1
    /* 260FC 80070360 200082AC */  sw         $v0, 0x20($a0)
  .Ltitlescreen_and_loading_80070364:
    /* 26100 80070364 0400E724 */  addiu      $a3, $a3, 0x4
  alabel D_titlescreen_and_loading_80070368
    /* 26104 80070368 0000228D */  lw         $v0, 0x0($t1)
    /* 26108 8007036C 01004A25 */  addiu      $t2, $t2, 0x1
    /* 2610C 80070370 2A104201 */  slt        $v0, $t2, $v0
    /* 26110 80070374 A9FF4014 */  bnez       $v0, .Ltitlescreen_and_loading_8007021C
    /* 26114 80070378 04000825 */   addiu     $t0, $t0, 0x4
  .Ltitlescreen_and_loading_8007037C:
    /* 26118 8007037C 80100500 */  sll        $v0, $a1, 2
    /* 2611C 80070380 0780013C */  lui        $at, %hi(D_80068C94)
    /* 26120 80070384 21082200 */  addu       $at, $at, $v0
    /* 26124 80070388 948C29AC */  sw         $t1, %lo(D_80068C94)($at)
  .Ltitlescreen_and_loading_8007038C:
    /* 26128 8007038C 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 2612C 80070390 0800E003 */  jr         $ra
    /* 26130 80070394 00000000 */   nop
endlabel func_titlescreen_and_loading_80070018
