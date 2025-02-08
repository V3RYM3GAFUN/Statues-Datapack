execute unless function statues:feature_flags/check_game_replay_flags run return fail
data modify storage statues:game_replay current_replay.current_frame append value {frame_type:13,content:{}}
$execute store result storage statues:game_replay current_replay.current_frame[-1].content.kind int 1 run scoreboard players get $(kind) Statues.GameEventEnum
data modify storage statues:game_replay current_replay.current_frame[-1].content.x set from entity @s Pos[0]
data modify storage statues:game_replay current_replay.current_frame[-1].content.y set from entity @s Pos[1]
data modify storage statues:game_replay current_replay.current_frame[-1].content.z set from entity @s Pos[2]
