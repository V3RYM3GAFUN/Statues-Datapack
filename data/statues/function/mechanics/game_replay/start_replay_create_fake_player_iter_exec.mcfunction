execute unless function statues:feature_flags/check_game_replay_flags run return fail
$data modify storage statues:temp iter_exec_per set from storage statues:game_replay playing_replay.player_data[-$(index)]

function statues:mechanics/location_markers/move_positions_iter_exec with storage statues:temp iter_exec_per
