#include "common.h"
#include "spu.h"
#include "camera.h"

extern Vector3D g_Spyro;

INCLUDE_ASM("asm/nonmatchings/spu", func_80050648);

INCLUDE_ASM("asm/nonmatchings/spu", func_800506AC);

// PlaySound https://decomp.me/scratch/TcMsr
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050720);
int func_80050720(int soundId, Moby *pMoby, int flags) {
  int slot;
  int lowestPriority;
  int replacementSlot;

  if (soundId == 0xFF) {
    return -1;
  }

  if (D_80067068[soundId].unk10 != 0 && (flags & 0x4) == 0) {
    return -1;
  }

  if (D_80066D48 == 0) {
    return -1;
  }

  if (D_80066FF8 != 0 && (flags & 0x40) == 0) {
    return -1;
  }

  if ((flags & 0x1) == 0 && pMoby != 0) {
    if (func_80051548(soundId, &pMoby->position) == 0) {
      return -1;
    }
  }

  for (slot = 0; slot < 24; slot++) {
    if (g_ActiveSounds[slot].unk0 == 0) {
      break;
    }
  }

  if (slot == 24) {
    lowestPriority = 0xFE;
    replacementSlot = -1;

    for (slot = 0; slot < 24; slot++) {
      if (g_ActiveSounds[slot].unk4 < lowestPriority) {
        lowestPriority = g_ActiveSounds[slot].unk4;
        replacementSlot = slot;
      }
    }

    if (replacementSlot < 0) {
      return -1;
    }

    if (lowestPriority >= D_80067068[soundId].unk11) {
      return -1;
    }

    slot = replacementSlot;
  }
  g_ActiveSounds[slot].unk0 = 1;
  g_ActiveSounds[slot].unk1 = soundId;
  g_ActiveSounds[slot].unk2 = flags;
  g_ActiveSounds[slot].unk8 = D_80067068[soundId].unk6 * D_80066D48 / 10;
  g_ActiveSounds[slot].unkC = 0x1000;
  g_ActiveSounds[slot].unk10 = D_80067068[soundId].unk6 * D_80066D48 / 10;
  g_ActiveSounds[slot].unk14 = D_80067068[soundId].unk6 * D_80066D48 / 10;
  g_ActiveSounds[slot].unk28 = pMoby;
  g_ActiveSounds[slot].unk3 = D_80067068[soundId].unk10;
  g_ActiveSounds[slot].unk4 = D_80067068[soundId].unk11;
    
  if (D_80067068[soundId].unkC == D_80067068[soundId].unkE) {
    g_ActiveSounds[slot].unk18 = D_80067068[soundId].unkE;
  } else {
    g_ActiveSounds[slot].unk18 =
        func_8003891C(D_80067068[soundId].unkC, D_80067068[soundId].unkE);
  }

  return slot;
}

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

// https://decomp.me/scratch/xYFJn
//INCLUDE_ASM("asm/nonmatchings/spu", func_80051548);
int func_80051548(int soundId, Vector3D *position) {
  Vector3D vec;
  int distance;
  int volume;

  volume = 0;

  // Camera modes 9 and 10 use the camera's position.
  if (((unsigned int)g_Camera.m_CameraMode - 9u) < 2u) {
    func_8001BE00(&vec, position, &g_Camera.m_Position);
  } else {
    func_8001BE00(&vec, position, &g_Spyro);
  }

  // Calculate the shifted distance between the two positions.
  distance = func_8001BA20(&vec, 1) >> 2;

  if (distance >= 0x2000) {
    // High-distance attenuation, with an explicit zero-volume path.
    if (D_80067068[soundId].unk4 != 0 && distance < 0x2400) {
      volume = ((0x2400 - distance) * D_80067068[soundId].unk4) >> 10;
    } else {
      volume = 0;
    }
  } else {
    // SoundDefinition entries are 0x14 bytes:
    // soundId * 5 words, then scale the word index by four.
    int definitionIndex = soundId * 5;
    unsigned int tableBase = (unsigned int)D_80067068;

    SoundDefinition *definition =
        (SoundDefinition *)((definitionIndex << 2) + tableBase);

    if (definition->unkA != definition->unk8) {
      if (distance <= definition->unk8) {
        volume = definition->unk6;
      } else if (distance >= definition->unkA) {
        volume = definition->unk4;
      } else {
        volume = ((definition->unkA - distance) * definition->unk6) /
                 (definition->unkA - definition->unk8);

        if (volume < definition->unk4) {
          volume = definition->unk4;
        }

        if (definition->unk6 < volume) {
          volume = definition->unk6;
        }
      }
    }
  }

  return volume * D_80066D48 / 10;
}

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