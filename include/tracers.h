#ifndef __TRACERS_H
#define __TRACERS_H

#include "common.h"

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
} Unknown; // could be anything, needs investigation

// .bss 8006c7f8
extern Unknown D_80069F30[8]; // fMemset(&DAT_80070260,0,0xa0); something basic

typedef struct {
    Vector3D16* unk0;
    Vector3D16 unk4[6];
    unsigned char unk64;
    unsigned char unk65;
    unsigned char unk66;
    unsigned char unk67;
    int unk68;
} Tracer;
extern Tracer D_8006A2B4[0x20]; // 0xD80

void func_8001C13C(Vector3D16*, Vector3D16*); // fDivVectorBy4AndMakeShort
void func_8001C1C4(Vector3D16*, Vector3D16*); // fSetShortVector

#endif
