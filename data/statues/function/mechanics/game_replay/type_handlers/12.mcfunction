execute unless function statues:feature_flags/check_game_replay_flags run return fail
$data modify entity @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] ArmorItems[0] set value $(item)