execute unless function statues:feature_flags/check_game_replay_flags run return fail
execute if score $ReplayFakePlayerRemaining Statues.DynamicData matches ..0 run return fail
data modify storage statues:game_replay macro_exec set value {}
execute store result storage statues:game_replay macro_exec.index int 1 run scoreboard players get $ReplayFakePlayerRemaining Statues.DynamicData
function statues:mechanics/game_replay/start_replay_create_fake_player_iter_macro with storage statues:game_replay macro_exec
scoreboard players remove $ReplayFakePlayerRemaining Statues.DynamicData 1
function statues:mechanics/game_replay/start_replay_create_fake_player_iter