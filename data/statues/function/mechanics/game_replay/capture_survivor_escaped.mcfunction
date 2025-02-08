execute unless function statues:feature_flags/check_game_replay_flags run return fail
data modify storage statues:game_replay current_replay.current_frame append value {frame_type:5,content:{}}
execute store result storage statues:game_replay current_replay.current_frame[-1].content.player int 1 run scoreboard players get @s Statues.ReplayData
