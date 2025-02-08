execute unless function statues:feature_flags/check_game_replay_flags run return fail
execute unless score $ReplayRecording Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot finish recording while not recording replay"}
execute unless score $ReplayRecording Statues.DynamicData matches 1 run return fail

data modify storage statues:game_replay current_replay.current_frame append value {frame_type:6,content:{}}
execute store result storage statues:game_replay current_replay.current_frame[-1].content.reason int 1 run scoreboard players get $EndCause Statues.GameEventData

function statues:mechanics/game_replay/save_frame
data modify storage statues:game_replay replays append from storage statues:game_replay current_replay
data remove storage statues:game_replay current_replay
scoreboard players reset * Statues.ReplayData
scoreboard players set $ReplayRecording Statues.DynamicData 0
