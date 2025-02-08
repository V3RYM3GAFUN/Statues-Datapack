execute unless function statues:feature_flags/check_game_replay_flags run return fail
$data modify entity @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] Pos set value $(position)
$execute as @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] at @s anchored eyes positioned ^ ^ ^ run tp @n[tag=game_replay_player_name,scores={Statues.ReplayData=$(player)}] ~ ~0.45 ~