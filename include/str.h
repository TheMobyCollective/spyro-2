// psyq
extern int func_80058108(int sectors, unsigned long *buf, int mode); // CdRead  
extern int func_80058858(unsigned char com, unsigned char *param, unsigned char *result); // CdControl
extern CdLoc *func_80058C98(int intLba, CdLoc *pos); // CdIntToPos
extern int func_800582A4(void* func); // CdReadCallback
extern int func_800582B8(void); // CdInit
extern int func_80058810(int mode, unsigned char *result); // CdSync

void func_80012CBC(void); // CDMusicUpdate
int func_80013690(void); // CDLoadTime
void func_8001379C(unsigned char intr); // CDReadDone


extern CDState cdState; // 800682D8
extern StreamingData streamingData; // 800682F4


