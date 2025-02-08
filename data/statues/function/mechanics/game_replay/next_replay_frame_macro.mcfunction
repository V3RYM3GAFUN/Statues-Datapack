execute unless function statues:feature_flags/check_game_replay_flags run return fail
$execute store result score $ReplayFramePartsRemaining Statues.DynamicData run data get storage statues:game_replay playing_replay.frames[$(frame)]
function statues:mechanics/game_replay/next_replay_frame_macro_iter