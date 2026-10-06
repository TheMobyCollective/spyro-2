#ifndef __DRAWUTIL_H
#define __DRAWUTIL_H

typedef struct
{
    short x;
    short y;
    short w;
    short h;
} Rect;

void func_8001B3E4(int, int, short);                         /* extern */
void func_80023BB4();                                  /* extern */
extern int D_80067034;

void func_8001B390(int);                               /* extern */
void func_8005A01C(int, int, int, int, int);               /* extern */
extern int D_80067030;

void func_8004A374(int, int, int, int, int);               /* extern */
int func_8004A7DC(int);                                /* extern */

void func_800557E4(int);                                 /* extern */
extern int D_80067170;
extern int D_80069998;
extern int D_80069A0C;
extern int D_8006B29C;
extern int D_8006B2A0;
extern int D_8006B2A4;

void func_80055968(Rect*, int, int, int);                     /* extern */
void func_80058EDC(short);                                 /* extern */

void func_8004D508(int, int, int, int);                /* extern */
void func_8004D984(int, int, int, int);                  /* extern */

void func_800559F8(Rect*, int);                         /* extern */
void func_80059FBC(int);                                 /* extern */
void func_8005A0FC(int, int);                            /* extern */
int func_8005A15C(int);                               /* extern */
extern int D_80069918;

#endif
