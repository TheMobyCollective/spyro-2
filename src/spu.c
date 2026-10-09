#include "common.h"
#include "spu.h"

INCLUDE_ASM("asm/nonmatchings/spu", func_80050648);

INCLUDE_ASM("asm/nonmatchings/spu", func_800506AC);

INCLUDE_ASM("asm/nonmatchings/spu", func_80050720);

// https://decomp.me/scratch/BLB0l
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050A40);
void func_80050A40(int arg0) {
    if (g_ActiveSounds[arg0].unk0 == 1) {
        g_ActiveSounds[arg0].unk0 = 5;
    }
    else if (g_ActiveSounds[arg0].unk0 == 2) {
        g_ActiveSounds[arg0].unk0 = 3;
        g_ActiveSounds[arg0].unk4 = 0;
    }
}


// https://decomp.me/scratch/SH5Jm
INCLUDE_ASM("asm/nonmatchings/spu", func_80050AAC);

// https://decomp.me/scratch/rgUtQ
INCLUDE_ASM("asm/nonmatchings/spu", func_80050B20);

// https://decomp.me/scratch/qPkuv
INCLUDE_ASM("asm/nonmatchings/spu", func_80050B74);

INCLUDE_ASM("asm/nonmatchings/spu", func_80050BC8);

INCLUDE_ASM("asm/nonmatchings/spu", func_80050C64);

// https://decomp.me/scratch/YPkPn
INCLUDE_ASM("asm/nonmatchings/spu", func_80050CF4);

INCLUDE_ASM("asm/nonmatchings/spu", func_80050D38);

INCLUDE_ASM("asm/nonmatchings/spu", func_80050FDC);

INCLUDE_ASM("asm/nonmatchings/spu", func_80051350);

INCLUDE_ASM("asm/nonmatchings/spu", func_80051548);

INCLUDE_ASM("asm/nonmatchings/spu", func_80051704);


// SpuInitialize https://decomp.me/scratch/Bn3UN
//INCLUDE_ASM("asm/nonmatchings/spu", func_800518EC);
void func_800518EC(void) {

    SpuCommonAttr commonAttr;
    SpuVoiceAttr voiceAttr;

    SpuInit();

    commonAttr.mask = SPU_COMMON_MVOLL | SPU_COMMON_MVOLR;
    commonAttr.mvol.right = 0x3CCC;
    commonAttr.mvol.left = 0x3CCC;

    SpuSetCommonAttr(&commonAttr);

    voiceAttr.mask =
        SPU_VOICE_VOLL | SPU_VOICE_VOLR | SPU_VOICE_PITCH |
        SPU_VOICE_ADSR_AMODE | SPU_VOICE_ADSR_SMODE |
        SPU_VOICE_ADSR_RMODE | SPU_VOICE_ADSR_AR |
        SPU_VOICE_ADSR_DR | SPU_VOICE_ADSR_SR |
        SPU_VOICE_ADSR_RR | SPU_VOICE_ADSR_SL;

    voiceAttr.voice = SPU_ALLCH;

    voiceAttr.volume.left = 0x2FFF;
    voiceAttr.volume.right = 0x2FFF;
    voiceAttr.pitch = 1024;

    voiceAttr.a_mode = SPU_VOICE_LINEARIncN;
    voiceAttr.s_mode = SPU_VOICE_LINEARIncN;
    voiceAttr.r_mode = SPU_VOICE_LINEARDecN;

    voiceAttr.ar = 0;
    voiceAttr.dr = 0;
    voiceAttr.sr = 0;
    voiceAttr.rr = 0;
    voiceAttr.sl = 15;

    SpuSetVoiceAttr(&voiceAttr);
    SpuSetKey(SPU_OFF, SPU_ALLCH);
    SpuSetTransferMode(SPU_TRANSFER_BY_DMA);
}