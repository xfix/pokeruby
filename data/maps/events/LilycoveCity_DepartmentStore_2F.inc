LilycoveCity_DepartmentStore_2F_EventObjects:: @ 838A2E8
	object_event 1, EVENT_OBJ_GFX_COOK, 0, 8, 0, 2, 0, 3, 8, 0, 0, 0, 0, 0, 0, LilycoveCity_DepartmentStore_2F_EventScript_159F0F, 0, 0, 0
	object_event 2, EVENT_OBJ_GFX_WOMAN_2, 0, 0, 0, 5, 0, 3, 2, 17, 0, 0, 0, 0, 0, LilycoveCity_DepartmentStore_2F_EventScript_159F18, 0, 0, 0
	object_event 3, EVENT_OBJ_GFX_SAILOR, 0, 13, 0, 5, 0, 3, 2, 17, 0, 0, 0, 0, 0, LilycoveCity_DepartmentStore_2F_EventScript_159F21, 0, 0, 0
	object_event 4, EVENT_OBJ_GFX_WOMAN_4, 0, 10, 0, 6, 0, 3, 7, 0, 0, 0, 0, 0, 0, LilycoveCity_DepartmentStore_2F_EventScript_159F5E, 0, 0, 0
	object_event 5, EVENT_OBJ_GFX_WOMAN_4, 0, 7, 0, 6, 0, 3, 7, 0, 0, 0, 0, 0, 0, LilycoveCity_DepartmentStore_2F_EventScript_159F2A, 0, 0, 0

LilycoveCity_DepartmentStore_2F_MapWarps:: @ 838A360
	warp_def 16, 1, 0, 2, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_1F
	warp_def 13, 1, 0, 0, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_3F
	warp_def 2, 1, 0, 0, MAP_LILYCOVE_CITY_DEPARTMENT_STORE_ELEVATOR

LilycoveCity_DepartmentStore_2F_MapEvents:: @ 838A378
	map_events LilycoveCity_DepartmentStore_2F_EventObjects, LilycoveCity_DepartmentStore_2F_MapWarps, 0x0, 0x0
