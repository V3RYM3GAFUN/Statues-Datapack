execute unless function statues:feature_flags/check_game_replay_flags run return fail
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData


execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1


execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter
