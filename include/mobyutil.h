#ifndef __MOBYUTIL_H
#define __MOBYUTIL_H

#include "common.h"

void func_80049EFC();                                  /* extern */

int func_800385D8(int, int); // subtraction
int func_800385F8(int, int); // addition

int func_800384B4(int arg0, int arg1, int arg2);
int func_8003853C(int arg0, int arg1, unsigned char arg2);

int func_80059D2C();  //rand                              /* extern */

int func_800381EC();                                /* extern */
void func_80041A8C(Moby*);                             /* extern */
void func_80041AB8(Moby*);                             /* extern */

int func_8003EE84(Vector3D*, int);                            /* extern */

extern int D_80066F14;
extern int D_80067418;

#endif
