execute unless function statues:feature_flags/check_game_replay_flags run return fail
$data modify entity @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] Rotation set value $(rotation)
data modify storage statues:game_replay update_data set value {Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightArm:[0f,0f,0f],RightLeg:[0f,0f,0f]}
$data modify storage statues:game_replay update_data.Head[0] set from entity @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] Rotation[1]
$data modify entity @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] Pose set from storage statues:game_replay update_data