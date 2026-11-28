#ifndef __SPU_H
#define __SPU_H

#include "common.h"
#include <libspu.h>

typedef struct {
    unsigned char gemChime;             //0x80067020
    unsigned char gemCollect;           //0x80067021
    unsigned char bonk;                 //0x80067022
    unsigned char flame;                //0x80067023
    unsigned char swallow;              //0x80067024
    unsigned char spit;                 //0x80067025
    unsigned char underwater;           //0x80067026
    unsigned char waterSurface;         //0x80067027
    unsigned char waterDive;            //0x80067028
    unsigned char squish;               //0x80067029
    unsigned char waterPaddle;          //0x8006702A
    unsigned char iceSkate;             //0x8006702B
    unsigned char lavaBurn;             //0x8006702C
    unsigned char lavaDeath;            //0x8006702D
    unsigned char drown;                //0x8006702E
    unsigned char unsquish;             //0x8006702F
    unsigned char spyroSkid;            //0x80067030
    unsigned char spyroLand;            //0x80067031
    unsigned char spyroStop;            //0x80067032
    unsigned char unk13;                //0x80067033
    unsigned char headbash;             //0x80067034
    unsigned char pauseSubPageEntry;    //0x80067035
    unsigned char pauseExit;            //0x80067036
    unsigned char pauseMove;            //0x80067037
    unsigned char unk18;                //0x80067038
    unsigned char changeOption;         //0x80067039
    unsigned char unk1A;                //0x8006703A
    unsigned char supercharge;          //0x8006703B
    unsigned char unk1C;                //0x8006703C
    unsigned char eggHatching;          //0x8006703D
    unsigned char timerRunOut;          //0x8006703E
    unsigned char extraLife;            //0x8006703F
    unsigned char unk20;                //0x80067040
    unsigned char unk21;                //0x80067041
    unsigned char jump;                 //0x80067042
    unsigned char skillPoint;           //0x80067043
    unsigned char guidebookPageTurn;    //0x80067044
    unsigned char levelCompleteFanfare; //0x80067045
} SoundTable;

typedef struct {
    int m_Addr;             //0x80067068
    unsigned short unk4;    //0x8006706C
    unsigned short unk6;    //0x8006706E
    unsigned short unk8;    //0x80067070
    unsigned short unkA;    //0x80067072
    unsigned short unkC;    //0x80067074
    unsigned short unkE;    //0x80067076
    char unk10;             //0x80067078
    char unk11;             //0x80067079
    char unk12;             //0x8006707A
    char unk13;             //0x8006707B
} SoundDefinition; // Formerly SpuData

typedef struct {
    char unk0;              //0x8006FCE4
    char unk1;
    char unk2;
    char unk3;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18; // pitch?
    Vector3D unk1C;
    Moby* unk28;
} ActiveSound;

// sbss
extern SoundTable* g_SoundTablePtr; // 80067020
extern SoundTable* D_80067020; // 80067020
extern SoundDefinition* g_SpuDefinitionsPtr; // 80067068
extern SoundDefinition* D_80067068; // 80067068

extern unsigned char *D_800670C0;

extern int D_80066D48;
extern int D_80066FF8;
extern int D_80066D50;
extern int D_800681C8;
extern unsigned char *D_80068C94[];

// bss
extern ActiveSound g_ActiveSounds[24]; // 8006FCE4

int func_80050720(int soundId, Moby *pMoby, int flags); // PlaySound
void func_80050FDC(int voiceIndex);
void func_80051350(ActiveSound *sound, SpuVoiceAttr *voiceAttr);
void func_80051704(ActiveSound *sound, SpuVoiceAttr *voiceAttr);

#endif
