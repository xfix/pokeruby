LittlerootTown_MaysHouse_2F_EventObjects:: @ 8385978
	object_event 1, EVENT_OBJ_GFX_RIVAL_MAY_NORMAL, 0, 8, 0, 2, 0, 3, 7, 1, 0, 0, 0, 0, 0, LittlerootTown_MaysHouse_2F_EventScript_152A9D, FLAG_HIDE_MAY_UPSTAIRS, 0, 0
	object_event 2, EVENT_OBJ_GFX_VAR_0, 0, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_2, 0, 0
	object_event 3, EVENT_OBJ_GFX_VAR_1, 0, 1, 0, 6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_3, 0, 0
	object_event 4, EVENT_OBJ_GFX_VAR_2, 0, 2, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_4, 0, 0
	object_event 5, EVENT_OBJ_GFX_VAR_3, 0, 3, 0, 6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_5, 0, 0
	object_event 6, EVENT_OBJ_GFX_VAR_4, 0, 4, 0, 6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_6, 0, 0
	object_event 7, EVENT_OBJ_GFX_VAR_5, 0, 5, 0, 6, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_7, 0, 0
	object_event 8, EVENT_OBJ_GFX_VAR_6, 0, 0, 0, 7, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_8, 0, 0
	object_event 9, EVENT_OBJ_GFX_VAR_7, 0, 1, 0, 7, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_9, 0, 0
	object_event 10, EVENT_OBJ_GFX_VAR_8, 0, 2, 0, 7, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_10, 0, 0
	object_event 11, EVENT_OBJ_GFX_VAR_9, 0, 3, 0, 7, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_11, 0, 0
	object_event 12, EVENT_OBJ_GFX_VAR_A, 0, 4, 0, 7, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_12, 0, 0
	object_event 13, EVENT_OBJ_GFX_VAR_B, 0, 5, 0, 7, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0x0, FLAG_DECORATION_13, 0, 0
	object_event 14, EVENT_OBJ_GFX_MOM, 0, 1, 0, 1, 0, 3, 8, 1, 0, 0, 0, 0, 0, 0x0, FLAG_HIDE_MOM_UPSTAIRS, 0, 0
	object_event 15, EVENT_OBJ_GFX_PICHU_DOLL, 0, 3, 0, 4, 0, 4, 8, 17, 0, 0, 0, 0, 0, 0x0, FLAG_HIDE_MAY_PICHU_DOLL, 0, 0

LittlerootTown_MaysHouse_2F_MapWarps:: @ 8385AE0
	warp_def 1, 1, 0, 2, MAP_LITTLEROOT_TOWN_MAYS_HOUSE_1F

LittlerootTown_MaysHouse_2F_MapBGEvents:: @ 8385AE8
	bg_event 5, 1, 0, 0, 0, LittlerootTown_MaysHouse_2F_EventScript_152870
	bg_event 7, 1, 0, 0, 0, LittlerootTown_MaysHouse_2F_EventScript_152867
	bg_event 3, 1, 0, 0, 0, LittlerootTown_MaysHouse_2F_EventScript_1B69DF
	bg_event 8, 1, 0, 0, 0, LittlerootTown_MaysHouse_2F_EventScript_152C39

LittlerootTown_MaysHouse_2F_MapEvents:: @ 8385B18
	map_events LittlerootTown_MaysHouse_2F_EventObjects, LittlerootTown_MaysHouse_2F_MapWarps, 0x0, LittlerootTown_MaysHouse_2F_MapBGEvents
