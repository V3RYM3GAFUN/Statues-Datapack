execute unless score $ReplayRecording Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot reset recording while not recording replay"}
execute unless score $ReplayRecording Statues.DynamicData matches 1 run return fail

execute unless function statues:feature_flags/check_game_replay_flags run return fail
data remove storage statues:game_replay current_replay
scoreboard players reset * Statues.ReplayData
scoreboard players set $ReplayRecording Statues.DynamicData 0
