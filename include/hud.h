#ifndef __HUD_H
#define __HUD_H

typedef struct {
    char x;
    char y;
    short clutX;
    int clutY;
} SpriteInfo;

void func_80050C64(int, int);                          /* extern */
void func_80050CF4(int, int);                            /* extern */
int func_80059D2C();                                /* extern */

unsigned int * func_800520CC(SpriteInfo*, int, int, int);                   /* extern */
void func_80052328(int, int, int);                           /* extern */
extern SpriteInfo D_80063544;

void func_8004D104(int);                                 /* extern */
extern SpriteInfo D_8006358C;
extern int D_80066F90;
extern int D_80067114;
extern int D_800681C8;
extern int D_8006A9A0;
extern int D_8006A9A4;
extern unsigned char D_8006ABF8;

#endif
