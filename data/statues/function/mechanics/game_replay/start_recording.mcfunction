# `frame_type`s:
# 0: set_player_position{player,position}
# 1: set_player_rotation{player,rotation}
# 2: enable_map{map_id}; map_id: 0=facade, 1=lockdown, 2=origins
# 3: complete_objective{player,objective}; objective=refer to $ObjectiveKind.* in game events for ids
# 4: set_team{player,team}; team: 0=lobby; 1=dev; 2=survivor; 3=monster; 4=spectator
# 5: survivor_escaped{player}
# 6: game_finished{reason}; reason=refer to $GameEndCause.* in game events for ids
# 7: set_mainhand_item{player, item}
# 8: set_offhand_item{player, item}
# 9: set_helmet_item{player, item}
# 10: set_chestplate_item{player, item}
# 11: set_leggings_item{player, item}
# 12: set_boots_item{player, item}
# 13: mark_key_location{kind, x, y, z}; kind=refer to $KeyKind.* in game events for ids
execute unless function statues:feature_flags/check_game_replay_flags run return fail

execute if score $ReplayWatching Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot start recording a replay while watching another"}
execute if score $ReplayWatching Statues.DynamicData matches 1 run return fail

execute if score $ReplayRecording Statues.DynamicData matches 1 run tellraw @s {"color":"red","text":"Cannot record 2 replays at the same time"}
execute if score $ReplayRecording Statues.DynamicData matches 1 run return fail

scoreboard players set $ReplayRecording Statues.DynamicData 1

data modify storage statues:game_replay current_replay set value {frames:[],current_frame:[],player_data:[]}

data modify storage statues:game_replay current_replay.current_frame append value {frame_type:2,content:{}}
execute store result storage statues:game_replay current_replay.current_frame[-1].content.map_id int 1 run scoreboard players get $Map Statues.DynamicData
