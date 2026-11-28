#ifndef __INIT_H
#define __INIT_H

extern void func_800518EC(); //func_800518EC InitSound

extern void func_80013810(int, int, int, int); //func_80013810 fLoadFromDisc
extern void func_8001B40C(Pad*, Pad*, int); //func_8001B40C fMemcpy
extern int func_800582A4(void*); //func_800582A4 CdReadCallback
extern int func_800582B8(); //func_800582B8 CdInit
extern int D_80011110; //ptrOverlayStart
extern unsigned int D_800676D8; //wadHeader
extern int D_800682D8; //wadSector

extern void func_8004C484();                                  /* extern */
extern void func_8005557C(int);                                 /* extern */
extern void func_800556F0(int);                                 /* extern */
extern void func_8005574C(int);                                 /* extern */
extern void func_80055BE0(int*);                                /* extern */
extern void func_80055CA0(void*);                             /* extern */
extern void func_80058E1C(int*, int, int, int, int);                  /* extern */
extern void func_80058EDC(int);                                 /* extern */
extern void func_800590EC(void*, int, int, int, int);               /* extern */
extern int* D_80066FC0;
extern int D_80069928;
extern unsigned short D_80069930;
extern unsigned short D_80069932;
extern unsigned char D_8006993E;
extern unsigned char D_80069940;
extern unsigned short D_8006998C;
extern unsigned short D_8006998E;
extern unsigned short D_800699A4;
extern unsigned short D_800699A6;
extern unsigned char D_800699B2;
extern unsigned char D_800699B4;
extern unsigned short D_80069A00;
extern unsigned short D_80069A02;

extern void func_80057AE8(int); //func_80057AE8 SetGeomScreen
extern void func_80057AF8(int, int); //func_80057AF8 SetGeomOffset
extern void func_80057B20(); //func_80057B20 InitGeom

extern void func_80012B58();                                  /* extern */
extern void func_80054934(void*);                                /* extern */
extern void func_80054F1C(PsyqPad*, char*);                            /* extern */
extern void func_80058408();                                  /* extern */
extern char D_8006AB4C;
extern void func_800125C8();

extern void func_titlescreen_and_loading_8007CC38(int); //func_titlescreen_and_loading_8007CC38

extern void func_8001D7E8(); //func_8001D7E8

void func_8001B3C8(int, int, int);                    /* extern */
extern int D_80066FFC;
extern int D_80067000;
extern int D_80069998;
extern int D_80069A0C;
extern int D_8006B284;
extern int D_8006B29C;
extern int D_8006B2A0;
extern int D_8006B2A4;
extern int D_8006B2A8;
extern int D_8006B2AC;
extern int D_8006B2B0;

#endif
