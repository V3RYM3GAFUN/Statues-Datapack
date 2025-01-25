execute unless score $IsDevGame Statues.DynamicData matches 1 run return 0
function statues:feature_flags/set_dev_allow_debug_info {value:0}
function statues:feature_flags/set_dev_allow_empty_game {value:0}
function statues:feature_flags/set_dev_infinite_game_time {value:0}
function statues:feature_flags/set_dev_no_start_requirement {value:0}
scoreboard players reset $IsDevGame Statues.DynamicData