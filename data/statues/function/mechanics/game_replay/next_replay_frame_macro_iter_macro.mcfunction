execute unless function statues:feature_flags/check_game_replay_flags run return fail
$function statues:mechanics/game_replay/next_replay_frame_macro_per_type with storage statues:game_replay playing_replay.frames[$(frame)][-$(index)]
