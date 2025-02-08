execute unless function statues:feature_flags/check_game_replay_flags run return fail
execute unless score @s Statues.ReplayData matches -2147483648..2147483647 run function statues:mechanics/game_replay/register_player

data modify storage statues:game_replay macro_exec set value {}
execute store result storage statues:game_replay macro_exec.index int 1 run scoreboard players get @s Statues.ReplayData
function statues:mechanics/game_replay/capture_player_data_macro with storage statues:game_replay macro_exec