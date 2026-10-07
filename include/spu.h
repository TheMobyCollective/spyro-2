#ifndef __SPU_H
#define __SPU_H

#include "common.h"

typedef struct {
    unsigned char gemChime;
    unsigned char gemCollect;
    unsigned char bonk;
    unsigned char flame;
    unsigned char swallow;
    unsigned char spit;
    unsigned char underwater;
    unsigned char waterSurface;
    unsigned char waterDive;
    unsigned char squish;
    unsigned char waterPaddle;
    unsigned char iceSkate;
    unsigned char lavaBurn;
    unsigned char lavaDeath;
    unsigned char drown;
    unsigned char unsquish;
    unsigned char spyroSkid;
    unsigned char spyroLand;
    unsigned char spyroStop;
    unsigned char unk13;
    unsigned char headbash;
    unsigned char spyroHurt;
    unsigned char pauseEnter;
    unsigned char pauseExit;
    unsigned char pauseMove;
    unsigned char underwaterHit;
    unsigned char changeVolume;
    unsigned char supercharge;
    unsigned char unk1C;
    unsigned char eggHatching;
    unsigned char timerRunOut;
    unsigned char extraLife;
    unsigned char unk20;
    unsigned char unk21;
    unsigned char jump;
    unsigned char skillPoint;
    unsigned char guidebookPageTurn;
    unsigned char levelCompleteFanfare;
} SoundTable;

typedef struct {
    int m_Addr;
    unsigned short unk4;
    unsigned short unk6;
    unsigned short unk8;
    unsigned short unkA;
    unsigned short unkC;
    unsigned short unkE;
    char unk10;
    char unk11;
    char unk12;
    char unk13;
} SoundDefinition; // Formerly SpuData

typedef struct {
    char unk0;
    char unk1;
    char unk2;
    char unk3;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18; // pitch?
    int unk1C;
    int unk20;
    int unk24;
    Moby* unk28;
} ActiveSound;

// sbss
extern SoundTable* g_SoundTablePtr; // 80067020
extern SoundTable* D_80067020; // 80067020
extern SoundDefinition* g_SpuDefinitionsPtr; // 80067068
extern SoundDefinition* D_80067068; // 80067068

// bss
extern ActiveSound g_ActiveSounds[24]; // 8006FCE4

#endif
