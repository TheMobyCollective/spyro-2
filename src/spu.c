#include "common.h"
#include "spu.h"
#include "camera.h"


// https://decomp.me/scratch/yS6c7
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050648);
int func_80050648(Moby *pMoby, int soundOffset, int flags) {
    int soundId;

    soundId = (D_80068C94[pMoby->mobyClass] + soundOffset)[4];

    if (soundId == 0xFF) {
        return -1;
    }

    if (pMoby->unknown5 == 0) {
        return -1;
    }

    return func_80050720(soundId, pMoby, flags);
}

// https://decomp.me/scratch/FgAvj
//INCLUDE_ASM("asm/nonmatchings/spu", func_800506AC);
int func_800506AC(Moby *pMoby, int soundIndex, int flags) {
    if (D_800670C0[soundIndex] == 0xFF) {
        return -1;
    }

    if (pMoby != 0 && pMoby->unknown5 == 0) {
        return -1;
    }

    // Keep the lookup separate to match the original assembly.
    return func_80050720(D_800670C0[soundIndex], pMoby, flags);
}

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

// https://decomp.me/scratch/RKxaZ
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050BC8);
void func_80050BC8(int voiceIndex, Vector3D *src) {
    if (g_ActiveSounds[voiceIndex].unk28 != 0) {
        if (g_ActiveSounds[voiceIndex].unk0 - 1U < 2U) {
            func_8001BDB0(&g_ActiveSounds[voiceIndex].unk1C, src);
            g_ActiveSounds[voiceIndex].unk2 |= 2;
        }
    }
}

// https://decomp.me/scratch/iU1ZF
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050C64);
void func_80050C64(int voiceIndex, int pitchScale) {
    unsigned char soundId = g_ActiveSounds[voiceIndex].unk1;
    int pitchProduct;

    pitchProduct = pitchScale *
        ((D_80067068[soundId].unkC +
          D_80067068[soundId].unkE) >> 1);

    g_ActiveSounds[voiceIndex].unk2 |= 8;
    g_ActiveSounds[voiceIndex].unk18 = pitchProduct >> 12;
}

// https://decomp.me/scratch/YPkPn
INCLUDE_ASM("asm/nonmatchings/spu", func_80050CF4);

// https://decomp.me/scratch/fPnk7
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050D38);
void func_80050D38(void)
{
    char status[24];
    SpuVoiceAttr fadeAttr;
    SpuVoiceAttr stopAttr;
    int i;
    unsigned long keyOn = 0;
    unsigned long keyOff = 0;

    SpuGetAllKeysStatus(status);

    for (i = 0; i < 24; i++) {
        switch (g_ActiveSounds[i].unk0) {
        case 0:
            if (status[i] == 1 || status[i] == 3) {
                keyOff |= (1UL << i);
                g_ActiveSounds[i].unk0 = 5;
            }
            break;

        case 1:
            func_80050FDC(i);

            if (g_ActiveSounds[i].unk0 == 1) {
                g_ActiveSounds[i].unk0 = 2;
                keyOn |= (1UL << i);
            } else {
                keyOff |= (1UL << i);
            }
            break;

        case 2:
            if (status[i] == 3) {
                keyOff |= (1UL << i);
                g_ActiveSounds[i].unk0 = 5;
            } else {
                func_80050FDC(i);
            }
            break;

        case 3:
            fadeAttr.voice = (1UL << i);
            fadeAttr.mask = 0x13;
            fadeAttr.pitch = 0;

            g_ActiveSounds[i].unk10 -= 0x400;
            if (g_ActiveSounds[i].unk10 < 0) {
                g_ActiveSounds[i].unk10 = 0;
            }

            g_ActiveSounds[i].unk14 -= 0x400;
            if (g_ActiveSounds[i].unk14 < 0) {
                g_ActiveSounds[i].unk14 = 0;
            }

            if (g_ActiveSounds[i].unk10 != 0 ||
                g_ActiveSounds[i].unk14 != 0) {
                fadeAttr.volume.left = g_ActiveSounds[i].unk14;
                fadeAttr.volume.right = g_ActiveSounds[i].unk10;

                SpuSetVoiceAttr(&fadeAttr);
            } else {
                g_ActiveSounds[i].unk0 = 5;
                keyOff |= (1UL << i);
            }
            break;

        case 4:
            stopAttr.voice = (1UL << i);
            stopAttr.mask = 0x10;
            stopAttr.pitch = 0;

            SpuSetVoiceAttr(&stopAttr);

            keyOff |= (1UL << i);
            g_ActiveSounds[i].unk0 = 5;
            break;

        case 5:
            keyOff |= (1UL << i);
            g_ActiveSounds[i].unk0 = 0;
            break;
        }
    }

    if (keyOn != 0) {
        SpuSetKey(SPU_ON, keyOn);
    }

    if (keyOff != 0) {
        SpuSetKey(SPU_OFF, keyOff);
    }

    D_80066FF8 = 0;
}

// https://decomp.me/scratch/TFdJN
//INCLUDE_ASM("asm/nonmatchings/spu", func_80050FDC);
void func_80050FDC(int voiceIndex) {
  SpuVoiceAttr voiceAttr;
  int volume;
  int scaledVolume;

  voiceAttr.voice = 1 << voiceIndex;
  voiceAttr.mask = 0;
  volume = g_ActiveSounds[voiceIndex].unk8;
  voiceAttr.mask = SPU_VOICE_VOLL | SPU_VOICE_VOLR;

  /* must be chained to match prologue. */
  voiceAttr.volume.left = voiceAttr.volume.right = volume;

  if (D_800681C8 == 1) {
    if ((g_ActiveSounds[voiceIndex].unk2 & 0x80) == 0) {
      voiceAttr.volume.left = ((short)volume) >> 2;
      voiceAttr.volume.right = ((short)volume) >> 2;
    }
  }

  if ((g_ActiveSounds[voiceIndex].unk2 & 1) == 0) {
    if (g_ActiveSounds[voiceIndex].unk28 != nullptr) {
      if ((((unsigned char *)g_ActiveSounds[voiceIndex].unk28)[0x48] & 0x80) != 0) {
        if (g_ActiveSounds[voiceIndex].unk3 != 0) {
          func_80050A40(voiceIndex);
          return;
        }

        g_ActiveSounds[voiceIndex].unk2 |= 1;
      } else {
        func_80051350(&g_ActiveSounds[voiceIndex], &voiceAttr);
      }
    }
  }

  if ((g_ActiveSounds[voiceIndex].unk2 & 0x08) != 0) {
    voiceAttr.mask |= 0x10;

    voiceAttr.pitch = g_ActiveSounds[voiceIndex].unk18;

    g_ActiveSounds[voiceIndex].unk2 &= 0xF7;
  }

  if (g_ActiveSounds[voiceIndex].unk28 != nullptr) {
    if ((g_ActiveSounds[voiceIndex].unk2 & 0x21) == 0) {
      if ((((unsigned char *)g_ActiveSounds[voiceIndex].unk28)[0x48] & 0x80) == 0) {
        func_80051704(&g_ActiveSounds[voiceIndex], &voiceAttr);
      }
    }
  }

  if (g_ActiveSounds[voiceIndex].unk0 == 1) {
    voiceAttr.mask |= 0x93;
    voiceAttr.addr = D_80067068[g_ActiveSounds[voiceIndex].unk1].m_Addr;
    voiceAttr.pitch = g_ActiveSounds[voiceIndex].unk18;
  }

  if ((g_ActiveSounds[voiceIndex].unk2 & 0x10) != 0) {
    voiceAttr.mask |= 0x3;

    scaledVolume = (voiceAttr.volume.left * g_ActiveSounds[voiceIndex].unkC) >> 12;

    if (scaledVolume < 0) {
      scaledVolume = 0;
    }

    if (scaledVolume >= 0x4000) {
      scaledVolume = 0x3FFF;
    }

    voiceAttr.volume.left = g_ActiveSounds[voiceIndex].unk14 = scaledVolume;

    scaledVolume = (voiceAttr.volume.right * g_ActiveSounds[voiceIndex].unkC) >> 12;

    if (scaledVolume < 0) {
      scaledVolume = 0;
    }

    if (scaledVolume >= 0x4000) {
      scaledVolume = 0x3FFF;
    }

    voiceAttr.volume.right = g_ActiveSounds[voiceIndex].unk10 = scaledVolume;
  }

  if (voiceAttr.mask != 0) {
    SpuSetVoiceAttr(&voiceAttr);
  }
}

// https://decomp.me/scratch/0F4aE
//INCLUDE_ASM("asm/nonmatchings/spu", func_80051350);
void func_80051350(ActiveSound *sound, SpuVoiceAttr *voiceAttr) {
  Vector3D vec;
  int volume;
  int angle;
  int angleDelta;
  int product;
  int leftVolume;
  int rightVolume;
  int magnitude;

  sound->unk8 =
      func_80051548((unsigned char)sound->unk1, &sound->unk28->position);

  if (sound->unk8 <= 0) {
    func_80050A40(sound - g_ActiveSounds);
    return;
  }

  if (D_80066D50 != 0) {
    func_8001BE00(&vec, &sound->unk28->position, &g_Camera.m_Position);

    angle = func_8001B4B8(vec.x, vec.y, 1);

    angleDelta = ((angle - g_Camera.m_0x48) >> 4) & 0xFF;

    if (angleDelta >= 0x81) {
      angleDelta -= 0x100;
    }
    volume = sound->unk8;
    leftVolume = volume;
    rightVolume = volume;
    if (angleDelta > 0) {
      product = D_80061C58[angleDelta] * volume;
      magnitude = (product >= 0) ? product : -product;
      rightVolume = magnitude >> 12;
    } else if (angleDelta < 0) {
      product = D_80061C58[angleDelta & 0xFF] * volume;
      magnitude = (product >= 0) ? product : -product;
      leftVolume = magnitude >> 12;
    }
  } else {
    volume = sound->unk8;
    leftVolume = volume;
    rightVolume = volume;
  }

  if (D_800681C8 == 1 && (sound->unk2 & 0x80) == 0) {
    leftVolume >>= 2;
    rightVolume >>= 2;
  }

  if (leftVolume < 0) {
    leftVolume = 0;
  }

  if (leftVolume >= 0x3000) {
    leftVolume = 0x2FFF;
  }

  if (rightVolume < 0) {
    rightVolume = 0;
  }

  if (rightVolume >= 0x3000) {
    rightVolume = 0x2FFF;
  }

  voiceAttr->mask |= 0x3;

  sound->unk14 = leftVolume;
  voiceAttr->volume.left = leftVolume;

  sound->unk10 = rightVolume;
  voiceAttr->volume.right = rightVolume;
}

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

// https://decomp.me/scratch/E8DU2
//INCLUDE_ASM("asm/nonmatchings/spu", func_80051704);
void func_80051704(ActiveSound *sound, SpuVoiceAttr *voiceAttr)
{
    Vector3D relativeVector;

    int angle;
    int angleDelta;
    int distance;
    int pitchScale;
    int upperPitchLimit;
    int lowerPitchLimit;

    voiceAttr->mask |= SPU_VOICE_PITCH;

    func_8001BE00(
        &relativeVector,
        &g_Spyro.m_Vector_0x00,
        &sound->unk28->position
    );

    angle = func_8001B4B8(relativeVector.x, relativeVector.y, 0);

    /*
     * Calculate the angle-weighted distance attenuation.
     * Reuse distance to hold the adjusted attenuation value.
     */
    if ((sound->unk2 & 2) != 0) {
        angleDelta =
            (angle - func_8001B4B8(
                sound->unk1C,
                sound->unk20,
                0
            )) & 0xFF;

        distance = func_8001BA20(&sound->unk1C, 0);

        distance =
            (distance * D_80061C58[angleDelta]) >> 12;
    } else {
        distance = 0;
    }

    angle += 0x80;

    angleDelta =
        (angle - func_8001B4B8(
            g_Spyro.m_Vector_0xA0.x,
            g_Spyro.m_Vector_0xA0.y,
            0
        )) & 0xFF;

    /*
     * Reuse pitchScale to hold the second distance temporarily,
     * then convert it into the pitch scaling factor.
     */
    pitchScale = func_8001BA20(&g_Spyro.m_Vector_0xA0, 0);

    pitchScale =
        (((pitchScale >> 7) * D_80061C58[angleDelta]) >> 12)
        + 0x1000;

    voiceAttr->pitch =
        (sound->unk18 * pitchScale) / (0x1000 - distance);

    /* Enforce the lower pitch limit: 3/4 of the base pitch. */
    lowerPitchLimit = ((sound->unk18 * 3) << 6) >> 8;

    if (voiceAttr->pitch < lowerPitchLimit) {
        voiceAttr->pitch = lowerPitchLimit;
    }

    /* Enforce the upper pitch limit: 5/4 of the base pitch. */
    upperPitchLimit = ((sound->unk18 * 5) << 6) >> 8;

    if (upperPitchLimit < voiceAttr->pitch) {
        voiceAttr->pitch = upperPitchLimit;
    }

    sound->unk2 &= 0xFD;
}

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