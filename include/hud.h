#ifndef __HUD_H
#define __HUD_H

typedef struct {
    char x;
    char y;
    short clutX;
    int clutY;
} SpriteInfo;

extern int func_80050720(int, int, char);                        /* extern */
void func_80050C64(int, int);                          /* extern */
void func_80050CF4(int, int);                            /* extern */
int func_80059D2C();                                /* extern */

unsigned int * func_800520CC(SpriteInfo*, int, int, int);                   /* extern */
void func_80052328(int, int, int);                           /* extern */
extern SpriteInfo D_80063544;

#endif
