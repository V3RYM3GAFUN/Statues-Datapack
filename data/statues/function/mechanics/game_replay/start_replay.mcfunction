execute unless function statues:feature_flags/check_game_replay_flags run return fail

execute if score $ReplayWatching Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot watch 2 replays at the same time"}
execute if score $ReplayWatching Statues.DynamicData matches 1 run return fail

execute if score $ReplayRecording Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot record replay while watching a replay"}
execute if score $ReplayRecording Statues.DynamicData matches 1 run return fail

data modify storage statues:game_replay playing_replay set from storage statues:game_replay replays[-1]
function statues:mechanics/game_replay/start_replay_create_fake_player_iter
scoreboard players set $ReplayFrame Statues.DynamicData 0
scoreboard players set $ReplayWatching Statues.DynamicData 1
tellraw @a [{"text":"Game replay started "},{"text":"[Click to spectate]","italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function statues:replays/watch"}}]
