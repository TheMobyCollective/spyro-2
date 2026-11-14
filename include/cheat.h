#ifndef __CHEAT_H
#define __CHEAT_H

#include "pad.h"
#include "spu.h"

#define RETAIL true

// could do this using a sizeof() on the cheat code array?
#ifdef RETAIL
#define CHEAT_COUNT 6
#else
#define CHEAT_COUNT 15
#endif

void func_80054518(int cheat); // fCheatEffects

/*enum PadInput g_CheatCodes[CHEAT_COUNT][16] = { // only has final inputs for now - 80064F14
    { CIR, CIR, CIR, CIR, SQU, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL }, //abilities
    { SQU, CIR, SQU, CIR, SQU, CIR, L,   R,   L,   R,   L,   R,   PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL }, //credits
    { U,   U,   U,   U,   R1,  R1,  R1,  R1,  CIR, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL }, //bighead
    { L,   R,   L,   R,   L2,  R2,  L2,  R2,  SQU, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL }, //flat
    { U,   R,   D,   L,   U,   SQU, R1,  R2,  L1,  L2,  U,   L,   D,   R,   U,   PAD_INPUT_NULL }, //color
    { SQU, U,   SQU, D,   SQU, L,   SQU, R,   CIR, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL, PAD_INPUT_NULL }, //hitpoint
};*/

extern int g_CheatCodes[CHEAT_COUNT][16]; // enum PadInput

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

extern short D_80067048; //credits
extern int D_80066F90;
extern int D_80061A8C;

#endif
