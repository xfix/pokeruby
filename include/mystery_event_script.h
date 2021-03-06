#ifndef GUARD_MYSTERY_EVENT_SCRIPT_H
#define GUARD_MYSTERY_EVENT_SCRIPT_H

u32 RunMysteryEventScript(u8 *);
void SetMysteryEventScriptStatus(u32 val);
u16 GetRecordMixingGift(void);
#if DEBUG
bool8 debug_sub_812620C(u8 *a1, const u8 * _a2);
bool8 debug_sub_81261B4(u8 *a1, const u8 * _a2);
#endif // DEBUG

#endif // GUARD_MYSTERY_EVENT_SCRIPT_H
