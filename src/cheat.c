#include "common.h"
#include "cheat.h"

// https://decomp.me/scratch/H28Rq
//INCLUDE_ASM("asm/nonmatchings/cheat", func_800543A8); // ClearCheatBuffer()

void func_800543A8(void) {
    int i;

    for (i = 15; i >= 0; i--) recordedInputs[i] = 0;
    inputCount = 0;
    cheatFlags.cutscene = 0;
}

// https://decomp.me/scratch/Pg5rh
//INCLUDE_ASM("asm/nonmatchings/cheat", func_800543DC); // ProcessCheatBuffer()

void func_800543DC(void) { // cheat codes
    int cheatIndex;
    int inputCodeOffset;
    int matchingInputs;
    int codeLen;

    if (g_Pad.state.pressed == PAD_INPUT_NULL) return;

    cheatIndex = 0;
    recordedInputs[inputCount] = g_Pad.state.pressed;
    inputCount++;

    for (cheatIndex = 0; cheatIndex < CHEAT_COUNT; cheatIndex++) {

        // Get the length of the current code
        codeLen = 0;
        while (g_CheatCodes[cheatIndex][codeLen] != PAD_INPUT_NULL) codeLen++;

        // Get the input # of the start of the last n inputs, for code of size n
        inputCodeOffset = inputCount - codeLen;
        if (inputCodeOffset < 0) inputCodeOffset += 0x10;

        // Find how many inputs match the cheat code
        for (matchingInputs = 0; matchingInputs < codeLen; matchingInputs++) {
            if (recordedInputs[inputCodeOffset] != g_CheatCodes[cheatIndex][matchingInputs]) {
                matchingInputs = -1;
                break;
            }
            inputCodeOffset++;
            if (inputCodeOffset >= 0x10) inputCodeOffset -= 0x10;
        }

        // Activate cheat code or move to next one
        if (matchingInputs == codeLen) {
            func_80054518(cheatIndex);
            break;
        }
    }

    if (inputCount >= 0x10) inputCount = 0;
}

// https://decomp.me/scratch/0uq6C
//INCLUDE_ASM("asm/nonmatchings/cheat", func_80054518); // ActivateCheat()

void func_80054518(int arg0) {
    int var_v0;
    unsigned char temp_v0;

    switch (arg0) {
        case 0: //All Abilities
            cheatFlags.abilities = 1;
            if (flags.swim.paid == 0 ) {
                flags.swim.paid = 2;
            }
            if (flags.climb.paid == 0) {
                flags.climb.paid = 2;
            }
            if (flags.headbash.paid == 0) {
                flags.headbash.paid = 2;
            }
            func_80050720(g_SoundTablePtr->gemCollect, 0, 0); //PlaySound
            return;
        default:
            return;
        case 1: //Credits
            D_80067048 = (short) D_80066F90;
            func_80050720(g_SoundTablePtr->gemCollect, 0, 0); //PlaySound
            func_8001A910();
            return;
        case 2: //Big Head
            cheatFlags.spyroWidth = 0x2000;
            cheatFlags.spyroHeight = 0x2000;
            cheatFlags.spyroLength = 0x2000;
            cheatFlags.flat = 0;
            cheatFlags.bigHead = 1 - cheatFlags.bigHead;
            func_80050720(g_SoundTablePtr->gemCollect, 0, 0); //PlaySound
            return;
        case 3: //Flat
            cheatFlags.spyroWidth = 0x200;
            cheatFlags.spyroHeight = 0x1000;
            cheatFlags.spyroLength = 0x1000;
            cheatFlags.bigHead = 0;
            cheatFlags.flat = 1 - cheatFlags.flat;
            func_80050720(g_SoundTablePtr->gemCollect, 0, 0); //PlaySound
            return;
        case 4: //Color
            cheatFlags.bodyColour = 0;
            func_80050720(g_SoundTablePtr->pauseExit, 0, 0); //PlaySound
            do {
                func_80058EDC(0); //Vsync
                func_8001271C();
                func_80050D38();
            } while (g_Pad.state.pressed == 0);
            if      ((g_Pad.state.pressed & 0x20) != 0)   cheatFlags.bodyColour = 1;
            else if ((g_Pad.state.pressed & 0x40) != 0)   cheatFlags.bodyColour = 2;
            else if ((g_Pad.state.pressed & 0x80) != 0)   cheatFlags.bodyColour = 3;
            else if ((g_Pad.state.pressed & 0x10) != 0)   cheatFlags.bodyColour = 4;
            else if ((g_Pad.state.pressed & 0x1000) != 0) cheatFlags.bodyColour = 5;
            else if ((g_Pad.state.pressed & 0x4000) != 0) cheatFlags.bodyColour = 6;
            func_80050720(g_SoundTablePtr->gemCollect, 0, 0); //PlaySound
            return;
        case 5: //Extra hitpoint
            temp_v0 = 1 - cheatFlags.extraHit;
            cheatFlags.extraHit = temp_v0;
            D_80061A8C = (char)temp_v0 ? 4 : 3;
            func_80050720(g_SoundTablePtr->gemCollect, 0, 0);
            return;
    }
}
