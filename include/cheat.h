#ifndef __CHEAT_H
#define __CHEAT_H

#include "pad.h"

/* Cheat flags (bss) - likely declared in this file */
typedef struct {
    unsigned char invincible; // 800698B8
    unsigned char abilities;  // 800698B9
    unsigned char cameraMode; // 800698BA; 1 is active - enum?
    unsigned char superflame; // 800698BB
    char epilogue;            // 800698BC
    unsigned char cutscene;   // 800698BD
    unsigned char bigHead;    // 800698BE
    unsigned char flat;       // 800698BF
    int spyroWidth;           // 800698C0
    int spyroHeight;          // 800698C4
    int spyroLength;          // 800698C8
    unsigned char bodyColour; // 800698CC
    unsigned char extraHit;   // 800698CD
} CheatFlags;

extern int inputCount; //D_80066F98;
extern CheatFlags cheatFlags; //D_800698BD
enum PadInput recordedInputs[16]; // recorded cheat inputs

#endif
