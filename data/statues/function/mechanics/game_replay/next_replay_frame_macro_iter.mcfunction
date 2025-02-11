execute unless function statues:feature_flags/check_game_replay_flags run return fail
execute if score $ReplayFramePartsRemaining Statues.DynamicData matches ..0 run return fail
execute store result storage statues:game_replay macro_exec.index int 1 run scoreboard players get $ReplayFramePartsRemaining Statues.DynamicData
execute if score $Map Statues.DynamicData matches 0 in statues:maps/facade run function statues:mechanics/game_replay/next_replay_frame_macro_iter_macro with storage statues:game_replay macro_exec
execute if score $Map Statues.DynamicData matches 1 in statues:maps/lockdown run function statues:mechanics/game_replay/next_replay_frame_macro_iter_macro with storage statues:game_replay macro_exec
execute if score $Map Statues.DynamicData matches 2 in statues:maps/origins run function statues:mechanics/game_replay/next_replay_frame_macro_iter_macro with storage statues:game_replay macro_exec
execute unless score $Map Statues.DynamicData matches 0..2 in minecraft:overworld run function statues:mechanics/game_replay/next_replay_frame_macro_iter_macro with storage statues:game_replay macro_exec
scoreboard players remove $ReplayFramePartsRemaining Statues.DynamicData 1
function statues:mechanics/game_replay/next_replay_frame_macro_iter