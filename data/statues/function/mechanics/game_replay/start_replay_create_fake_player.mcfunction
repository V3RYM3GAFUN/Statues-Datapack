execute unless function statues:feature_flags/check_game_replay_flags run return fail
execute store result score $IterationsRemaining Statues.TempData run data get storage statues:game_replay playing_replay.player_data


execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:mechanics/game_replay/start_replay_create_fake_player_iter
