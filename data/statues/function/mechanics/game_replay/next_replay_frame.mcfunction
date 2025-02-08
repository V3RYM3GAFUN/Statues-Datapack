execute unless function statues:feature_flags/check_game_replay_flags run return fail
data modify storage statues:game_replay macro_exec set value {}
execute store result storage statues:game_replay macro_exec.frame int 1 run scoreboard players get $ReplayFrame Statues.DynamicData

function statues:mechanics/game_replay/next_replay_frame_macro with storage statues:game_replay macro_exec

execute store result score $ReplayFrameCount Statues.TempData run data get storage statues:game_replay playing_replay.frames
execute if score $ReplayFrameCount Statues.TempData = $ReplayFrame Statues.DynamicData run scoreboard players set $ReplayFreeze Statues.DynamicData 1
execute if score $ReplayFrameCount Statues.TempData = $ReplayFrame Statues.DynamicData run tellraw @a [{"text":"Game replay reached the end "},{"text":"[End Replay]","italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function statues:replays/end"}}]
execute if score $ReplayFrameCount Statues.TempData >= $ReplayFrame Statues.DynamicData run scoreboard players add $ReplayFrame Statues.DynamicData 1