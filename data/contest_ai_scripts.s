	.include "asm/macros.s"
	.include "asm/macros/contest_ai_script.s"
	.include "constants/constants.s"

	.section script_data, "aw", %progbits

	.align 2
gUnknown_081DC118:: @ 81DC118
	.4byte CheckForBadMove
	.4byte CheckForCombo
	.4byte CheckBoring
	.4byte CheckExcitement
	.4byte CheckOrder
	.4byte CheckForGoodMove
	.4byte TryErraticInCuteSmartTough
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing
	.4byte AI_nothing

	@ unreferenced
	if_turn_not_eq 0 ContestUnreferenced_80
	if_effect_not_eq CONTEST_EFFECT_IMPROVE_CONDITION_PREVENT_NERVOUSNESS ContestUnreferenced_80
	score +10
ContestUnreferenced_80:
	call ContestUnreferenced_0D
	end
ContestUnreferenced_0D:
	if_user_order_more_than 1 ContestUnreferenced_end
	if_effect_type_not_eq 2 ContestUnreferenced_end
	if_effect_type_not_eq 3 ContestUnreferenced_end
	score +10
ContestUnreferenced_end:
	end
	if_turn_eq 0 ContestUnreferenced_0F_1
	if_turn_eq 1 ContestUnreferenced_0F_2
	if_turn_eq 2 ContestUnreferenced_0F_3
	if_turn_eq 3 ContestUnreferenced_0F_4
	if_turn_eq 4 ContestUnreferenced_0F_5
	end
ContestUnreferenced_0F_1:
	if_user_order_not_eq 0 ContestUnreferenced_2B_1
	if_user_order_not_eq 1 ContestUnreferenced_2B_2
	if_user_order_not_eq 2 ContestUnreferenced_2B_1
	if_user_order_not_eq 3 ContestUnreferenced_2B_1
	end
ContestUnreferenced_2B_1:
	if_effect_type_eq 1 ContestUnreferenced_score
	end
ContestUnreferenced_2B_2:
	if_effect_type_eq 1 ContestUnreferenced_score
	end
	if_effect_type_eq 1 ContestUnreferenced_score
	end
ContestUnreferenced_0F_2:
	if_user_order_not_eq 0 ContestUnreferenced_2B_1
	if_user_order_not_eq 1 ContestUnreferenced_2B_1
	if_user_order_not_eq 2 ContestUnreferenced_2B_1
	if_user_order_not_eq 3 ContestUnreferenced_2B_1
	end
ContestUnreferenced_0F_3:
	if_user_order_not_eq 0 ContestUnreferenced_2B_1
	if_user_order_not_eq 1 ContestUnreferenced_2B_1
	if_user_order_not_eq 2 ContestUnreferenced_2B_1
	if_user_order_not_eq 3 ContestUnreferenced_2B_1
	end
ContestUnreferenced_0F_4:
	if_user_order_not_eq 0 ContestUnreferenced_2B_1
	if_user_order_not_eq 1 ContestUnreferenced_2B_1
	if_user_order_not_eq 2 ContestUnreferenced_2B_1
	if_user_order_not_eq 3 ContestUnreferenced_2B_1
	end
ContestUnreferenced_0F_5:
	if_user_order_not_eq 0 ContestUnreferenced_2B_1
	if_user_order_not_eq 1 ContestUnreferenced_2B_1
	if_user_order_not_eq 2 ContestUnreferenced_2B_1
	if_user_order_not_eq 3 ContestUnreferenced_2B_1
	end
ContestUnreferenced_score:
	score +10
	end
	end
	if_most_appealing_move ContestUnreferenced_score2
	end
ContestUnreferenced_score2:
	score +10
	end

CheckBoring:
	if_effect_eq CONTEST_EFFECT_REPETITION_NOT_BORING, AI_end_081DC27F
	if_move_used_count_eq 1 AI_score1_081DC27F
	if_move_used_count_eq 2 AI_score2_081DC27F
	if_move_used_count_eq 3 AI_score3_081DC27F
	if_move_used_count_eq 4 AI_score4_081DC27F
	end
AI_score1_081DC27F:
	score -5
	end
AI_score2_081DC27F:
	score -15
	end
AI_score3_081DC27F:
	score -20
	end
AI_score4_081DC27F:
	score -25
	end
AI_end_081DC27F:
	end

CheckExcitement:
	if_move_excitement_less_than 0x00 AI_contest09_081DC2AB
	if_move_excitement_eq 0x00 AI_contest7D_4_081DC2AB
	if_move_excitement_eq 0x01 AI_contest3D_081DC2AB
	end
AI_contest09_081DC2AB:
	if_excitement_eq 0x04 AI_contest0F_1_081DC2AB
	if_excitement_eq 0x03 AI_contest0F_2_081DC2AB
	if_user_has_exciting_move AI_end_081DC2AB
	score +15
	end
AI_contest0F_1_081DC2AB:
	if_user_order_not_eq 0 AI_contest7D_1_081DC2AB
	if_random 0x33 AI_end_081DC2AB
	score +20
	end
AI_contest7D_1_081DC2AB:
	if_random 0x7F AI_end_081DC2AB
	score -10
	end
AI_contest0F_2_081DC2AB:
	if_user_order_not_eq 0 AI_contest7D_3_081DC2AB
	if_turn_eq 4 AI_score_081DC2AB
AI_contest7D_2_081DC2AB:
	if_random 0x33 AI_end_081DC2AB
	score +10
	end
AI_score_081DC2AB:
	score +15
	end
AI_contest7D_3_081DC2AB:
	if_random 0x7F AI_end_081DC2AB
	score +10
	end
AI_contest7D_4_081DC2AB:
	if_random 0x7F AI_end_081DC2AB
	score +10
	end
AI_contest3D_081DC2AB:
	if_move_used_count_more_than 0x00 AI_contest29_081DC2AB
	if_user_order_not_eq 0 AI_contest7D_5_081DC2AB
	if_excitement_not_eq 0x04 AI_contest7D_5_081DC2AB
	score +30
	end
AI_contest7D_5_081DC2AB:
	if_random 0x64 AI_end_081DC2AB
	score +10
	end
AI_contest29_081DC2AB:
	if_effect_not_eq CONTEST_EFFECT_REPETITION_NOT_BORING AI_end_081DC2AB
	if_user_order_not_eq 0 AI_contest7D_5_081DC2AB
	if_excitement_not_eq 0x04 AI_contest7D_5_081DC2AB
	score +30
	end
AI_end_081DC2AB:
	end

CheckForCombo:
	if_would_finish_combo AI_score_081DC348
	call AI_contest3F_081DC348
	call AI_contest45_081DC348
	end
AI_contest3F_081DC348:
	if_move_used_count_not_eq 0x00 AI_end_081DC348
	if_not_combo_starter AI_end_081DC348
	if_user_order_eq 0 AI_contest04_1_081DC348
	if_user_order_eq 1 AI_contest04_2_081DC348
	if_user_order_eq 2 AI_contest04_3_081DC348
	if_user_order_eq 3 AI_contest04_4_081DC348
	end
AI_contest45_081DC348:
	if_not_combo_finisher AI_end_081DC348
	score -10
	end
AI_score_081DC348:
	score +25
	end
AI_contest04_1_081DC348:
	if_turn_eq 4 AI_contest7D_081DC348
	if_random 0x96 AI_end_081DC348
	score +10
	end
AI_contest04_2_081DC348:
	if_turn_eq 4 AI_contest7D_081DC348
	if_random 0x7D AI_end_081DC348
	score +10
	end
AI_contest04_3_081DC348:
	if_turn_eq 4 AI_contest7D_081DC348
	if_random 0x32 AI_end_081DC348
	score +10
	end
AI_contest04_4_081DC348:
	if_turn_eq 4 AI_contest7D_081DC348
	score +10
	end
AI_contest7D_081DC348:
	if_random 0x7D AI_end_081DC348
	score -15
	end
AI_end_081DC348:
	end

CheckForGoodMove:
	if_effect_eq CONTEST_EFFECT_BETTER_WITH_GOOD_CONDITION, ContestEffect39
	if_effect_eq CONTEST_EFFECT_NEXT_APPEAL_EARLIER, ContestEffect40
	if_effect_eq CONTEST_EFFECT_NEXT_APPEAL_LATER, ContestEffect41
	if_effect_eq CONTEST_EFFECT_REPETITION_NOT_BORING, ContestEffect3
	if_effect_eq CONTEST_EFFECT_IMPROVE_CONDITION_PREVENT_NERVOUSNESS, ContestEffect38
	if_effect_eq CONTEST_EFFECT_DONT_EXCITE_AUDIENCE, ContestEffect47
	if_effect_eq CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONES, ContestEffect31
	if_effect_eq CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONE, ContestEffect32
	if_effect_eq CONTEST_EFFECT_BETTER_WHEN_AUDIENCE_EXCITED, ContestEffect46
	if_effect_eq CONTEST_EFFECT_WORSEN_CONDITION_OF_PREV_MONS, ContestEffect27
	if_effect_eq CONTEST_EFFECT_SHIFT_JUDGE_ATTENTION, ContestEffect16or17
	if_effect_eq CONTEST_EFFECT_STARTLE_MON_WITH_JUDGES_ATTENTION, ContestEffect16or17
	if_effect_eq CONTEST_EFFECT_MAKE_FOLLOWING_MONS_NERVOUS, ContestEffect_FollowingMonsNervous
	if_effect_eq CONTEST_EFFECT_JAMS_OTHERS_BUT_MISS_ONE_TURN, ContestEffect18
	end

ContestEffect39:
	if_user_condition_eq 0x03 ContestEffect39_score1
	if_user_condition_eq 0x02 ContestEffect39_score2
	if_user_condition_eq 0x01 ContestEffect39_score3
	if_user_condition_eq 0x00 ContestEffect39_score4
	end
ContestEffect39_score1:
	score +20
	end
ContestEffect39_score2:
	if_random 0x7D ContestEffectEnd
	score +15
	end
ContestEffect39_score3:
	if_random 0x7D ContestEffectEnd
	score +5
	end
ContestEffect39_score4:
	score -20
	end

ContestEffect40:
	if_effect_in_user_moveset CONTEST_EFFECT_BETTER_IF_FIRST ContestEffectEnd
	if_random 0x32 ContestEffectEnd
	score +20
	end

ContestEffect41:
	if_effect_in_user_moveset CONTEST_EFFECT_BETTER_IF_LAST ContestEffectEnd
	if_random 0x32 ContestEffectEnd
	score +20
	end

ContestEffect3:
	if_user_order_not_eq 3 ContestEffectEnd
	if_random 0x32 ContestEffectEnd
	score +15
	end
	if_turn_eq 4 ContestEffect3_7D
	if_random 0xDC ContestEffect3_score
	score +10
	end
ContestEffect3_7D:
	if_random 0x14 ContestEffectEnd
	score +15
	end
ContestEffect3_score:
	score -20
	end

ContestEffect38:
	if_effect_in_user_moveset CONTEST_EFFECT_BETTER_WITH_GOOD_CONDITION ContestEffect38_contest04
	if_user_condition_eq 0x03 ContestEffect38_score1
	if_random 0x32 ContestEffectEnd
	score +15
	end
ContestEffect38_score1:
	score -10
	end
ContestEffect38_contest04:
	if_turn_eq 4 ContestEffect38_score2
	if_turn_eq 0 ContestEffect38_random
	if_move_used_count_eq 1 ContestEffectEnd
	if_random 0x7D ContestEffectEnd
	score +10
	end
ContestEffect38_random:
	if_random 0x64 ContestEffectEnd
	score +10
	end
ContestEffect38_score2:
	score -10
	end

ContestEffect47:
	if_move_used_count_eq 1 ContestEffectEnd
	if_user_order_eq 0 ContestEffect47_random
	if_user_order_eq 1 ContestEffect47_random
	if_turn_not_eq 4 ContestEffectEnd
	if_user_has_exciting_move ContestEffectEnd
	if_excitement_less_than 0x01 ContestEffectEnd
	score +10
	end
ContestEffect47_random:
	if_random 0x7F ContestEffectEnd
	score +10
	end

ContestEffect31:
	if_user_order_eq 1 ContestEffect31_score1
	if_user_order_eq 2 ContestEffect31_score2
	if_user_order_eq 3 ContestEffect31_score3
	end
ContestEffect31_score1:
	score +5
	end
ContestEffect31_score2:
	score +15
	end
ContestEffect31_score3:
	score +20
	end

ContestEffect32:
	if_user_order_eq 0 ContestEffect32_score1
	if_user_order_eq 1 ContestEffect32_score2
	if_user_order_eq 2 ContestEffect32_score3
	if_user_order_eq 3 ContestEffect32_score5
	end
ContestEffect32_score1:
	score -10
	end
ContestEffect32_score2:
	contest_55 0x00 ContestEffectEnd
	score +5
	end
ContestEffect32_score3:
	contest_55 0x00 ContestEffect32_score4
	score +5
	jump ContestEffect32_score4
	end
ContestEffect32_score4:
	contest_55 0x01 ContestEffectEnd
	score +5
	end
ContestEffect32_score5:
	contest_55 0x00 ContestEffect32_score6
	score +5
	jump ContestEffect32_score6
	end
ContestEffect32_score6:
	contest_55 0x01 ContestEffect32_score7
	score +5
	jump ContestEffect32_score7
	end
ContestEffect32_score7:
	contest_55 0x02 ContestEffectEnd
	score +5
	end

ContestEffect46:
	if_user_order_eq 0 ContestEffect46_05
	if_user_order_more_than 0 ContestEffect46_score4
	end
ContestEffect46_05:
	if_turn_not_eq 0 ContestEffect46_score1
	if_excitement_eq 0x04 ContestEffect46_score2
	if_excitement_eq 0x03 ContestEffect46_score3
	end
ContestEffect46_score1:
	if_random 0x7D ContestEffectEnd
	score -15
	end
ContestEffect46_score2:
	if_random 0x7D ContestEffectEnd
	score +20
	end
ContestEffect46_score3:
	if_random 0x7D ContestEffectEnd
	score +15
	end
ContestEffect46_score4:
	if_random 0xB2 ContestEffectEnd
	score +10
	end

ContestEffect27:
	if_user_order_eq 0 ContestEffectEnd
	jump ContestEffect27_55_1
	end
ContestEffect27_55_1:
	contest_55 0x00 ContestEffect27_noscore
	if_condition_eq 0x00 0x00 ContestEffect27_noscore
	if_condition_eq 0x00 0x01 ContestEffect27_score1
	if_condition_eq 0x00 0x02 ContestEffect27_score2
	if_condition_eq 0x00 0x03 ContestEffect27_score3
	end
ContestEffect27_score1:
	if_random 0x7D ContestEffect27_55_2
	score +5
	if_user_order_more_than 1 ContestEffect27_55_2
	end
ContestEffect27_score2:
	if_random 0x7D ContestEffect27_55_2
	score +10
	if_user_order_more_than 1 ContestEffect27_55_2
	end
ContestEffect27_score3:
	if_random 0x7D ContestEffect27_55_2
	score +15
	if_user_order_more_than 1 ContestEffect27_55_2
	end
ContestEffect27_noscore:
	if_user_order_more_than 1 ContestEffect27_55_2
	end
ContestEffect27_55_2:
	contest_55 0x01 ContestEffect27_noscore2
	if_condition_eq 0x01 0x00 ContestEffect27_noscore2
	if_condition_eq 0x01 0x01 ContestEffect27_score4
	if_condition_eq 0x01 0x02 ContestEffect27_score5
	if_condition_eq 0x01 0x03 ContestEffect27_score6
	end
ContestEffect27_score4:
	if_random 0x7D ContestEffect27_55_3
	score +5
	if_user_order_more_than 2 ContestEffect27_55_3
	end
ContestEffect27_score5:
	if_random 0x7D ContestEffect27_55_3
	score +10
	if_user_order_more_than 2 ContestEffect27_55_3
	end
ContestEffect27_score6:
	if_random 0x7D ContestEffect27_55_3
	score +15
	if_user_order_more_than 2 ContestEffect27_55_3
	end
ContestEffect27_noscore2:
	if_user_order_more_than 2 ContestEffect27_55_3
	end
ContestEffect27_55_3:
	contest_55 0x02 ContestEffect27_end
	if_condition_eq 0x02 0x00 ContestEffect27_end
	if_condition_eq 0x02 0x01 ContestEffect27_score7
	if_condition_eq 0x02 0x02 ContestEffect27_score8
	if_condition_eq 0x02 0x03 ContestEffect27_score9
	end
ContestEffect27_score7:
	if_random 0x7D ContestEffectEnd
	score +5
	end
ContestEffect27_score8:
	if_random 0x7D ContestEffectEnd
	score +10
	end
ContestEffect27_score9:
	if_random 0x7D ContestEffectEnd
	score +15
	end
ContestEffect27_end:
	end

ContestEffect16or17:
	if_user_order_eq 0 ContestEffectEnd
	jump ContestEffect16or17_55
	end
ContestEffect16or17_55:
	contest_55 0x00 ContestEffect16or17_0E_1
	contest_51 0x00 0x01 ContestEffect16or17_0E_1
	if_random 0x7D ContestEffect16or17_0E_1
	score +2
	contest_58 0x00 ContestEffect16or17_0E_1
	score +8
	end
ContestEffect16or17_0E_1:
	if_user_order_eq 1 ContestEffectEnd
	contest_55 0x01 ContestEffect16or17_0E_2
	contest_51 0x01 0x01 ContestEffect16or17_0E_2
	if_random 0x7D ContestEffect16or17_0E_2
	score +2
	contest_58 0x01 ContestEffect16or17_0E_2
	score +8
	end
ContestEffect16or17_0E_2:
	if_user_order_eq 2 ContestEffectEnd
	contest_55 0x02 ContestEffectEnd
	contest_51 0x02 0x01 ContestEffectEnd
	if_random 0x7D ContestEffectEnd
	score +2
	contest_58 0x02 ContestEffectEnd
	score +8
	end

	@ This routine checks the following mons using contest_51 and contest_55
	@ in order to decide if moves that make the following mons nervous should
	@ be encouraged.

ContestEffect_FollowingMonsNervous:
	if_user_order_eq 3, ContestEffectEnd
	jump ContestEffect_FollowingMonsNervous_CheckMon3
	end
ContestEffect_FollowingMonsNervous_CheckMon3:
	contest_55 3, ContestEffect_FollowingMonsNervous_CheckMon2
	contest_51 3, 0, ContestEffect_FollowingMonsNervous_CheckMon2
	score +5
	if_random 125, ContestEffect16or17_0E_1
	score +5
	end
ContestEffect_FollowingMonsNervous_CheckMon2:
	if_user_order_eq 2, ContestEffectEnd
	contest_55 2, ContestEffect_FollowingMonsNervous_CheckMon1
	contest_51 2, 0, ContestEffect_FollowingMonsNervous_CheckMon1
	score +5
	if_random 125, ContestEffect16or17_0E_2
	score +5
	end
ContestEffect_FollowingMonsNervous_CheckMon1:
	if_user_order_eq 1, ContestEffectEnd
	contest_55 1, ContestEffectEnd
	contest_51 1, 0, ContestEffectEnd
	score +5
	if_random 125, ContestEffectEnd
	score +5
	end

ContestEffect18:
	if_turn_eq 4 ContestEffect18_score1
	jump ContestEffect18_0E
	end
ContestEffect18_score1:
	score +5
	jump ContestEffect18_0E
	end
ContestEffect18_0E:
	if_user_order_eq 0 ContestEffect18_score2
	if_user_order_eq 1 ContestEffect18_random1
	if_user_order_eq 2 ContestEffect18_random2
	if_user_order_eq 3 ContestEffect18_random3
	end
ContestEffect18_score2:
	score -15
	end
ContestEffect18_random1:
	if_random 0x7D ContestEffectEnd
	score -10
	end
ContestEffect18_random2:
	if_random 0x7D ContestEffectEnd
	score +5
	end
ContestEffect18_random3:
	if_random 0x7D ContestEffectEnd
	score +15
	end

ContestEffectEnd:
	end

TryErraticInCuteSmartTough:
	if_contest_type_eq CONTEST_CUTE, AI_contest7D_081DC7DE
	if_contest_type_eq CONTEST_SMART, AI_contest7D_081DC7DE
	if_contest_type_eq CONTEST_TOUGH, AI_contest7D_081DC7DE
	end
AI_contest7D_081DC7DE:
	if_random 0x7D AI_end_081DC7DE
	score +10
	end
AI_end_081DC7DE:
	end

CheckForBadMove:
	if_effect_eq CONTEST_EFFECT_STARTLE_FRONT_MON, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_STARTLE_PREV_MON, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_BADLY_STARTLE_FRONT_MON, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_STARTLE_PREV_MON_2, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONE, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_BETTER_IF_SAME_TYPE, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_BETTER_IF_DIFF_TYPE, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_AFFECTED_BY_PREV_APPEAL, ContestEffect2_8
	if_effect_eq CONTEST_EFFECT_SLIGHTLY_STARTLE_PREV_MONS, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_PREV_MONS, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_BADLY_STARTLE_PREV_MONS, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_PREV_MONS_2, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MON_WITH_JUDGES_ATTENTION, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_SHIFT_JUDGE_ATTENTION, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_JAMS_OTHERS_BUT_MISS_ONE_TURN, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MONS_SAME_TYPE_APPEAL, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_BADLY_STARTLE_MONS_WITH_GOOD_APPEALS, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MONS_COOL_APPEAL, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MONS_BEAUTY_APPEAL, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MONS_CUTE_APPEAL, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MONS_SMART_APPEAL, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_STARTLE_MONS_TOUGH_APPEAL, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_BADLY_STARTLES_MONS_IN_GOOD_CONDITION, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_WORSEN_CONDITION_OF_PREV_MONS, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONES, ContestEffect2_9
	if_effect_eq CONTEST_EFFECT_MAKE_FOLLOWING_MON_NERVOUS, ContestEffect2_25
	if_effect_eq CONTEST_EFFECT_MAKE_FOLLOWING_MONS_NERVOUS, ContestEffect2_26
	if_effect_eq CONTEST_EFFECT_DONT_EXCITE_AUDIENCE, ContestEffect2_26
	if_effect_eq CONTEST_EFFECT_IMPROVE_CONDITION_PREVENT_NERVOUSNESS, ContestEffect2_38
	if_effect_eq CONTEST_EFFECT_AVOID_STARTLE_ONCE, ContestEffect2_4
	if_effect_eq CONTEST_EFFECT_AVOID_STARTLE, ContestEffect2_4
	if_effect_eq CONTEST_EFFECT_AVOID_STARTLE_SLIGHTLY, ContestEffect2_4
	if_effect_eq CONTEST_EFFECT_GREAT_APPEAL_BUT_NO_MORE_MOVES, ContestEffect2_2
	end

ContestEffect2_8:
	if_user_order_eq 0 ContestEffect2_8_score1
	if_user_order_eq 1 ContestEffect2_8_score2
	if_user_order_eq 2 ContestEffect2_8_score3
	if_user_order_eq 3 ContestEffect2_8_score4
	end
ContestEffect2_8_score1:
	score -10
	end
ContestEffect2_8_score2:
	contest_54 0x00 ContestEffectEnd2
	score -10
	end
ContestEffect2_8_score3:
	contest_54 0x01 ContestEffectEnd2
	score -10
	end
ContestEffect2_8_score4:
	contest_54 0x02 ContestEffectEnd2
	score -10
	end

ContestEffect2_9:
	if_user_order_eq 0 ContestEffect2_9_score1
	if_user_order_eq 1 ContestEffect2_9_score2
	if_user_order_eq 2 ContestEffect2_9_score3
	if_user_order_eq 3 ContestEffect2_9_score4
	end
ContestEffect2_9_score1:
	score -20
	end
ContestEffect2_9_score2:
	contest_54 0x00 ContestEffectEnd2
	score -15
	end
ContestEffect2_9_score3:
	contest_54 0x00 ContestEffectEnd2
	contest_54 0x01 ContestEffectEnd2
	score -15
	end
ContestEffect2_9_score4:
	contest_54 0x00 ContestEffectEnd2
	contest_54 0x01 ContestEffectEnd2
	contest_54 0x02 ContestEffectEnd2
	score -15
	end

ContestEffect2_25:
	if_user_order_eq 0 ContestEffect2_25_score1
	if_user_order_eq 1 ContestEffect2_25_score2
	if_user_order_eq 2 ContestEffect2_25_score3
	score -10
	end
ContestEffect2_25_score1:
	contest_54 0x01 ContestEffectEnd2
	score -10
	end
ContestEffect2_25_score2:
	contest_54 0x02 ContestEffectEnd2
	score -10
	end
ContestEffect2_25_score3:
	contest_54 0x03 ContestEffectEnd2
	score -10
	end

ContestEffect2_26:
	if_user_order_eq 0 ContestEffect2_26_score1
	if_user_order_eq 1 ContestEffect2_26_score2
	if_user_order_eq 2 ContestEffect2_26_score3
	score -10
	end
ContestEffect2_26_score1:
	contest_54 0x01 ContestEffectEnd2
	contest_54 0x02 ContestEffectEnd2
	contest_54 0x03 ContestEffectEnd2
	score -10
	end
ContestEffect2_26_score2:
	contest_54 0x02 ContestEffectEnd2
	contest_54 0x03 ContestEffectEnd2
	score -10
	end
ContestEffect2_26_score3:
	contest_54 0x03 ContestEffectEnd2
	score -10
	end

ContestEffect2_38:
	if_user_condition_less_than 0x03 ContestEffectEnd2
	score -20
	end

ContestEffect2_4:
	if_user_order_eq 0 ContestEffect2_4_score1
	if_user_order_eq 1 ContestEffect2_4_score2
	if_user_order_eq 2 ContestEffect2_4_score3
	score -10
	end
ContestEffect2_4_score1:
	contest_54 0x01 ContestEffectEnd2
	contest_54 0x02 ContestEffectEnd2
	contest_54 0x03 ContestEffectEnd2
	score -10
	end
ContestEffect2_4_score2:
	contest_54 0x02 ContestEffectEnd2
	contest_54 0x03 ContestEffectEnd2
	score -10
	end
ContestEffect2_4_score3:
	contest_54 0x03 ContestEffectEnd2
	score -10
	end

ContestEffect2_2:
	if_turn_eq 0 ContestEffect2_2_score1
	if_turn_eq 1 ContestEffect2_2_score2
	if_turn_eq 2 ContestEffect2_2_score3
	if_turn_eq 3 ContestEffect2_2_score4
	if_turn_eq 4 ContestEffect2_2_score5
	end
ContestEffect2_2_score1:
	if_random 0x14 ContestEffectEnd2
	score -15
	end
ContestEffect2_2_score2:
	if_random 0x28 ContestEffectEnd2
	score -15
	end
ContestEffect2_2_score3:
	if_random 0x3C ContestEffectEnd2
	score -15
	end
ContestEffect2_2_score4:
	if_random 0x50 ContestEffectEnd2
	score -15
	end
ContestEffect2_2_score5:
	if_random 0x14 ContestEffectEnd2
	score +20
	end

ContestEffectEnd2:
	end

CheckOrder:
	if_user_order_eq 0 AI_effectcheck1_081DCA4C
	if_user_order_eq 1 AI_effectcheck2_081DCA4C
	if_user_order_eq 2 AI_effectcheck3_081DCA4C
	if_user_order_eq 3 AI_effectcheck4_081DCA4C
	end
AI_effectcheck1_081DCA4C:
	if_effect_eq CONTEST_EFFECT_BETTER_IF_FIRST AI_score1_081DCA4C
	if_effect_eq CONTEST_EFFECT_BETTER_WHEN_LATER AI_score2_081DCA4C
	if_effect_type_eq 1 AI_random1_081DCA4C
	end
AI_score1_081DCA4C:
	score +15
	end
AI_score2_081DCA4C:
	score -15
	end
AI_random1_081DCA4C:
	if_random 0x64 ContestEffectEnd2
	score +10
	end
AI_effectcheck2_081DCA4C:
	if_effect_eq CONTEST_EFFECT_BETTER_WHEN_LATER AI_score3_081DCA4C
	if_effect_type_eq 1 AI_random2_081DCA4C
	end
AI_score3_081DCA4C:
	score -5
	end
AI_random2_081DCA4C:
	if_random 0x7D ContestEffectEnd2
	score +10
	end
AI_effectcheck3_081DCA4C:
	if_effect_eq CONTEST_EFFECT_BETTER_WHEN_LATER AI_score4_081DCA4C
	if_effect_eq CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONES AI_score4_081DCA4C
	if_effect_eq CONTEST_EFFECT_USER_MORE_EASILY_STARTLED AI_score4_081DCA4C
	end
AI_score4_081DCA4C:
	score +5
	end
AI_effectcheck4_081DCA4C:
	if_effect_eq CONTEST_EFFECT_BETTER_WHEN_LATER AI_score5_081DCA4C
	if_effect_eq CONTEST_EFFECT_BETTER_IF_LAST AI_score5_081DCA4C
	if_effect_eq CONTEST_EFFECT_APPEAL_AS_GOOD_AS_PREV_ONES AI_score5_081DCA4C
	if_effect_eq CONTEST_EFFECT_USER_MORE_EASILY_STARTLED AI_score5_081DCA4C
	if_effect_eq CONTEST_EFFECT_JAMS_OTHERS_BUT_MISS_ONE_TURN AI_score7_081DCA4C
	if_effect_type_eq 1 AI_score6_081DCA4C
	if_effect_type_eq 3 AI_random3_081DCA4C
	end
AI_score5_081DCA4C:
	score +15
	end
AI_score6_081DCA4C:
	score -10
	end
AI_random3_081DCA4C:
	if_random 0x7D ContestEffectEnd2
	score +10
	end
AI_score7_081DCA4C:
	score +5
	end

AI_nothing:
	end
