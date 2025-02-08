execute unless function statues:feature_flags/check_game_replay_flags run return fail
data modify storage statues:game_replay new_player_object set value {position:[0d,0d,0d],rotation:[0f,0f]}

loot insert 0 -60 0 loot statues:game_replay/player_head
data modify storage statues:game_replay new_player_object.username set from block 0 -60 0 Items[{id:"minecraft:player_head"}].components."minecraft:profile".name
data modify block 0 -60 0 Items set value []

execute store result score @s Statues.ReplayData run data get storage statues:game_replay current_replay.player_data

data modify storage statues:game_replay new_player_object.uuid set from entity @s UUID
execute store result storage statues:game_replay new_player_object.index int 1 run scoreboard players get @s Statues.ReplayData

data modify storage statues:game_replay current_replay.player_data append from storage statues:game_replay new_player_object
data remove storage statues:game_replay new_player_object
